/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : cnpc_lmats

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 11/05/2021 16:07:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for afte_gas_de_record
-- ----------------------------
DROP TABLE IF EXISTS `afte_gas_de_record`;
CREATE TABLE `afte_gas_de_record`  (
  `date` date NULL DEFAULT NULL COMMENT '日期',
  `well_dep` double NULL DEFAULT NULL COMMENT '井深',
  `dill_loca` double NULL DEFAULT NULL COMMENT '钻头位置',
  `well_sta_time` time NULL DEFAULT NULL COMMENT '井筒静止时间',
  `fil_cm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '钻井液槽面显示',
  `fil_den` double NULL DEFAULT NULL COMMENT '钻井液密度',
  `fil_vis` double NULL DEFAULT NULL COMMENT '钻井液粘度',
  `late_time` time NULL DEFAULT NULL COMMENT '迟到时间',
  `q_t_s_time` time NULL DEFAULT NULL COMMENT '全烃出峰开始时间',
  `q_t_s_val` double NULL DEFAULT NULL COMMENT '全烃出峰开始值',
  `q_t_g_time` time NULL DEFAULT NULL COMMENT '全烃出峰高峰时间',
  `q_t_g_val` double NULL DEFAULT NULL COMMENT '全烃出峰高峰值',
  `q_t_l_time` time NULL DEFAULT NULL COMMENT '全烃出峰结束时间',
  `q_t_l_val` double NULL DEFAULT NULL COMMENT '全烃出峰结束值',
  `home_sec` double NULL DEFAULT NULL COMMENT '归位井段',
  `up_high` double NULL DEFAULT NULL COMMENT '上窜高度',
  `up_speed` double NULL DEFAULT NULL COMMENT '上窜速度'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of afte_gas_de_record
-- ----------------------------

-- ----------------------------
-- Table structure for aftereffect_gas_dete
-- ----------------------------
DROP TABLE IF EXISTS `aftereffect_gas_dete`;
CREATE TABLE `aftereffect_gas_dete`  (
  `time` time NULL DEFAULT NULL COMMENT '时间',
  `bit_position` double NULL DEFAULT NULL COMMENT '钻头位置',
  `total_hyd_peak` double NULL DEFAULT NULL COMMENT '全烃峰值',
  `up_speed` double NULL DEFAULT NULL COMMENT '上窜速度',
  `density` double NULL DEFAULT NULL COMMENT '密度',
  `viscosity` double NULL DEFAULT NULL COMMENT '粘度',
  `slot_sur_dis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '槽面显示'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of aftereffect_gas_dete
-- ----------------------------

-- ----------------------------
-- Table structure for basic_data_sheet
-- ----------------------------
DROP TABLE IF EXISTS `basic_data_sheet`;
CREATE TABLE `basic_data_sheet`  (
  `wall_num` int NULL DEFAULT NULL COMMENT '井号',
  `well` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '井别',
  `wall_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '井型',
  `well_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '井位地理位置',
  `well_loc_str` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '井位构造位置',
  `well_loc_line` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '井位测线位置',
  `re_pos_well` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '井间相对位置',
  `cor_lo_we_lo` double NULL DEFAULT NULL COMMENT '井位设计坐标经度',
  `cor_la_we_lo` double NULL DEFAULT NULL COMMENT '井位设计坐标纬度',
  `ac_lo_well` double NULL DEFAULT NULL COMMENT '井位实际坐标经度',
  `ac_la_well` double NULL DEFAULT NULL COMMENT '井位实际坐标纬度',
  `cor_x` double NULL DEFAULT NULL COMMENT '井位设计坐标X，m',
  `cor_y` double NULL DEFAULT NULL COMMENT '井位设计坐标Y，m',
  `ac_x` double NULL DEFAULT NULL COMMENT '井位实际坐标X，m',
  `ac_y` double NULL DEFAULT NULL COMMENT '井位实际坐标Y,m',
  `ta_co_la_de` double NULL DEFAULT NULL COMMENT '井位设计中靶纬度',
  `ta_co_lo_d` double NULL DEFAULT NULL COMMENT '井位设计中靶经度',
  `ta_co_x` double NULL DEFAULT NULL COMMENT '井位设计中靶X,m',
  `ta_co_y` double NULL DEFAULT NULL COMMENT '井位设计中靶Y,m',
  `ac_ta_co_la_lo` double NULL DEFAULT NULL COMMENT '井位实际中靶纬度',
  `ac_ta_co_lo_lo` double NULL DEFAULT NULL COMMENT '井位实际中靶经度',
  `ac_ta_co_x` double NULL DEFAULT NULL COMMENT '井位实际中靶坐标X,m',
  `ac_ta_co_y` double NULL DEFAULT NULL COMMENT '井位实际中靶坐标Y,m',
  `de_well_f_coo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '井位偏离设计坐标',
  `des_tar` double NULL DEFAULT NULL COMMENT '设计中靶垂深',
  `ac_tar` double NULL DEFAULT NULL COMMENT '实际中靶垂深',
  `wall_to_mo` double NULL DEFAULT NULL COMMENT '井位总水平位移',
  `wall_cl_az` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '井位闭合方位',
  `wall_tar_de` double NULL DEFAULT NULL COMMENT '井位靶心距',
  `max_inc_sh` double NULL DEFAULT NULL COMMENT '全井最大斜井',
  `max_po` double NULL DEFAULT NULL COMMENT '全井最大斜井方位',
  `max_dep` double NULL DEFAULT NULL COMMENT '全井最大斜井深',
  `buxingao` double NULL DEFAULT NULL COMMENT '补心高',
  `bu_alti` double NULL DEFAULT NULL COMMENT ' 补心海拔',
  `wa_deep` double NULL DEFAULT NULL COMMENT '水深',
  `des_dep` double NULL DEFAULT NULL COMMENT '设计井深',
  `des_hor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设计层位',
  `pos_hor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目的层',
  `dri_dep_com` double NULL DEFAULT NULL COMMENT '完钻井深度',
  `dri_hor_com` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '完钻井层位',
  `dir_id_co` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '完钻方法',
  `sta_dir_da` date NULL DEFAULT NULL COMMENT '开钻日期',
  `con_dir_da` date NULL DEFAULT NULL COMMENT '完钻日期',
  `wall_con_da` date NULL DEFAULT NULL COMMENT '完井日期',
  `bit_pro` double NULL DEFAULT NULL COMMENT '钻头程序',
  `cas_pro` double NULL DEFAULT NULL COMMENT '套管程序',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of basic_data_sheet
-- ----------------------------

-- ----------------------------
-- Table structure for carbonate_con_ana
-- ----------------------------
DROP TABLE IF EXISTS `carbonate_con_ana`;
CREATE TABLE `carbonate_con_ana`  (
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `wall_dep` double NULL DEFAULT NULL COMMENT '井深',
  `sam_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样品类型',
  `cal_car_cont` double NULL DEFAULT NULL COMMENT '碳酸钙含量',
  `con_ma_cal_car` double NULL DEFAULT NULL COMMENT '碳酸镁钙含量',
  `other` double NULL DEFAULT NULL COMMENT '其他',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of carbonate_con_ana
-- ----------------------------

-- ----------------------------
-- Table structure for casing_running
-- ----------------------------
DROP TABLE IF EXISTS `casing_running`;
CREATE TABLE `casing_running`  (
  `bushing_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '套管类型',
  `external_dia` double NULL DEFAULT NULL COMMENT '外径',
  `steel_grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '钢级',
  `wall_th` double NULL DEFAULT NULL COMMENT '壁厚',
  `place_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产地',
  `depth` double NULL DEFAULT NULL COMMENT '下深',
  `location_choke` double NULL DEFAULT NULL COMMENT '阻流环位置',
  `short_casing` double NULL DEFAULT NULL COMMENT '短套管位置',
  `hanger_pos` double NULL DEFAULT NULL COMMENT '悬挂器位置',
  `location_gra_hoop` double NULL DEFAULT NULL COMMENT '分级箍位置',
  `join_in` double NULL DEFAULT NULL COMMENT '联入'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of casing_running
-- ----------------------------

-- ----------------------------
-- Table structure for cementing
-- ----------------------------
DROP TABLE IF EXISTS `cementing`;
CREATE TABLE `cementing`  (
  `cement_brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '水泥品牌',
  `cement_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '水泥类型',
  `inje_vol_cem_` double NULL DEFAULT NULL COMMENT '水泥浆注入量',
  `av_den_cem_sl` double NULL DEFAULT NULL COMMENT '水泥浆平均密度',
  `cement_higt` double NULL DEFAULT NULL COMMENT '水泥反高',
  `pres_test` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '试压',
  `displa_mud` double NULL DEFAULT NULL COMMENT '替泥浆量',
  `lmpact_time` time NULL DEFAULT NULL COMMENT '碰压时间',
  `impact_value` double NULL DEFAULT NULL COMMENT '碰压值',
  `inject_amount_is_li` double NULL DEFAULT NULL COMMENT '隔离液注入量',
  `cement_qua` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '固井质量'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cementing
-- ----------------------------

-- ----------------------------
-- Table structure for chloride_ti_dilling
-- ----------------------------
DROP TABLE IF EXISTS `chloride_ti_dilling`;
CREATE TABLE `chloride_ti_dilling`  (
  `num` int NULL DEFAULT NULL COMMENT '编号',
  `samp_time` time NULL DEFAULT NULL COMMENT '取样时间',
  `samp_well_dep` double NULL DEFAULT NULL COMMENT '取样井深度',
  `silver_ni_c` double NULL DEFAULT NULL COMMENT '硝酸银浓度当量',
  `samp_v` double NULL DEFAULT NULL COMMENT '取样体积',
  `silv_ni_q` double NULL DEFAULT NULL COMMENT '硝酸银滴定前量',
  `silv_ni_l` double NULL DEFAULT NULL COMMENT '硝酸银滴定后的量',
  `silv_ni_co` double NULL DEFAULT NULL COMMENT '硝酸银消耗的量',
  `chlo_con` double NULL DEFAULT NULL COMMENT '氯根含量',
  `density` double NULL DEFAULT NULL COMMENT '密度',
  `viscosity` double NULL DEFAULT NULL COMMENT '粘度',
  `examiner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检验人'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chloride_ti_dilling
-- ----------------------------

-- ----------------------------
-- Table structure for chloride_ti_dilling_copy
-- ----------------------------
DROP TABLE IF EXISTS `chloride_ti_dilling_copy`;
CREATE TABLE `chloride_ti_dilling_copy`  (
  `num` int NULL DEFAULT NULL COMMENT '编号',
  `samp_time` time NULL DEFAULT NULL COMMENT '取样时间',
  `samp_well_dep` double NULL DEFAULT NULL COMMENT '取样井深度',
  `silver_ni_c` double NULL DEFAULT NULL COMMENT '硝酸银浓度当量',
  `samp_v` double NULL DEFAULT NULL COMMENT '取样体积',
  `silv_ni_q` double NULL DEFAULT NULL COMMENT '硝酸银滴定前量',
  `silv_ni_l` double NULL DEFAULT NULL COMMENT '硝酸银滴定后的量',
  `silv_ni_co` double NULL DEFAULT NULL COMMENT '硝酸银消耗的量',
  `chlo_con` double NULL DEFAULT NULL COMMENT '氯根含量',
  `density` double NULL DEFAULT NULL COMMENT '密度',
  `viscosity` double NULL DEFAULT NULL COMMENT '粘度',
  `examiner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检验人'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chloride_ti_dilling_copy
-- ----------------------------

-- ----------------------------
-- Table structure for complexity_treatment
-- ----------------------------
DROP TABLE IF EXISTS `complexity_treatment`;
CREATE TABLE `complexity_treatment`  (
  `well_depth` double NULL DEFAULT NULL COMMENT '井深',
  `time` time NULL DEFAULT NULL COMMENT '时间',
  `stratum` double NULL DEFAULT NULL COMMENT '地层',
  `accident_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事故类型',
  `tream_process` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '处理过程',
  `release_time` time NULL DEFAULT NULL COMMENT '解除时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of complexity_treatment
-- ----------------------------

-- ----------------------------
-- Table structure for coring_well_wall
-- ----------------------------
DROP TABLE IF EXISTS `coring_well_wall`;
CREATE TABLE `coring_well_wall`  (
  `coring_time` time NULL DEFAULT NULL COMMENT '取心时间',
  `coring_meth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '取心方式',
  `design_num` int NULL DEFAULT NULL COMMENT '取心颗数',
  `footage` double NULL DEFAULT NULL COMMENT '进尺',
  `core_length` double NULL DEFAULT NULL COMMENT '岩心长度',
  `harvest_rate` double NULL DEFAULT NULL COMMENT '收获率'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coring_well_wall
-- ----------------------------

-- ----------------------------
-- Table structure for csaing_record
-- ----------------------------
DROP TABLE IF EXISTS `csaing_record`;
CREATE TABLE `csaing_record`  (
  `date` date NULL DEFAULT NULL COMMENT '日期',
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `pla_pro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产地',
  `steel_gra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '钢级',
  `ext_diam` double NULL DEFAULT NULL COMMENT '外径',
  `wall_thick` double NULL DEFAULT NULL COMMENT '壁厚',
  `s_length` double NULL DEFAULT NULL COMMENT '单根长',
  `surveyor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '丈量人',
  `reviewer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '复查人',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of csaing_record
-- ----------------------------

-- ----------------------------
-- Table structure for cuttings_description
-- ----------------------------
DROP TABLE IF EXISTS `cuttings_description`;
CREATE TABLE `cuttings_description`  (
  `num` int NOT NULL COMMENT '序号',
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位',
  `top_dep_well` double NULL DEFAULT NULL COMMENT '井段顶深',
  `bot_dep_well` double NULL DEFAULT NULL COMMENT '井段底深',
  `litholo_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性颜色',
  `litholo_oil` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性含油级别',
  `lithology` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性',
  `lit_descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性及含油气水描述',
  `named_cutt` double NULL DEFAULT NULL COMMENT '定名岩屑占岩屑',
  `perce_oil_cut` double NULL DEFAULT NULL COMMENT '含油岩屑占定名岩屑',
  `flu-wet_illu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '荧光湿照颜色',
  `flu_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '荧光滴照颜色',
  `flu_dry_co` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '荧光干照颜色',
  `flu_con_lev` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '荧光对比级别',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cuttings_description
-- ----------------------------

-- ----------------------------
-- Table structure for density_ana_mudston
-- ----------------------------
DROP TABLE IF EXISTS `density_ana_mudston`;
CREATE TABLE `density_ana_mudston`  (
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位',
  `wall_dep` double NULL DEFAULT NULL COMMENT '井深',
  `lith_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名',
  `mea_value_l_o` double NULL DEFAULT NULL COMMENT '测量值L1',
  `mea_value_t` double NULL DEFAULT NULL COMMENT '测量值L2',
  `mea_dn` double NULL DEFAULT NULL COMMENT '测量值密度',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of density_ana_mudston
-- ----------------------------

-- ----------------------------
-- Table structure for descr_dilling_coring
-- ----------------------------
DROP TABLE IF EXISTS `descr_dilling_coring`;
CREATE TABLE `descr_dilling_coring`  (
  `core_num` int NOT NULL AUTO_INCREMENT COMMENT '岩心编号',
  `wear_cond` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '磨损情况',
  `total_leng` double NULL DEFAULT NULL COMMENT '累计长度',
  `sample_num` int NULL DEFAULT NULL COMMENT '岩样编号',
  `lith_name_co` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名颜色',
  `lith_name_oil` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名含油级别',
  `lith_name_lith` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名岩性',
  `lit_des_wat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性及含油气水描述',
  `flu_wet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '荧光湿照颜色',
  `flu_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '荧光滴照颜色',
  `flu_cont_le` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '荧光对比级别',
  PRIMARY KEY (`core_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of descr_dilling_coring
-- ----------------------------

-- ----------------------------
-- Table structure for drilling_coring
-- ----------------------------
DROP TABLE IF EXISTS `drilling_coring`;
CREATE TABLE `drilling_coring`  (
  `tube_times` int NULL DEFAULT NULL COMMENT '筒次',
  `horizon` int NULL DEFAULT NULL COMMENT '层位',
  `coring_sect` double NULL DEFAULT NULL COMMENT '取心井段',
  `footage` double NULL DEFAULT NULL COMMENT '进尺',
  `core_length` double NULL DEFAULT NULL COMMENT '岩心长度',
  `harvest_rate` double NULL DEFAULT NULL COMMENT '收获率'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drilling_coring
-- ----------------------------

-- ----------------------------
-- Table structure for drilling_fluif
-- ----------------------------
DROP TABLE IF EXISTS `drilling_fluif`;
CREATE TABLE `drilling_fluif`  (
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `density` double NULL DEFAULT NULL COMMENT '密度',
  `viscosity` double NULL DEFAULT NULL COMMENT '粘度',
  `water_loss` double NULL DEFAULT NULL COMMENT '失水',
  `mud_cake` double NULL DEFAULT NULL COMMENT '泥饼',
  `initial_cut` double NULL DEFAULT NULL COMMENT '初切',
  `final_cut` double NULL DEFAULT NULL COMMENT '终切',
  `sand_bearing` double NULL DEFAULT NULL COMMENT '含砂',
  `clay_conte` double NULL DEFAULT NULL COMMENT '般土含量',
  `soil_cons_c` double NULL DEFAULT NULL COMMENT '固土含量',
  `fri_coe` double NULL DEFAULT NULL COMMENT '摩阻系数',
  `300_read` int NULL DEFAULT NULL COMMENT '300转读数',
  `600_read` int NULL DEFAULT NULL COMMENT '600转读数',
  `hthp_w_loss` double NULL DEFAULT NULL COMMENT 'HTHP失水',
  `ph_value` double NULL DEFAULT NULL COMMENT 'PH值',
  `solid_cont` double NULL DEFAULT NULL COMMENT '固相含量',
  `cl` double NULL DEFAULT NULL COMMENT '氯离子',
  `total_sal` double NULL DEFAULT NULL COMMENT '总矿化度',
  `affect_m_l_t` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影响录井处理剂'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drilling_fluif
-- ----------------------------

-- ----------------------------
-- Table structure for drilling_para
-- ----------------------------
DROP TABLE IF EXISTS `drilling_para`;
CREATE TABLE `drilling_para`  (
  `wob` double NULL DEFAULT NULL COMMENT '钻压',
  `rota_num_turn` double NULL DEFAULT NULL COMMENT '转盘转数',
  `displact` double NULL DEFAULT NULL COMMENT '排量',
  `mpa` double NULL DEFAULT NULL COMMENT '泵压',
  `torque` double NULL DEFAULT NULL COMMENT '扭矩',
  `su_weight` double NULL DEFAULT NULL COMMENT '悬重'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drilling_para
-- ----------------------------

-- ----------------------------
-- Table structure for drilling_tool_structure
-- ----------------------------
DROP TABLE IF EXISTS `drilling_tool_structure`;
CREATE TABLE `drilling_tool_structure`  (
  `drill_tool_s` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '钻具结构'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drilling_tool_structure
-- ----------------------------

-- ----------------------------
-- Table structure for engineering_abno
-- ----------------------------
DROP TABLE IF EXISTS `engineering_abno`;
CREATE TABLE `engineering_abno`  (
  `time` time NULL DEFAULT NULL COMMENT '时间',
  `well_depth` double NULL DEFAULT NULL COMMENT '井深',
  `excep_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常类型',
  `adoption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '采纳情况'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of engineering_abno
-- ----------------------------

-- ----------------------------
-- Table structure for evaluation_logging
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_logging`;
CREATE TABLE `evaluation_logging`  (
  `mud_log-p` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '录井项目',
  `well_secti` double NULL DEFAULT NULL COMMENT '井段',
  `num_ana_sam` int NULL DEFAULT NULL COMMENT '分析样品个数',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of evaluation_logging
-- ----------------------------

-- ----------------------------
-- Table structure for frac_cavity_sta
-- ----------------------------
DROP TABLE IF EXISTS `frac_cavity_sta`;
CREATE TABLE `frac_cavity_sta`  (
  `time_cor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '取心筒次',
  `well_sec` double NULL DEFAULT NULL COMMENT '井段',
  `cori_num` int NULL DEFAULT NULL COMMENT '岩心编号',
  `length` double NULL DEFAULT NULL COMMENT '长度',
  `litho_namein` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名',
  `total_num` int NULL DEFAULT NULL COMMENT '总条数',
  `total_dens` double NULL DEFAULT NULL COMMENT '总密度',
  `eff_seam_num` int NULL DEFAULT NULL COMMENT '有效缝条数',
  `eff_seam_de` double NULL DEFAULT NULL COMMENT '有效缝密度',
  `eff_seam_w_o` double NULL DEFAULT NULL COMMENT '有效缝宽度大于5',
  `eff_seam_w_tw` double NULL DEFAULT NULL COMMENT '有效缝宽度在1到5之间',
  `eff_seam_w_t` double NULL DEFAULT NULL COMMENT '有效缝宽度小于等于1',
  `eff_vert_seam` double NULL DEFAULT NULL COMMENT '有效缝立缝',
  `eff_seam_in` double NULL DEFAULT NULL COMMENT '有效缝斜缝',
  `eff_flat_seam` double NULL DEFAULT NULL COMMENT '有效缝平缝',
  `fill_de_eff_s` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '有效缝填充程度',
  `suture` int NULL DEFAULT NULL COMMENT '缝合线条数',
  `lim_cave_num` int NULL DEFAULT NULL COMMENT '溶洞晶洞个数',
  `lim_cave_de` double NULL DEFAULT NULL COMMENT '溶洞晶洞密度',
  `cave_diam` double NULL DEFAULT NULL COMMENT '溶洞晶洞直径',
  `cave_fil` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '溶洞晶洞填充物',
  `cave_fil_le` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '溶洞晶洞填充程度',
  `plaque` int NULL DEFAULT NULL COMMENT '斑块数',
  `air_pla` int NULL DEFAULT NULL COMMENT '冒气处个数',
  `connect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '连通情况'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of frac_cavity_sta
-- ----------------------------

-- ----------------------------
-- Table structure for gas _chroa__hydca_rocks
-- ----------------------------
DROP TABLE IF EXISTS `gas _chroa__hydca_rocks`;
CREATE TABLE `gas _chroa__hydca_rocks`  (
  `wall_dep` double NULL DEFAULT NULL COMMENT '井深',
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT ' 层位',
  `sam_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样品类型',
  `lit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名',
  `sam_qua` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样品质量',
  `team_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT ' 组分',
  `peak_area` double NULL DEFAULT NULL COMMENT '峰面积'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gas _chroa__hydca_rocks
-- ----------------------------

-- ----------------------------
-- Table structure for instrument_op_cali
-- ----------------------------
DROP TABLE IF EXISTS `instrument_op_cali`;
CREATE TABLE `instrument_op_cali`  (
  `instru_op_ca` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仪器运行及校验'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of instrument_op_cali
-- ----------------------------

-- ----------------------------
-- Table structure for late_time
-- ----------------------------
DROP TABLE IF EXISTS `late_time`;
CREATE TABLE `late_time`  (
  `measur_w_dep` double NULL DEFAULT NULL COMMENT '测量井深',
  `late_time` time NULL DEFAULT NULL COMMENT '迟到时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of late_time
-- ----------------------------

-- ----------------------------
-- Table structure for light_hydr_logging
-- ----------------------------
DROP TABLE IF EXISTS `light_hydr_logging`;
CREATE TABLE `light_hydr_logging`  (
  `wall_dep` double NULL DEFAULT NULL COMMENT '井深',
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位',
  `lit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名',
  `team_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组分',
  `peak_area` double NULL DEFAULT NULL COMMENT '峰面积'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of light_hydr_logging
-- ----------------------------

-- ----------------------------
-- Table structure for lith_oil_gas_water
-- ----------------------------
DROP TABLE IF EXISTS `lith_oil_gas_water`;
CREATE TABLE `lith_oil_gas_water`  (
  `lith_oil_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性及油气水'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lith_oil_gas_water
-- ----------------------------

-- ----------------------------
-- Table structure for log_board__class
-- ----------------------------
DROP TABLE IF EXISTS `log_board__class`;
CREATE TABLE `log_board__class`  (
  `date` time NULL DEFAULT NULL COMMENT '日期',
  `classes` int NOT NULL COMMENT '班次',
  `watcher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '值班人',
  `shift` int NULL DEFAULT NULL COMMENT '井深',
  `horizon` int NULL DEFAULT NULL COMMENT '层位',
  `footage` int NULL DEFAULT NULL COMMENT '进尺',
  PRIMARY KEY (`classes`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_board__class
-- ----------------------------

-- ----------------------------
-- Table structure for logging_work_sta
-- ----------------------------
DROP TABLE IF EXISTS `logging_work_sta`;
CREATE TABLE `logging_work_sta`  (
  `project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目',
  `recording` double NULL DEFAULT NULL COMMENT '井段',
  `number` int NULL DEFAULT NULL COMMENT '数量',
  `qua_col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数量控制',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logging_work_sta
-- ----------------------------

-- ----------------------------
-- Table structure for midway_test
-- ----------------------------
DROP TABLE IF EXISTS `midway_test`;
CREATE TABLE `midway_test`  (
  ` well_section` double NULL DEFAULT NULL COMMENT '井段',
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层段',
  `tool_struct` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工具结构',
  `forma_press` double NULL DEFAULT NULL COMMENT '地层压力',
  `work_fluid_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作液类型',
  `test` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测试工艺',
  `test_location` double NULL DEFAULT NULL COMMENT '测试器座封位置',
  `seat_seal_pos` double NULL DEFAULT NULL COMMENT '座封位置',
  `unseal_time` time NULL DEFAULT NULL COMMENT '解封时间',
  `well_op_clos_ti` time NULL DEFAULT NULL COMMENT '开关井时间',
  `dis_well_op` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开关井情况显示',
  `quan_reco` double NULL DEFAULT NULL COMMENT '回收液体量',
  `pre_con_daily` double NULL DEFAULT NULL COMMENT '初步折算流体日产量',
  `fluid_pro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流体性质',
  `oil_test_con` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '试油结论'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of midway_test
-- ----------------------------

-- ----------------------------
-- Table structure for natural_gamma_spe_log
-- ----------------------------
DROP TABLE IF EXISTS `natural_gamma_spe_log`;
CREATE TABLE `natural_gamma_spe_log`  (
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位',
  `wall_dep` double NULL DEFAULT NULL COMMENT '井深',
  `samp_qua` double NULL DEFAULT NULL COMMENT '样品质量',
  `u` double NULL DEFAULT NULL COMMENT 'U',
  `th` double NULL DEFAULT NULL COMMENT ' Th',
  `k` double NULL DEFAULT NULL COMMENT 'K',
  `total_co_ra` double NULL DEFAULT NULL COMMENT '总计数率',
  `total_gamma` double NULL DEFAULT NULL COMMENT '总伽马',
  `toc` double NULL DEFAULT NULL COMMENT 'TOC',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of natural_gamma_spe_log
-- ----------------------------

-- ----------------------------
-- Table structure for nuc_mag_reson
-- ----------------------------
DROP TABLE IF EXISTS `nuc_mag_reson`;
CREATE TABLE `nuc_mag_reson`  (
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `wall_dep` double NULL DEFAULT NULL COMMENT '井深',
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位',
  `lit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名',
  `porosity` double NULL DEFAULT NULL COMMENT '孔隙度',
  `permea` double NULL DEFAULT NULL COMMENT '渗透率',
  `oil_satur` double NULL DEFAULT NULL COMMENT '含油饱和度',
  `lipuidty` double NULL DEFAULT NULL COMMENT '可流动性',
  `bound_fluid` double NULL DEFAULT NULL COMMENT '束缚流体',
  `mova_wat_sat` double NULL DEFAULT NULL COMMENT '可动水饱和度',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nuc_mag_reson
-- ----------------------------

-- ----------------------------
-- Table structure for oil_gas_dis_sta
-- ----------------------------
DROP TABLE IF EXISTS `oil_gas_dis_sta`;
CREATE TABLE `oil_gas_dis_sta`  (
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位',
  `well_sec` double NULL DEFAULT NULL COMMENT '井段',
  `thick` double NULL DEFAULT NULL COMMENT '厚度',
  `lithology` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性',
  `q_basic` double NULL DEFAULT NULL COMMENT '全烃基值',
  `q_max` double NULL DEFAULT NULL COMMENT '全烃峰值',
  `co` double NULL DEFAULT NULL COMMENT '非烃co2',
  `hs` double NULL DEFAULT NULL COMMENT '非烃H2S',
  `fi_den` double NULL DEFAULT NULL COMMENT '钻井液密度',
  `fi_vis` double NULL DEFAULT NULL COMMENT ' 钻井液粘度',
  `fi_cl` double NULL DEFAULT NULL COMMENT '钻井液氯离子含量',
  `oil_h` double NULL DEFAULT NULL COMMENT '油花',
  `bubble` double NULL DEFAULT NULL COMMENT '气泡',
  `oil_core_leng` double NULL DEFAULT NULL COMMENT '含油气岩心长度',
  `wall_cen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '壁心，颗',
  `log_explain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '录井解释',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oil_gas_dis_sta
-- ----------------------------

-- ----------------------------
-- Table structure for quanti_flu_logging
-- ----------------------------
DROP TABLE IF EXISTS `quanti_flu_logging`;
CREATE TABLE `quanti_flu_logging`  (
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `wall_num` int NULL DEFAULT NULL COMMENT '井号',
  `sam_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样品类型',
  `lith_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名',
  `exc_wava` double NULL DEFAULT NULL COMMENT '激发波长',
  `fluo_wava` double NULL DEFAULT NULL COMMENT '荧光波长',
  `fiuo_inten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '荧光强度',
  `equ-oil_con` double NULL DEFAULT NULL COMMENT '相当油含量',
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '对比级别',
  `oil_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '油性指数',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of quanti_flu_logging
-- ----------------------------

-- ----------------------------
-- Table structure for special_cond_marking
-- ----------------------------
DROP TABLE IF EXISTS `special_cond_marking`;
CREATE TABLE `special_cond_marking`  (
  `well_num` int NULL DEFAULT NULL COMMENT '井号',
  `date` date NULL DEFAULT NULL COMMENT '日期',
  `well_team` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '钻井队',
  `well_dep` double NULL DEFAULT NULL COMMENT '钻达深度',
  `abno_hori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常层位',
  `abno_st_time` time NULL DEFAULT NULL COMMENT '异常开始时间',
  `report_time` time NULL DEFAULT NULL COMMENT '报告时间',
  `abno_ho` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常井段',
  `abno_para_ch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常参数变化情况',
  `ana_re_rep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分析结果报告',
  `proposal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '建议处理措施',
  `adoption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '采纳情况',
  `act_res` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '实际结果',
  `report_com` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报告符合情况',
  `mud_log_rep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '录井报告人',
  `sig_dil_te` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '钻井队签字',
  `sig_captain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '钻井队队长签字',
  `sig_geo_su` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地质监督签字'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of special_cond_marking
-- ----------------------------

-- ----------------------------
-- Table structure for sta_table_ana_samp
-- ----------------------------
DROP TABLE IF EXISTS `sta_table_ana_samp`;
CREATE TABLE `sta_table_ana_samp`  (
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `samp_time` date NULL DEFAULT NULL COMMENT '取样日期',
  `well_sec` double NULL DEFAULT NULL COMMENT '井段',
  `samp_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '取样单位',
  `samp_poe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '取样人',
  `samp_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样品类型',
  `samp_number` int NULL DEFAULT NULL COMMENT '样品数量',
  `ana_project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分析项目',
  `rece_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接收单位',
  `receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接收人',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sta_table_ana_samp
-- ----------------------------

-- ----------------------------
-- Table structure for stati_table_logg
-- ----------------------------
DROP TABLE IF EXISTS `stati_table_logg`;
CREATE TABLE `stati_table_logg`  (
  `date` date NULL DEFAULT NULL COMMENT '日期',
  `well_sec` double NULL DEFAULT NULL COMMENT '井段',
  `log_pro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测井项目',
  `rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '比例',
  `log_co` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测井情况'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stati_table_logg
-- ----------------------------

-- ----------------------------
-- Table structure for statis_dirll_co
-- ----------------------------
DROP TABLE IF EXISTS `statis_dirll_co`;
CREATE TABLE `statis_dirll_co`  (
  `time_core` int NULL DEFAULT NULL COMMENT '取心筒次',
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位',
  `well_sec` double NULL DEFAULT NULL COMMENT '井段',
  `footage` double NULL DEFAULT NULL COMMENT '进尺',
  `core_len` double NULL DEFAULT NULL COMMENT '心长',
  `harve_rate` double NULL DEFAULT NULL COMMENT '收获率',
  `h_oill_b_len` double NULL DEFAULT NULL COMMENT '饱含油岩心长度',
  `h_oill_f_len` double NULL DEFAULT NULL COMMENT '富含油岩心长度',
  `oil_in` double NULL DEFAULT NULL COMMENT '油浸岩心长度',
  `oil_b` double NULL DEFAULT NULL COMMENT '油斑岩心长度',
  `oil_j` double NULL DEFAULT NULL COMMENT '油迹岩心长度',
  `fl_len` double NULL DEFAULT NULL COMMENT '荧光岩心长度',
  `h_air` double NULL DEFAULT NULL COMMENT '含气岩心长度',
  `c_h_oil_le` double NULL DEFAULT NULL COMMENT '储蓄层不含油气岩心长度',
  `f_d_oil_le` double NULL DEFAULT NULL COMMENT '非储蓄层不含油气岩心长度',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of statis_dirll_co
-- ----------------------------

-- ----------------------------
-- Table structure for strati_data_sheet
-- ----------------------------
DROP TABLE IF EXISTS `strati_data_sheet`;
CREATE TABLE `strati_data_sheet`  (
  `hor_j` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位界',
  `hor_j_dep` double NULL DEFAULT NULL COMMENT '层位界底深',
  `hor_j_th` double NULL DEFAULT NULL COMMENT '层位界厚度',
  `hor_x_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位系',
  `hor_x_dep` double NULL DEFAULT NULL COMMENT '层位系底深',
  `hor_x_th` double NULL DEFAULT NULL COMMENT '层位系厚度',
  `hor_t` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位统',
  `hor_t_dep` double NULL DEFAULT NULL COMMENT '层位统底深',
  `hor_t_th` double NULL DEFAULT NULL COMMENT '层位统厚度',
  `hor_z` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位组',
  `hor_z_dep` double NULL DEFAULT NULL COMMENT '层位组底深',
  `hor_z_th` double NULL DEFAULT NULL COMMENT '层位组厚度',
  `hor_d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位段',
  `hor_d_dep` double NULL DEFAULT NULL COMMENT '层位段底深',
  `hor_d_th` double NULL DEFAULT NULL COMMENT '层位段厚度'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of strati_data_sheet
-- ----------------------------

-- ----------------------------
-- Table structure for sub_sta_table_drill
-- ----------------------------
DROP TABLE IF EXISTS `sub_sta_table_drill`;
CREATE TABLE `sub_sta_table_drill`  (
  `horizon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层位',
  `well_sec` double NULL DEFAULT NULL COMMENT '井段',
  `dirll_fil` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '钻井液体系',
  `fil_den` double NULL DEFAULT NULL COMMENT '钻井液密度',
  `fil_vis` double NULL DEFAULT NULL COMMENT '钻井液粘度',
  `cl_cont` double NULL DEFAULT NULL COMMENT '氯离子含量',
  `dirll_flu_tr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '钻井液处理情况'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sub_sta_table_drill
-- ----------------------------

-- ----------------------------
-- Table structure for text_well
-- ----------------------------
DROP TABLE IF EXISTS `text_well`;
CREATE TABLE `text_well`  (
  `text_dill_pro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测井项目',
  `rate` double NULL DEFAULT NULL COMMENT '比例',
  `well_section` double NULL DEFAULT NULL COMMENT '井段',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of text_well
-- ----------------------------

-- ----------------------------
-- Table structure for therm_detion_rock
-- ----------------------------
DROP TABLE IF EXISTS `therm_detion_rock`;
CREATE TABLE `therm_detion_rock`  (
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `wall_dep` double NULL DEFAULT NULL COMMENT '井深',
  `lit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名',
  `sam_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样品类型',
  `s_o` double NULL DEFAULT NULL COMMENT ' S0',
  `s_tw` double NULL DEFAULT NULL COMMENT ' S1',
  `s_t` double NULL DEFAULT NULL COMMENT 'S2',
  `s_f` double NULL DEFAULT NULL COMMENT ' S4',
  `tmax` double NULL DEFAULT NULL COMMENT 'Tmax',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of therm_detion_rock
-- ----------------------------

-- ----------------------------
-- Table structure for track
-- ----------------------------
DROP TABLE IF EXISTS `track`;
CREATE TABLE `track`  (
  `depth_measur` double NULL DEFAULT NULL COMMENT '测斜井深',
  `well_angle` double NULL DEFAULT NULL COMMENT '井斜角',
  `azimuth` double NULL DEFAULT NULL COMMENT '方位角'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of track
-- ----------------------------

-- ----------------------------
-- Table structure for turn_head_data
-- ----------------------------
DROP TABLE IF EXISTS `turn_head_data`;
CREATE TABLE `turn_head_data`  (
  `number` int NOT NULL COMMENT '序号',
  `size` double NULL DEFAULT NULL COMMENT '尺寸',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `acc_footage` double NULL DEFAULT NULL COMMENT '累计进尺',
  `cum_pure_d_t` time NULL DEFAULT NULL COMMENT '累计纯钻时间',
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of turn_head_data
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `Account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Time` datetime NOT NULL,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '2021-05-11 16:02:59', 'root', '123456');

-- ----------------------------
-- Table structure for well_rot_cond
-- ----------------------------
DROP TABLE IF EXISTS `well_rot_cond`;
CREATE TABLE `well_rot_cond`  (
  `time` time NULL DEFAULT NULL COMMENT '时间',
  `brief_const` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '施工简况'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of well_rot_cond
-- ----------------------------

-- ----------------------------
-- Table structure for x-ray_diff_logging
-- ----------------------------
DROP TABLE IF EXISTS `x-ray_diff_logging`;
CREATE TABLE `x-ray_diff_logging`  (
  `num` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `wall_dep` double NULL DEFAULT NULL COMMENT '井深',
  `lit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岩性定名',
  `miner_cont` double NULL DEFAULT NULL COMMENT '矿物含量',
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of x-ray_diff_logging
-- ----------------------------

-- ----------------------------
-- Table structure for x_ray_fiuore_logging
-- ----------------------------
DROP TABLE IF EXISTS `x_ray_fiuore_logging`;
CREATE TABLE `x_ray_fiuore_logging`  (
  `wall_dep` double NULL DEFAULT NULL COMMENT '井深',
  `elem_cont` double NULL DEFAULT NULL COMMENT '元素含量'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of x_ray_fiuore_logging
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
