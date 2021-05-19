using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace Model.Form_B
{
    public static class FormKeyValuePairB
    {
        public static Dictionary<string, string> formBDIc = new Dictionary<string, string>();
        public static Dictionary<string, string> formBNameDIc = new Dictionary<string, string>();
        //public static Dictionary<string, string> cuttings_description_b2 = new Dictionary<string, string>();
        
        //public static Dictionary<string, string> descr_dilling_coring_b3 = new Dictionary<string, string>();
        //public static Dictionary<string, string> B_6 = new Dictionary<string, string>();
        static FormKeyValuePairB()
        {

            formBDIc.Add("A_5", "chloride_ti_dilling_a5");

            formBDIc.Add("B_1_1", "log_board__class_b1");
            //formBDIc.Add("B_1_2", "");
            formBDIc.Add("B_1_3", "well_rot_cond_b1");
            formBDIc.Add("B_1_4", "turn_head_data_b1");
            formBDIc.Add("B_1_5", "drilling_tool_structure_b1");
            formBDIc.Add("B_1_6", "drilling_para_b1");
            formBDIc.Add("B_1_7", "drilling_fluif_b1");
            formBDIc.Add("B_1_8", "late_time_b1");
            formBDIc.Add("B_1_9", "lith_oil_gas_water_b1");
            formBDIc.Add("B_1_10", "evaluation_logging_b1");
            formBDIc.Add("B_1_11", "instrument_op_cali_b1");
            formBDIc.Add("B_1_12", "engineering_abno_b1");
            formBDIc.Add("B_1_13", "track_b1");
            formBDIc.Add("B_1_14", "drilling_coring_b1");
            formBDIc.Add("B_1_15", "coring_well_wall_b1");
            formBDIc.Add("B_1_16", "aftereffect_gas_dete_b1");
            formBDIc.Add("B_1_17", "complexity_treatment_b1");
            formBDIc.Add("B_1_18", "text_well_b1");
            formBDIc.Add("B_1_19", "casing_running_b1");
            formBDIc.Add("B_1_20", "cementing_b1");
            formBDIc.Add("B_1_21", "midway_test_b1");

            formBDIc.Add("B_2", "cuttings_description_b2");
            formBDIc.Add("B_3", "descr_dilling_coring_b3");
            formBDIc.Add("B_4", "frac_cavity_sta_b4");
            //formBDIc.Add("B_5", "");
            formBDIc.Add("B_6", "wall_coring_b6");
            formBDIc.Add("B_7", "afte_gas_de_record_b7");
            formBDIc.Add("B_8", "special_cond_marking_b8");
            formBDIc.Add("B_9", "density_ana_mudston_b9");
            formBDIc.Add("B_10", "carbonate_con_ana_b10");
            formBDIc.Add("B_11", "quanti_flu_logging_b11");
            formBDIc.Add("B_12", "therm_detion_rock_b12");
            formBDIc.Add("B_13", "");
            formBDIc.Add("B_14", "gas_chroa__hydca_rocks_b14");
            formBDIc.Add("B_15", "light_hydr_logging_b15");
            formBDIc.Add("B_16", "nuc_mag_reson_b16");
            formBDIc.Add("B_17", "x_ray_diff_logging_b17");
            formBDIc.Add("B_18", "x_ray_fiuore_logging_b18");
            formBDIc.Add("B_19", "natural_gamma_spe_log_b19");
            formBDIc.Add("B_20", "csaing_record_b20");

            formBDIc.Add("C_1", "c1");
            formBDIc.Add("C_2", "c2");
            formBDIc.Add("C_3", "c3"); //未加
            formBDIc.Add("C_4", "c4");
            formBDIc.Add("C_5", "c5");

            formBDIc.Add("D_1", "basic_data_sheet_d1");
            formBDIc.Add("D_2", "strati_data_sheet_d2");
            formBDIc.Add("D_3", "logging_work_sta_d3");
            formBDIc.Add("D_4", "oil_gas_dis_sta_d4");
            formBDIc.Add("D_5", "sub_sta_table_drill_d5");
            formBDIc.Add("D_6", "stati_table_logg_d6");
            formBDIc.Add("D_7", "statis_dirll_co_d7");
            formBDIc.Add("D_8", "sta_table_ana_samp_d8");

            //岩屑描述记录
            formBNameDIc.Add("cuttings_description", "岩屑记录");
            formBNameDIc.Add("num", "序号");
            formBNameDIc.Add("horizon", "层位");
            formBNameDIc.Add("top_dep_well", "顶深");
            formBNameDIc.Add("bot_dep_well", "底深");
            formBNameDIc.Add("litholo_color", "颜色");
            formBNameDIc.Add("litholo_oil", "含油级别");
            formBNameDIc.Add("lithology", "岩性");
            formBNameDIc.Add("lit_descr", "岩性及含油气水描述");
            formBNameDIc.Add("flu_wet_illu", "湿照颜色");
            formBNameDIc.Add("named_cutt", "定名岩屑占岩屑(%)");
            formBNameDIc.Add("perce_oil_cut", "湿照颜含油岩屑占定名岩屑色");
            formBNameDIc.Add("flu_color", "荧光滴照颜色");
            formBNameDIc.Add("flu_dry_co", "荧光干照颜色");
            formBNameDIc.Add("flu_con_lev", "荧光对比级别");

            //钻井取心描述记录
            formBNameDIc.Add("core_num", "岩心编号");
            formBNameDIc.Add("wear_cond", "磨损情况");
            formBNameDIc.Add("total_leng", "累计长度");
            formBNameDIc.Add("sample_num", "岩样编号");
            formBNameDIc.Add("lith_name_co", "岩性定名颜色");
            formBNameDIc.Add("lith_name_oil", "岩性定名含油级别");
            formBNameDIc.Add("lith_name_lith", "岩性定名岩性");
            formBNameDIc.Add("lit_des_wat", "油气水描述");
            formBNameDIc.Add("flu_wet", "湿照颜色");
            formBNameDIc.Add("flu_cont_le", "对比级别");

            formBNameDIc.Add("measur_w_dep", "测量井深");


            //丼壁取心

            formBNameDIc.Add("well_dep", "井深");



            ////缝洞统计
            formBNameDIc.Add("time_cor", "取心筒次");
            formBNameDIc.Add("well_sec", "井段");
            formBNameDIc.Add("cori_num", "岩心编号");
            formBNameDIc.Add("length", "长度");
            formBNameDIc.Add("litho_namein", "岩性定名");
            formBNameDIc.Add("total_num", "总条数");
            formBNameDIc.Add("total_dens", "总密度");
            formBNameDIc.Add("eff_seam_num", "有效缝条数");
            formBNameDIc.Add("eff_seam_de", "有效缝密度");
            formBNameDIc.Add("eff_seam_w_o", "有效缝宽度大于5");
            formBNameDIc.Add("eff_seam_w_tw", "有效缝宽度在1到5之间");
            formBNameDIc.Add("eff_seam_w_t", "有效缝宽度小于等于1");
            formBNameDIc.Add("eff_vert_seam", "有效缝立缝");
            formBNameDIc.Add("eff_seam_in", "有效缝斜缝");
            formBNameDIc.Add("eff_flat_seam", "有效缝平缝");
            formBNameDIc.Add("fill_de_eff_s", "有效缝填充程度");
            formBNameDIc.Add("fill_de_eff_thing", "有效逢填充物");
            formBNameDIc.Add("suture", "缝合线条数");
            formBNameDIc.Add("lim_cave_num", "溶洞晶洞个数");
            formBNameDIc.Add("lim_cave_de", "溶洞晶洞密度");
            formBNameDIc.Add("cave_diam_10", "溶洞晶洞直径大于10");
            formBNameDIc.Add("cave_diam_5_10", "5-10");
            formBNameDIc.Add("cave_diam_5", "5");
            formBNameDIc.Add("cave_fil", "溶洞晶洞填充物");
            formBNameDIc.Add("cave_fil_le", "溶洞晶洞填充程度");
            formBNameDIc.Add("plaque", "斑块数");
            formBNameDIc.Add("air_pla", "冒气处个数");
            formBNameDIc.Add("connect", "连通情况");

            ////钻井液氯离子测定
            //formBNameDIc.Add("num", "编号");
            formBNameDIc.Add("samp_time_d", "月日");
            formBNameDIc.Add("samp_time_m", "时分");
            formBNameDIc.Add("samp_well_dep", "取样井深度");
            formBNameDIc.Add("silver_ni_c", "硝酸银浓度当量");
            formBNameDIc.Add("samp_v", "取样体积");
            formBNameDIc.Add("silv_ni_q", "硝酸银滴定前量");
            formBNameDIc.Add("silv_ni_l", "有效缝硝酸银滴定后的量");
            formBNameDIc.Add("silv_ni_co", "硝酸银消耗的量");
            formBNameDIc.Add("chlo_con", "氯根含量");
            formBNameDIc.Add("density", "密度");
            formBNameDIc.Add("viscosity", "粘度");
            //formBNameDIc.Add("examiner", "检验人");

            ////套管记录
            formBNameDIc.Add("size", "尺寸");
            formBNameDIc.Add("pla_pro", "产地");
            formBNameDIc.Add("steel_gra", "钢级");
            formBNameDIc.Add("wall_thick", "壁厚");
            formBNameDIc.Add("s_length", "单根长");
            formBNameDIc.Add("tol_len", "累长");
            formBNameDIc.Add("down_dep", "下深");
            formBNameDIc.Add("remarks", "备注");


            ////班报之基本信息
            formBNameDIc.Add("date", "日期");
            formBNameDIc.Add("classes", "班次");
            formBNameDIc.Add("watcher", "值班人");
            formBNameDIc.Add("shift", "井深");
            formBNameDIc.Add("footage", "进尺");

            ////班报之后效气检测
            formBNameDIc.Add("bit_position", "钻头位置");
            formBNameDIc.Add("total_hyd_peak", "全烃峰值");
            formBNameDIc.Add("up_speed", "上窜速度");
            formBNameDIc.Add("slot_sur_dis", "槽面显示");

            ////班报之下套管
            formBNameDIc.Add("bushing_type", "套管类型");
            formBNameDIc.Add("external_dia", "外径");
            formBNameDIc.Add("steel_grade", "钢级");
            formBNameDIc.Add("wall_th", "壁厚");
            formBNameDIc.Add("place_origin", "产地");
            formBNameDIc.Add("depth", "下深");
            formBNameDIc.Add("location_choke", "阻流环位置");
            formBNameDIc.Add("short_casing", "短套管位置");
            formBNameDIc.Add("hanger_pos", "悬挂器位置");
            formBNameDIc.Add("location_gra_hoop", "分级箍位置");
            formBNameDIc.Add("join_in", "联入");

            ////班报之下固井
            formBNameDIc.Add("cement_brand", "水泥品牌");
            formBNameDIc.Add("cement_type", "水泥类型");
            formBNameDIc.Add("inje_vol_cem_", "水泥浆注入量");
            formBNameDIc.Add("av_den_cem_sl", "水泥浆平均密度");
            formBNameDIc.Add("cement_higt", "水泥反高");
            formBNameDIc.Add("pres_test", "试压");
            formBNameDIc.Add("displa_mud", "替泥浆量");
            formBNameDIc.Add("lmpact_time", "碰压时间");
            formBNameDIc.Add("impact_value", "碰压值");
            formBNameDIc.Add("inject_amount_is_li", "隔离液注入量");
            formBNameDIc.Add("cement_qua", "固井质量");

            ////班报之下钻井复杂
            formBNameDIc.Add("well_depth", "井深");
            formBNameDIc.Add("time", "时间");
            formBNameDIc.Add("stratum", "地层");
            formBNameDIc.Add("accident_type", "事故类型");
            formBNameDIc.Add("tream_process", "处理过程");
            formBNameDIc.Add("release_time", "解除时间");


            //////班报之下井壁取芯
            formBNameDIc.Add("coring_time", "取心时间");
            formBNameDIc.Add("coring_meth", "取心方式");
            formBNameDIc.Add("design_num", "设计颗数");
            formBNameDIc.Add("real_num", "实取颗数");
            formBNameDIc.Add("core_length", "岩心长度");
            formBNameDIc.Add("harvest_rate", "收获率");

            //////班报之下钻井取芯
            formBNameDIc.Add("tube_times", "筒次");
            formBNameDIc.Add("coring_sect", "取心井段");


            //////班报之钻井液性能
            formBNameDIc.Add("type", "类型");
            formBNameDIc.Add("water_loss", "失水");
            formBNameDIc.Add("mud_cake", "泥饼");
            formBNameDIc.Add("initial_cut", "初切");
            formBNameDIc.Add("final_cut", "终切");
            formBNameDIc.Add("sand_bearing", "含砂");
            formBNameDIc.Add("clay_conte", "般土含量");
            formBNameDIc.Add("fri_coe", "摩阻系数");
            formBNameDIc.Add("read_300", "300转读数");
            formBNameDIc.Add("read_600", "600转读数");
            formBNameDIc.Add("hthp_w_loss", "HTHP失水");
            formBNameDIc.Add("ph_value", "PH值");
            formBNameDIc.Add("solid_cont", "固相含量");
            formBNameDIc.Add("cl", "氯离子");
            formBNameDIc.Add("total_sal", "总矿化度");
            formBNameDIc.Add("affect_m_l_t", "影响录井处理剂");

            //////班报之下钻丼参数
            formBNameDIc.Add("wob", "钻压");
            formBNameDIc.Add("rota_num_turn", "转盘转数");
            formBNameDIc.Add("displact", "排量");
            formBNameDIc.Add("mpa", "泵压");
            formBNameDIc.Add("torque", "扭矩");
            formBNameDIc.Add("su_weight", "悬重");


            formBNameDIc.Add("drill_tool_s", "钻具结构");

            //////班报之工程异常报告
            formBNameDIc.Add("excep_type", "异常类型");
            formBNameDIc.Add("adoption", "采纳情况");

            //////班报之评价录井
            //formBNameDIc.Add("mud_log_p", "时间");
            //formBNameDIc.Add("well_secti", "井深");
            //formBNameDIc.Add("num_ana_sam", "异常类型");

            formBNameDIc.Add("mud_log_p", "录井项目");
            formBNameDIc.Add("well_secti", "井段");
            formBNameDIc.Add("num_ana_sam", "比例");

            formBNameDIc.Add("instru_op_ca", "仪器运行及校验");

            //////班报之迟到时间
            formBNameDIc.Add("mud_logmeasur_w_depp", "测量井深");
            formBNameDIc.Add("late_time", "迟到时间");

            formBNameDIc.Add("lith_oil_", "岩性及油气水");

            //////班报之试油
            formBNameDIc.Add(" well_section", "井段");
            formBNameDIc.Add("tool_struct", "工具结构");
            formBNameDIc.Add("forma_press", "地层压力");
            formBNameDIc.Add("work_fluid_type", "工作液类型");
            formBNameDIc.Add("test", "测试工艺");
            formBNameDIc.Add("test_location", "测试器座封位置");
            formBNameDIc.Add("seat_seal_time", "座封时间");
            formBNameDIc.Add("unseal_time", "解封时间");
            formBNameDIc.Add("well_op_clos_ti", "开关井时间");
            formBNameDIc.Add("dis_well_op", "开关井情况显示");
            formBNameDIc.Add("quan_reco", "回收液体量");
            formBNameDIc.Add("pre_con_daily", "初步折算流体日产量");
            formBNameDIc.Add("fluid_pro", "流体性质");
            formBNameDIc.Add("oil_test_con", "试油结论");

            //////班报之测井
            formBNameDIc.Add("text_dill_pro", "测井项目");
            formBNameDIc.Add("rate1", "比例");
            formBNameDIc.Add("well_section", "井段");

            //////班报之侧斜
            formBNameDIc.Add("depth_measur", "测斜井深");
            formBNameDIc.Add("well_angle", "井斜角");
            formBNameDIc.Add("azimuth", "方位角");

            //////班报之钻头
            formBNameDIc.Add("number", "序号");
            //formBNameDIc.Add("size", "尺寸");
            //formBNameDIc.Add("type", "类型");
            formBNameDIc.Add("acc_footage", "累计进尺");
            formBNameDIc.Add("cum_pure_d_t", "累计纯钻时间");


            //////班报之钻井工况
            //formBNameDIc.Add("time", "时间");
            formBNameDIc.Add("brief_const", "施工简况");


            //////B7后效气体检测
            //formBNameDIc.Add(" date", "日期");
            //formBNameDIc.Add("well_dep", "井深");

            formBNameDIc.Add("dill_loca", "钻头位置");
            formBNameDIc.Add("well_sta_time", "井筒静止时间");
            formBNameDIc.Add("fil_cm", "钻井液槽面显示");
            formBNameDIc.Add("fil_den", "钻井液密度");
            formBNameDIc.Add("fil_vis", "钻井液粘度");

            //formBNameDIc.Add("late_time", "迟到时间");

            formBNameDIc.Add("q_t_s_time", "全烃出峰开始时间");
            formBNameDIc.Add("q_t_s_val", "全烃出峰开始值");
            formBNameDIc.Add("q_t_g_time", "全烃出峰高峰时间");
            formBNameDIc.Add("q_t_g_val", "全烃出峰高峰值");
            formBNameDIc.Add("q_t_l_time", "全烃出峰结束时间");
            formBNameDIc.Add("q_t_l_val", "全烃出峰结束值");
            formBNameDIc.Add("home_sec", "归位井段");
            formBNameDIc.Add("up_high", "上窜高度");


            //////B10
            //formBNameDIc.Add(" num", "序号");
            //formBNameDIc.Add("wall_dep", "井深");
            formBNameDIc.Add("sam_type", "样品类型");
            formBNameDIc.Add("cal_car_cont", "碳酸钙含量");
            formBNameDIc.Add("con_ma_cal_car", "碳酸镁钙含量");
            formBNameDIc.Add("other", "其他");

            //////B9
            //formBNameDIc.Add(" num", "序号");
            //formBNameDIc.Add("horizon", "层位");
            //formBNameDIc.Add("wall_dep", "井深");
            //formBNameDIc.Add("lith_name", "岩性定名");
            formBNameDIc.Add("mea_value_l_o", "测量值L1");
            formBNameDIc.Add("mea_value_t", "测量值L2");
            formBNameDIc.Add("mea_dn", "测量值密度");

            //////B14
            //formBNameDIc.Add(" wall_dep", "井深");
            //formBNameDIc.Add("horizon", " 层位");
            formBNameDIc.Add("no", "编号");
            //formBNameDIc.Add("sam_type", "样品类型");
            //formBNameDIc.Add("lit_name", "岩性定名");
            formBNameDIc.Add("sam_qua", "样品质量");
            formBNameDIc.Add("team_code", " 组分");
            formBNameDIc.Add("peak_area", "峰面积");

            //////B15同14未改
            //formBNameDIc.Add(" wall_dep", "井深");
            //formBNameDIc.Add("horizon", " 层位");
            //formBNameDIc.Add("no", "编号");
            //formBNameDIc.Add("sam_type", "样品类型");
            //formBNameDIc.Add("lit_name", "岩性定名");

            //////B19
            //formBNameDIc.Add("num", "序号");
            //formBNameDIc.Add("horizon", "层位");
            //formBNameDIc.Add("wall_dep", "井深");
            //formBNameDIc.Add("samp_qua", "样品质量");
            formBNameDIc.Add("u", "U");
            formBNameDIc.Add("th", " Th");
            formBNameDIc.Add("k", "K");
            formBNameDIc.Add("total_co_ra", "总计数率");
            formBNameDIc.Add("total_gamma", "总伽马");
            formBNameDIc.Add("toc", "TOC");

            //////B16

            formBNameDIc.Add("porosity1", "孔隙度");
            formBNameDIc.Add("permea1", "渗透率");
            formBNameDIc.Add("oil_satur1", " 含油饱和度");
            formBNameDIc.Add("lipuidty", "可流动性");
            formBNameDIc.Add("bound_fluid", "束缚流体");
            formBNameDIc.Add("mova_wat_sat", "可动水饱和度");

            //////B11
            //formBNameDIc.Add("wall_num", "井号");
            //formBNameDIc.Add("well_dep", "井深");
            //formBNameDIc.Add("sam_type", "样品类型");
            //formBNameDIc.Add("lith_name", "岩性定名");
            formBNameDIc.Add("exc_wava", "激发波长");
            formBNameDIc.Add("fluo_wava", " 荧光波长");
            formBNameDIc.Add("fiuo_inten", "荧光强度");
            formBNameDIc.Add("equ-oil_con", "相当油含量");
            formBNameDIc.Add("level", "对比级别");
            formBNameDIc.Add("oil_index", "油性指数");

            //////B8
            formBNameDIc.Add(" well_num", "井号");

            //formBNameDIc.Add("date", "日期");

            formBNameDIc.Add("well_team", "钻井队");
            //formBNameDIc.Add("well_dep", "钻达深度");
            formBNameDIc.Add("abno_hori", "异常层位");
            formBNameDIc.Add("abno_st_time", "异常开始时间");
            formBNameDIc.Add("report_time", "报告时间");
            formBNameDIc.Add("abno_ho", "异常井段");
            formBNameDIc.Add("abno_para_ch", "异常参数变化情况");
            formBNameDIc.Add("ana_re_rep", "分析结果报告");
            formBNameDIc.Add("proposal", "建议处理措施");
            //formBNameDIc.Add("adoption", "采纳情况");
            formBNameDIc.Add("act_res", "实际结果");
            formBNameDIc.Add("report_com", "报告符合情况");
            formBNameDIc.Add("mud_log_rep", "录井报告人");
            formBNameDIc.Add("sig_dil_te", "钻井队签字");
            formBNameDIc.Add("sig_captain", "钻井队队长签字");
            formBNameDIc.Add("sig_geo_su", "地质监督签字");

            //////B12
            formBNameDIc.Add("S0", " S0");
            formBNameDIc.Add("S1", " S1");
            formBNameDIc.Add("S2", "S2");
            formBNameDIc.Add("S4", " S4");
            formBNameDIc.Add("tmax", " Tmax");

            //////B17
            formBNameDIc.Add("miner_cont1", "矿物1含量");
            formBNameDIc.Add("miner_cont2", "矿物2含量");


            //////B18
            formBNameDIc.Add("elem_cont1", "元素1含量");
            formBNameDIc.Add("elem_cont2", "元素2含量");

            formBNameDIc.Add("examiner", "检验人");





            formBNameDIc.Add(" thick", "厚度");

            formBNameDIc.Add("lith_evaluate", "岩性评价");

            //formBNameDIc.Add("porosity1", "核磁共振孔隙度");
            //formBNameDIc.Add("permea1", "渗透率");
            //formBNameDIc.Add("oil_satur1", "含油饱和度");
            formBNameDIc.Add("porosity2", "岩心物性分析孔隙度");
            formBNameDIc.Add("permea2", "渗透率2");
            formBNameDIc.Add("Dc", "Dc指数");
            formBNameDIc.Add("effect_store", "有效储存指数");
            formBNameDIc.Add("metit", "功指数");
            formBNameDIc.Add("mech_energe", "机械比能指数");
            formBNameDIc.Add("thing_evaluate", "物性评价");
            formBNameDIc.Add("time2", "钻时");


            ////formBNameDIc.Add("S0", "s0");
            ////formBNameDIc.Add("S1", "s1");
            ////formBNameDIc.Add("S2", "s2");
            formBNameDIc.Add("TPI", "TPI");
            formBNameDIc.Add("oil_character", "油性");
            formBNameDIc.Add("pre_density", "预测原油密度");
            formBNameDIc.Add("character_evaluate", "原油性质评价");

            formBNameDIc.Add("oil_evaluate", "含油气性评价");
            formBNameDIc.Add("pre_oil_evaluate", "原油评价");
            formBNameDIc.Add("compre_explain", "录井综合解释");


            ////d3
            formBNameDIc.Add("project", "项目");
            formBNameDIc.Add("recording", "井段");
            //formBNameDIc.Add("number", "数量");
            formBNameDIc.Add("qua_col", "质量控制");

            //d4
            formBNameDIc.Add("q_basic", "全烃基值");
            formBNameDIc.Add("q_max", "全烃峰值");
            formBNameDIc.Add("co", "非烃co2");
            formBNameDIc.Add("hs", "非烃H2S");
            formBNameDIc.Add("fi_den", "钻井液密度");
            formBNameDIc.Add("fi_vis", " 钻井液粘度");
            formBNameDIc.Add("fi_cl", "钻井液氯离子含量");
            formBNameDIc.Add("oil_h", "油花");
            formBNameDIc.Add("bubble", "气泡");
            formBNameDIc.Add("oil_core_leng", "含油气岩心长度");
            formBNameDIc.Add("wall_cen", "壁心");
            formBNameDIc.Add("wall_cen_num", "颗");
            formBNameDIc.Add("log_explain", "录井解释");

            //d5
            formBNameDIc.Add("dirll_fil", "钻井液体系");
            //formBNameDIc.Add("fil_den", "钻井液密度");
            //formBNameDIc.Add("fil_vis", "钻井液粘度");
            formBNameDIc.Add("cl_cont", "氯离子含量");
            formBNameDIc.Add("dirll_flu_tr", "钻井液处理情况");

            //d6
            formBNameDIc.Add("log_pro", "测井项目");
            formBNameDIc.Add("log_co", "测井情况");

            //d7
            formBNameDIc.Add("time_core", "取心筒次");
            formBNameDIc.Add("core_len", "心长");
            formBNameDIc.Add("harve_rate", "收获率");
            formBNameDIc.Add("h_oill_b_len", "饱含油岩心长度");
            formBNameDIc.Add("h_oill_f_len", "富含油岩心长度");
            formBNameDIc.Add("oil_in", " 油浸岩心长度");
            formBNameDIc.Add("oil_b", "油斑岩心长度");
            formBNameDIc.Add("oil_j", "油迹岩心长度");
            formBNameDIc.Add("fl_len", "荧光岩心长度");
            formBNameDIc.Add("h_air", "含气岩心长度");
            formBNameDIc.Add("c_h_oil_le", "储蓄层不含油气岩心长度");
            formBNameDIc.Add("f_d_oil_le", "非储蓄层不含油气岩心长度");

            //d8
            formBNameDIc.Add("samp_time", "取样日期");
            formBNameDIc.Add("samp_unit", "取样单位");
            formBNameDIc.Add("samp_poe", "取样人");
            formBNameDIc.Add("samp_type", "样品类型");
            formBNameDIc.Add("samp_number", "样品数量");
            formBNameDIc.Add("ana_project", " 分析项目");
            formBNameDIc.Add("rece_unit", "接收单位");
            formBNameDIc.Add("receiver", "接收人");



            //d1
            formBNameDIc.Add("wall_num", "井号");
            formBNameDIc.Add("well", "井别");
            formBNameDIc.Add("wall_type", "井型");
            formBNameDIc.Add("well_location", "井位地理位置");
            formBNameDIc.Add("well_loc_str", "井位构造位置");
            formBNameDIc.Add("well_loc_line", " 井位测线位置");
            formBNameDIc.Add("re_pos_well", "井间相对位置");
            formBNameDIc.Add("cor_lo_we_lo", "井位设计坐标经度");
            formBNameDIc.Add("cor_la_we_lo", "井位设计坐标纬度");
            formBNameDIc.Add("ac_lo_well", "井位实际坐标经度");
            formBNameDIc.Add("ac_la_well", "井位实际坐标纬度");
            formBNameDIc.Add("cor_x", "井位设计坐标X，m");
            formBNameDIc.Add("cor_y", "井位设计坐标Y，m");
            formBNameDIc.Add("ac_x", "井位实际坐标X，m");
            formBNameDIc.Add("ac_y", "井位实际坐标Y,m");
            formBNameDIc.Add("ta_co_la_de", "井位设计中靶纬度");
            formBNameDIc.Add("ta_co_lo_d", "井位设计中靶经度");
            formBNameDIc.Add("ta_co_x", "井位设计中靶X,m");
            formBNameDIc.Add("ta_co_y", "井位设计中靶Y,m");
            formBNameDIc.Add("ac_ta_co_la_lo", "井位实际中靶纬度");
            formBNameDIc.Add("ac_ta_co_lo_lo", "井位实际中靶经度");
            formBNameDIc.Add("ac_ta_co_x", "井位实际中靶坐标X,m");
            formBNameDIc.Add("ac_ta_co_y", "井位实际中靶坐标Y,m");
            formBNameDIc.Add("de_well_f_coo", "井位偏离设计坐标");
            formBNameDIc.Add("des_tar", "设计中靶垂深");
            formBNameDIc.Add("ac_tar", " 实际中靶垂深");
            formBNameDIc.Add("wall_to_mo", "井位总水平位移");
            formBNameDIc.Add("wall_cl_az", "井位闭合方位");
            formBNameDIc.Add("wall_tar_de", "井位靶心距");
            formBNameDIc.Add("max_inc_sh", "全井最大斜井");
            formBNameDIc.Add("max_po", "全井最大斜井方位");
            formBNameDIc.Add("max_dep", "全井最大斜井深");
            formBNameDIc.Add("buxingao", "补心高");
            formBNameDIc.Add("bu_alti", " 补心海拔");
            formBNameDIc.Add("wa_deep", "水深");
            formBNameDIc.Add("des_dep", "设计井深");
            formBNameDIc.Add("des_hor", "设计层位");
            formBNameDIc.Add("pos_hor", " 目的层");
            formBNameDIc.Add("dri_dep_com", "完钻井深度");
            formBNameDIc.Add("dri_hor_com", "完钻井层位");
            formBNameDIc.Add("dir_id_co", "完钻方法");
            formBNameDIc.Add("sta_dir_da", "开钻日期");
            formBNameDIc.Add("con_dir_da", "完钻日期");
            formBNameDIc.Add("wall_con_da", " 完井日期");
            formBNameDIc.Add("bit_pro", "钻头程序");
            formBNameDIc.Add("cas_pro", "套管程序");


            //d2
            formBNameDIc.Add("hor_j", " 层位界");
            formBNameDIc.Add("hor_j_dep", "底深");
            formBNameDIc.Add("hor_j_th", "厚度");
            formBNameDIc.Add("hor_x_", "层位系");
            formBNameDIc.Add("hor_t", "层位统");
            formBNameDIc.Add("hor_z", "层位组");
            formBNameDIc.Add("hor_d", " 层位段");

















        }

    }
}
