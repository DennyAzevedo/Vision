﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vision.Detection
{
    public class EyeGazeInfo
    {
        public virtual Point3D Vector { get; set; }

        public virtual Point ScreenPoint { get; set; }

        public EyeGazeInfo()
        {
            Vector = new Point3D();

            ScreenPoint = new Point(-1,-1);
        }
    }
}
