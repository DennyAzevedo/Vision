﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Vision;
using Vision.Cv;
using Vision.Detection;
using MathNet.Numerics;
using MathNet.Numerics.LinearAlgebra;

namespace Vision.Tests
{
    public class FaceDetection : IDisposable
    {
        public class FaceDetectedArgs : EventArgs
        {
            public VMat Frame { get; set; }
            public FaceRect[] Results { get; set; }

            public FaceDetectedArgs(VMat frame, FaceRect[] result)
            {
                Frame = frame;
                Results = result;
            }
        }

        public bool DrawOn { get; set; } = true;
        public bool DetectGaze { get; set; } = false;
        public bool GazeSmooth { get; set; } = false;
        public FaceDetector Detector { get; set; }
        public EyeGazeDetector GazeDetector { get; set; }
        public ScreenProperties ScreenProperties { get => Detector.ScreenProperties; set => Detector.ScreenProperties = value; }

        public event EventHandler<FaceDetectedArgs> Detected;

        string FilePath;
        int index = -1;
        Capture capture;

        object renderLock = new object();
        double yoffset = 0;
        int frameMax = 0;
        int frameOk = 0;
        Task FaceDetectionTask;
        Task GazeDetectionTask;
        FaceRect[] rect = null;
        Queue<Point> trail = new Queue<Point>();
        PointKalmanFilter filter = new PointKalmanFilter();

        private FaceDetection(string faceXml, string eyeXml, FileNode flandmarkModel)
        {
            Logger.Log(this, "Press E to Exit");

            Detector = new FaceDetector(faceXml, eyeXml);
            GazeDetector = new EyeGazeDetector();
            ScreenProperties = new ScreenProperties()
            {
                Origin = new Point3D(-205, 0, 0),
                PixelSize = new Size(1920, 1080),
                Size = new Size(410, 285)
            };
        }

        public FaceDetection(string filePath, string faceXml, string eyeXml, FileNode flandmarkModel) : this(faceXml, eyeXml, flandmarkModel)
        {
            FilePath = filePath;
            capture = Capture.New(FilePath);
            capture.FrameReady += Capture_FrameReady;
        }

        public FaceDetection(int index, string faceXml, string eyeXml, FileNode flandmarkModel) : this(faceXml, eyeXml, flandmarkModel)
        {
            this.index = index;
            capture = Capture.New(index);
            capture.FrameReady += Capture_FrameReady;
        }

        public FaceDetection(int index, FaceDetectorXmlLoader loader, FlandmarkModelLoader floader) : this(index, loader.FaceXmlPath, loader.EyeXmlPath, floader.Data)
        {

        }

        public FaceDetection(string filepath, FaceDetectorXmlLoader loader, FlandmarkModelLoader floader) : this(filepath, loader.FaceXmlPath, loader.EyeXmlPath, floader.Data)
        {

        }

        public void Start()
        {
            capture.Start();
        }

        public void Stop()
        {
            capture.Stop();
        }

        public void Run()
        {
            capture.Start();
            capture.Join();
        }

        private void Capture_FrameReady(object sender, FrameArgs e)
        {
            VMat mat = e.VMat;

            if (mat != null && !mat.IsEmpty)
            {
                if (FaceDetectionTask == null)
                {
                    Profiler.Start("DetectionALL");

                    Profiler.Start("DetectionFaceTaskStart");
                    e.VMatDispose = false;
                    VMat cloned = mat;
                    FaceDetectionTask = new Task(() =>
                    {
                        FaceDetectProc(cloned);
                    });
                    FaceDetectionTask.Start();
                    Profiler.End("DetectionFaceTaskStart");
                }

                if (DrawOn)
                {
                    Profiler.Start("Draw");
                    Draw(mat);
                    Profiler.End("Draw");

                    Profiler.Start("imshow");
                    Core.Cv.ImgShow("camera", mat);
                    Profiler.End("imshow");
                }
            }

            switch (e.LastKey)
            {
                case 'e':
                    Core.Cv.CloseAllWindows();
                    e.Break = true;
                    break;
                case 'l':
                    Detector.LandmarkDetect = !Detector.LandmarkDetect;
                    break;
                case 's':
                    Detector.SmoothLandmarks = !Detector.SmoothLandmarks;
                    Detector.SmoothVectors = !Detector.SmoothVectors;
                    break;
                case 'g':
                    DetectGaze = !DetectGaze;
                    break;
                case 'h':
                    GazeSmooth = !GazeSmooth;
                    break;
                case ' ':
                    Core.Cv.WaitKey(0);
                    break;
                default:
                    break;
            }
        }

        public void FaceDetectProc(VMat mat)
        {
            Profiler.Count("FaceFPS");

            Profiler.Start("DetectionFace");
            FaceRect[] rect = Detector.Detect(mat);

            Profiler.Start("DetectionGazeTaskStart");
            if(GazeDetectionTask != null)
            {
                GazeDetectionTask.Wait();
            }
            
            GazeDetectionTask = new Task(() => 
            {
                GazeDetectProc(mat, rect);
            });
            GazeDetectionTask.Start();
            Profiler.End("DetectionGazeTaskStart");

            Profiler.End("DetectionFace");

            FaceDetectionTask = null;
        }

        public void GazeDetectProc(VMat mat, FaceRect[] rect)
        {
            if (rect.Length > 0 && DetectGaze)
            {
                Profiler.Start("GazeALL");
                Point info = GazeDetector.Detect(rect[0], mat, Detector.ScreenProperties);
                if (info != null)
                {
                    Logger.Log(info.ToString());
                    info.X = Util.Clamp(info.X, 0, ScreenProperties.PixelSize.Width);
                    info.Y = Util.Clamp(info.Y, 0, ScreenProperties.PixelSize.Height);

                    info = LayoutHelper.ResizePoint(info, ScreenProperties.PixelSize, mat.Size, Stretch.Uniform);

                    if (GazeSmooth)
                        info = filter.Calculate(info);
                    lock (renderLock)
                    {
                        trail.Enqueue(info);
                    }

                    Logger.Log("FaceDectection.GazeDetected", info.ToString());
                }
                Profiler.End("GazeALL");
            }

            lock (renderLock)
            {
                this.rect = rect;
            }

            Profiler.End("DetectionALL");

            Detected?.Invoke(this, new FaceDetectedArgs(mat, rect));

            mat.Dispose();
        }

        public void Draw(VMat mat)
        {
            lock (renderLock)
            {
                Profiler.Count("DrawFPS");

                Core.Cv.DrawLine(mat, new Point(0, mat.Height / 2), new Point(mat.Width, mat.Height / 2), Scalar.BgrBlack);
                Core.Cv.DrawLine(mat, new Point(mat.Width/2, 0), new Point(mat.Width/2, mat.Height), Scalar.BgrBlack);

                var stretch = Stretch.Uniform;
                var scrSize = ScreenProperties.PixelSize;
                var matSize = mat.Size;
                var pt1 = LayoutHelper.ResizePoint(new Point(0, 0), scrSize, matSize, stretch);
                var pt4 = LayoutHelper.ResizePoint(new Point(scrSize.Width, scrSize.Height), scrSize, matSize, stretch);
                Core.Cv.DrawRectangle(mat, new Rect(pt1, pt4), Scalar.BgrMagenta);

                //update face
                if (rect != null)
                {
                    FaceRect face = null;
                    foreach (FaceRect f in rect)
                    {
                        face = f;
                        f.Draw(mat, 3, true, true);
                    }

                    if (face != null && face.Landmarks != null && face.LandmarkTransformVector != null)
                    {
                        //얼굴>화면 = 회전 A
                        //눈회전 = 회전 B
                        //얼굴회전 = 회전 C
                        //A = B*C
                        //A*Cinv = B*C*Cinv
                        //A*Cinv = B
                        //이었지만, 역시 정확도가 참 좋지않은 결과로 신경망을 믿도록 합니다
                        
                        //Slove Unit Test

                        var scrPt = new Point(1920, 1080);

                        var rod = face.SolveLookScreenRodrigues(scrPt, Detector.ScreenProperties, Flandmark.UnitPerMM);
                        var vec = face.SolveLookScreenVector(scrPt, Detector.ScreenProperties, Flandmark.UnitPerMM);
                        var point = face.SolveRayScreenRodrigues(rod, Detector.ScreenProperties, Flandmark.UnitPerMM);
                        var vecPt = face.SolveRayScreenVector(vec, Detector.ScreenProperties, Flandmark.UnitPerMM);

                        if (Point.EucludianDistance(point, scrPt) > 0.01)
                        {
                            Logger.Error(this, $"SolveLook/RayScreen Rodrigues Test Fails / target: {scrPt}, result: {point}");
                        }
                        if (Point.EucludianDistance(vecPt, scrPt) > 0.01)
                        {
                            Logger.Error(this, $"SolveLook/RayScreen Vector Test Fails / target: {scrPt}, result: {vecPt}");
                        }
                        
                        var tempPt = face.SolveRayScreenVector(new Point3D(0.02, 0.02, -1), Detector.ScreenProperties, Flandmark.UnitPerMM);
                        tempPt.X = Util.Clamp(tempPt.X, 0, ScreenProperties.PixelSize.Width);
                        tempPt.Y = Util.Clamp(tempPt.Y, 0, ScreenProperties.PixelSize.Height);
                        tempPt = LayoutHelper.ResizePoint(tempPt, ScreenProperties.PixelSize, mat.Size, Stretch.Uniform);
                        Core.Cv.DrawCircle(mat, tempPt, 4, Scalar.BgrCyan, -1);
                    }

                    if (frameMax > 300)
                        frameMax = frameOk = 0;
                    if (rect.Length > 0 && rect[0].Children.Count > 0)
                        frameOk++;
                }

                //update gaze trail
                if (trail.Count > 20)
                    trail.Dequeue();
                double size = 1;
                foreach (Point pt in trail)
                {
                    if (size == trail.Count - 1)
                    {
                        Core.Cv.DrawCircle(mat, new Point(pt.X, pt.Y), 2, Scalar.BgrCyan, 4);
                    }
                    Core.Cv.DrawCircle(mat, new Point(pt.X, pt.Y), size, Scalar.BgrYellow, 2);
                    size++;
                }

                //update hello wrold
                frameMax++;
                yoffset += 0.02;
                yoffset %= 1;

                //draw texts
                mat.DrawText(50, 400 + 250 * Math.Pow(Math.Sin(2 * Math.PI * yoffset), 3), "HELLO WORLD");
                mat.DrawText(50, 50, $"DetectFPS: {Profiler.Get("FaceFPS")} ({Profiler.Get("DetectionALL").ToString("0.00")}ms)", Scalar.BgrGreen);
                mat.DrawText(50, mat.Height - 50, $"DrawFPS: {Profiler.Get("DrawFPS")}", Scalar.BgrGreen);
                mat.DrawText(50, 85, "Frame: " + frameOk + "/" + frameMax + " (" + ((double)frameOk / frameMax * 100).ToString("0.00") + "%)", Scalar.BgrGreen);
            }
        }

        public void Dispose()
        {
            if(capture != null)
            {
                capture.Dispose();
                capture = null;
            }

            if(Detector != null)
            {
                Detector.Dispose();
                Detector = null;
            }
        }
    }
}
