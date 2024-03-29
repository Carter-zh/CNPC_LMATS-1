﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.evaluate_log
{
    public class LightHydrLogging
    {
        //轻烃录井分析
        public double wall_dep { get; set; }//井深
        public string horizon { get; set; }//层位
        public string lit_name { get; set; }//岩性定名

        //分析参数
        public string team_code { get; set; }//组分
        public double peak_area { get; set; }//峰面积
    }
}
