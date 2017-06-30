﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TensorFlow;

namespace Vision
{
    public enum ImageCodec
    {
        JPEG = 0,
        PNG = 1,
        GIF = 2,
        BMP = 3
    }

    public static class Tools
    {
        public static Tensor VMatRGB2Tensor(VMat m, int resizeWidth = -1, int resizeHeight = -1, long[] shape = null)
        {
            if (resizeHeight != -1 && resizeWidth != -1)
                m.Resize(new Size(resizeWidth, resizeHeight));

            if (shape == null)
            {
                shape = new long[] { (int)m.Height, (int)m.Width, m.Channel };
            }

            float[] buffer = m.GetArray();
            TFTensor tensor = TFTensor.FromBuffer(new TFShape(shape), buffer, 0, buffer.Length);

            return new Tensor(tensor);
        }

        public static Tensor CreateTensorFromStream(Stream stream, ImageCodec codec, bool use_resize = false, int width = 100, int height = 100)
        {
            byte[] buff = stream.ReadAll();
            return CreateTensorFromBuffer(buff, codec, use_resize, width, height);
        }

        public static Tensor CreateTensorFromBuffer(byte [] buffer, ImageCodec codec, bool use_resize = false, int width = 100, int height = 100)
        {
            var tensor = TFTensor.CreateString(buffer);

            TFGraph graph;
            TFOutput input, output;

            ConstructGraphToNormalizeImage(out graph, out input, out output, codec);

            using (var session = new TFSession(graph))
            {
                var normalized = session.Run(new[] { input }, new[] { tensor }, new[] { output });
                return new Tensor(normalized[0]);
            }
        }

        private static void ConstructGraphToNormalizeImage(out TFGraph graph, out TFOutput input, out TFOutput output, ImageCodec codec, bool use_resize = false, int width = 100, int height = 100)
        {
            graph = new TFGraph();
            input = graph.Placeholder(TFDataType.String);

            Output decoded = graph.DecodeImage(input, codec);

            output = graph.ExpandDims ( graph.Cast(decoded.output, TFDataType.Float), graph.Const(0, "make_batch") );

            if (use_resize) 
                output = graph.ResizeBilinear ( output, graph.Const(new int[] { width, height }, "size") );
        }

        public static Output DecodeImage(this TFGraph g, TFOutput input, ImageCodec codec)
        {
            TFOutput decoded;
            switch (codec)
            {
                case ImageCodec.BMP:
                    decoded = g.DecodeBmp(input, channels: 3);
                    break;
                case ImageCodec.GIF:
                    decoded = g.DecodeGif(input);
                    break;
                case ImageCodec.JPEG:
                    decoded = g.DecodeJpeg(input, channels: 3);
                    break;
                case ImageCodec.PNG:
                    decoded = g.DecodePng(input, channels: 3);
                    break;
                default:
                    throw new NotImplementedException("not supported");
            }
            return new Output(decoded);
        }
    }
}