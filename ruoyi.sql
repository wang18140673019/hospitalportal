/*
 Navicat Premium Data Transfer

 Source Server         : 127
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost:3306
 Source Schema         : ruoyi

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 22/04/2021 12:29:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `officecode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室编码',
  `doctorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生名字',
  `doctorcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生编码',
  `iswork` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否出诊',
  `doctorintroduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生介绍',
  `doctorprofessional` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生职称',
  `doctorspeciality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医疗专长',
  `doctorimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生照片',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `doctorcodeindex`(`officecode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, 'waike', '111', '1111', 'Y', '医生介绍', '职称', '专长', '1.jpg');
INSERT INTO `doctor` VALUES (2, 'waike', 'wang', '1111', 'Y', '医生介绍', '职称', '专长', '1.jpg');
INSERT INTO `doctor` VALUES (4, 'erke', '111', '222', '', '', '', '', '');

-- ----------------------------
-- Table structure for formula
-- ----------------------------
DROP TABLE IF EXISTS `formula`;
CREATE TABLE `formula`  (
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'row identity (main ID)',
  `retentiontime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'row retention time',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row ID',
  `mz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'row m/z',
  `comparisonresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'result',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5250 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分子式' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of formula
-- ----------------------------
INSERT INTO `formula` VALUES ('C6H4N5PS', '3.415794', 2160, '210.000427246093', '1');
INSERT INTO `formula` VALUES ('C23H45N5O6', '16.432615', 2163, '488.342315673828', '1');
INSERT INTO `formula` VALUES ('C5H8N4O3S', '13.954264', 2189, '205.038536071777', '1');
INSERT INTO `formula` VALUES ('C19H31NO4', '20.995598', 2211, '338.231658935546', '1');
INSERT INTO `formula` VALUES ('C23H33N3O2', '15.71429', 2212, '384.263641357421', '1');
INSERT INTO `formula` VALUES ('C28H61NO15', '13.954264', 2221, '652.410339355468', '0');
INSERT INTO `formula` VALUES ('C19H44N2O8', '22.760674', 2229, '429.318298339843', '0');
INSERT INTO `formula` VALUES ('C11H30N2OP2S', '15.970869', 2236, '301.162338256835', '0');
INSERT INTO `formula` VALUES ('C20H36O2', '23.113128', 2246, '309.276763916015', '1');
INSERT INTO `formula` VALUES ('C17H11NOS', '16.815763', 2265, '278.06298828125', '1');
INSERT INTO `formula` VALUES ('C15H26O3', '20.2150019999999', 2274, '255.195068359375', '1');
INSERT INTO `formula` VALUES ('C3H12N3O2P', '17.534449', 2275, '154.074905395507', '1');
INSERT INTO `formula` VALUES ('C19H26O2P2S', '21.119067', 2284, '381.12026977539', '0');
INSERT INTO `formula` VALUES ('C28H61NO8', '23.372677', 2286, '540.446533203125', '0');
INSERT INTO `formula` VALUES ('C19H18S', '19.052446', 2288, '279.120361328125', '1');
INSERT INTO `formula` VALUES ('C20H40N3O2PS', '11.840096', 2290, '418.264251708984', '1');
INSERT INTO `formula` VALUES ('C13H21N2O4P', '19.726041', 2306, '301.13101196289', '1');
INSERT INTO `formula` VALUES ('C44H63N3O4P2', '26.893074', 2341, '380.722045898437', '0');
INSERT INTO `formula` VALUES ('C21H43N3O6', '24.665269', 2356, '434.3232421875', '1');
INSERT INTO `formula` VALUES ('C18H31NO2', '20.76189', 2360, '294.242462158203', '1');
INSERT INTO `formula` VALUES ('C7H21N4O4P', '15.514006', 2363, '257.136291503906', '0');
INSERT INTO `formula` VALUES ('C11H26O11S', '10.094122', 2364, '367.127456665039', '0');
INSERT INTO `formula` VALUES ('C26H57NO7', '23.391001', 2381, '496.419921875', '0');
INSERT INTO `formula` VALUES ('C24H40N4O4S', '24.96154', 2395, '481.284271240234', '1');
INSERT INTO `formula` VALUES ('C21H14N4O5', '21.969399', 2437, '403.104675292968', '1');
INSERT INTO `formula` VALUES ('C20H45NO5P2S', '13.346763', 2476, '474.254516601562', '0');
INSERT INTO `formula` VALUES ('C14H26N2O7', '18.82212', 2494, '335.182983398437', '1');
INSERT INTO `formula` VALUES ('C29H55NO8', '22.37758', 2496, '546.399841308593', '1');
INSERT INTO `formula` VALUES ('C13H17N3O5S', '18.339476', 2518, '328.096267700195', '1');
INSERT INTO `formula` VALUES ('C45H67N5O8', '23.482333', 2529, '806.506225585937', '1');
INSERT INTO `formula` VALUES ('C10H29N4O2PS', '22.946483', 2550, '301.18130493164', '0');
INSERT INTO `formula` VALUES ('C27H45N4OP', '13.808883', 2568, '473.33901977539', '1');
INSERT INTO `formula` VALUES ('C19H8N2O13P2S', '14.845472', 2593, '566.928405761718', '0');
INSERT INTO `formula` VALUES ('C9H9N3O8S', '9.62349509999999', 2603, '320.018463134765', '1');
INSERT INTO `formula` VALUES ('C6H11N3O3P2', '13.3107609999999', 2609, '236.033958435058', '0');
INSERT INTO `formula` VALUES ('C20H26O3', '20.47048', 2619, '315.195556640625', '1');
INSERT INTO `formula` VALUES ('C8H9N3O5S', '13.618653', 2629, '260.033996582031', '1');
INSERT INTO `formula` VALUES ('C21H36O3', '23.113128', 2648, '337.271179199218', '1');
INSERT INTO `formula` VALUES ('C17H27NO5', '18.322849', 2672, '326.195861816406', '1');
INSERT INTO `formula` VALUES ('C12H17N2O8P', '10.606804', 2706, '175.044075012207', '1');
INSERT INTO `formula` VALUES ('C5H15O8PS', '14.615979', 2726, '267.030288696289', '0');
INSERT INTO `formula` VALUES ('C20H30O3', '20.726505', 2735, '319.225646972656', '1');
INSERT INTO `formula` VALUES ('C21H47NO8', '18.409014', 2743, '442.336563110351', '0');
INSERT INTO `formula` VALUES ('C29H63N4O4P', '26.323684', 2744, '563.466156005859', '0');
INSERT INTO `formula` VALUES ('C18H28O2', '21.672474', 2759, '277.215179443359', '1');
INSERT INTO `formula` VALUES ('C10H21N4O4P', '19.0888', 2776, '293.136413574218', '1');
INSERT INTO `formula` VALUES ('C6H19N4O5P', '11.889504', 2796, '259.115661621093', '0');
INSERT INTO `formula` VALUES ('C7H12N4O3S', '12.262038', 2801, '233.069625854492', '1');
INSERT INTO `formula` VALUES ('C22H22O3', '25.701492', 2805, '335.164794921875', '1');
INSERT INTO `formula` VALUES ('C31H44O5', '22.799318', 2890, '497.324197387695', '1');
INSERT INTO `formula` VALUES ('C29H43NO6', '22.505686', 2922, '502.316425141834', '1');
INSERT INTO `formula` VALUES ('C29H40O6', '22.487295', 2933, '485.290103488498', '1');
INSERT INTO `formula` VALUES ('C10H3O3PS', '0.84044282', 2936, '234.961337089538', '0');
INSERT INTO `formula` VALUES ('C25H43O4PS', '22.55707', 2941, '471.271685656379', '0');
INSERT INTO `formula` VALUES ('C36H11N', '15.821104', 2944, '458.09639400906', '0');
INSERT INTO `formula` VALUES ('C3H6O4P2S', '0.97050348', 2957, '200.952404318915', '1');
INSERT INTO `formula` VALUES ('C14H15N3O3S', '21.672474', 2985, '306.090753252078', '1');
INSERT INTO `formula` VALUES ('C9H12O12S', '15.070514', 2990, '345.012958122702', '1');
INSERT INTO `formula` VALUES ('C28H43O4PS', '22.487295', 3007, '507.271884445917', '1');
INSERT INTO `formula` VALUES ('C25H34O5', '22.323811', 3016, '415.247314453125', '1');
INSERT INTO `formula` VALUES ('C14H24N2O7', '19.891106', 3017, '333.167717827691', '1');
INSERT INTO `formula` VALUES ('C31H46O5', '23.225447', 3023, '499.340023040771', '1');
INSERT INTO `formula` VALUES ('C18H22O3', '21.969399', 3026, '287.165250142415', '1');
INSERT INTO `formula` VALUES ('C17H27NO4', '19.307858', 3058, '310.200565338134', '1');
INSERT INTO `formula` VALUES ('C21H51N5O5S', '15.952567', 3072, '486.366657002767', '0');
INSERT INTO `formula` VALUES ('C12H23N4O4P', '18.106124', 3075, '319.152243477957', '1');
INSERT INTO `formula` VALUES ('C14H26N2O7', '19.815769', 3079, '335.182678222656', '1');
INSERT INTO `formula` VALUES ('C18H27N4O2PS', '15.766313', 3089, '395.167689996016', '1');
INSERT INTO `formula` VALUES ('C30H49O3PS', '23.225447', 3121, '521.322294616699', '1');
INSERT INTO `formula` VALUES ('C24H56N3O5P', '13.3107609999999', 3125, '498.399606557992', '0');
INSERT INTO `formula` VALUES ('C33H53O4PS', '22.927514', 3126, '577.349096471613', '0');
INSERT INTO `formula` VALUES ('C21H20O3', '24.222208', 3183, '321.14857228597', '1');
INSERT INTO `formula` VALUES ('C11H17O4P', '19.779666', 3192, '245.092458407084', '1');
INSERT INTO `formula` VALUES ('C29H57NOP2', '13.954264', 3193, '498.399373997024', '0');
INSERT INTO `formula` VALUES ('C23H39N4PS', '21.914115', 3199, '435.272097560337', '1');
INSERT INTO `formula` VALUES ('C34H29NO5P2', '21.395755', 3210, '594.158352170671', '1');
INSERT INTO `formula` VALUES ('C13H23NO4', '18.196793', 3221, '258.168994903564', '1');
INSERT INTO `formula` VALUES ('C34H67N4OPS', '14.421241', 3244, '611.483136704388', '0');
INSERT INTO `formula` VALUES ('C15H30N2OP2S', '17.866082', 3269, '349.16300201416', '0');
INSERT INTO `formula` VALUES ('C37H5N5O10', '17.337115', 3300, '680.01126190415', '0');
INSERT INTO `formula` VALUES ('C8H20N3O2P', '23.3524', 3311, '222.137533968145', '1');
INSERT INTO `formula` VALUES ('C7H21N4O7PS', '21.599974', 3319, '337.094060609822', '0');
INSERT INTO `formula` VALUES ('C24H11NO11', '21.8020419999999', 3326, '490.0408574123', '1');
INSERT INTO `formula` VALUES ('C15H6N3O2P', '12.053542', 3327, '292.027199881417', '0');
INSERT INTO `formula` VALUES ('C11H15O3P', '19.743802', 3334, '227.082226011488', '1');
INSERT INTO `formula` VALUES ('C29H68N5O4PS', '22.927514', 3337, '614.483909606933', '0');
INSERT INTO `formula` VALUES ('C13H20O5', '19.052446', 3339, '257.137564522879', '1');
INSERT INTO `formula` VALUES ('C17H27NO4', '19.833921', 3342, '310.201212565104', '1');
INSERT INTO `formula` VALUES ('C10H26N5O6PS', '20.76189', 3364, '376.141780010022', '0');
INSERT INTO `formula` VALUES ('C23H11NO6', '14.047662', 3383, '398.066244784268', '1');
INSERT INTO `formula` VALUES ('C7H2N5O2PS', '2.6572064', 3409, '251.975040738544', '0');
INSERT INTO `formula` VALUES ('C46H94O8P2', '15.697077', 3422, '837.64924621582', '1');
INSERT INTO `formula` VALUES ('C19H18N4O4', '20.76189', 3427, '367.140680948893', '1');
INSERT INTO `formula` VALUES ('C19H37NP2', '11.688133', 3440, '342.248342059907', '1');
INSERT INTO `formula` VALUES ('C20H26O3', '21.619625', 3455, '315.195255055147', '1');
INSERT INTO `formula` VALUES ('C17H23N2O4P', '19.4906229999999', 3493, '351.147435390588', '1');
INSERT INTO `formula` VALUES ('C18H41O8P', '21.783714', 3501, '417.26143391927', '1');
INSERT INTO `formula` VALUES ('C10H25N4O5P', '17.608222', 3508, '313.163236818113', '1');
INSERT INTO `formula` VALUES ('C15H14O4S', '17.552103', 3510, '291.068346659342', '1');
INSERT INTO `formula` VALUES ('C15H35N3O5', '20.672469', 3513, '338.266448974609', '1');
INSERT INTO `formula` VALUES ('C35H61N5OS', '22.55707', 3519, '600.465591430664', '1');
INSERT INTO `formula` VALUES ('C21H38O4', '21.728551', 3522, '355.283126831054', '1');
INSERT INTO `formula` VALUES ('C11H22O5P2S', '19.927294', 3555, '329.073809023256', '0');
INSERT INTO `formula` VALUES ('C46H65N3O3', '26.837218', 3559, '708.511464436849', '1');
INSERT INTO `formula` VALUES ('C21H24O3', '22.19337', 3570, '325.180473327636', '1');
INSERT INTO `formula` VALUES ('C6H19N4O4P', '14.403283', 3579, '243.121571858723', '1');
INSERT INTO `formula` VALUES ('C19H30O4', '21.414159', 3607, '323.220371246337', '1');
INSERT INTO `formula` VALUES ('C27H4O11P2', '16.693009', 3618, '566.930457188533', '0');
INSERT INTO `formula` VALUES ('C14H24N2O7', '19.617027', 3637, '333.166819254557', '1');
INSERT INTO `formula` VALUES ('C19H20N4O6', '20.287683', 3655, '401.14635852632', '1');
INSERT INTO `formula` VALUES ('C2HN3O5S', '1.4144808', 3681, '179.971899850027', '1');
INSERT INTO `formula` VALUES ('C14H19N4O8P', '18.196793', 3693, '403.101778065074', '1');
INSERT INTO `formula` VALUES ('C12H25N4O4P', '19.5086', 3700, '321.168076948686', '1');
INSERT INTO `formula` VALUES ('C16H25N4PS', '17.076613', 3707, '337.161865234375', '1');
INSERT INTO `formula` VALUES ('C22H22S', '19.43556', 3713, '319.152106391059', '1');
INSERT INTO `formula` VALUES ('C33H66N3OPS', '23.372677', 3731, '584.474429598721', '0');
INSERT INTO `formula` VALUES ('C18H35N4O4P', '22.854518', 3735, '403.245529174804', '1');
INSERT INTO `formula` VALUES ('C16H27NO4', '18.288237', 3740, '298.200427464076', '1');
INSERT INTO `formula` VALUES ('C18H27N4O2PS', '16.266567', 3747, '395.166968451605', '1');
INSERT INTO `formula` VALUES ('C14H36N4O5P2', '15.748777', 3755, '202.115389142717', '0');
INSERT INTO `formula` VALUES ('C14H27N4O4P', '19.014471', 3785, '347.182695176866', '1');
INSERT INTO `formula` VALUES ('C7H7N3O6S', '7.818263', 3796, '262.013496398925', '1');
INSERT INTO `formula` VALUES ('C10HN5P2', '14.995922', 3810, '253.978995156454', '0');
INSERT INTO `formula` VALUES ('C7H7N3O5S', '11.298966', 3901, '246.018423080444', '1');
INSERT INTO `formula` VALUES ('C14H31N2O7P', '21.20975', 3902, '371.194861518012', '1');
INSERT INTO `formula` VALUES ('C18H33NO5', '17.866082', 3904, '344.242824978298', '1');
INSERT INTO `formula` VALUES ('C28H27N2O3P', '16.778457', 3905, '471.182868263938', '1');
INSERT INTO `formula` VALUES ('C18H32O6', '17.22908', 3929, '345.226068115234', '1');
INSERT INTO `formula` VALUES ('C23H21N5O', '18.552418', 3973, '384.182272774832', '1');
INSERT INTO `formula` VALUES ('C9H2N3PS', '14.633701', 3997, '215.978241318922', '0');
INSERT INTO `formula` VALUES ('C27H50N2O10S', '20.792644', 4021, '595.327892485119', '1');
INSERT INTO `formula` VALUES ('C11H23N4O4P', '19.162616', 4087, '307.152399698893', '1');
INSERT INTO `formula` VALUES ('C14H24N2O7', '19.052446', 4095, '333.167742047991', '1');
INSERT INTO `formula` VALUES ('C26H39NO7', '21.013307', 4121, '478.278336496064', '1');
INSERT INTO `formula` VALUES ('C35H65NO3', '27.073943', 4174, '548.503829956054', '1');
INSERT INTO `formula` VALUES ('C14H17N2P', '16.778457', 4194, '245.119364420572', '1');
INSERT INTO `formula` VALUES ('C25H36OP2', '18.674193', 4220, '415.230692545572', '0');
INSERT INTO `formula` VALUES ('C4HN3O10', '3.0185065', 4263, '251.974950154622', '1');
INSERT INTO `formula` VALUES ('C16H29NO2', '21.377311', 4287, '268.226593017578', '1');
INSERT INTO `formula` VALUES ('C14H25NO6', '17.866082', 4290, '304.174402410333', '1');
INSERT INTO `formula` VALUES ('C33H49NP2', '16.146196', 4316, '522.341247558593', '1');
INSERT INTO `formula` VALUES ('C32H54O4', '25.793457', 4320, '503.408424377441', '1');
INSERT INTO `formula` VALUES ('C18H28O6', '19.927294', 4330, '341.195332845052', '1');
INSERT INTO `formula` VALUES ('C20H35N4O5P', '21.013307', 4332, '443.242098999023', '1');
INSERT INTO `formula` VALUES ('C27H45N5O2P2', '13.146684', 4339, '534.313130696614', '0');
INSERT INTO `formula` VALUES ('C19H25O2PS', '19.162616', 4345, '349.138214111328', '1');
INSERT INTO `formula` VALUES ('C22H47N3O5', '25.073548', 4360, '434.360875638326', '1');
INSERT INTO `formula` VALUES ('C27H49NO3', '25.413253', 4368, '436.378128051757', '1');
INSERT INTO `formula` VALUES ('C13H21NO3', '20.779694', 4371, '240.159219360351', '1');
INSERT INTO `formula` VALUES ('C22H33NO5', '20.305296', 4379, '392.243056557395', '1');
INSERT INTO `formula` VALUES ('C14H10N4O4', '18.322849', 4383, '299.078465053013', '1');
INSERT INTO `formula` VALUES ('C17H13N3O5S', '18.979181', 4385, '372.064817882719', '1');
INSERT INTO `formula` VALUES ('C33H61NO3', '26.045897', 4395, '520.470209757486', '1');
INSERT INTO `formula` VALUES ('C27H46O3', '25.413253', 4412, '419.351135253906', '1');
INSERT INTO `formula` VALUES ('C14H26NO3P', '23.482333', 4424, '288.171952989366', '1');
INSERT INTO `formula` VALUES ('C10HNO5S', '3.2175229', 4440, '247.964284261067', '0');
INSERT INTO `formula` VALUES ('C34H65NO11S', '14.224839', 4451, '696.435404459635', '1');
INSERT INTO `formula` VALUES ('C15H21NO7', '12.383588', 4474, '328.138153076171', '1');
INSERT INTO `formula` VALUES ('C13H3NO4S', '3.0252211', 4475, '269.984410603841', '0');
INSERT INTO `formula` VALUES ('C28H34OS', '19.927294', 4494, '419.240769386291', '1');
INSERT INTO `formula` VALUES ('C14H13N2O2P', '16.525673', 4495, '273.078067355685', '1');
INSERT INTO `formula` VALUES ('C16H14P2S', '11.148269', 4526, '301.036503383091', '1');
INSERT INTO `formula` VALUES ('C10H10NO4P', '14.569981', 4528, '240.042286464146', '1');
INSERT INTO `formula` VALUES ('C5H2N2O15S', '0.95214903', 4532, '362.926079644097', '0');
INSERT INTO `formula` VALUES ('C12H4N2O10P2S', '0.97050348', 4533, '430.91285457611', '0');
INSERT INTO `formula` VALUES ('C11H4O4P2S', '0.95214903', 4534, '294.939163208007', '0');
INSERT INTO `formula` VALUES ('C21H24N2O2S', '20.000217', 4540, '369.163045247395', '1');
INSERT INTO `formula` VALUES ('C10HNO5S', '3.7078277', 4558, '247.963930765787', '0');
INSERT INTO `formula` VALUES ('C6H7N3O8S', '1.3390638', 4585, '282.003203497992', '1');
INSERT INTO `formula` VALUES ('C14H24O3', '19.127062', 4587, '241.179341634114', '1');
INSERT INTO `formula` VALUES ('C15H26O2', '18.979181', 4650, '239.199660660384', '1');
INSERT INTO `formula` VALUES ('C25H43NO4', '24.62969', 4674, '422.323908188763', '1');
INSERT INTO `formula` VALUES ('C13H33N3P2S', '19.598414', 4689, '326.194954612038', '0');
INSERT INTO `formula` VALUES ('C29H57O13P', '19.162616', 4696, '645.35904657273', '0');
INSERT INTO `formula` VALUES ('C12H23N4O4P', '19.797713', 4704, '319.151829310825', '1');
INSERT INTO `formula` VALUES ('C25H24N5O9P', '14.047662', 4750, '570.138827006022', '1');
INSERT INTO `formula` VALUES ('C7H3NO5S', '20.055415', 4771, '213.981130218505', '1');
INSERT INTO `formula` VALUES ('C5H8N4O11S', '18.910047', 4805, '332.998369489397', '0');
INSERT INTO `formula` VALUES ('C7H21N4O11PS', '14.047662', 4811, '401.073908805847', '0');
INSERT INTO `formula` VALUES ('C27H45N5O2S', '12.542484', 4826, '504.336078825451', '1');
INSERT INTO `formula` VALUES ('C12H19NO6', '14.140041', 4829, '274.127943559126', '1');
INSERT INTO `formula` VALUES ('C35H23NO5', '24.980106', 4846, '538.163869222005', '1');
INSERT INTO `formula` VALUES ('C13H23NO5', '16.891365', 4851, '274.163766043526', '1');
INSERT INTO `formula` VALUES ('C31H61N4O2P', '26.893074', 4871, '553.459148297991', '0');
INSERT INTO `formula` VALUES ('C9H9N2O7P', '16.266567', 4913, '289.02097913954', '1');
INSERT INTO `formula` VALUES ('C5H8N4OP2S', '0.84044282', 4918, '234.996220588684', '0');
INSERT INTO `formula` VALUES ('C39H62S', '23.535616', 4926, '563.464389256068', '1');
INSERT INTO `formula` VALUES ('C18H16N5O6P', '14.047662', 4927, '430.090746821189', '1');
INSERT INTO `formula` VALUES ('C21H31NP2', '19.946564', 4937, '360.200561523437', '1');
INSERT INTO `formula` VALUES ('C27H30N4O3', '24.593121', 4949, '459.23860111943', '1');
INSERT INTO `formula` VALUES ('C24H16N4O2', '21.619625', 4953, '393.134936897122', '1');
INSERT INTO `formula` VALUES ('C17H29NO6', '18.979181', 4960, '344.206115722656', '1');
INSERT INTO `formula` VALUES ('C29H45N5O6S', '13.63703', 4963, '592.315537225632', '1');
INSERT INTO `formula` VALUES ('C27H46O3', '22.593437', 4964, '419.350895836239', '1');
INSERT INTO `formula` VALUES ('C29H39O2PS', '19.743802', 4974, '483.247843424479', '1');
INSERT INTO `formula` VALUES ('C30H37N2P', '20.708894', 4995, '457.276106357574', '1');
INSERT INTO `formula` VALUES ('C10H9N3O4S', '18.927578', 5010, '268.039341517857', '1');
INSERT INTO `formula` VALUES ('C5H5N3O9S', '3.415794', 5022, '283.983205159505', '0');
INSERT INTO `formula` VALUES ('C13H31O9P', '18.839933', 5053, '363.1788804796', '0');
INSERT INTO `formula` VALUES ('C24H41N3S', '22.909331', 5054, '404.31029837472', '1');
INSERT INTO `formula` VALUES ('C20H20N4O2', '20.779694', 5080, '349.166152954101', '1');
INSERT INTO `formula` VALUES ('C8H9N3O5P2', '13.561503', 5095, '290.00808207194', '0');
INSERT INTO `formula` VALUES ('C18H42N2O2P2S', '19.144341', 5107, '413.251831781296', '0');
INSERT INTO `formula` VALUES ('C17H29NO7', '18.729883', 5141, '360.20110168457', '1');
INSERT INTO `formula` VALUES ('C32H50O10S', '19.4906229999999', 5147, '627.317727225167', '1');
INSERT INTO `formula` VALUES ('C19H33N5O7', '11.968788', 5157, '444.244798932756', '1');
INSERT INTO `formula` VALUES ('C33H46O6', '22.062276', 5161, '539.335059756324', '1');
INSERT INTO `formula` VALUES ('C14H2N2S', '15.839517', 5214, '231.001293121822', '0');
INSERT INTO `formula` VALUES ('C12H19NO6', '15.71429', 5249, '274.128217697143', '1');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (24, 'navigation', '就医指南', NULL, NULL, 'Navigation', 'crud', 'com.ruoyi.system', 'system', 'navigation', '就医指南', 'ruoyi', '0', '/', NULL, 'admin', '2021-04-22 09:44:20', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 281 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (276, '24', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-04-22 09:44:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (277, '24', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-04-22 09:44:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (278, '24', 'content', '招聘内容', 'varchar(10000)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'summernote', '', 3, 'admin', '2021-04-22 09:44:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (279, '24', 'createuser', '创建人', 'varchar(255)', 'String', 'createuser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-04-22 09:44:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (280, '24', 'createtime', '创建时间', 'timestamp(6)', 'Date', 'createtime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-04-22 09:44:20', '', NULL);

-- ----------------------------
-- Table structure for ipinfo
-- ----------------------------
DROP TABLE IF EXISTS `ipinfo`;
CREATE TABLE `ipinfo`  (
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ip',
  `mac` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Mac地址',
  `hostmodel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主机型号',
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室',
  `floor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼层',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '使用者',
  `id` bigint(20) NOT NULL COMMENT '主键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ipinfo
-- ----------------------------
INSERT INTO `ipinfo` VALUES ('127.0.0.21', '222', '11112211', '222', '33', '444', 1);
INSERT INTO `ipinfo` VALUES ('192.168.1.3', '222', '333', '神经内科', '5楼', '王子明', 1606039697422);

-- ----------------------------
-- Table structure for navigation
-- ----------------------------
DROP TABLE IF EXISTS `navigation`;
CREATE TABLE `navigation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '招聘内容',
  `createuser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `createtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '就医指南' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of navigation
-- ----------------------------
INSERT INTO `navigation` VALUES (8, '就医指南一', '<p>就医指南一1<br></p>', '院长', '2021-04-22 10:45:50.495565');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片地址',
  `createuser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `createtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, 'OA建设标题', 'OA建设内容', '111', '人命医院', '2021-01-20 21:42:34.849410', '');
INSERT INTO `news` VALUES (2, '测试', '1111', '222', '人民医院', '2021-01-20 21:42:38.907536', '');
INSERT INTO `news` VALUES (3, '热点新闻', '<p>热点新闻</p>', '', '人民医院', '2021-01-24 14:39:16.556731', '热点');
INSERT INTO `news` VALUES (5, '测试', '<p><span style=\"background-color: rgb(255, 0, 0);\">1111111</span></p><p><img style=\"width: 154px;\" src=\"/profile/upload/2021/01/30/74203a64-560d-4bb0-adb6-c43bfcee4413.png\"><span style=\"background-color: rgb(255, 0, 0);\"><br></span><br></p>', NULL, 'cee', '2021-01-30 14:41:05.172614', '下乡');
INSERT INTO `news` VALUES (6, 'wangzimign', '<p><img style=\"width: 443px;\" src=\"/profile/upload/2021/01/30/8edb65a8-988c-4793-b1ac-f77b54bd9d7c.jpg\"><br></p>', NULL, '', '2021-01-30 15:13:40.790386', '测试');

-- ----------------------------
-- Table structure for office
-- ----------------------------
DROP TABLE IF EXISTS `office`;
CREATE TABLE `office`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `officename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '科室名字',
  `doctornum` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '暂无相关信息' COMMENT '医生数量',
  `officecode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室编码',
  `introduction` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '科室介绍',
  `flag` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 78204 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科室' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of office
-- ----------------------------
INSERT INTO `office` VALUES (78189, '内科', '6', 'neike', '左贡县人民医院内科，是我院成立最早的专业科室。现有呼吸、消化、肾脏内科、心血管内科、高原医学科、精神科等多个专业，临床医师共6人，均具有本科或大专学历，已形成了一支具有很强凝聚力与战斗力的老中青医护队伍，近年来尤其对高原病的诊断及治疗具有丰富临床经验。\r\n现开设病床20张，拥有动态血压心电监测仪、肺功能检测仪、快速血糖检测仪、14C幽门螺旋杆菌检测仪、12导联心电图仪、指夹式脉搏血氧饱和度检测仪等专科治疗设备，同时采用藏医和西医结合的方法，承担各系统常见疾病的预防和诊治并积累了丰富的疑难病例诊治经验。病房环境优美、整洁、舒适，医护人员技术过硬、态度和蔼、语言亲切，全体医务人员承担“救死扶伤”的服务宗旨，热诚为人民提供全程、优质、高效、温馨的服务。\r\n', 'Y');
INSERT INTO `office` VALUES (78190, '高原医学科', '5', 'gaoyuanyixueke', '左贡县人民医院高原医学科，成立于2019年9月，为内科分支。现有临床医师5人，其中副主任医师1名，其他4名均具有大专以上学历，开设病床20张。科室依托空军特色医学中心在航空医学特别是军事高原医学的研究和临床诊疗方面的先进技术为支撑，在治疗急慢性高原病方面具有丰富的经验，疗效显著。\r\n高原病简介:主要是针对高原独特的自然环境下，由于对低氧环境的适应能力不全或失调而发生的综合征，分为急性高原病和慢性高原病，上呼吸道感染、疲劳、寒冷、精神紧张、饥饿、妊娠等为发病诱因。急性高原病主要有高原昏迷、高原脑水肿、高原肺水肿、混合型（即肺型和脑型的综合表现）。慢性高原病指抵达高原后半年以上方发病或原有急性高原病症状迁延不愈者，少数高原世居者也可发病，包括：高原心脏病、高原红细胞增多症、高原血压异常（包括高原高血压和高原低血压）、混合型慢性高原病（即心脏病与红细胞增多症同时存在）等。', 'Y');
INSERT INTO `office` VALUES (78191, '外科', '7', 'waike', '左贡县人民医院外科，现有主治医师3名，医生4名。可开展胃肠、肝胆、肛肠、骨科、泌尿等亚专业、康复理疗的各类手术，如阑尾切除术、疝修补术、剖腹探查术、大隐静脉曲张高位结扎和剥脱术、胆囊切除术、肝包虫内囊摘除术、肝修补术、脾切除、胃穿孔修补术、胃肠吻合术、内外混合（痔）切除、四肢骨折内固定术、锁骨内固定术、膀胱造瘘术、精索鞘膜积液、睾丸鞘膜积液等。未来准备开展腹腔镜微创手术，如：腹腔镜下阑尾切除术、胆囊切除术、腹腔探查术等。', 'Y');
INSERT INTO `office` VALUES (78192, '妇产科', '6', '妇产科', '左贡县人民医院妇产科，现有医生4人，助产士2名。多年来，在空军特色医学中心援助下，除开展处理正常分娩外，能解决多种因素所致的难产、早产、产后出血、妊娠高血压、子痫等问题，擅长新生儿抢救复苏、手取胎盘、臀位助产、剖宫产术、计划生育上取(环、皮埋)、节育术、清宫术、药流术等技术，可诊治多种妇科常见病、多发病。该科室还同时承担县妇幼保健任务。', 'Y');
INSERT INTO `office` VALUES (78193, '儿科', '3', 'erke', '左贡县人民医院儿科，成立于2019年9月。全科现有副主任医师1名，住院医师2名。主要开展儿童各种常见病、多发病以及疑难危重疾病的诊断、治疗和护理工作。主要诊治疾病包括：上呼吸道感染、支气管炎、支气管肺炎、反复呼吸道感染、支气管哮喘、高原病、腹痛、急性胃肠炎、腹泻病、食欲不振、惊厥、营养性贫血、佝偻病、泌尿系感染、过敏性疾紫癜、急性中毒等。下一步，科室将进一步引进人才，扩大儿科宣传及影响，扩大门诊量，建立儿科住院病区，划分儿童呼吸系统疾病、消化系统疾病、新生儿监护病区等医疗护理单元，为藏区百姓提供更优质的医疗服务。', 'Y');
INSERT INTO `office` VALUES (78194, '皮肤科', '3', 'pifuke', '左贡县人民医院皮肤科，成立于2019年9月。现有临床医师和技师共3人，其中副主任医师1名，医学博士，其他3名均具有大专以上学历。科室依托空军特色医学中心皮肤科，特别针对高原皮肤病开展临床诊疗，如高原易患皮肤病：日晒伤、黄褐斑、湿疹、丘疹性荨麻疹等疾病的治疗具有丰富的经验，疗效显著。我院皮肤科针对高原易患皮肤病，从空军特色医学中心引进了15种本院制剂，如润肤霜、抗敏止痒霜、防晒霜等，更好地解决了高原患者的疾患，受到了患者们的好评。同时，我科引进了超脉冲二氧化碳激光，开展了激光治疗，对色素痣、脂溢性角化、扁平疣等增生性皮肤病疗效显著。\r\n皮肤科主任简介：鲍荣凤,副主任医师,从事皮肤科临床工作多年，擅长银屑病、白癜风、痤疮、湿疹等常见病、多发病的诊治，对于药物疹、自身免疫性疱病、重症银屑病等危重皮肤病治疗有丰富的临床经验。\r\n', 'Y');
INSERT INTO `office` VALUES (78195, '麻醉科', '5', 'mazuike', '左贡县人民医院麻醉科，现有麻醉医师2名，护理人员1名，护师2名，具有较强的团结协作、吃苦耐劳、勇于奉献的团队精神。经过多年的发展，在院领导的关心支持下，为医院各科的手术顺利进行提供了有力的保障。该科室拥有较为先进的麻醉设备及手术器材，能开展气管插管全麻、边续硬膜外麻醉、腰麻、各种神经阻滞、小儿静脉复合麻醉，能够确保医院各类手术的顺利进行。每年完成约100余例手术病人的麻醉', 'Y');
INSERT INTO `office` VALUES (78196, '检验科', '4', 'jianyanke', '左贡县人民医院检验科，现拥有专业技术人员4人，其中，主任医师1人,助理医师1人,全部具有大专及以上学历。科室人员能够锐意进取、主动作为，自觉把力量汇集到投身改革、干事创业上，努力形成业务能力强、综合素质高的人才队伍，并且不断开展新技术、新业务，为临床及患者提供准确、广泛的实验诊断服务。\r\n目前我院检验科拥有多台先进设备,包括全自动生化析仪2台、全自动凝血分析仪、尿液分析仪,血细胞分析仪,电解质分析仪各1台，能系统的开展肝肾功能、心肌酶谱、风湿系列、糖尿病系列、脂类、贫血及离子、肝炎标志物等多个项目的检测。\r\n为更好地服务临床,检验科不断拓展业务范围,除了常规检验项目外,还将开展肿瘤、激素、血气分析、甲乙流感病毒、支原体、衣原体肺炎抗体及结核、心梗标志物的检测。另外,检验科还准备建立有自主采血权的血库,为患者的生命安全保驾护航。', 'Y');
INSERT INTO `office` VALUES (78197, '放射科', '2', 'fangsheke', '左贡县人民医院放射科，目前有2名医生，是空军特色医学中心（原空军总医院）重点援助科室，拥有XS-1型安健200毫安DR一台，能够完成全身各系统多种疾病的检查及诊断。\r\n为了提升医院的综合实力、满足县医院的创建要求、方便群众的就医，放射科现有的部分设备更新之外，将要引进一台64排螺旋CT。CT检查是无创、高效、精确立体的影像技术。64排螺旋CT具有图像质量高、存储空间大、扫描间距薄、成像速度快、软件功能齐全的特点。引进64排螺旋CT之后能够满足各类外伤、肿瘤、脑血管疾病、骨关节等常见病的检查及诊断。', 'Y');
INSERT INTO `office` VALUES (78198, '药剂科', '3', 'yaojike', '左贡县人民医院药剂科，现有专业技术人员3人，其中主管药师1人、药师2人。药剂科承担全院药品供应保障、临床药学服务及合理用药培训等职能，科室秉承“一切以病人为中心”的药学服务理念，科室管理从药品保障供应模式，逐步转化为以临床药学为工作重点，开展合理用药处方点评工作，为门诊和住院病人提供药物咨询、用药教育等药学服务。', 'Y');
INSERT INTO `office` VALUES (78199, '超声科', '2', 'chaoshenke', '左贡县人民医院超声科，现有执业医师2名，均已通过中级职称考试，正在申请聘任主治医师，均为本科学历。现有两台彩色多普勒超声仪(GE VividT8和迈瑞DC-7)。可以开展超声检查项目有：\r\n1．腹部超声：各种脏器部位(肝、胆、脾、胰，肾、输尿管、膀胱、前列腺、子宫、附件)、产科胎儿常规检查、阑尾、腹腔淋巴结、腹腔血管等各种疾病。\r\n2．心脏彩超（成人心脏）：各种心脏瓣膜病变、心肌病变、感染性病变、肺源性心脏病、冠心病、高心病、肺栓塞、心包疾病以及心功能测定等。\r\n3．浅表及小器官：甲状腺、乳腺、腮腺、颌下腺、颈部肿块、各部位淋巴结、男性生殖器官(阴囊、阴茎、精囊、精索)及浅表软组织肿块等。\r\n4．血管彩超：颈部血管、上肢血管、下肢血管、腹腔血管等，可显示血管内血栓、血管狭窄、内膜斑块、动脉瘤等病变。\r\n另外我科还有数字式十二道心电图机一台（空军总医院赠），可以进行常规心电图检查，基本满足临床需要。', 'Y');
INSERT INTO `office` VALUES (78200, '藏医科', '2', 'zangyike', '左贡县人民医院藏医科现有藏医2人，有藏药60种，能够开展多种诊疗服务，自制藏药疗效显著。', 'Y');
INSERT INTO `office` VALUES (78201, '眼科', '2', 'yanke', '左贡县人民医院眼科，成立于2019年11月。现有主治医师1名，医生1名。眼科现有YZ5X裂隙灯显微镜、YZ6F检眼镜各1台，以及眼科全套手术器械，能够有效处理和治疗角膜病、晶状体病、青光眼和眼睑病等眼科各种常见病、多发病及眼外伤等。', 'Y');
INSERT INTO `office` VALUES (78202, '急诊科', '7', 'jizhenke', '左贡县人民医院急诊科成立于2020年1月，现有主治医师1名、医师2名、主管护师1名、护师2名、护士1名、急救车司机2名及急救车1台，是一个团结、积极向上、有凝聚力的团队，科室配有呼吸机、转运呼吸机、除颤机、洗胃机、心电图机、心电监护仪等急救监护设备，且所有医护人员熟练掌握上述装备的操作和急诊抢救技能。科室建立了创伤、急性心梗、脑卒中、急性呼吸衰竭、高危孕产妇等重点病种的急诊服务流程和规范，多次完成急危重症病人的外抢、急诊救治和安全转运工作。', 'Y');
INSERT INTO `office` VALUES (78203, '康复理疗科', '2', 'kangfuiliaoke', '左贡县人民医院康复理疗科成立于2020年3月，现有医师2名，配有颈腰椎牵引装置，超短波、电脑中频等理疗设备。主要开展针对颈肩腰腿痛等常见病、多发病的非手术的物理治疗、推拿按摩治疗、针灸和术后患者康复。', 'Y');

-- ----------------------------
-- Table structure for party
-- ----------------------------
DROP TABLE IF EXISTS `party`;
CREATE TABLE `party`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '栏目',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主题',
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'url',
  `publishtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '党建' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of party
-- ----------------------------
INSERT INTO `party` VALUES (1, '支部工作', '支部工作', '支部工作支部工作', NULL, '2021-01-20 22:13:56.033506');
INSERT INTO `party` VALUES (2, '公告纪要', '公告纪要', '公告纪要111', NULL, '2021-01-21 21:13:37.469109');
INSERT INTO `party` VALUES (3, '党员在线学习', '党员在线学习', '党员在线学习党员在线学习党员在线学习党员在线学习党员在线学习', NULL, '2021-01-20 22:14:56.773978');
INSERT INTO `party` VALUES (4, '党建实务', '党建实务', '党建实务', NULL, '2021-01-20 22:15:36.717123');
INSERT INTO `party` VALUES (5, '院志工作动态', '院志工作动态', '院志工作动态院志工作动态', NULL, '2021-01-20 22:16:02.106421');
INSERT INTO `party` VALUES (6, '支部工作', '支部工作', '支部工作测试', NULL, '2021-01-21 20:55:41.585991');
INSERT INTO `party` VALUES (7, '公告纪要', '公告纪要', '公告纪要测试', NULL, '2021-01-21 21:23:25.313809');
INSERT INTO `party` VALUES (8, '党员在线学习', '党员在线学习', '党员在线学习测试', NULL, '2021-01-21 21:29:42.209301');
INSERT INTO `party` VALUES (9, '党建实务', '党建实务', '党建实务测试', NULL, '2021-01-21 21:44:51.692892');
INSERT INTO `party` VALUES (10, '院志工作动态', '院志工作动态', '院志工作动态', '', '2021-01-21 00:00:00.000000');
INSERT INTO `party` VALUES (11, '支部工作', '下乡', '<p>我 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '', '2021-01-25 00:00:00.000000');
INSERT INTO `party` VALUES (12, '支部工作', '2021下乡活动', '<p>2021下乡活动<br></p>', NULL, '2021-01-14 00:00:00.000000');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000175E44BEED878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000175E44BEED878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000175E44BEED878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-6HARIBG1619059196157', 1619059966362, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1619059200000, -1, 5, 'PAUSED', 'CRON', 1619059196000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1619059200000, -1, 5, 'PAUSED', 'CRON', 1619059196000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1619059200000, -1, 5, 'PAUSED', 'CRON', 1619059196000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '招聘内容',
  `createuser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `createtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recruit
-- ----------------------------
INSERT INTO `recruit` VALUES (7, '招聘一', '<ul><li>测试</li></ul><p><br></p>', '汪主任', '2021-04-21 08:41:57.630763');

-- ----------------------------
-- Table structure for registerrecord
-- ----------------------------
DROP TABLE IF EXISTS `registerrecord`;
CREATE TABLE `registerrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `usersex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `userage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年龄',
  `useridentitycard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证',
  `medicalcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医保卡',
  `gohospitaltime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '看病时间',
  `descriptionofillness` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '病情描述',
  `doctorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生名字',
  `doctorofficename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生科室',
  `doctorcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生编码',
  `createtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '挂号' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registerrecord
-- ----------------------------
INSERT INTO `registerrecord` VALUES (20, '王子明', '男', '21', '1111', '1111', '2020-12-30', '111', '222', '333', '111', '2021-01-24 16:25:38.004724');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'creater',
  `create_time` datetime(0) DEFAULT NULL COMMENT 'createtime',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'updater',
  `update_time` datetime(0) DEFAULT NULL COMMENT 'updatetime',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'code',
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'supplier name',
  `supplier_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'product description',
  `contacts_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'contacts',
  `contacts_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'phonenumber',
  `supplier_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'address',
  PRIMARY KEY (`supplier_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'supplier' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2020-11-20 14:16:23', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2020-11-20 14:16:23', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2020-11-20 14:16:23', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2020-11-20 14:16:23', 'admin', '2020-11-20 17:18:52', '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2020-11-20 14:16:23', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2020-11-20 14:16:23', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2020-11-20 14:16:23', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2020-11-20 14:16:23', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2020-11-20 14:16:23', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2020-11-20 14:16:23', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2020-11-20 14:16:23', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2020-11-20 14:16:23', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2021-01-20 20:22:32');
INSERT INTO `sys_job_log` VALUES (2, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:22:41');
INSERT INTO `sys_job_log` VALUES (3, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:22:52');
INSERT INTO `sys_job_log` VALUES (4, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:23:01');
INSERT INTO `sys_job_log` VALUES (5, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:23:11');
INSERT INTO `sys_job_log` VALUES (6, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:23:21');
INSERT INTO `sys_job_log` VALUES (7, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:23:31');
INSERT INTO `sys_job_log` VALUES (8, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:23:41');
INSERT INTO `sys_job_log` VALUES (9, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:23:52');
INSERT INTO `sys_job_log` VALUES (10, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:24:01');
INSERT INTO `sys_job_log` VALUES (11, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:24:11');
INSERT INTO `sys_job_log` VALUES (12, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:24:22');
INSERT INTO `sys_job_log` VALUES (13, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:24:31');
INSERT INTO `sys_job_log` VALUES (14, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:24:41');
INSERT INTO `sys_job_log` VALUES (15, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:24:51');
INSERT INTO `sys_job_log` VALUES (16, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:25:01');
INSERT INTO `sys_job_log` VALUES (17, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:25:11');
INSERT INTO `sys_job_log` VALUES (18, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:25:21');
INSERT INTO `sys_job_log` VALUES (19, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:25:31');
INSERT INTO `sys_job_log` VALUES (20, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:25:41');
INSERT INTO `sys_job_log` VALUES (21, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:25:51');
INSERT INTO `sys_job_log` VALUES (22, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:26:01');
INSERT INTO `sys_job_log` VALUES (23, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:26:11');
INSERT INTO `sys_job_log` VALUES (24, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:26:21');
INSERT INTO `sys_job_log` VALUES (25, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:26:31');
INSERT INTO `sys_job_log` VALUES (26, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:26:41');
INSERT INTO `sys_job_log` VALUES (27, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:26:51');
INSERT INTO `sys_job_log` VALUES (28, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:27:01');
INSERT INTO `sys_job_log` VALUES (29, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:27:11');
INSERT INTO `sys_job_log` VALUES (30, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:27:21');
INSERT INTO `sys_job_log` VALUES (31, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:27:31');
INSERT INTO `sys_job_log` VALUES (32, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:27:41');
INSERT INTO `sys_job_log` VALUES (33, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:27:51');
INSERT INTO `sys_job_log` VALUES (34, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:28:01');
INSERT INTO `sys_job_log` VALUES (35, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:28:11');
INSERT INTO `sys_job_log` VALUES (36, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:28:21');
INSERT INTO `sys_job_log` VALUES (37, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:28:31');
INSERT INTO `sys_job_log` VALUES (38, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:28:41');
INSERT INTO `sys_job_log` VALUES (39, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:28:51');
INSERT INTO `sys_job_log` VALUES (40, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:29:01');
INSERT INTO `sys_job_log` VALUES (41, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:29:11');
INSERT INTO `sys_job_log` VALUES (42, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:29:21');
INSERT INTO `sys_job_log` VALUES (43, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:29:31');
INSERT INTO `sys_job_log` VALUES (44, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:29:41');
INSERT INTO `sys_job_log` VALUES (45, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:29:51');
INSERT INTO `sys_job_log` VALUES (46, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:30:01');
INSERT INTO `sys_job_log` VALUES (47, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:30:11');
INSERT INTO `sys_job_log` VALUES (48, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:30:21');
INSERT INTO `sys_job_log` VALUES (49, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:30:31');
INSERT INTO `sys_job_log` VALUES (50, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:30:41');
INSERT INTO `sys_job_log` VALUES (51, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:30:51');
INSERT INTO `sys_job_log` VALUES (52, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:31:01');
INSERT INTO `sys_job_log` VALUES (53, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:31:11');
INSERT INTO `sys_job_log` VALUES (54, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:31:21');
INSERT INTO `sys_job_log` VALUES (55, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:31:31');
INSERT INTO `sys_job_log` VALUES (56, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:31:41');
INSERT INTO `sys_job_log` VALUES (57, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:31:51');
INSERT INTO `sys_job_log` VALUES (58, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:32:01');
INSERT INTO `sys_job_log` VALUES (59, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:32:11');
INSERT INTO `sys_job_log` VALUES (60, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:32:21');
INSERT INTO `sys_job_log` VALUES (61, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:32:31');
INSERT INTO `sys_job_log` VALUES (62, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:32:41');
INSERT INTO `sys_job_log` VALUES (63, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:32:51');
INSERT INTO `sys_job_log` VALUES (64, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:33:01');
INSERT INTO `sys_job_log` VALUES (65, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:33:11');
INSERT INTO `sys_job_log` VALUES (66, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:33:21');
INSERT INTO `sys_job_log` VALUES (67, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:33:31');
INSERT INTO `sys_job_log` VALUES (68, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:33:41');
INSERT INTO `sys_job_log` VALUES (69, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:33:51');
INSERT INTO `sys_job_log` VALUES (70, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:34:01');
INSERT INTO `sys_job_log` VALUES (71, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:34:11');
INSERT INTO `sys_job_log` VALUES (72, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:34:21');
INSERT INTO `sys_job_log` VALUES (73, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:34:31');
INSERT INTO `sys_job_log` VALUES (74, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:34:41');
INSERT INTO `sys_job_log` VALUES (75, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:34:51');
INSERT INTO `sys_job_log` VALUES (76, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:35:01');
INSERT INTO `sys_job_log` VALUES (77, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:35:11');
INSERT INTO `sys_job_log` VALUES (78, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:35:21');
INSERT INTO `sys_job_log` VALUES (79, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:35:31');
INSERT INTO `sys_job_log` VALUES (80, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:35:42');
INSERT INTO `sys_job_log` VALUES (81, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:35:51');
INSERT INTO `sys_job_log` VALUES (82, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:36:01');
INSERT INTO `sys_job_log` VALUES (83, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:36:12');
INSERT INTO `sys_job_log` VALUES (84, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:36:21');
INSERT INTO `sys_job_log` VALUES (85, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:36:31');
INSERT INTO `sys_job_log` VALUES (86, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:36:42');
INSERT INTO `sys_job_log` VALUES (87, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:36:51');
INSERT INTO `sys_job_log` VALUES (88, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:37:01');
INSERT INTO `sys_job_log` VALUES (89, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:37:12');
INSERT INTO `sys_job_log` VALUES (90, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:37:21');
INSERT INTO `sys_job_log` VALUES (91, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:37:31');
INSERT INTO `sys_job_log` VALUES (92, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:37:41');
INSERT INTO `sys_job_log` VALUES (93, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:37:51');
INSERT INTO `sys_job_log` VALUES (94, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:38:01');
INSERT INTO `sys_job_log` VALUES (95, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:38:11');
INSERT INTO `sys_job_log` VALUES (96, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:38:21');
INSERT INTO `sys_job_log` VALUES (97, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:38:31');
INSERT INTO `sys_job_log` VALUES (98, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:38:42');
INSERT INTO `sys_job_log` VALUES (99, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:38:51');
INSERT INTO `sys_job_log` VALUES (100, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:39:01');
INSERT INTO `sys_job_log` VALUES (101, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:39:11');
INSERT INTO `sys_job_log` VALUES (102, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:39:21');
INSERT INTO `sys_job_log` VALUES (103, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:39:31');
INSERT INTO `sys_job_log` VALUES (104, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:39:41');
INSERT INTO `sys_job_log` VALUES (105, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:39:51');
INSERT INTO `sys_job_log` VALUES (106, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:40:01');
INSERT INTO `sys_job_log` VALUES (107, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:40:11');
INSERT INTO `sys_job_log` VALUES (108, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:40:21');
INSERT INTO `sys_job_log` VALUES (109, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:40:31');
INSERT INTO `sys_job_log` VALUES (110, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:40:41');
INSERT INTO `sys_job_log` VALUES (111, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:40:51');
INSERT INTO `sys_job_log` VALUES (112, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:41:01');
INSERT INTO `sys_job_log` VALUES (113, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:41:11');
INSERT INTO `sys_job_log` VALUES (114, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:41:21');
INSERT INTO `sys_job_log` VALUES (115, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:41:31');
INSERT INTO `sys_job_log` VALUES (116, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:41:41');
INSERT INTO `sys_job_log` VALUES (117, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:41:51');
INSERT INTO `sys_job_log` VALUES (118, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:42:01');
INSERT INTO `sys_job_log` VALUES (119, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:42:11');
INSERT INTO `sys_job_log` VALUES (120, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:42:21');
INSERT INTO `sys_job_log` VALUES (121, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:42:31');
INSERT INTO `sys_job_log` VALUES (122, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:42:41');
INSERT INTO `sys_job_log` VALUES (123, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:42:51');
INSERT INTO `sys_job_log` VALUES (124, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:43:01');
INSERT INTO `sys_job_log` VALUES (125, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:43:11');
INSERT INTO `sys_job_log` VALUES (126, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:43:21');
INSERT INTO `sys_job_log` VALUES (127, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:43:31');
INSERT INTO `sys_job_log` VALUES (128, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:43:41');
INSERT INTO `sys_job_log` VALUES (129, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:43:51');
INSERT INTO `sys_job_log` VALUES (130, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:44:01');
INSERT INTO `sys_job_log` VALUES (131, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:44:11');
INSERT INTO `sys_job_log` VALUES (132, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:44:21');
INSERT INTO `sys_job_log` VALUES (133, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:44:31');
INSERT INTO `sys_job_log` VALUES (134, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:44:41');
INSERT INTO `sys_job_log` VALUES (135, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:44:51');
INSERT INTO `sys_job_log` VALUES (136, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:45:01');
INSERT INTO `sys_job_log` VALUES (137, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:45:11');
INSERT INTO `sys_job_log` VALUES (138, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:45:21');
INSERT INTO `sys_job_log` VALUES (139, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:45:31');
INSERT INTO `sys_job_log` VALUES (140, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:45:41');
INSERT INTO `sys_job_log` VALUES (141, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:45:51');
INSERT INTO `sys_job_log` VALUES (142, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:46:01');
INSERT INTO `sys_job_log` VALUES (143, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:46:11');
INSERT INTO `sys_job_log` VALUES (144, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:46:21');
INSERT INTO `sys_job_log` VALUES (145, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:46:31');
INSERT INTO `sys_job_log` VALUES (146, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:46:41');
INSERT INTO `sys_job_log` VALUES (147, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:46:51');
INSERT INTO `sys_job_log` VALUES (148, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:47:01');
INSERT INTO `sys_job_log` VALUES (149, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:47:11');
INSERT INTO `sys_job_log` VALUES (150, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:47:21');
INSERT INTO `sys_job_log` VALUES (151, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:47:31');
INSERT INTO `sys_job_log` VALUES (152, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:47:41');
INSERT INTO `sys_job_log` VALUES (153, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:47:51');
INSERT INTO `sys_job_log` VALUES (154, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:48:01');
INSERT INTO `sys_job_log` VALUES (155, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:48:11');
INSERT INTO `sys_job_log` VALUES (156, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:48:21');
INSERT INTO `sys_job_log` VALUES (157, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:48:31');
INSERT INTO `sys_job_log` VALUES (158, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:48:41');
INSERT INTO `sys_job_log` VALUES (159, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:48:51');
INSERT INTO `sys_job_log` VALUES (160, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:49:01');
INSERT INTO `sys_job_log` VALUES (161, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:49:11');
INSERT INTO `sys_job_log` VALUES (162, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:49:21');
INSERT INTO `sys_job_log` VALUES (163, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:49:31');
INSERT INTO `sys_job_log` VALUES (164, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:49:41');
INSERT INTO `sys_job_log` VALUES (165, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:49:51');
INSERT INTO `sys_job_log` VALUES (166, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:50:01');
INSERT INTO `sys_job_log` VALUES (167, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:50:11');
INSERT INTO `sys_job_log` VALUES (168, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:50:21');
INSERT INTO `sys_job_log` VALUES (169, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:50:32');
INSERT INTO `sys_job_log` VALUES (170, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:50:41');
INSERT INTO `sys_job_log` VALUES (171, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:50:51');
INSERT INTO `sys_job_log` VALUES (172, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:51:02');
INSERT INTO `sys_job_log` VALUES (173, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:51:11');
INSERT INTO `sys_job_log` VALUES (174, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:51:21');
INSERT INTO `sys_job_log` VALUES (175, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:51:32');
INSERT INTO `sys_job_log` VALUES (176, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:51:41');
INSERT INTO `sys_job_log` VALUES (177, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:51:51');
INSERT INTO `sys_job_log` VALUES (178, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:52:01');
INSERT INTO `sys_job_log` VALUES (179, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:52:11');
INSERT INTO `sys_job_log` VALUES (180, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:52:21');
INSERT INTO `sys_job_log` VALUES (181, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:52:31');
INSERT INTO `sys_job_log` VALUES (182, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:52:41');
INSERT INTO `sys_job_log` VALUES (183, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:52:51');
INSERT INTO `sys_job_log` VALUES (184, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:53:02');
INSERT INTO `sys_job_log` VALUES (185, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:53:11');
INSERT INTO `sys_job_log` VALUES (186, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:53:21');
INSERT INTO `sys_job_log` VALUES (187, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:53:31');
INSERT INTO `sys_job_log` VALUES (188, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:53:41');
INSERT INTO `sys_job_log` VALUES (189, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:53:51');
INSERT INTO `sys_job_log` VALUES (190, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:54:01');
INSERT INTO `sys_job_log` VALUES (191, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:54:11');
INSERT INTO `sys_job_log` VALUES (192, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:54:21');
INSERT INTO `sys_job_log` VALUES (193, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:54:31');
INSERT INTO `sys_job_log` VALUES (194, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:54:41');
INSERT INTO `sys_job_log` VALUES (195, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:54:51');
INSERT INTO `sys_job_log` VALUES (196, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:55:01');
INSERT INTO `sys_job_log` VALUES (197, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:55:11');
INSERT INTO `sys_job_log` VALUES (198, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:55:21');
INSERT INTO `sys_job_log` VALUES (199, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:55:31');
INSERT INTO `sys_job_log` VALUES (200, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:55:41');
INSERT INTO `sys_job_log` VALUES (201, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:55:51');
INSERT INTO `sys_job_log` VALUES (202, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:56:01');
INSERT INTO `sys_job_log` VALUES (203, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:56:11');
INSERT INTO `sys_job_log` VALUES (204, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:56:21');
INSERT INTO `sys_job_log` VALUES (205, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:56:31');
INSERT INTO `sys_job_log` VALUES (206, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:56:41');
INSERT INTO `sys_job_log` VALUES (207, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:56:51');
INSERT INTO `sys_job_log` VALUES (208, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:57:01');
INSERT INTO `sys_job_log` VALUES (209, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:57:11');
INSERT INTO `sys_job_log` VALUES (210, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:57:21');
INSERT INTO `sys_job_log` VALUES (211, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:57:31');
INSERT INTO `sys_job_log` VALUES (212, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:57:41');
INSERT INTO `sys_job_log` VALUES (213, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:57:51');
INSERT INTO `sys_job_log` VALUES (214, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:58:01');
INSERT INTO `sys_job_log` VALUES (215, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:58:11');
INSERT INTO `sys_job_log` VALUES (216, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:58:21');
INSERT INTO `sys_job_log` VALUES (217, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 20:58:31');
INSERT INTO `sys_job_log` VALUES (218, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:58:41');
INSERT INTO `sys_job_log` VALUES (219, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:58:51');
INSERT INTO `sys_job_log` VALUES (220, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:59:01');
INSERT INTO `sys_job_log` VALUES (221, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:59:11');
INSERT INTO `sys_job_log` VALUES (222, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:59:21');
INSERT INTO `sys_job_log` VALUES (223, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:59:31');
INSERT INTO `sys_job_log` VALUES (224, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:59:41');
INSERT INTO `sys_job_log` VALUES (225, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 20:59:51');
INSERT INTO `sys_job_log` VALUES (226, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:00:01');
INSERT INTO `sys_job_log` VALUES (227, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:00:11');
INSERT INTO `sys_job_log` VALUES (228, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:00:21');
INSERT INTO `sys_job_log` VALUES (229, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:00:31');
INSERT INTO `sys_job_log` VALUES (230, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:00:41');
INSERT INTO `sys_job_log` VALUES (231, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:00:51');
INSERT INTO `sys_job_log` VALUES (232, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:01:02');
INSERT INTO `sys_job_log` VALUES (233, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:01:12');
INSERT INTO `sys_job_log` VALUES (234, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:01:21');
INSERT INTO `sys_job_log` VALUES (235, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:01:31');
INSERT INTO `sys_job_log` VALUES (236, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:01:41');
INSERT INTO `sys_job_log` VALUES (237, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:01:51');
INSERT INTO `sys_job_log` VALUES (238, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:02:01');
INSERT INTO `sys_job_log` VALUES (239, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:02:11');
INSERT INTO `sys_job_log` VALUES (240, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:02:21');
INSERT INTO `sys_job_log` VALUES (241, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:02:32');
INSERT INTO `sys_job_log` VALUES (242, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:02:41');
INSERT INTO `sys_job_log` VALUES (243, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:02:51');
INSERT INTO `sys_job_log` VALUES (244, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:03:01');
INSERT INTO `sys_job_log` VALUES (245, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:03:11');
INSERT INTO `sys_job_log` VALUES (246, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:03:21');
INSERT INTO `sys_job_log` VALUES (247, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:03:31');
INSERT INTO `sys_job_log` VALUES (248, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:03:41');
INSERT INTO `sys_job_log` VALUES (249, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:03:51');
INSERT INTO `sys_job_log` VALUES (250, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:04:01');
INSERT INTO `sys_job_log` VALUES (251, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:04:11');
INSERT INTO `sys_job_log` VALUES (252, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:04:21');
INSERT INTO `sys_job_log` VALUES (253, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:04:31');
INSERT INTO `sys_job_log` VALUES (254, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:04:41');
INSERT INTO `sys_job_log` VALUES (255, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:04:52');
INSERT INTO `sys_job_log` VALUES (256, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:05:01');
INSERT INTO `sys_job_log` VALUES (257, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:05:12');
INSERT INTO `sys_job_log` VALUES (258, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:05:22');
INSERT INTO `sys_job_log` VALUES (259, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:05:31');
INSERT INTO `sys_job_log` VALUES (260, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:05:41');
INSERT INTO `sys_job_log` VALUES (261, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:05:52');
INSERT INTO `sys_job_log` VALUES (262, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:06:01');
INSERT INTO `sys_job_log` VALUES (263, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:06:11');
INSERT INTO `sys_job_log` VALUES (264, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:06:21');
INSERT INTO `sys_job_log` VALUES (265, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:06:31');
INSERT INTO `sys_job_log` VALUES (266, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:06:41');
INSERT INTO `sys_job_log` VALUES (267, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:06:51');
INSERT INTO `sys_job_log` VALUES (268, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:07:01');
INSERT INTO `sys_job_log` VALUES (269, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:07:11');
INSERT INTO `sys_job_log` VALUES (270, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:07:22');
INSERT INTO `sys_job_log` VALUES (271, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:07:31');
INSERT INTO `sys_job_log` VALUES (272, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:07:41');
INSERT INTO `sys_job_log` VALUES (273, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:07:51');
INSERT INTO `sys_job_log` VALUES (274, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:08:01');
INSERT INTO `sys_job_log` VALUES (275, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:08:11');
INSERT INTO `sys_job_log` VALUES (276, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:08:21');
INSERT INTO `sys_job_log` VALUES (277, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:08:31');
INSERT INTO `sys_job_log` VALUES (278, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:08:41');
INSERT INTO `sys_job_log` VALUES (279, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:08:51');
INSERT INTO `sys_job_log` VALUES (280, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:09:01');
INSERT INTO `sys_job_log` VALUES (281, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:09:11');
INSERT INTO `sys_job_log` VALUES (282, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:09:21');
INSERT INTO `sys_job_log` VALUES (283, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:09:31');
INSERT INTO `sys_job_log` VALUES (284, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:09:41');
INSERT INTO `sys_job_log` VALUES (285, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:09:51');
INSERT INTO `sys_job_log` VALUES (286, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:10:01');
INSERT INTO `sys_job_log` VALUES (287, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:10:11');
INSERT INTO `sys_job_log` VALUES (288, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:10:21');
INSERT INTO `sys_job_log` VALUES (289, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:10:31');
INSERT INTO `sys_job_log` VALUES (290, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:10:41');
INSERT INTO `sys_job_log` VALUES (291, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:10:51');
INSERT INTO `sys_job_log` VALUES (292, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:11:01');
INSERT INTO `sys_job_log` VALUES (293, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:11:11');
INSERT INTO `sys_job_log` VALUES (294, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:11:21');
INSERT INTO `sys_job_log` VALUES (295, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:11:31');
INSERT INTO `sys_job_log` VALUES (296, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:11:41');
INSERT INTO `sys_job_log` VALUES (297, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:11:51');
INSERT INTO `sys_job_log` VALUES (298, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-01-20 21:12:01');
INSERT INTO `sys_job_log` VALUES (299, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:12:11');
INSERT INTO `sys_job_log` VALUES (300, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-20 21:12:21');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 355 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-20 14:26:39');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误2次', '2020-11-20 14:27:25');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误3次', '2020-11-20 14:27:39');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-20 14:46:06');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误2次', '2020-11-20 14:46:16');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误3次', '2020-11-20 14:49:03');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误4次', '2020-11-20 14:49:54');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-11-20 14:53:03');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-11-20 14:54:33');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 14:56:55');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 14:57:06');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 14:57:14');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-11-20 14:57:29');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 14:58:35');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-11-20 14:58:39');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 15:00:17');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-11-20 15:00:23');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 15:01:33');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 15:04:46');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 15:05:27');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-20 15:08:11');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 15:10:16');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-20 15:58:05');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 15:58:22');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 15:58:37');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 15:58:43');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 15:58:52');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 16:34:26');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-20 16:42:38');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 16:42:50');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 16:43:03');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '退出成功', '2020-11-20 16:53:14');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 17:17:32');
INSERT INTO `sys_logininfor` VALUES (133, 'yulian', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '注册成功', '2020-11-20 17:19:25');
INSERT INTO `sys_logininfor` VALUES (134, 'yulian', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 17:20:02');
INSERT INTO `sys_logininfor` VALUES (135, 'yulian', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '退出成功', '2020-11-20 17:26:05');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 17:26:15');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 17:26:20');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 17:26:26');
INSERT INTO `sys_logininfor` VALUES (139, 'ccc', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '注册成功', '2020-11-20 17:45:39');
INSERT INTO `sys_logininfor` VALUES (140, '111', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '注册成功', '2020-11-20 17:47:39');
INSERT INTO `sys_logininfor` VALUES (141, 'ccc', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 17:48:03');
INSERT INTO `sys_logininfor` VALUES (142, 'ccc', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '退出成功', '2020-11-20 18:43:13');
INSERT INTO `sys_logininfor` VALUES (143, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '注册成功', '2020-11-20 18:44:35');
INSERT INTO `sys_logininfor` VALUES (144, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 18:45:03');
INSERT INTO `sys_logininfor` VALUES (145, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 18:45:09');
INSERT INTO `sys_logininfor` VALUES (146, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '退出成功', '2020-11-20 18:47:13');
INSERT INTO `sys_logininfor` VALUES (147, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-20 18:48:48');
INSERT INTO `sys_logininfor` VALUES (148, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-20 18:48:54');
INSERT INTO `sys_logininfor` VALUES (149, 'test', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '注册成功', '2020-11-22 15:45:42');
INSERT INTO `sys_logininfor` VALUES (150, 'test', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-22 15:46:02');
INSERT INTO `sys_logininfor` VALUES (151, 'test', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-22 16:37:24');
INSERT INTO `sys_logininfor` VALUES (152, 'test', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-22 16:37:28');
INSERT INTO `sys_logininfor` VALUES (153, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '注册成功', '2020-11-22 16:53:51');
INSERT INTO `sys_logininfor` VALUES (154, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-22 16:54:17');
INSERT INTO `sys_logininfor` VALUES (155, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-22 16:54:21');
INSERT INTO `sys_logininfor` VALUES (156, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-22 18:06:49');
INSERT INTO `sys_logininfor` VALUES (157, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-22 18:06:56');
INSERT INTO `sys_logininfor` VALUES (158, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-22 18:07:01');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-22 18:52:17');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-22 18:52:23');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-22 18:52:29');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 17:38:41');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-23 18:23:22');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-23 18:23:29');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-23 18:23:34');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 18:23:50');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 18:29:34');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 18:40:19');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-23 19:24:14');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-23 19:24:19');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误2次', '2020-11-23 19:24:30');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-23 19:24:49');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 19:25:07');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-23 20:33:32');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 20:33:44');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 20:58:01');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-23 21:22:50');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 21:22:55');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-23 22:42:11');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 22:42:16');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-23 23:05:09');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-23 23:05:12');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 01:40:52');
INSERT INTO `sys_logininfor` VALUES (184, 'test', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 10:29:44');
INSERT INTO `sys_logininfor` VALUES (185, 'test', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-11-24 10:29:49');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 10:32:31');
INSERT INTO `sys_logininfor` VALUES (187, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:08:23');
INSERT INTO `sys_logininfor` VALUES (188, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:08:30');
INSERT INTO `sys_logininfor` VALUES (189, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:12:01');
INSERT INTO `sys_logininfor` VALUES (190, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:14:12');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:17:10');
INSERT INTO `sys_logininfor` VALUES (192, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:17:48');
INSERT INTO `sys_logininfor` VALUES (193, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:18:18');
INSERT INTO `sys_logininfor` VALUES (194, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:23:56');
INSERT INTO `sys_logininfor` VALUES (195, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:41:37');
INSERT INTO `sys_logininfor` VALUES (196, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:41:47');
INSERT INTO `sys_logininfor` VALUES (197, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:41:54');
INSERT INTO `sys_logininfor` VALUES (198, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:50:10');
INSERT INTO `sys_logininfor` VALUES (199, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:50:18');
INSERT INTO `sys_logininfor` VALUES (200, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:50:27');
INSERT INTO `sys_logininfor` VALUES (201, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:55:30');
INSERT INTO `sys_logininfor` VALUES (202, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:55:35');
INSERT INTO `sys_logininfor` VALUES (203, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:55:46');
INSERT INTO `sys_logininfor` VALUES (204, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:55:53');
INSERT INTO `sys_logininfor` VALUES (205, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 11:55:58');
INSERT INTO `sys_logininfor` VALUES (206, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 11:56:02');
INSERT INTO `sys_logininfor` VALUES (207, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 12:03:14');
INSERT INTO `sys_logininfor` VALUES (208, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 12:09:48');
INSERT INTO `sys_logininfor` VALUES (209, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 12:18:29');
INSERT INTO `sys_logininfor` VALUES (210, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 12:18:34');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2020-11-24 12:22:33');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 12:22:40');
INSERT INTO `sys_logininfor` VALUES (213, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 12:26:26');
INSERT INTO `sys_logininfor` VALUES (214, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 12:27:06');
INSERT INTO `sys_logininfor` VALUES (215, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '退出成功', '2020-11-24 12:30:39');
INSERT INTO `sys_logininfor` VALUES (216, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-24 12:31:05');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-25 21:56:03');
INSERT INTO `sys_logininfor` VALUES (218, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-11-25 21:59:06');
INSERT INTO `sys_logininfor` VALUES (219, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-11-25 21:59:10');
INSERT INTO `sys_logininfor` VALUES (220, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-11-25 21:59:15');
INSERT INTO `sys_logininfor` VALUES (221, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-11-25 21:59:20');
INSERT INTO `sys_logininfor` VALUES (222, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-25 21:59:29');
INSERT INTO `sys_logininfor` VALUES (223, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-11-25 21:59:44');
INSERT INTO `sys_logininfor` VALUES (224, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-25 22:16:46');
INSERT INTO `sys_logininfor` VALUES (225, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-11-25 22:20:13');
INSERT INTO `sys_logininfor` VALUES (226, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-11-26 16:55:08');
INSERT INTO `sys_logininfor` VALUES (227, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-26 16:55:12');
INSERT INTO `sys_logininfor` VALUES (228, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-11-26 17:25:35');
INSERT INTO `sys_logininfor` VALUES (229, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-26 17:25:54');
INSERT INTO `sys_logininfor` VALUES (230, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-11-26 17:26:06');
INSERT INTO `sys_logininfor` VALUES (231, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-11-26 17:26:15');
INSERT INTO `sys_logininfor` VALUES (232, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-26 17:26:22');
INSERT INTO `sys_logininfor` VALUES (233, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-26 17:34:16');
INSERT INTO `sys_logininfor` VALUES (234, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-29 21:06:21');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-29 23:47:24');
INSERT INTO `sys_logininfor` VALUES (236, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-29 23:47:54');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2020-12-15 22:29:40');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-12-15 22:29:52');
INSERT INTO `sys_logininfor` VALUES (239, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-12-31 11:08:50');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-12-31 11:17:24');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-12-31 11:17:34');
INSERT INTO `sys_logininfor` VALUES (242, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-12-31 11:18:06');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-12-31 14:36:32');
INSERT INTO `sys_logininfor` VALUES (244, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-12-31 14:36:48');
INSERT INTO `sys_logininfor` VALUES (245, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-10 13:19:59');
INSERT INTO `sys_logininfor` VALUES (246, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-10 14:38:23');
INSERT INTO `sys_logininfor` VALUES (247, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-17 17:42:57');
INSERT INTO `sys_logininfor` VALUES (248, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-17 17:43:41');
INSERT INTO `sys_logininfor` VALUES (249, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-18 10:19:08');
INSERT INTO `sys_logininfor` VALUES (250, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-18 10:19:13');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-18 14:40:52');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-18 14:45:14');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-18 14:45:22');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-19 14:22:51');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-19 16:30:19');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-19 19:41:30');
INSERT INTO `sys_logininfor` VALUES (257, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-20 15:54:26');
INSERT INTO `sys_logininfor` VALUES (258, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-20 16:40:18');
INSERT INTO `sys_logininfor` VALUES (259, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-20 17:14:22');
INSERT INTO `sys_logininfor` VALUES (260, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-20 17:18:56');
INSERT INTO `sys_logininfor` VALUES (261, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-20 19:53:54');
INSERT INTO `sys_logininfor` VALUES (262, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-20 19:59:44');
INSERT INTO `sys_logininfor` VALUES (263, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-20 20:19:52');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-20 21:14:44');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-20 21:14:52');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-20 21:14:59');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-20 22:35:17');
INSERT INTO `sys_logininfor` VALUES (268, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-21 14:41:43');
INSERT INTO `sys_logininfor` VALUES (269, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-21 14:41:55');
INSERT INTO `sys_logininfor` VALUES (270, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-21 16:14:19');
INSERT INTO `sys_logininfor` VALUES (271, 'wang', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-21 22:23:44');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-22 16:28:15');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-22 16:28:29');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-22 16:28:34');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-22 16:35:01');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-22 17:26:06');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-22 17:26:11');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 14:19:00');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 14:34:37');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 14:37:30');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-24 14:54:02');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 14:54:09');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 15:04:22');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 15:06:37');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 15:15:18');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 15:21:17');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 15:47:19');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-24 16:00:01');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-24 16:00:12');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 16:00:21');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-24 16:21:59');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-28 19:53:29');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-28 19:53:36');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-28 19:59:53');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-28 20:02:43');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-28 20:10:41');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-28 20:25:35');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-28 20:29:02');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-28 21:42:06');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-28 21:54:37');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-28 23:12:51');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 10:33:53');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-30 10:36:48');
INSERT INTO `sys_logininfor` VALUES (304, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 10:37:03');
INSERT INTO `sys_logininfor` VALUES (305, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-30 10:37:15');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 10:37:31');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-30 10:39:26');
INSERT INTO `sys_logininfor` VALUES (308, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 10:39:33');
INSERT INTO `sys_logininfor` VALUES (309, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-30 10:39:42');
INSERT INTO `sys_logininfor` VALUES (310, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 10:39:49');
INSERT INTO `sys_logininfor` VALUES (311, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-30 10:40:50');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 10:41:05');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-30 10:43:08');
INSERT INTO `sys_logininfor` VALUES (314, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-30 10:43:14');
INSERT INTO `sys_logininfor` VALUES (315, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-30 10:43:20');
INSERT INTO `sys_logininfor` VALUES (316, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-30 10:43:34');
INSERT INTO `sys_logininfor` VALUES (317, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 10:43:38');
INSERT INTO `sys_logininfor` VALUES (318, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 10:52:30');
INSERT INTO `sys_logininfor` VALUES (319, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-30 10:57:17');
INSERT INTO `sys_logininfor` VALUES (320, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-01-30 11:04:58');
INSERT INTO `sys_logininfor` VALUES (321, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 11:05:01');
INSERT INTO `sys_logininfor` VALUES (322, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 11:10:00');
INSERT INTO `sys_logininfor` VALUES (323, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-30 11:19:18');
INSERT INTO `sys_logininfor` VALUES (324, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-30 11:35:04');
INSERT INTO `sys_logininfor` VALUES (325, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2021-01-30 11:39:26');
INSERT INTO `sys_logininfor` VALUES (326, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2021-01-30 11:39:33');
INSERT INTO `sys_logininfor` VALUES (327, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-30 11:39:56');
INSERT INTO `sys_logininfor` VALUES (328, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2021-01-30 11:46:40');
INSERT INTO `sys_logininfor` VALUES (329, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2021-01-30 11:46:48');
INSERT INTO `sys_logininfor` VALUES (330, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-30 11:46:53');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '密码输入错误1次', '2021-01-30 12:10:58');
INSERT INTO `sys_logininfor` VALUES (332, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-30 12:11:21');
INSERT INTO `sys_logininfor` VALUES (333, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2021-01-30 13:17:16');
INSERT INTO `sys_logininfor` VALUES (334, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-30 13:17:23');
INSERT INTO `sys_logininfor` VALUES (335, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2021-01-30 14:43:10');
INSERT INTO `sys_logininfor` VALUES (336, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-30 14:43:14');
INSERT INTO `sys_logininfor` VALUES (337, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2021-01-30 15:08:54');
INSERT INTO `sys_logininfor` VALUES (338, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2021-01-30 15:08:59');
INSERT INTO `sys_logininfor` VALUES (339, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '1', '验证码错误', '2021-01-30 15:09:03');
INSERT INTO `sys_logininfor` VALUES (340, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-30 15:09:08');
INSERT INTO `sys_logininfor` VALUES (341, 'wang', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2021-01-30 15:12:29');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-04-05 16:37:29');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-05 16:37:35');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-05 16:41:07');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-05 17:01:41');
INSERT INTO `sys_logininfor` VALUES (346, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-21 08:06:04');
INSERT INTO `sys_logininfor` VALUES (347, 'wang', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-04-21 08:06:25');
INSERT INTO `sys_logininfor` VALUES (348, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-21 08:06:47');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-21 08:31:20');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-04-21 08:37:34');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-21 08:37:46');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-22 09:32:41');
INSERT INTO `sys_logininfor` VALUES (353, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-04-22 10:42:41');
INSERT INTO `sys_logininfor` VALUES (354, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-22 10:42:47');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7054 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2020-11-20 14:16:22', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2020-11-20 14:16:22', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2020-11-20 14:16:22', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', 'menuBlank', 'C', '0', '', 'fa fa-location-arrow', 'admin', '2020-11-20 14:16:22', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (6, '配置管理', 0, 6, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2020-11-20 15:56:56', '', NULL, '配置管理目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', 'fa fa-user-o', 'admin', '2020-11-20 14:16:22', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', 'fa fa-user-secret', 'admin', '2020-11-20 14:16:22', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', 'fa fa-th-list', 'admin', '2020-11-20 14:16:22', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', 'fa fa-outdent', 'admin', '2020-11-20 14:16:22', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', 'fa fa-address-card-o', 'admin', '2020-11-20 14:16:22', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2020-11-20 14:16:22', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', 'fa fa-sun-o', 'admin', '2020-11-20 14:16:22', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2020-11-20 14:16:22', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', 'fa fa-pencil-square-o', 'admin', '2020-11-20 14:16:22', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2020-11-20 14:16:22', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', 'fa fa-tasks', 'admin', '2020-11-20 14:16:22', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', 'fa fa-bug', 'admin', '2020-11-20 14:16:22', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', 'fa fa-server', 'admin', '2020-11-20 14:16:22', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', 'fa fa-wpforms', 'admin', '2020-11-20 14:16:22', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', 'fa fa-code', 'admin', '2020-11-20 14:16:22', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', 'fa fa-gg', 'admin', '2020-11-20 14:16:22', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2020-11-20 14:16:22', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2020-11-20 14:16:22', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (600, 'ip管理', 6, 1, '/system/ipinfo', '', 'C', '0', 'system:ipinfo:view', 'fa fa-user-o', 'admin', '2020-11-20 15:56:56', '', NULL, 'ip管理菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (6000, 'ip查询', 600, 1, '#', '', 'F', '0', 'system:ipinfo:list', '#', 'admin', '2020-11-20 15:56:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (6001, 'ip新增', 600, 2, '#', '', 'F', '0', 'system:ipinfo:add', '#', 'admin', '2020-11-20 15:56:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (6002, 'ip修改', 600, 3, '#', '', 'F', '0', 'system:ipinfo:edit', '#', 'admin', '2020-11-20 15:56:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (6003, 'ip删除', 600, 4, '#', '', 'F', '0', 'system:ipinfo:remove', '#', 'admin', '2020-11-20 15:56:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7012, '挂号管理', 6, 3, '/system/registerrecord', '', 'C', '0', 'system:registerrecord:view', '#', 'admin', '2021-01-22 16:38:38', '', NULL, '挂号菜单');
INSERT INTO `sys_menu` VALUES (7013, '挂号查询', 7012, 1, '#', '', 'F', '0', 'system:registerrecord:list', '#', 'admin', '2021-01-22 16:38:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7014, '挂号新增', 7012, 2, '#', '', 'F', '0', 'system:registerrecord:add', '#', 'admin', '2021-01-22 16:38:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7015, '挂号修改', 7012, 3, '#', '', 'F', '0', 'system:registerrecord:edit', '#', 'admin', '2021-01-22 16:38:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7016, '挂号删除', 7012, 4, '#', '', 'F', '0', 'system:registerrecord:remove', '#', 'admin', '2021-01-22 16:38:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7017, '挂号导出', 7012, 5, '#', '', 'F', '0', 'system:registerrecord:export', '#', 'admin', '2021-01-22 16:38:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7018, '医生管理', 6, 4, '/system/doctor', '', 'C', '0', 'system:doctor:view', '#', 'admin', '2021-01-22 17:03:25', '', NULL, '医生菜单');
INSERT INTO `sys_menu` VALUES (7019, '医生查询', 7018, 1, '#', '', 'F', '0', 'system:doctor:list', '#', 'admin', '2021-01-22 17:03:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7020, '医生新增', 7018, 2, '#', '', 'F', '0', 'system:doctor:add', '#', 'admin', '2021-01-22 17:03:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7021, '医生修改', 7018, 3, '#', '', 'F', '0', 'system:doctor:edit', '#', 'admin', '2021-01-22 17:03:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7022, '医生删除', 7018, 4, '#', '', 'F', '0', 'system:doctor:remove', '#', 'admin', '2021-01-22 17:03:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7023, '医生导出', 7018, 5, '#', '', 'F', '0', 'system:doctor:export', '#', 'admin', '2021-01-22 17:03:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7024, '新闻管理', 6, 5, '/system/news', '', 'C', '0', 'system:news:view', '#', 'admin', '2021-01-22 17:14:27', '', NULL, '新闻菜单');
INSERT INTO `sys_menu` VALUES (7025, '新闻查询', 7024, 1, '#', '', 'F', '0', 'system:news:list', '#', 'admin', '2021-01-22 17:14:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7026, '新闻新增', 7024, 2, '#', '', 'F', '0', 'system:news:add', '#', 'admin', '2021-01-22 17:14:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7027, '新闻修改', 7024, 3, '#', '', 'F', '0', 'system:news:edit', '#', 'admin', '2021-01-22 17:14:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7028, '新闻删除', 7024, 4, '#', '', 'F', '0', 'system:news:remove', '#', 'admin', '2021-01-22 17:14:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7029, '新闻导出', 7024, 5, '#', '', 'F', '0', 'system:news:export', '#', 'admin', '2021-01-22 17:14:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7030, '党建管理', 6, 6, '/system/party', '', 'C', '0', 'system:party:view', '#', 'admin', '2021-01-22 17:14:52', '', NULL, '党建菜单');
INSERT INTO `sys_menu` VALUES (7031, '党建查询', 7030, 1, '#', '', 'F', '0', 'system:party:list', '#', 'admin', '2021-01-22 17:14:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7032, '党建新增', 7030, 2, '#', '', 'F', '0', 'system:party:add', '#', 'admin', '2021-01-22 17:14:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7033, '党建修改', 7030, 3, '#', '', 'F', '0', 'system:party:edit', '#', 'admin', '2021-01-22 17:14:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7034, '党建删除', 7030, 4, '#', '', 'F', '0', 'system:party:remove', '#', 'admin', '2021-01-22 17:14:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7035, '党建导出', 7030, 5, '#', '', 'F', '0', 'system:party:export', '#', 'admin', '2021-01-22 17:14:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7036, '科室管理', 6, 7, '/system/office', '', 'C', '0', 'system:office:view', '#', 'admin', '2021-01-22 17:15:35', '', NULL, '科室菜单');
INSERT INTO `sys_menu` VALUES (7037, '科室查询', 7036, 1, '#', '', 'F', '0', 'system:office:list', '#', 'admin', '2021-01-22 17:15:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7038, '科室新增', 7036, 2, '#', '', 'F', '0', 'system:office:add', '#', 'admin', '2021-01-22 17:15:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7039, '科室修改', 7036, 3, '#', '', 'F', '0', 'system:office:edit', '#', 'admin', '2021-01-22 17:15:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7040, '科室删除', 7036, 4, '#', '', 'F', '0', 'system:office:remove', '#', 'admin', '2021-01-22 17:15:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7041, '科室导出', 7036, 5, '#', '', 'F', '0', 'system:office:export', '#', 'admin', '2021-01-22 17:15:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7042, '招聘管理', 6, 2, '/system/recruit', '', 'C', '0', 'system:recruit:view', '#', 'admin', '2021-04-21 08:28:45', '', NULL, '招聘菜单');
INSERT INTO `sys_menu` VALUES (7043, '招聘查询', 7042, 1, '#', '', 'F', '0', 'system:recruit:list', '#', 'admin', '2021-04-21 08:28:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7044, '招聘新增', 7042, 2, '#', '', 'F', '0', 'system:recruit:add', '#', 'admin', '2021-04-21 08:28:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7045, '招聘修改', 7042, 3, '#', '', 'F', '0', 'system:recruit:edit', '#', 'admin', '2021-04-21 08:28:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7046, '招聘删除', 7042, 4, '#', '', 'F', '0', 'system:recruit:remove', '#', 'admin', '2021-04-21 08:28:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7047, '招聘导出', 7042, 5, '#', '', 'F', '0', 'system:recruit:export', '#', 'admin', '2021-04-21 08:28:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7048, '就医指南', 6, 8, '/system/navigation', '', 'C', '0', 'system:navigation:view', '#', 'admin', '2021-04-22 10:38:56', '', NULL, '就医指南菜单');
INSERT INTO `sys_menu` VALUES (7049, '就医指南查询', 7048, 1, '#', '', 'F', '0', 'system:navigation:list', '#', 'admin', '2021-04-22 10:38:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7050, '就医指南新增', 7048, 2, '#', '', 'F', '0', 'system:navigation:add', '#', 'admin', '2021-04-22 10:38:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7051, '就医指南修改', 7048, 3, '#', '', 'F', '0', 'system:navigation:edit', '#', 'admin', '2021-04-22 10:38:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7052, '就医指南删除', 7048, 4, '#', '', 'F', '0', 'system:navigation:remove', '#', 'admin', '2021-04-22 10:38:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (7053, '就医指南导出', 7048, 5, '#', '', 'F', '0', 'system:navigation:export', '#', 'admin', '2021-04-22 10:38:57', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2020-11-20 14:16:23', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 497 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ipinfo\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 15:13:21');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/ipinfo', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-20 15:13:41');
INSERT INTO `sys_oper_log` VALUES (102, '【请填写功能名称】', 2, 'com.ruoyi.system.controller.IpinfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/ipinfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"ip\":[\"127.0.0.2\"],\"mac\":[\"222\"],\"hostmodel\":[\"11112211\"],\"department\":[\"222\"],\"floor\":[\"33\"],\"user\":[\"444\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 16:01:11');
INSERT INTO `sys_oper_log` VALUES (103, '【请填写功能名称】', 5, 'com.ruoyi.system.controller.IpinfoController.export()', 'POST', 1, 'admin', '研发部门', '/system/ipinfo/export', '127.0.0.1', '内网IP', '{\"ip\":[\"\"],\"mac\":[\"\"],\"hostmodel\":[\"\"],\"department\":[\"\"],\"floor\":[\"\"],\"user\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"4b6d7d85-e174-4c5f-8fda-7c42e8f5a705_ipinfo.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 16:01:54');
INSERT INTO `sys_oper_log` VALUES (104, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"111\"],\"mac\":[\"333\"],\"hostmodel\":[\"222\"],\"department\":[\"4444\"],\"floor\":[\"444\"],\"user\":[\"666\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\私活\\若依\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\system\\IpinfoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.IpinfoMapper.insertIpinfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into ipinfo          ( ip,             mac,             hostmodel,             department,             floor,             user )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-11-20 16:02:41');
INSERT INTO `sys_oper_log` VALUES (105, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"userName\":[\"wang\"],\"deptName\":[\"深圳总公司\"],\"phonenumber\":[\"18771419627\"],\"email\":[\"1@qq.com\"],\"loginName\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 16:17:10');
INSERT INTO `sys_oper_log` VALUES (106, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"11\"],\"mac\":[\"1\"],\"hostmodel\":[\"222\"],\"department\":[\"333\"],\"floor\":[\"44\"],\"user\":[\"555\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\私活\\若依\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\system\\IpinfoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.IpinfoMapper.insertIpinfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into ipinfo          ( ip,             mac,             hostmodel,             department,             floor,             user )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-11-20 16:34:54');
INSERT INTO `sys_oper_log` VALUES (107, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"11\"],\"mac\":[\"222\"],\"hostmodel\":[\"333\"],\"department\":[\"444\"],\"floor\":[\"44\"],\"user\":[\"555\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in file [E:\\私活\\若依\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\system\\IpinfoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.IpinfoMapper.insertIpinfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into ipinfo          ( ip,             mac,             hostmodel,             department,             floor,             user,             id )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2020-11-20 16:43:31');
INSERT INTO `sys_oper_log` VALUES (108, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"111\"],\"mac\":[\"222\"],\"hostmodel\":[\"e33\"],\"department\":[\"444\"],\"floor\":[\"555\"],\"user\":[\"y6y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 16:48:54');
INSERT INTO `sys_oper_log` VALUES (109, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.IpinfoController.remove()', 'POST', 1, 'admin', '研发部门', '/system/ipinfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1605862133227\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 16:49:01');
INSERT INTO `sys_oper_log` VALUES (110, '【请填写功能名称】', 2, 'com.ruoyi.system.controller.IpinfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/ipinfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"ip\":[\"127.0.0.21\"],\"mac\":[\"222\"],\"hostmodel\":[\"11112211\"],\"department\":[\"222\"],\"floor\":[\"33\"],\"user\":[\"444\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 16:49:47');
INSERT INTO `sys_oper_log` VALUES (111, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"6,600,6000,6001,6002,6003\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 16:51:44');
INSERT INTO `sys_oper_log` VALUES (112, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"6,600,6000,6001,6002,6003\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 16:52:27');
INSERT INTO `sys_oper_log` VALUES (113, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"6,600,6000,6001,6002,6003\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 16:52:58');
INSERT INTO `sys_oper_log` VALUES (114, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\"configId\":[\"4\"],\"configName\":[\"账号自助-是否开启用户注册功能\"],\"configKey\":[\"sys.account.registerUser\"],\"configValue\":[\"true\"],\"configType\":[\"Y\"],\"remark\":[\"是否开启注册用户功能（true开启，false关闭）\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 17:18:52');
INSERT INTO `sys_oper_log` VALUES (115, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'ccc', NULL, '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"111\"],\"mac\":[\"222\"],\"hostmodel\":[\"44\"],\"department\":[\"22\"],\"floor\":[\"33\"],\"user\":[\"666\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 18:11:04');
INSERT INTO `sys_oper_log` VALUES (116, '【请填写功能名称】', 2, 'com.ruoyi.system.controller.IpinfoController.editSave()', 'POST', 1, 'ccc', NULL, '/system/ipinfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1605867063538\"],\"ip\":[\"111\"],\"mac\":[\"2229\"],\"hostmodel\":[\"448\"],\"department\":[\"22\"],\"floor\":[\"338\"],\"user\":[\"6668\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 18:11:24');
INSERT INTO `sys_oper_log` VALUES (117, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'ccc', NULL, '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"103\"],\"loginName\":[\"ccc\"]}', '{\r\n  \"msg\" : \"新密码不能与旧密码相同\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-20 18:20:23');
INSERT INTO `sys_oper_log` VALUES (118, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'ccc', NULL, '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"103\"],\"loginName\":[\"ccc\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-20 18:20:43');
INSERT INTO `sys_oper_log` VALUES (119, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'test', NULL, '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"111\"],\"mac\":[\"222\"],\"hostmodel\":[\"333\"],\"department\":[\"444\"],\"floor\":[\"555\"],\"user\":[\"666\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 15:46:28');
INSERT INTO `sys_oper_log` VALUES (120, '【请填写功能名称】', 2, 'com.ruoyi.system.controller.IpinfoController.editSave()', 'POST', 1, 'test', NULL, '/system/ipinfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1605867063538\"],\"ip\":[\"23455\"],\"mac\":[\"2229\"],\"hostmodel\":[\"448\"],\"department\":[\"22\"],\"floor\":[\"338\"],\"user\":[\"6668\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 15:46:41');
INSERT INTO `sys_oper_log` VALUES (121, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.IpinfoController.remove()', 'POST', 1, 'test', NULL, '/system/ipinfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"23455,111\"]}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-22 15:47:06');
INSERT INTO `sys_oper_log` VALUES (122, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.IpinfoController.remove()', 'POST', 1, 'test', NULL, '/system/ipinfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1606031187625\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 15:47:20');
INSERT INTO `sys_oper_log` VALUES (123, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.IpinfoController.remove()', 'POST', 1, 'test', NULL, '/system/ipinfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"127.0.0.21,23455\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'\r\n### The error may exist in file [E:\\私活\\若依\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\system\\IpinfoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.IpinfoMapper.deleteIpinfoByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from ipinfo where id in           (               ?          ,              ?          )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'\n; Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'', '2020-11-22 15:52:10');
INSERT INTO `sys_oper_log` VALUES (124, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.IpinfoController.remove()', 'POST', 1, 'test', NULL, '/system/ipinfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"127.0.0.21,23455\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'\r\n### The error may exist in file [E:\\私活\\若依\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\system\\IpinfoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.IpinfoMapper.deleteIpinfoByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from ipinfo where id in           (               ?          ,              ?          )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'\n; Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'', '2020-11-22 15:52:59');
INSERT INTO `sys_oper_log` VALUES (125, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.IpinfoController.remove()', 'POST', 1, 'test', NULL, '/system/ipinfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"127.0.0.21,23455\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'\r\n### The error may exist in file [E:\\私活\\若依\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\system\\IpinfoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.IpinfoMapper.deleteIpinfoByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from ipinfo where id in           (               ?          ,              ?          )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'\n; Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'127.0.0.21\'', '2020-11-22 15:57:21');
INSERT INTO `sys_oper_log` VALUES (126, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'test', NULL, '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"111\"],\"mac\":[\"222\"],\"hostmodel\":[\"555\"],\"department\":[\"444\"],\"floor\":[\"555\"],\"user\":[\"666\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 16:38:00');
INSERT INTO `sys_oper_log` VALUES (127, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.IpinfoController.remove()', 'POST', 1, 'test', NULL, '/system/ipinfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1605867063538,1606034279803\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 16:43:30');
INSERT INTO `sys_oper_log` VALUES (128, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'wang', NULL, '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"111\"],\"mac\":[\"222\"],\"hostmodel\":[\"333\"],\"department\":[\"444\"],\"floor\":[\"555\"],\"user\":[\"66\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 16:54:44');
INSERT INTO `sys_oper_log` VALUES (129, '【请填写功能名称】', 2, 'com.ruoyi.system.controller.IpinfoController.editSave()', 'POST', 1, 'wang', NULL, '/system/ipinfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1606035283716\"],\"ip\":[\"111\"],\"mac\":[\"222\"],\"hostmodel\":[\"333\"],\"department\":[\"444\"],\"floor\":[\"555\"],\"user\":[\"665555\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 16:54:51');
INSERT INTO `sys_oper_log` VALUES (130, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'wang', NULL, '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"111\"],\"mac\":[\"\"],\"hostmodel\":[\"\"],\"department\":[\"\"],\"floor\":[\"\"],\"user\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 16:55:00');
INSERT INTO `sys_oper_log` VALUES (131, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.IpinfoController.remove()', 'POST', 1, 'wang', NULL, '/system/ipinfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1606035283716,1606035299334\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 16:55:11');
INSERT INTO `sys_oper_log` VALUES (132, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.IpinfoController.addSave()', 'POST', 1, 'wang', NULL, '/system/ipinfo/add', '127.0.0.1', '内网IP', '{\"ip\":[\"192.168.1.3\"],\"mac\":[\"222\"],\"hostmodel\":[\"333\"],\"department\":[\"神经内科\"],\"floor\":[\"5楼\"],\"user\":[\"王子明\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-22 18:08:18');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 18:30:53');
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"formula\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 18:35:42');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/formula', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-23 18:36:31');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 18:37:37');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"formula\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 18:42:22');
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/formula', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-23 18:42:28');
INSERT INTO `sys_oper_log` VALUES (139, '分子式', 1, 'com.ruoyi.system.controller.FormulaController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/formula/add', '127.0.0.1', '内网IP', '{\"identity\":[\"111\"],\"retentiontime\":[\"222\"],\"mz\":[\"333\"],\"comparisonresult\":[\"444\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\私活\\java\\自己\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\system\\FormulaMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.FormulaMapper.insertFormula-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into formula          ( identity,             retentiontime,                          mz,             comparisonresult )           values ( ?,             ?,                          ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-11-23 21:04:57');
INSERT INTO `sys_oper_log` VALUES (140, '分子式', 1, 'com.ruoyi.system.controller.FormulaController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/formula/add', '127.0.0.1', '内网IP', '{\"identity\":[\"11\"],\"retentiontime\":[\"22\"],\"mz\":[\"33\"],\"comparisonresult\":[\"44\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 21:13:14');
INSERT INTO `sys_oper_log` VALUES (141, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'admin', '研发部门', '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"0e38e084-5b17-4f22-826a-816332072510_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 21:15:45');
INSERT INTO `sys_oper_log` VALUES (142, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, NULL, NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"161d884a-62e6-4c07-bc09-6f875273033e_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 21:22:29');
INSERT INTO `sys_oper_log` VALUES (143, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'admin', '研发部门', '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"fc5af5c9-06b0-497b-870a-b7f800c52dfc_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 21:25:34');
INSERT INTO `sys_oper_log` VALUES (144, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, NULL, NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,11111\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 01:39:10');
INSERT INTO `sys_oper_log` VALUES (145, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, NULL, NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"e06ceab3-601f-4642-8daa-385dd48bb308_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 01:40:21');
INSERT INTO `sys_oper_log` VALUES (146, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'admin', '研发部门', '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11111,11112,11113,11114,11115,11116,11117,11118,11119,11120\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 01:41:25');
INSERT INTO `sys_oper_log` VALUES (147, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'admin', '研发部门', '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11121,11122\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 01:41:30');
INSERT INTO `sys_oper_log` VALUES (148, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'admin', '研发部门', '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"ecdfa2ca-12f4-4d85-95ce-ebfef3cb3bf9_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 01:42:31');
INSERT INTO `sys_oper_log` VALUES (149, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"6,700,7000,7001,7002,7003\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 10:33:14');
INSERT INTO `sys_oper_log` VALUES (150, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', 1, 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"107\"],\"loginName\":[\"wang\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 10:33:53');
INSERT INTO `sys_oper_log` VALUES (151, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'admin', '研发部门', '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11111\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 10:34:36');
INSERT INTO `sys_oper_log` VALUES (152, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11112,11113,11114,11115,11116,11117,11118,11119,11120,11121\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:18:28');
INSERT INTO `sys_oper_log` VALUES (153, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11122\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:18:31');
INSERT INTO `sys_oper_log` VALUES (154, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,6,10,11,13,15,11111\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:32:33');
INSERT INTO `sys_oper_log` VALUES (155, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11112,11113,11114,11116,11117,11118,11120,11121,11122\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:32:37');
INSERT INTO `sys_oper_log` VALUES (156, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11111,11112,11113,11114,11115,11116,11117,11118,11119,11120\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:33:08');
INSERT INTO `sys_oper_log` VALUES (157, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11121,11122\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:33:12');
INSERT INTO `sys_oper_log` VALUES (158, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,7,10,11,13,15\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:38:18');
INSERT INTO `sys_oper_log` VALUES (159, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,4,5,6,7,8,10,11,13,15\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:42:04');
INSERT INTO `sys_oper_log` VALUES (160, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,4,5,6,7,8,10,11,13\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:50:37');
INSERT INTO `sys_oper_log` VALUES (161, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:50:41');
INSERT INTO `sys_oper_log` VALUES (162, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,3,4,5,6,8,10,11,13,15\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 11:56:11');
INSERT INTO `sys_oper_log` VALUES (163, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"6,700,7000,7001,7002,7003,7004,7005\"]}', 'null', 1, '不允许操作超级管理员角色', '2020-11-24 12:24:11');
INSERT INTO `sys_oper_log` VALUES (164, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"6,700,7000,7001,7002,7003,7004,7005\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 12:24:32');
INSERT INTO `sys_oper_log` VALUES (165, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'admin', '研发部门', '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"a2d2f373-f8ab-40ce-8181-b3c502c3bc7b_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 12:24:54');
INSERT INTO `sys_oper_log` VALUES (166, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,6,7,8,10,11\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 12:27:16');
INSERT INTO `sys_oper_log` VALUES (167, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"dbde4e5f-1152-4b08-ba13-ec16489d5d6d_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 12:32:39');
INSERT INTO `sys_oper_log` VALUES (168, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"3,113,114,1057,1058,1059,1060,1061,6,700,7000,7001,7002,7003,7004,7005\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 21:57:15');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'wang', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ipinfo\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 22:17:32');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'wang', NULL, '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 22:18:03');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'wang', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"formula\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 22:18:51');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'wang', NULL, '/tool/gen/download/ipinfo', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-25 22:18:58');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'wang', NULL, '/tool/gen/download/ipinfo', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-25 22:18:58');
INSERT INTO `sys_oper_log` VALUES (174, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,6,7,8,11,13\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 16:55:36');
INSERT INTO `sys_oper_log` VALUES (175, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,51,52,54,56,58,59,60,61,62,63,65,66,67,68,69,70,71\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 16:55:49');
INSERT INTO `sys_oper_log` VALUES (176, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"72,73,74,75,76,77,79,80,81,82,84,85,86,87,88,89,90,91,94,95,97,98,99,100,101,102,104,105,106,107,108,109,110,111,113,114,115,116,117,118,120,121,122,123,124\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 16:56:15');
INSERT INTO `sys_oper_log` VALUES (177, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,6,7,8,10,11,13,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,32,33,34,35,36,37,38,39,40,41,42,43,44,45,48,49,51,52\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 17:22:43');
INSERT INTO `sys_oper_log` VALUES (178, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"46,55,56,58,59,60,61,62,63,65,66,67,68,69,71,72,73,74,75,76,77,79,80,81,82,84,85,86,87,88,89,90,91,94,95,97,99,100,101,102\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 17:23:08');
INSERT INTO `sys_oper_log` VALUES (179, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,6,7,8,10,11,15,16,17,18,19,20,21,22,23,24,25,26,27,30,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,51,52,54,55,56,58,59,60\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 17:29:20');
INSERT INTO `sys_oper_log` VALUES (180, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"61,62,63,65,66,67,68,69,70,71,72,73,74,75,76,77,79,80,81,82,85,86,87,88,89,90,91,94,95,97,98,99,100,101,102\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 17:29:31');
INSERT INTO `sys_oper_log` VALUES (181, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,6,7,8,10,11\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 17:34:28');
INSERT INTO `sys_oper_log` VALUES (182, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,51,52,54,55,56,58,59,60,61,62,63,65,66,67,68,69\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 17:34:36');
INSERT INTO `sys_oper_log` VALUES (183, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"70,71,72,73,74,75,76,77,79,80,81,82,84,85,86,87,88,89,90,91,94,95,97,98,99,100,102\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 17:34:40');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'wang', NULL, '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-29 21:06:54');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'wang', NULL, '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-29 21:06:58');
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'wang', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"formula\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-29 21:07:12');
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'wang', NULL, '/tool/gen/download/formula', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-29 21:07:20');
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-15 22:30:07');
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_business_commodity_type,t_business_commodity,t_sys_user,t_business_user_cart\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-15 22:30:23');
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_sys_user', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-12-15 22:32:10');
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_business_commodity_type', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-12-15 22:32:45');
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_business_user_cart', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-12-15 22:33:27');
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_business_commodity', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-12-15 22:35:35');
INSERT INTO `sys_oper_log` VALUES (194, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"33008a17-dfe0-47d5-be9c-542d5398d522_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-10 14:43:41');
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"office\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-18 14:45:56');
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/office', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-18 14:47:41');
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/office', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-18 14:47:42');
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"doctor\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 14:25:00');
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/doctor', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 14:26:06');
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/doctor', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 14:26:07');
INSERT INTO `sys_oper_log` VALUES (201, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 16:30:31');
INSERT INTO `sys_oper_log` VALUES (202, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"doctor\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 16:30:39');
INSERT INTO `sys_oper_log` VALUES (203, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"13\"],\"tableName\":[\"doctor\"],\"tableComment\":[\"医生\"],\"className\":[\"Doctor\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"76\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"77\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"科室编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"officecode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"78\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"医生名字\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"doctorname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"79\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"医生编码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"doctorcode\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"80\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"是否出诊\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"iswork\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"81\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"医生介绍\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"doctorintroduction\"],\"columns[5].isIns', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 16:31:11');
INSERT INTO `sys_oper_log` VALUES (204, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/doctor', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 16:31:16');
INSERT INTO `sys_oper_log` VALUES (205, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/doctor', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 16:31:16');
INSERT INTO `sys_oper_log` VALUES (206, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"registerrecord\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 19:41:52');
INSERT INTO `sys_oper_log` VALUES (207, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"14\"],\"tableName\":[\"registerrecord\"],\"tableComment\":[\"挂号\"],\"className\":[\"Registerrecord\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"85\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"86\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"username\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"87\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"性别\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"usersex\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"88\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"年龄\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"userage\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"89\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"身份证\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"useridentitycard\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"90\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"医保卡\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"medicalcard\"],\"columns[5].is', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 19:43:00');
INSERT INTO `sys_oper_log` VALUES (208, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/registerrecord', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 19:43:09');
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/registerrecord', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 19:43:09');
INSERT INTO `sys_oper_log` VALUES (210, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2021-01-20 16:03:38');
INSERT INTO `sys_oper_log` VALUES (211, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2021-01-20 16:11:46');
INSERT INTO `sys_oper_log` VALUES (212, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2021-01-20 16:34:21');
INSERT INTO `sys_oper_log` VALUES (213, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2021-01-20 16:42:20');
INSERT INTO `sys_oper_log` VALUES (214, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2021-01-20 16:46:25');
INSERT INTO `sys_oper_log` VALUES (215, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2021-01-20 17:08:17');
INSERT INTO `sys_oper_log` VALUES (216, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"18c41255-06fb-4096-9b83-4dc4c99854ac_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 17:33:00');
INSERT INTO `sys_oper_log` VALUES (217, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"4fab2864-135b-42c9-8649-d622bf7830fb_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 17:33:22');
INSERT INTO `sys_oper_log` VALUES (218, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2021-01-20 20:08:30');
INSERT INTO `sys_oper_log` VALUES (219, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2021-01-20 20:10:34');
INSERT INTO `sys_oper_log` VALUES (220, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"9b28db75-55d0-485c-a826-07de0c546375_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:22:26');
INSERT INTO `sys_oper_log` VALUES (221, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"acef809f-327d-410d-b559-af38ff4174e9_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:27:37');
INSERT INTO `sys_oper_log` VALUES (222, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,6,7,8,9,10\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:28:46');
INSERT INTO `sys_oper_log` VALUES (223, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11,12,13,14,15,16,17,18,19,20\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:28:51');
INSERT INTO `sys_oper_log` VALUES (224, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"21,22,23,24,25,26,27,28,29,30\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:28:54');
INSERT INTO `sys_oper_log` VALUES (225, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"31,32,33,34,35,36,37,38,39,40\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:28:59');
INSERT INTO `sys_oper_log` VALUES (226, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"41,42,43,44,45,46,47,48,49,50\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:29:04');
INSERT INTO `sys_oper_log` VALUES (227, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"51,52,53,54,55,56,57,58,59,60\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:29:15');
INSERT INTO `sys_oper_log` VALUES (228, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"61,62,63,64,65,66,67,68,69,70\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:29:19');
INSERT INTO `sys_oper_log` VALUES (229, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"71,72,73,74,75,76,77,78,79,80\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:29:22');
INSERT INTO `sys_oper_log` VALUES (230, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"81,82,83,84,85,86,87,88,89,90\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:29:26');
INSERT INTO `sys_oper_log` VALUES (231, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"91,92,93,94,95,96,97,98,99,100\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:29:30');
INSERT INTO `sys_oper_log` VALUES (232, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"101,102,103,104,105,106,107,108,109,110\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:29:34');
INSERT INTO `sys_oper_log` VALUES (233, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"111,112,114,115,116,117,118,119,120,121\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:29:40');
INSERT INTO `sys_oper_log` VALUES (234, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"123,124,125,126,128,129,130,131,132,133\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:29:43');
INSERT INTO `sys_oper_log` VALUES (235, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"134,135,136,137,139,140,141,142,143,144\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:18');
INSERT INTO `sys_oper_log` VALUES (236, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"146,147,149,150,151,153,154,155,157,158\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:22');
INSERT INTO `sys_oper_log` VALUES (237, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"159,160,161,162,163,164,165,166,167,169\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:25');
INSERT INTO `sys_oper_log` VALUES (238, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"170,171,172,173,174,175,176,177,178,179\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:27');
INSERT INTO `sys_oper_log` VALUES (239, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"180,182,183,184,185,186,187,188,189,190\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:30');
INSERT INTO `sys_oper_log` VALUES (240, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"191,192,193,194,195,196,197,198,199,200\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:33');
INSERT INTO `sys_oper_log` VALUES (241, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"201,202,203,204,206,207,209,210,211,212\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:38');
INSERT INTO `sys_oper_log` VALUES (242, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"213,215,216,217,218,219,220,221,222,223\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:41');
INSERT INTO `sys_oper_log` VALUES (243, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"224,225,226,227,228,229,230,231,232,233\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:45');
INSERT INTO `sys_oper_log` VALUES (244, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"234,235,236,237,238,239,240,241,242,243\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:50');
INSERT INTO `sys_oper_log` VALUES (245, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"244,245,246,247,248,249,250,251,252,253\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:52');
INSERT INTO `sys_oper_log` VALUES (246, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"254,255,256,257,258,259,260,261,262,263\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:30:55');
INSERT INTO `sys_oper_log` VALUES (247, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"264,265,266,267,268,269,270,272,273,274\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:00');
INSERT INTO `sys_oper_log` VALUES (248, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"275,276,277,280,281,282,283,284,285,286\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:03');
INSERT INTO `sys_oper_log` VALUES (249, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"287,288,289,291,292,293,294,296,297,298\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:07');
INSERT INTO `sys_oper_log` VALUES (250, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"299,300,301,302,303,304,305,306,307,308\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:11');
INSERT INTO `sys_oper_log` VALUES (251, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"309,310,311,312,313,314,315,316,317,318\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:14');
INSERT INTO `sys_oper_log` VALUES (252, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"320,321,322,323,324,325,326,327,328,329\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:17');
INSERT INTO `sys_oper_log` VALUES (253, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"330,331,333,334,335,336,337,338,339,340\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:20');
INSERT INTO `sys_oper_log` VALUES (254, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"341,342,343,344,345,346,347,348,350,352\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:23');
INSERT INTO `sys_oper_log` VALUES (255, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"353,354,355,356,357,358,359,360,361,362\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:26');
INSERT INTO `sys_oper_log` VALUES (256, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"363,364,365,366,367,368,369,370,371,372\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:31');
INSERT INTO `sys_oper_log` VALUES (257, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"373,374,375,376,377,378,379,380,381,383\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:37');
INSERT INTO `sys_oper_log` VALUES (258, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,403,404,405,406,407,408,409,410,411,412,413,414,415,417,418,419,420,421,422,423,424,426,427,428,429,430,431,432,433,434,435,436\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:44');
INSERT INTO `sys_oper_log` VALUES (259, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"437,438,439,441,442,443,444,445,446,447,448,449,451,452,453,454,455,456,457,458,459,460,461,462,463,464,466,467,468,469,470,471,472,473,474,475,476,478,479,480,481,482,483,484,485,486,487,488,489,490\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:52');
INSERT INTO `sys_oper_log` VALUES (260, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"491,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,512,513,514,515,516,517,518,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:56');
INSERT INTO `sys_oper_log` VALUES (261, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"544,545,546,547,548,551,554,555,556,557,559,561,563,564,565,566,569,570,571,574,577,579,581,583,584,585,586,587,588,589,590,591,592,594,595,596,597,599,600,601,602,603,604,605,607,608,609,610,612,614\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:31:58');
INSERT INTO `sys_oper_log` VALUES (262, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"615,616,617,618,621,622,626,627,630,631,633,634,636,638,639,641,642,643,644,646,648,649,650,651,652,653,655,656,657,658,659,661,663,664,665,666,667,669,670,671,672,673,674,675,677,678,679,680,681,683\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:32:02');
INSERT INTO `sys_oper_log` VALUES (263, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,722,723,724,726,727,728,729,730,731,732,733,734,735\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:32:05');
INSERT INTO `sys_oper_log` VALUES (264, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"736,738,739,740,741,742,743,744,745,746,747,748,749,750,752,753,754,755,756,757,760,761,762,763,764,765,766,767,768,769,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:32:09');
INSERT INTO `sys_oper_log` VALUES (265, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,808,809,810,811,812,813,814,817,818,819,821,822,823,825,827,828,829,832,833,834,835,836,837,840,841,842,844,845,846,847,848,849,850,851\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:32:12');
INSERT INTO `sys_oper_log` VALUES (266, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"852,853,856,857,858,864,1092,1098,1101,1102,1110,1111,1116,1117,1121,1126,1127,1129,1130,1135,1146,1150,1156,1158,1160,1164,1166,1170,1171,1173,1177,1181,1186,1187,1193,1196,1605,1607,1805,1807,1810,1811,1813,1814,1815,1819,1821,1825,1827,1832\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:32:14');
INSERT INTO `sys_oper_log` VALUES (267, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1836,1843,1844,1952,1954,2367,3559,3561,3564,3565,3569,3572,3573,3574,3576,3578,3579,3581,3585,3587,3590,3591,3594,3718,3719,3720,3857,3858,3863,3864,3866,3867,3868,3869,3873,3874,3875,3876,3877,3879,3880,3886,3887,3890,3893,4023,4025,4026\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:32:19');
INSERT INTO `sys_oper_log` VALUES (268, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"e0f29e34-76f4-460f-86c5-c302b7d3efb8_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:38:23');
INSERT INTO `sys_oper_log` VALUES (269, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,6,7,8,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,32,33,34,35,36,37,38,39,40,41,42,45,47,48,49,50,51,52,54,55\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:46:40');
INSERT INTO `sys_oper_log` VALUES (270, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"9979be81-d7b8-4d39-ab0f-d6372abe92ae_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:52:01');
INSERT INTO `sys_oper_log` VALUES (271, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"33,36,38,39,40,41,42,45,47,48,49,50,51,52,54,55,56,57,58,59,60,61,62,64,66,68,69,72,73,74,75,77,78\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:57:57');
INSERT INTO `sys_oper_log` VALUES (272, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,6,8,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,30,32,34,35,37,76,79,80,82,83,84,85,86,87,88,89,91,92,93,95,96,97,98,99,100\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:58:01');
INSERT INTO `sys_oper_log` VALUES (273, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"101,102,103,104,105,106,107,108,110,111,112,115,116,117,118,119,120,121,123,124,125,126,128,130,131,132,133,134,135,136,137,139,140,141,142,143,146,147,149,151,153,155,157,158,159,161,163,164,165,166\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:58:05');
INSERT INTO `sys_oper_log` VALUES (274, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"169,170,171,172,173,174,175,176,177,179,180,182,183,185,186,189,190,191,192,194,196,198,199,200,201,202,204,207,209,211,212,213,215,216,217,220,221,222,223,224,225,226,227,229,230,231,232,233,234,235\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:58:08');
INSERT INTO `sys_oper_log` VALUES (275, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"237,457,459,462,463,466,467,468,470,471,472,473,475,478,483,484,485,486,487,488,490,493,494,495,496,497,498,499,500,501,502,503,505,506,507,509,510,512,513,514,515,516,518,520,522,523,524,525,526,527\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:58:12');
INSERT INTO `sys_oper_log` VALUES (276, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"528,530,531,533,534,535,536,537,538,539,540,542,543,544,545,546,547,548,551,554,555,556,557,559,561,563,564,565,566,569,570,571,574,577,579,581,583,584,585,586,587,588,589,590,591,592,594,595,596,597\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:58:15');
INSERT INTO `sys_oper_log` VALUES (277, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"599,600,601,602,603,604,605,607,608,609,610,612,614,615,616,617,618,621,622,626,627,630,631,633,634,636,638,639,641,642,643,644,646,648,649,650,651,652,653,655,656,657,658,659,661,663,664,665,666,667\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:58:20');
INSERT INTO `sys_oper_log` VALUES (278, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"669,670,671,672,673,674,675,677,678,679,680,683,685,686,687,688,689,690,691,692,693,694,695,696,698,700,701,704,705,706,707,708,709,710,711,712,714,715,716,717,718,719,720,722,723,724,727,729,730,731\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:58:23');
INSERT INTO `sys_oper_log` VALUES (279, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"732,734,735,736,738,739,740,741,742,743,744,745,747,748,749,753,755,760,761,763,765,766,767,768,769,771,773,774,775,776,777,778,779,780,781,782,783,784,785,788,789,791,792,793,796\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 20:58:26');
INSERT INTO `sys_oper_log` VALUES (280, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"404c8578-3207-43fd-b351-cf802f8a5a93_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:03:03');
INSERT INTO `sys_oper_log` VALUES (281, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4,5,6,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,32,33,34,35,36,37,38,39,40,41,42,45,47,48,49,50,51,52,54,55,56,57\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:00');
INSERT INTO `sys_oper_log` VALUES (282, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"58,59,60,61,62,64,66,68,69,72,73,74,75,76,77,78,79,80,82,83,84,85,86,87,88,89,91,92,93,95,96,97,98,99,100,101,102,103,104,105,106,107,108,110,111,112,115,116,117,118\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:04');
INSERT INTO `sys_oper_log` VALUES (283, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"119,120,121,123,124,125,126,128,130,131,132,133,134,135,136,137,139,140,141,142,143,146,147,149,151,153,155,157,158,159,161,163,164,165,166,169,170,171,172,173,174,175,176,177,178,179,180,182,183,185\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:07');
INSERT INTO `sys_oper_log` VALUES (284, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"186,189,190,191,192,194,196,198,199,200,201,202,204,207,209,211,212,213,215,216,217,218,219,220,221,222,223,224,225,226,227,229,230,231,232,233,234,235,236,237,238,239,240,242,244,245,246,247,248,250\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:11');
INSERT INTO `sys_oper_log` VALUES (285, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"251,252,253,254,255,256,257,258,259,260,262,263,264,265,266,267,268,269,270,272,273,276,277,280,282,284,285,287,288,289,291,293,296,297,298,299,301,302,303,304,306,307,308,309,311,312,313,314,316,317\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:13');
INSERT INTO `sys_oper_log` VALUES (286, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"318,321,322,323,324,325,326,327,328,330,331,333,334,335,337,338,340,343,344,345,346,347,350,352,353,354,355,356,358,359,363,364,365,366,367,368,370,371,372,373,375,376,377,378,379,380,381,383,384,385\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:16');
INSERT INTO `sys_oper_log` VALUES (287, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"386,388,390,391,392,393,394,396,397,398,400,401,403,404,406,407,409,410,411,412,413,415,418,419,420,421,422,423,424,426,427,428,429,430,431,432,433,435,436,437,439,441,442,443,444,445,447,448,449,451\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:20');
INSERT INTO `sys_oper_log` VALUES (288, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"452,453,454,455,456,457,458,459,460,461,462,463,464,466,467,468,469,470,471,472,473,475,478,483,484,485,486,487,488,490,493,494,495,496,497,498,499,500,501,502,503,505,506,507,509,510,512,513,514,515\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:23');
INSERT INTO `sys_oper_log` VALUES (289, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"516,518,520,522,523,524,525,526,527,528,530,531,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,551,554,555,556,557,559,561,563,564,565,566,569,570,571,574,577,579,581,583,584,585,586\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:26');
INSERT INTO `sys_oper_log` VALUES (290, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"587,588,590,591,592,594,595,596,597,599,600,601,602,603,604,605,607,608,609,610,612,614,615,616,617,618,621,622,626,627,630,631,633,634,636,638,639,641,642,643,644,646,648,649,650,651,652,653,655,656\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:30');
INSERT INTO `sys_oper_log` VALUES (291, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"657,658,659,661,663,664,665,666,667,669,670,671,672,673,674,675,677,678,679,680,683,685,686,687,688,689,690,691,692,693,694,695,696,698,700,701,704,705,706,707,708,709,710,711,712,714,715,716,717,718\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:33');
INSERT INTO `sys_oper_log` VALUES (292, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"719,720,722,723,724,727,729,730,731,732,734,735,736,738,739,740,741,742,743,744,745,747,748,749,753,755,760,761,763,765,766,767,768,769,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,788\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:36');
INSERT INTO `sys_oper_log` VALUES (293, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"789,791,792,793,795,796,797,798,799,800,801,802,803,804,805,808,811,812,817,818,819,821,822,823,825,827,828,829,832,833,834,835,836,837,840,841,842,844,845,846,847,848,849,850,851,852,853,854,855,856\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:39');
INSERT INTO `sys_oper_log` VALUES (294, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"857,858,859,860,863,864,865,866,867,868,869,872,874,875,877,878,879,880,881,882,883,885,886,887,890,891,893,895,896,897,898,899,900,901,905,906,907,909,910,911,913,914,915,916,918,919,920,921,922,923\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:43');
INSERT INTO `sys_oper_log` VALUES (295, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"924,925,926,927,930,931,932,933,935,936,937,938,940,941,942,944,945,947,948,949,950,952,953,955,956,957,958,960,961,962,963,964,965,966,969,970,971,972,973,974,976,977,978,982,983,985,987,989,990,991\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:46');
INSERT INTO `sys_oper_log` VALUES (296, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"992,994,997,998,999,1000\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:09:50');
INSERT INTO `sys_oper_log` VALUES (297, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"1768d20d-e90b-421d-ac90-f86896e55cfc_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:12:06');
INSERT INTO `sys_oper_log` VALUES (298, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"news\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:15:16');
INSERT INTO `sys_oper_log` VALUES (299, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-20 21:15:25');
INSERT INTO `sys_oper_log` VALUES (300, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-20 21:15:25');
INSERT INTO `sys_oper_log` VALUES (301, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,32,33,34,35,36,37,38,39,40,41,42,45,47,48,49,50\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:15');
INSERT INTO `sys_oper_log` VALUES (302, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1003,1006,1009,1010,1013,1014,1015,1017,1018,1019,1020,1022,1023,1026,1027,1029,1030,1034,1035,1036,1037,1039,1040,1041,1042,1043,1044,1046,1047,1048,1049,1051,1052,1053,1055,1059,1060,1061,1062,1064,1065,1066,1067,1068,1069,1070,1073,1074\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:19');
INSERT INTO `sys_oper_log` VALUES (303, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1072,1076,1078,1079,1080,1081,1082,1083,1084,1085,1086,1088\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:21');
INSERT INTO `sys_oper_log` VALUES (304, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1091,1092,1093,1095,1096,1097,1098,1099,1101,1102,1104\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:25');
INSERT INTO `sys_oper_log` VALUES (305, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1106,1108,1110,1111,1113,1116,1117,1118,1119,1120,1121,1122,1123,1124,1126\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:33');
INSERT INTO `sys_oper_log` VALUES (306, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1127,1128,1129,1130,1131,1132,1133,1134,1135,1137,1138,1139,1140,1141,1144,1146,1147,1148,1150,1152,1153,1154,1155,1156,1157,1158,1159,1160,1162,1164,1165,1167\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:37');
INSERT INTO `sys_oper_log` VALUES (307, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1163,1166,1168,1170,1171,1173,1174,1175,1177,1178,1179,1181,1183\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:40');
INSERT INTO `sys_oper_log` VALUES (308, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1182,1185,1186,1187,1188,1191,1193,1195,1196,1198,1199,1200\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:44');
INSERT INTO `sys_oper_log` VALUES (309, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1201,1203,1205,1206,1207,1208,1209,1210,1211,1213,1214,1215,1216\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:46');
INSERT INTO `sys_oper_log` VALUES (310, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:49');
INSERT INTO `sys_oper_log` VALUES (311, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1233,1234,1235,1236,1237,1238,1239,1240,1242,1244,1245,1246\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:52');
INSERT INTO `sys_oper_log` VALUES (312, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1247,1248,1250,1251,1252,1254,1255,1257,1258,1259,1262,1263\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:55');
INSERT INTO `sys_oper_log` VALUES (313, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1261,1265,1266,1267,1268,1269,1271,1272,1274,1275,1276,1277,1279\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:18:58');
INSERT INTO `sys_oper_log` VALUES (314, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1280,1281,1283,1284,1285,1286,1288,1289,1290,1291,1292,1293,1294\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:07');
INSERT INTO `sys_oper_log` VALUES (315, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1309,1310,1313,1315,1316,1317,1318,1320,1321,1322,1324,1327,1329,1330,1331,1334,1335,1336,1338,1339,1340,1341\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:12');
INSERT INTO `sys_oper_log` VALUES (316, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1342,1343,1344,1345,1347,1348,1350,1351,1352,1354,1355,1356,1359,1360,1361,1363,1366,1367,1371,1372,1373,1374\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:14');
INSERT INTO `sys_oper_log` VALUES (317, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1375,1376,1377,1378,1379,1380,1381,1382,1383,1385\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:18');
INSERT INTO `sys_oper_log` VALUES (318, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1386,1388,1389,1390,1391,1392,1393,1394,1397,1398\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:21');
INSERT INTO `sys_oper_log` VALUES (319, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1399,1400,1401,1402,1405,1406,1407,1408,1410\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:25');
INSERT INTO `sys_oper_log` VALUES (320, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1409,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1426\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:28');
INSERT INTO `sys_oper_log` VALUES (321, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1425,1427,1428,1429,1430,1432,1433,1434,1435,1436,1437,1438,1439,1440\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:32');
INSERT INTO `sys_oper_log` VALUES (322, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:35');
INSERT INTO `sys_oper_log` VALUES (323, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1456,1458,1459,1460,1462,1463,1464,1465,1467,1468,1469,1470,1471,1472,1473,1475,1476,1477,1478,1479,1481,1482,1484,1485,1486,1487,1488,1489,1490,1491,1493,1494,1495,1496,1497,1498,1499,1500,1502,1503\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:47');
INSERT INTO `sys_oper_log` VALUES (324, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1504,1505,1506,1508,1509,1510,1512,1513,1514,1515,1518,1520,1521,1523\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:50');
INSERT INTO `sys_oper_log` VALUES (325, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1519,1524,1525,1527,1528,1529,1531,1532,1533,1534,1536,1538,1539,1541,1542,1543\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:54');
INSERT INTO `sys_oper_log` VALUES (326, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1544,1545,1546,1547,1551,1552,1554,1555,1557,1558,1561,1562,1563,1564\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:19:57');
INSERT INTO `sys_oper_log` VALUES (327, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1565,1567,1568,1570,1572,1574,1575,1576,1577,1579,1580,1581\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:01');
INSERT INTO `sys_oper_log` VALUES (328, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1582,1583,1585,1586,1587,1588,1590,1591,1592,1593,1594,1595,1596,1597,1598,1600,1601,1602,1603,1604,1605,1606,1607,1609,1610,1611,1612,1613,1614,1615,1616,1618,1619,1620,1621,1622,1623,1624,1625\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:14');
INSERT INTO `sys_oper_log` VALUES (329, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1627,1628,1629,1630,1631,1632,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1645\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:17');
INSERT INTO `sys_oper_log` VALUES (330, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1646,1647,1648,1649,1650,1652,1654,1655,1656,1659,1660,1661,1662,1664\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:21');
INSERT INTO `sys_oper_log` VALUES (331, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1665,1666,1667,1668,1669,1670,1671,1676,1678,1679,1680,1681,1682,1683\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:25');
INSERT INTO `sys_oper_log` VALUES (332, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1686,1687,1688,1689,1690,1691,1692,1693,1694,1696,1699,1700,1701,1702,1703,1704,1706,1707,1709,1712,1713,1714,1715,1716,1717,1720,1721,1722,1724,1725,1727,1729,1730,1731,1733,1734,1735,1739,1743,1745,1746,1747,1748\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:36');
INSERT INTO `sys_oper_log` VALUES (333, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1749,1750,1751,1753,1754,1755,1756,1761,1762,1763,1764,1766,1768,1769,1770\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:40');
INSERT INTO `sys_oper_log` VALUES (334, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1771,1772,1774,1775,1776,1778,1782,1783,1784,1785,1787,1790,1793\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:43');
INSERT INTO `sys_oper_log` VALUES (335, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1794,1795,1797,1800,1801,1802,1803,1804,1805,1806,1808,1810,1811,1812\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:49');
INSERT INTO `sys_oper_log` VALUES (336, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1813,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1830,1834,1835,1839,1840,1842,1844,1845\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:53');
INSERT INTO `sys_oper_log` VALUES (337, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1843,1849,1851,1855,1856,1858,1860,1863,1864,1865,1866,1867,1868,1870,1871,1872\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:20:57');
INSERT INTO `sys_oper_log` VALUES (338, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1869,1873,1874,1876,1878,1880,1881,1882,1883,1884,1885,1886,1888,1889,1891,1892,1894\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:21:00');
INSERT INTO `sys_oper_log` VALUES (339, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1893,1896,1898,1899,1900,1901,1902,1903,1904,1908\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:21:04');
INSERT INTO `sys_oper_log` VALUES (340, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1909,1910,1913,1915,1917,1918,1920,1921,1922,1923,1924,1926,1927\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:21:09');
INSERT INTO `sys_oper_log` VALUES (341, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1928,1930,1931,1932,1933,1934,1935,1936,1939,1940,1941,1942,1943,1944,1946,1947,1948,1949,1950\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:21:13');
INSERT INTO `sys_oper_log` VALUES (342, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1951,1952,1954,1955,1956,1957,1958,1959,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:21:18');
INSERT INTO `sys_oper_log` VALUES (343, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1974,1975,1976,1977,1980,1982,1983,1985,1987,1988,1989,1990,1993,1994,1995,1996,1997,1999,2000\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:21:22');
INSERT INTO `sys_oper_log` VALUES (344, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"4f1fa3c0-49c9-462d-9ba9-b598c90c6543_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:23:20');
INSERT INTO `sys_oper_log` VALUES (345, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"ddd47d92-d1ca-4e9d-a7ed-d2736264e22d_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:24:40');
INSERT INTO `sys_oper_log` VALUES (346, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"f94aca6e-443a-46ce-87b6-2a1ce0f55638_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:25:36');
INSERT INTO `sys_oper_log` VALUES (347, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1003,1006,1009,1010,1013,1014,1015,1018,1019,1020,1022,1023,1026,1027,1029,1030,1034,1035,1036,1037,1039,1040,1041,1042,1043,1044,1046,1047,1048,1049,1051,1052,1053,1055,1059,1060,1061,1062,1064,1065,1066,1067,1068,1069,1070,1072,1073,1074,1076,1078\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:29:45');
INSERT INTO `sys_oper_log` VALUES (348, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1079,1080,1081,1082,1083,1084,1085,1086,1088,1091,1092,1093,1095,1096,1097,1098,1099,1101,1102,1104,1106,1108,1110,1111,1113,1116,1117,1118,1119,1120,1121,1122,1123,1124,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1137,1138,1139,1140,1141,1144\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:29:48');
INSERT INTO `sys_oper_log` VALUES (349, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1146,1147,1148,1150,1152,1153,1154,1155,1156,1157,1158,1159,1160,1162,1163,1164,1165,1166,1167,1168,1170,1171,1173,1174,1175,1177,1178,1179,1181,1182,1183,1185,1186,1187,1188,1191,1193,1195,1196,1198,1199,1200,1201,1203,1205,1206,1207,1208,1209,1210\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:29:51');
INSERT INTO `sys_oper_log` VALUES (350, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1211,1213,1214,1215,1216,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1242,1244,1245,1246,1247,1248,1250,1251,1252,1254,1255,1257,1258,1259,1261,1262,1263,1265,1266,1267,1268,1269,1271\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:29:54');
INSERT INTO `sys_oper_log` VALUES (351, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1272,1274,1275,1276,1277,1279,1280,1281,1283,1284,1285,1286,1288,1289,1290,1291,1292,1293,1294,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1309,1310,1313,1315,1316,1317,1318,1320,1321,1322,1324,1327,1329,1330,1331,1334,1335,1336,1338,1339\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:29:57');
INSERT INTO `sys_oper_log` VALUES (352, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1340,1341,1342,1343,1344,1345,1347,1348,1350,1351,1352,1354,1355,1356,1359,1360,1361,1363,1366,1367,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1385,1386,1388,1389,1390,1391,1392,1393,1394,1397,1398,1399,1400,1401,1402,1405,1406\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:29:59');
INSERT INTO `sys_oper_log` VALUES (353, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1407,1408,1409,1410,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1456,1458,1459,1460,1462\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:30:03');
INSERT INTO `sys_oper_log` VALUES (354, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1463,1464,1465,1467,1468,1469,1470,1471,1472,1473,1475,1476,1477,1478,1479,1481,1482,1484,1485,1486,1487,1488,1489,1490,1491,1493,1494,1495,1496,1497,1498,1499,1500,1502,1503,1504,1505,1506,1508,1509,1510,1512,1513,1514,1515,1518,1519,1520,1521,1523\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:30:18');
INSERT INTO `sys_oper_log` VALUES (355, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1524,1525,1527,1528,1529,1531,1532,1533,1534,1536,1538,1539,1541,1542,1543,1544,1545,1546,1547,1551,1552,1554,1555,1557,1558,1561,1562,1563,1564,1565,1567,1568,1570,1572,1574,1575,1576,1577,1579,1580,1581,1582,1583,1585,1586,1587,1588,1590,1591,1592\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:30:33');
INSERT INTO `sys_oper_log` VALUES (356, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1593,1594,1595,1596,1597,1598,1600,1601,1602,1603,1604,1605,1606,1607,1609,1610,1611,1612,1613,1614,1615,1616,1618,1619,1620,1621,1622,1623,1624,1625,1627,1628,1629,1630,1631,1632,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1645,1646,1647,1648\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:30:37');
INSERT INTO `sys_oper_log` VALUES (357, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1649,1650,1652,1654,1655,1656,1659,1660,1661,1662,1664,1665,1666,1667,1668,1669,1670,1671,1676,1678,1679,1680,1681,1682,1683,1686,1687,1688,1689,1690,1691,1692,1693,1694,1696,1699,1700,1701,1702,1703,1704,1706,1707,1709,1712,1713,1714,1715,1716,1717\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:30:39');
INSERT INTO `sys_oper_log` VALUES (358, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1720,1721,1722,1724,1725,1727,1729,1730,1731,1733,1734,1735,1739,1743,1745,1746,1747,1748,1749,1750,1751,1753,1754,1755,1756,1761,1762,1763,1764,1766,1767,1768,1769,1770,1771,1772,1774,1775,1776,1778,1782,1783,1784,1785,1787,1790,1793,1794,1795,1797\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:30:42');
INSERT INTO `sys_oper_log` VALUES (359, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1800,1801,1802,1803,1804,1805,1806,1808,1810,1811,1812,1813,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1830,1834,1835,1839,1840,1842,1843,1844,1845,1849,1851,1855,1856,1858,1860,1863,1864,1865,1866,1867,1868,1869,1870,1871\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:30:45');
INSERT INTO `sys_oper_log` VALUES (360, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1872,1873,1874,1876,1878,1880,1881,1882,1883,1884,1885,1886,1888,1889,1891,1892,1893,1894,1896,1898,1899,1900,1901,1902,1903,1904,1908,1909,1910,1913,1915,1917,1918,1920,1921,1922,1923,1924,1926,1927,1928,1930,1931,1932,1933,1934,1935,1936,1939,1940\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:30:48');
INSERT INTO `sys_oper_log` VALUES (361, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1941,1942,1943,1944,1946,1947,1948,1949,1950,1951,1952,1954,1955,1956,1957,1958,1959,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1974,1975,1976,1977,1980,1982,1983,1985,1987,1988,1989,1990,1993,1994,1995,1996,1997,1999,2000\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:30:51');
INSERT INTO `sys_oper_log` VALUES (362, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"a42dee44-00a9-4b2e-b01d-c624485ca12c_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:35:46');
INSERT INTO `sys_oper_log` VALUES (363, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2033,2036,2037,2039,2040,2041,2042,2043,2044,2046,2047,2048,2049,2052,2053,2054,2055,2057,2059,2061,2062,2064\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:04');
INSERT INTO `sys_oper_log` VALUES (364, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2066,2067,2068,2069,2070,2071,2073,2074,2076,2077,2079,2080,2081,2083,2084,2085,2087,2089,2090,2092,2094,2095,2096,2097,2098,2099,2101,2103,2104,2105,2107,2108,2113,2114,2115,2116,2119,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2132\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:07');
INSERT INTO `sys_oper_log` VALUES (365, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2133,2134,2135,2137,2138,2139,2140,2141,2142,2143,2144,2145,2146,2147,2148,2149,2150,2153,2156,2157,2158,2160,2162,2163,2164,2165,2167,2168,2169,2170,2171,2172,2173,2174,2175,2176,2177,2178,2179,2180,2181,2182,2183,2184,2186,2187,2189,2190,2191,2192\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:09');
INSERT INTO `sys_oper_log` VALUES (366, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2193,2194,2195,2198,2199,2200,2202,2203,2205,2207,2210,2211,2212,2213,2214,2215,2216,2217,2218,2219,2220,2221,2222,2223,2224,2225,2226,2227,2228,2229,2230,2231,2232,2233,2236,2237,2238,2239,2244,2245,2246,2247,2248,2250,2252,2253,2255,2256,2258,2259\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:12');
INSERT INTO `sys_oper_log` VALUES (367, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2260,2261,2262,2264,2265,2266,2267,2268,2269,2270,2271,2272,2273,2274,2275,2277,2280,2281,2282,2283,2284,2285,2286,2288,2289,2290,2291,2292,2295,2297,2298,2299,2304,2305,2306,2307,2308,2309,2310,2311,2314,2316,2317,2319,2320,2321,2322,2324,2325,2326\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:15');
INSERT INTO `sys_oper_log` VALUES (368, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2329,2332,2333,2334,2335,2336,2337,2338,2339,2340,2341,2343,2345,2346,2347,2348,2350,2351,2352,2354,2355,2356,2359,2360,2361,2362,2363,2364,2365,2366,2367,2371,2372,2373,2374,2376,2377,2378,2380,2381,2382,2385,2387,2390,2391,2392,2394,2395,2396,2397\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:18');
INSERT INTO `sys_oper_log` VALUES (369, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2398,2399,2400,2403,2404,2405,2406,2407,2408,2410,2411,2412,2414,2415,2417,2418,2420,2421,2422,2423,2424,2425,2426,2427,2428,2429,2430,2431,2432,2433,2434,2437,2438,2439,2440,2441,2442,2443,2444,2445,2447,2451,2452,2453,2455,2458,2459,2461,2463,2464\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:21');
INSERT INTO `sys_oper_log` VALUES (370, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2465,2466,2467,2468,2469,2470,2471,2472,2473,2476,2477,2478,2479,2480,2481,2482,2483,2484,2485,2486,2489,2490,2491,2494,2495,2496,2498,2499,2500,2501,2502,2504,2505,2506,2507,2508,2509,2510,2511,2512,2513,2514,2517,2518,2519,2520,2522,2525,2527,2528\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:23');
INSERT INTO `sys_oper_log` VALUES (371, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2529,2530,2531,2532,2533,2535,2537,2538,2539,2540,2541,2542,2543,2545,2546,2548,2549,2550,2552,2553,2554,2555,2556,2557,2561,2562,2563,2565,2568,2569,2571,2572,2573,2574,2575,2577,2578,2579,2580,2581,2582,2583,2586,2587,2588,2589,2590,2591,2592,2593\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:27');
INSERT INTO `sys_oper_log` VALUES (372, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2594,2595,2596,2600,2601,2602,2603,2604,2605,2606,2607,2609,2610,2611,2612,2613,2614,2617,2618,2619,2620,2623,2624,2625,2626,2627,2629,2630,2632,2633,2636,2637,2638,2639,2642,2643,2644,2645,2646,2647,2648,2649,2651,2652,2654,2655,2656,2658,2659,2660\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:30');
INSERT INTO `sys_oper_log` VALUES (373, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2661,2663,2665,2666,2667,2668,2669,2670,2671,2672,2673,2675,2676,2677,2679,2681,2683,2684,2685,2686,2687,2689,2690,2691,2692,2694,2696,2697,2698,2699,2701,2703,2704,2705,2706,2707,2708,2709,2712,2716,2718,2719,2721,2722,2723,2724,2725,2726,2727,2729\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:33');
INSERT INTO `sys_oper_log` VALUES (374, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2730,2734,2735,2737,2738,2739,2740,2741,2742,2743,2744,2745,2746,2748,2749,2750,2751,2752,2753,2755,2756,2757,2759,2761,2763,2764,2765,2766,2767,2769,2770,2771,2772,2773,2776,2777,2778,2780,2783,2784,2785,2786,2787,2788,2789,2790,2791,2792,2795,2796\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:38');
INSERT INTO `sys_oper_log` VALUES (375, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2798,2801,2803,2804,2805,2807,2808,2809,2810,2812,2813,2814,2815,2816,2817,2821,2822,2823,2824,2825,2827,2828,2829,2830,2831,2833,2835,2839,2840,2841,2842,2844,2846,2848,2851,2852,2853,2854,2855,2856,2858,2859,2862,2863,2867,2868,2869,2870,2871,2872\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:41');
INSERT INTO `sys_oper_log` VALUES (376, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2875,2877,2878,2879,2880,2882,2884,2885,2886,2887,2888,2889,2890,2891,2893,2895,2896,2897,2898,2899,2901,2909,2910,2911,2912,2913,2914,2915,2916,2917,2918,2919,2920,2921,2922,2923,2924,2926,2927,2928,2929,2933,2934,2935,2936,2937,2938,2940,2941,2942\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:44');
INSERT INTO `sys_oper_log` VALUES (377, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2943,2944,2945,2946,2948,2950,2951,2952,2953,2957,2959,2961,2962,2963,2964,2966,2968,2970,2971,2972,2974,2979,2980,2981,2982,2983,2984,2985,2987,2988,2989,2990,2993,2994,2995,2997,2999\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:39:47');
INSERT INTO `sys_oper_log` VALUES (378, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"0f316a37-8b51-45de-aa7c-775f507fe9c6_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:45:55');
INSERT INTO `sys_oper_log` VALUES (379, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3001,3005,3006,3007,3008,3010,3013,3014,3015,3016,3017,3018,3021,3022,3023,3026,3027,3028,3029,3030,3031,3032,3035,3036,3037,3038,3041,3042,3046,3047,3048,3049,3050,3051,3053,3054,3055,3057,3058,3059,3061,3063,3064,3065,3066,3067,3069,3070,3072,3074\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:46:42');
INSERT INTO `sys_oper_log` VALUES (380, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3075,3076,3077,3079,3083,3085,3086,3089,3090,3091,3092,3093,3095,3096,3099,3100,3102,3106,3109,3110,3111,3112,3113,3114,3115,3116,3117,3118,3119,3120,3121,3123,3124,3125,3126,3128,3129,3131,3132,3133,3134,3137,3138,3139,3140,3141,3142,3145,3147,3148\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:46:45');
INSERT INTO `sys_oper_log` VALUES (381, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3149,3150,3151,3153,3154,3158,3159,3160,3161,3164,3165,3170,3171,3174,3175,3176,3177,3182,3183,3185,3187,3188,3189,3192,3193,3194,3196,3197,3198,3199,3201,3205,3206,3207,3209,3210,3213,3214,3215,3219,3220,3221,3222,3223,3225,3227,3228,3229,3232,3234\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:46:47');
INSERT INTO `sys_oper_log` VALUES (382, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3236,3237,3238,3239,3240,3242,3243,3244,3246,3249,3250,3251,3252,3253,3254,3255,3256,3257,3258,3260,3265,3266,3268,3269,3270,3272,3274,3275,3276,3277,3278,3279,3280,3281,3284,3285,3288,3290,3292,3293,3294,3295,3297,3298,3299,3300,3301,3302,3303,3308\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:46:50');
INSERT INTO `sys_oper_log` VALUES (383, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3311,3312,3315,3316,3318,3319,3321,3322,3323,3324,3325,3326,3327,3329,3331,3333,3334,3335,3337,3338,3339,3340,3342,3345,3346,3347,3349,3351,3353,3354,3355,3357,3363,3364,3365,3366,3367,3368,3370,3371,3372,3373,3375,3376,3377,3380,3381,3382,3383,3384\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:48:45');
INSERT INTO `sys_oper_log` VALUES (384, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3385,3387,3388,3389,3390,3391,3392,3393,3395,3397,3400,3401,3404,3405,3407,3408,3409,3410,3411,3412,3413,3415,3416,3421,3422,3423,3425,3426,3427,3428,3431,3432,3433,3434,3435,3437,3438,3439,3440,3441,3442,3443,3444,3445,3446,3447,3449,3452,3453,3454\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:48:48');
INSERT INTO `sys_oper_log` VALUES (385, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3455,3457,3459,3460,3461,3462,3466,3467,3469,3470,3471,3474,3475,3477,3478,3479,3481,3482,3483,3484,3485,3486,3489,3490,3491,3492,3493,3494,3496,3497,3499,3501,3504,3506,3507,3508,3510,3512,3513,3514,3515,3516,3518,3519,3521,3522,3523,3524,3525,3527\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:48:52');
INSERT INTO `sys_oper_log` VALUES (386, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3529,3533,3535,3536,3537,3538,3539,3541,3542,3543,3544,3545,3548,3549,3551,3552,3553,3555,3556,3557,3558,3559,3560,3562,3566,3567,3568,3569,3570,3571,3572,3573,3576,3577,3578,3579,3580,3581,3582,3583,3584,3585,3586,3587,3588,3590,3591,3592,3593,3594\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:48:55');
INSERT INTO `sys_oper_log` VALUES (387, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3597,3598,3601,3602,3605,3606,3607,3610,3611,3612,3613,3614,3616,3617,3618,3619,3621,3622,3626,3628,3629,3630,3631,3632,3635,3636,3637,3638,3640,3641,3644,3645,3647,3651,3653,3654,3655,3659,3660,3662,3663,3664,3666,3667,3671,3674,3675,3676,3677,3678\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:48:58');
INSERT INTO `sys_oper_log` VALUES (388, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3679,3681,3682,3683,3684,3686,3687,3688,3690,3691,3692,3693,3695,3696,3698,3699,3700,3701,3702,3703,3704,3705,3706,3707,3709,3710,3713,3714,3716,3717,3718,3721,3723,3724,3726,3727,3728,3729,3730,3731,3733,3734,3735,3738,3740,3741,3742,3743,3744,3745\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:49:00');
INSERT INTO `sys_oper_log` VALUES (389, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3746,3747,3748,3750,3751,3752,3753,3754,3755,3756,3757,3760,3761,3762,3765,3766,3767,3769,3770,3771,3772,3773,3775,3776,3777,3778,3780,3781,3782,3784,3785,3787,3790,3791,3792,3793,3795,3796,3797,3799,3801,3802,3803,3804,3805,3809,3810,3813,3817,3818\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:49:04');
INSERT INTO `sys_oper_log` VALUES (390, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3820,3823,3827,3829,3832,3833,3838,3840,3843,3845,3846,3847,3848,3849,3850,3851,3852,3853,3854,3856,3858,3859,3860,3861,3862,3863,3864,3868,3870,3872,3874,3879,3880,3882,3883,3885,3886,3887,3888,3889,3890,3892,3895,3898,3899,3901,3902,3903,3904,3905\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:49:07');
INSERT INTO `sys_oper_log` VALUES (391, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3907,3908,3909,3911,3914,3916,3917,3918,3919,3920,3921,3922,3923,3925,3929,3930,3933,3934,3935,3937,3938,3939,3940,3941,3942,3944,3945,3946,3948,3949,3950,3951,3952,3953,3954,3955,3957,3958,3959,3961,3962,3963,3966,3967,3970,3971,3973,3975,3978,3979\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:49:09');
INSERT INTO `sys_oper_log` VALUES (392, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3985,3988,3989,3992,3997\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 21:49:12');
INSERT INTO `sys_oper_log` VALUES (393, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"1b62853d-a55b-49bf-9aae-6ab7a512a388_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 22:12:19');
INSERT INTO `sys_oper_log` VALUES (394, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"party\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 22:35:32');
INSERT INTO `sys_oper_log` VALUES (395, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/party', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-20 22:35:57');
INSERT INTO `sys_oper_log` VALUES (396, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"party\"],\"tableComment\":[\"党建\"],\"className\":[\"Party\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"103\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"104\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"栏目\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"theme\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"105\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"主题\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"title\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"106\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"summernote\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"107\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"url\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"imgurl\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"108\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"发布时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"publishtime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5]', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-20 22:35:57');
INSERT INTO `sys_oper_log` VALUES (397, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/party', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-20 22:35:57');
INSERT INTO `sys_oper_log` VALUES (398, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4001,4005,4006,4008,4015,4017,4021,4022,4034,4036,4038,4041,4042,4043,4048,4049,4050,4051,4054,4058,4065,4069,4071,4074,4076,4078,4081,4085,4086,4087,4088,4092,4094,4095,4096,4097,4101,4103,4104,4105,4106,4107,4108,4110,4111,4112,4113,4114,4121,4122\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:42:19');
INSERT INTO `sys_oper_log` VALUES (399, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4123,4133,4134,4136,4137,4140,4141,4142,4144,4146,4147,4148,4154,4155,4156,4157,4158,4160,4161,4164,4166,4167,4168,4170,4171,4173,4174,4176,4177,4179,4180,4181,4183,4184,4186,4187,4190,4192,4194,4195,4198,4199,4201,4202,4203,4204,4205,4210,4211,4212\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:42:24');
INSERT INTO `sys_oper_log` VALUES (400, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4213,4214,4215,4217,4218,4219,4220,4221,4222,4224,4227,4229,4230,4233,4234,4235,4236,4238,4239,4240,4241,4242,4243,4244,4245,4246,4247,4248,4249,4250,4251,4252,4253,4254,4255,4256,4260,4262,4263,4265,4268,4271,4272,4275,4276,4277,4278,4279,4280,4281\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:42:30');
INSERT INTO `sys_oper_log` VALUES (401, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4284,4286,4287,4288,4289,4290,4291,4294,4295,4296,4297,4299,4301,4302,4303,4310,4314,4316,4317,4318,4319,4320,4323,4325,4327,4328,4329,4330,4331,4332,4334,4335,4336,4339,4342,4343,4344,4345,4346,4347,4348,4349,4352,4353,4354,4355,4356,4358,4359,4360\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:42:37');
INSERT INTO `sys_oper_log` VALUES (402, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4361,4362,4364,4366,4367,4368,4370,4371,4372,4375,4376,4378,4379,4380,4381,4383,4385,4386,4387,4388,4390,4391,4392,4393,4394,4395,4397,4398,4399,4400,4401,4403,4405,4407,4410,4412,4413,4415,4417,4418,4420,4422,4423,4424,4425,4427,4428,4429,4431,4432\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:42:43');
INSERT INTO `sys_oper_log` VALUES (403, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4433,4434,4435,4436,4439,4440,4442,4444,4445,4446,4447,4448,4451,4452,4453,4454,4456,4458,4459,4461,4462,4463,4464,4465,4466,4467,4468,4469,4471,4472,4474,4475,4476,4477,4478,4479,4480,4482,4483,4484,4485,4487,4489,4491,4493,4494,4495,4496,4497,4498\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:42:48');
INSERT INTO `sys_oper_log` VALUES (404, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4500,4501,4502,4503,4505,4506,4507,4508,4510,4511,4512,4513,4514,4515,4516,4517,4519,4520,4523,4524,4525,4526,4528,4530,4531,4532,4535,4537,4540,4542,4543,4550,4555,4558,4560,4561,4565,4568,4570,4571,4572,4573,4577,4578,4581,4586,4593,4599,4600,4601\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:42:54');
INSERT INTO `sys_oper_log` VALUES (405, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4605,4606,4608,4609,4610,4617,4620,4621,4625,4626,4627,4629,4635,4636,4639,4642,4643,4644,4648,4649,4650,4662,4663,4665,4674,4675,4678,4685,4687,4689,4694,4704,4705,4706,4715,4717,4718,4727,4729,4732,4733,4734,4744,4748,4749,4750,4752,4753,4754,4756\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:42:58');
INSERT INTO `sys_oper_log` VALUES (406, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4758,4759,4760,4761,4762,4763,4765,4769,4771,4773,4774,4775,4776,4777,4778,4779,4780,4783,4784,4786,4791,4792,4793,4794,4795,4796,4801,4802,4803,4804,4805,4806,4808,4809,4810,4811,4814,4815,4817,4818,4821,4822,4823,4824,4826,4827,4828,4829,4830,4831\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:43:04');
INSERT INTO `sys_oper_log` VALUES (407, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4832,4833,4836,4837,4838,4839,4840,4841,4843,4844,4845,4846,4847,4851,4852,4856,4857,4859,4861,4863,4866,4867,4869,4871,4873,4874,4876,4877,4882,4884,4887,4888,4893,4894,4897,4906,4907,4909,4911,4912,4913,4915,4916,4917,4918,4919,4923,4924,4925,4926\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:43:11');
INSERT INTO `sys_oper_log` VALUES (408, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4927,4928,4929,4930,4931,4932,4933,4935,4937,4938,4939,4944,4945,4947,4949,4950,4951,4952,4953,4954,4958,4960,4961,4963,4964,4965,4966,4967,4968,4969,4970,4972,4973,4974,4975,4976,4977,4980,4981,4982,4985,4987,4992,4993,4995,5003,5004,5005,5009,5010\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:43:16');
INSERT INTO `sys_oper_log` VALUES (409, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5011,5013,5014,5018,5019,5021,5022,5023,5024,5026,5027,5029,5030,5031,5033,5034,5035,5036,5038,5041,5045,5047,5048,5049,5050,5051,5052,5053,5054,5055,5056,5060,5061,5062,5064,5066,5067,5069,5070,5072,5073,5076,5077,5078,5079,5080,5082,5083,5084,5085\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:43:23');
INSERT INTO `sys_oper_log` VALUES (410, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5089,5090,5091,5092,5094,5095,5096,5097,5099,5102,5103,5104,5105,5106,5107,5108,5110,5114,5115,5116,5117,5118,5121,5122,5124,5126,5135,5137,5141,5142,5144,5145,5147,5149,5150,5152,5153,5154,5155,5157,5158,5160,5161,5163,5166,5167,5173,5175,5176,5183\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:43:29');
INSERT INTO `sys_oper_log` VALUES (411, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5185,5187,5188,5189,5190,5193,5194,5195,5196,5204,5207,5211,5212,5214,5237,5245,5246,5247,5248,5249\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:43:35');
INSERT INTO `sys_oper_log` VALUES (412, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"1f7d3b73-4374-492b-b929-6a4c9f210001_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 14:47:42');
INSERT INTO `sys_oper_log` VALUES (413, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7,294,589,813,979,1017,2001,2975,3841,4033,4300,4309,4321,4322,4406,4522,4533,4534,4536,4539,4545,4546,4551,4552,4553,4556,4564,4567,4569,4575,4580,4583,4585,4587,4589,4590,4591,4597,4604,4607,4613,4614,4615,4616,4618,4628,4631,4632,4637,4645\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 16:14:31');
INSERT INTO `sys_oper_log` VALUES (414, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4646,4647,4656,4664,4666,4668,4669,4671,4672,4677,4679,4680,4681,4682,4693,4695,4696,4700,4707,4719,4720,4722,4723,4725,4726,4731,4746,4757,4764\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 16:14:34');
INSERT INTO `sys_oper_log` VALUES (415, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"17608497-2433-4a5a-9004-9172cd481d5d_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:27:02');
INSERT INTO `sys_oper_log` VALUES (416, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2,18,42,50,59,91,112,123,171,175,198,219,227,245,265,284,296,337,380,383,390,406,413,420,421,422,429,485,495,498,515,527,528,542,545,557,564,571,597,605,614,643,663,677,688,710,716,743,761,803\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:30:00');
INSERT INTO `sys_oper_log` VALUES (417, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"819,836,865,923,970,971,972,1003,1040,1052,1065,1074,1081,1135,1138,1141,1170,1173,1196,1221,1234,1236,1239,1246,1268,1302,1330,1335,1336,1339,1354,1356,1380,1389,1398,1402,1408,1418,1427,1428,1435,1462,1465,1490,1496,1498,1512,1542,1546,1547\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:30:03');
INSERT INTO `sys_oper_log` VALUES (418, '分子式', 3, 'com.ruoyi.system.controller.FormulaController.remove()', 'POST', 1, 'wang', NULL, '/system/formula/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1551,1574,1576,1581,1585,1590,1596,1606,1615,1649,1650,1659,1665,1713,1734,1770,1783,1793,1803,1840,1843,1844,1881,1882,1888,1896,1898,1955,1967,1976,1985,1994,1997,2005,2017,2027,2039,2052,2053,2055,2061,2074,2083,2092,2121,2122,2123,2140,2148\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:30:06');
INSERT INTO `sys_oper_log` VALUES (419, '分子式', 5, 'com.ruoyi.system.controller.FormulaController.export()', 'POST', 1, 'wang', NULL, '/system/formula/export', '127.0.0.1', '内网IP', '{\"identity\":[\"\"],\"retentiontime\":[\"\"],\"mz\":[\"\"],\"comparisonresult\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"64613c92-1011-4183-8a6a-76481b931d52_formula.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:32:30');
INSERT INTO `sys_oper_log` VALUES (420, '挂号', 3, 'com.ruoyi.system.controller.RegisterrecordController.remove()', 'POST', 1, 'admin', '研发部门', '/system/registerrecord/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 16:39:31');
INSERT INTO `sys_oper_log` VALUES (421, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"party,news,registerrecord,doctor,office\"]}', 'null', 0, NULL, '2021-01-22 16:40:28');
INSERT INTO `sys_oper_log` VALUES (422, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"party,news,registerrecord,doctor,office\"]}', 'null', 0, NULL, '2021-01-22 16:40:30');
INSERT INTO `sys_oper_log` VALUES (423, '科室', 2, 'com.ruoyi.system.controller.OfficeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/office/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"officename\":[\"精神科\"],\"doctornum\":[\"111\"],\"officecode\":[\"jinshenke\"],\"introduction\":[\"精神科简介\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:16:11');
INSERT INTO `sys_oper_log` VALUES (424, '科室', 5, 'com.ruoyi.system.controller.OfficeController.export()', 'POST', 1, 'admin', '研发部门', '/system/office/export', '127.0.0.1', '内网IP', '{\"officename\":[\"\"],\"doctornum\":[\"\"],\"officecode\":[\"\"],\"flag\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"2a747c2a-b309-41ae-9c97-45c17f06fd3d_office.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:16:33');
INSERT INTO `sys_oper_log` VALUES (425, '科室', 3, 'com.ruoyi.system.controller.OfficeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/office/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:32:47');
INSERT INTO `sys_oper_log` VALUES (426, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"内科\"],\"doctornum\":[\"6\"],\"officecode\":[\"neike\"],\"introduction\":[\"左贡县人民医院内科，是我院成立最早的专业科室。现有呼吸、消化、肾脏内科、心血管内科、高原医学科、精神科等多个专业，临床医师共6人，均具有本科或大专学历，已形成了一支具有很强凝聚力与战斗力的老中青医护队伍，近年来尤其对高原病的诊断及治疗具有丰富临床经验。\\r\\n现开设病床20张，拥有动态血压心电监测仪、肺功能检测仪、快速血糖检测仪、14C幽门螺旋杆菌检测仪、12导联心电图仪、指夹式脉搏血氧饱和度检测仪等专科治疗设备，同时采用藏医和西医结合的方法，承担各系统常见疾病的预防和诊治并积累了丰富的疑难病例诊治经验。病房环境优美、整洁、舒适，医护人员技术过硬、态度和蔼、语言亲切，全体医务人员承担“救死扶伤”的服务宗旨，热诚为人民提供全程、优质、高效、温馨的服务。\\r\\n\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:34:43');
INSERT INTO `sys_oper_log` VALUES (427, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"高原医学科\"],\"doctornum\":[\"5\"],\"officecode\":[\"gaoyuanyixueke\"],\"introduction\":[\"左贡县人民医院高原医学科，成立于2019年9月，为内科分支。现有临床医师5人，其中副主任医师1名，其他4名均具有大专以上学历，开设病床20张。科室依托空军特色医学中心在航空医学特别是军事高原医学的研究和临床诊疗方面的先进技术为支撑，在治疗急慢性高原病方面具有丰富的经验，疗效显著。\\r\\n高原病简介:主要是针对高原独特的自然环境下，由于对低氧环境的适应能力不全或失调而发生的综合征，分为急性高原病和慢性高原病，上呼吸道感染、疲劳、寒冷、精神紧张、饥饿、妊娠等为发病诱因。急性高原病主要有高原昏迷、高原脑水肿、高原肺水肿、混合型（即肺型和脑型的综合表现）。慢性高原病指抵达高原后半年以上方发病或原有急性高原病症状迁延不愈者，少数高原世居者也可发病，包括：高原心脏病、高原红细胞增多症、高原血压异常（包括高原高血压和高原低血压）、混合型慢性高原病（即心脏病与红细胞增多症同时存在）等。\\r\\n\"],\"flag\":[\"Y\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'officecode\' at row 1\r\n### The error may exist in file [E:\\私活\\java\\自己\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\system\\OfficeMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.OfficeMapper.insertOffice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into office          ( officename,             doctornum,             officecode,             introduction,             flag )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'officecode\' at row 1\n; Data truncation: Data too long for column \'officecode\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'officecode\' at row 1', '2021-01-22 17:36:47');
INSERT INTO `sys_oper_log` VALUES (428, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"高原医学科\"],\"doctornum\":[\"5\"],\"officecode\":[\"gaoyuanyixueke\"],\"introduction\":[\"左贡县人民医院高原医学科，成立于2019年9月，为内科分支。现有临床医师5人，其中副主任医师1名，其他4名均具有大专以上学历，开设病床20张。科室依托空军特色医学中心在航空医学特别是军事高原医学的研究和临床诊疗方面的先进技术为支撑，在治疗急慢性高原病方面具有丰富的经验，疗效显著。\\r\\n高原病简介:主要是针对高原独特的自然环境下，由于对低氧环境的适应能力不全或失调而发生的综合征，分为急性高原病和慢性高原病，上呼吸道感染、疲劳、寒冷、精神紧张、饥饿、妊娠等为发病诱因。急性高原病主要有高原昏迷、高原脑水肿、高原肺水肿、混合型（即肺型和脑型的综合表现）。慢性高原病指抵达高原后半年以上方发病或原有急性高原病症状迁延不愈者，少数高原世居者也可发病，包括：高原心脏病、高原红细胞增多症、高原血压异常（包括高原高血压和高原低血压）、混合型慢性高原病（即心脏病与红细胞增多症同时存在）等。\"],\"flag\":[\"Y\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'officecode\' at row 1\r\n### The error may exist in file [E:\\私活\\java\\自己\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\system\\OfficeMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.OfficeMapper.insertOffice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into office          ( officename,             doctornum,             officecode,             introduction,             flag )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'officecode\' at row 1\n; Data truncation: Data too long for column \'officecode\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'officecode\' at row 1', '2021-01-22 17:36:59');
INSERT INTO `sys_oper_log` VALUES (429, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"高原医学科\"],\"doctornum\":[\"5\"],\"officecode\":[\"gaoyuanyixueke\"],\"introduction\":[\"左贡县人民医院高原医学科，成立于2019年9月，为内科分支。现有临床医师5人，其中副主任医师1名，其他4名均具有大专以上学历，开设病床20张。科室依托空军特色医学中心在航空医学特别是军事高原医学的研究和临床诊疗方面的先进技术为支撑，在治疗急慢性高原病方面具有丰富的经验，疗效显著。\\r\\n高原病简介:主要是针对高原独特的自然环境下，由于对低氧环境的适应能力不全或失调而发生的综合征，分为急性高原病和慢性高原病，上呼吸道感染、疲劳、寒冷、精神紧张、饥饿、妊娠等为发病诱因。急性高原病主要有高原昏迷、高原脑水肿、高原肺水肿、混合型（即肺型和脑型的综合表现）。慢性高原病指抵达高原后半年以上方发病或原有急性高原病症状迁延不愈者，少数高原世居者也可发病，包括：高原心脏病、高原红细胞增多症、高原血压异常（包括高原高血压和高原低血压）、混合型慢性高原病（即心脏病与红细胞增多症同时存在）等。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:49:52');
INSERT INTO `sys_oper_log` VALUES (430, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"外科\"],\"doctornum\":[\"7\"],\"officecode\":[\"waike\"],\"introduction\":[\"左贡县人民医院外科，现有主治医师3名，医生4名。可开展胃肠、肝胆、肛肠、骨科、泌尿等亚专业、康复理疗的各类手术，如阑尾切除术、疝修补术、剖腹探查术、大隐静脉曲张高位结扎和剥脱术、胆囊切除术、肝包虫内囊摘除术、肝修补术、脾切除、胃穿孔修补术、胃肠吻合术、内外混合（痔）切除、四肢骨折内固定术、锁骨内固定术、膀胱造瘘术、精索鞘膜积液、睾丸鞘膜积液等。未来准备开展腹腔镜微创手术，如：腹腔镜下阑尾切除术、胆囊切除术、腹腔探查术等。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:51:04');
INSERT INTO `sys_oper_log` VALUES (431, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"妇产科\"],\"doctornum\":[\"6\"],\"officecode\":[\"妇产科\"],\"introduction\":[\"左贡县人民医院妇产科，现有医生4人，助产士2名。多年来，在空军特色医学中心援助下，除开展处理正常分娩外，能解决多种因素所致的难产、早产、产后出血、妊娠高血压、子痫等问题，擅长新生儿抢救复苏、手取胎盘、臀位助产、剖宫产术、计划生育上取(环、皮埋)、节育术、清宫术、药流术等技术，可诊治多种妇科常见病、多发病。该科室还同时承担县妇幼保健任务。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:52:12');
INSERT INTO `sys_oper_log` VALUES (432, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"儿科\"],\"doctornum\":[\"3\"],\"officecode\":[\"erke\"],\"introduction\":[\"左贡县人民医院儿科，成立于2019年9月。全科现有副主任医师1名，住院医师2名。主要开展儿童各种常见病、多发病以及疑难危重疾病的诊断、治疗和护理工作。主要诊治疾病包括：上呼吸道感染、支气管炎、支气管肺炎、反复呼吸道感染、支气管哮喘、高原病、腹痛、急性胃肠炎、腹泻病、食欲不振、惊厥、营养性贫血、佝偻病、泌尿系感染、过敏性疾紫癜、急性中毒等。下一步，科室将进一步引进人才，扩大儿科宣传及影响，扩大门诊量，建立儿科住院病区，划分儿童呼吸系统疾病、消化系统疾病、新生儿监护病区等医疗护理单元，为藏区百姓提供更优质的医疗服务。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:53:08');
INSERT INTO `sys_oper_log` VALUES (433, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"皮肤科\"],\"doctornum\":[\"3\"],\"officecode\":[\"pifuke\"],\"introduction\":[\"左贡县人民医院皮肤科，成立于2019年9月。现有临床医师和技师共3人，其中副主任医师1名，医学博士，其他3名均具有大专以上学历。科室依托空军特色医学中心皮肤科，特别针对高原皮肤病开展临床诊疗，如高原易患皮肤病：日晒伤、黄褐斑、湿疹、丘疹性荨麻疹等疾病的治疗具有丰富的经验，疗效显著。我院皮肤科针对高原易患皮肤病，从空军特色医学中心引进了15种本院制剂，如润肤霜、抗敏止痒霜、防晒霜等，更好地解决了高原患者的疾患，受到了患者们的好评。同时，我科引进了超脉冲二氧化碳激光，开展了激光治疗，对色素痣、脂溢性角化、扁平疣等增生性皮肤病疗效显著。\\r\\n皮肤科主任简介：鲍荣凤,副主任医师,从事皮肤科临床工作多年，擅长银屑病、白癜风、痤疮、湿疹等常见病、多发病的诊治，对于药物疹、自身免疫性疱病、重症银屑病等危重皮肤病治疗有丰富的临床经验。\\r\\n\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:54:25');
INSERT INTO `sys_oper_log` VALUES (434, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"麻醉科\"],\"doctornum\":[\"5\"],\"officecode\":[\"mazuike\"],\"introduction\":[\"左贡县人民医院麻醉科，现有麻醉医师2名，护理人员1名，护师2名，具有较强的团结协作、吃苦耐劳、勇于奉献的团队精神。经过多年的发展，在院领导的关心支持下，为医院各科的手术顺利进行提供了有力的保障。该科室拥有较为先进的麻醉设备及手术器材，能开展气管插管全麻、边续硬膜外麻醉、腰麻、各种神经阻滞、小儿静脉复合麻醉，能够确保医院各类手术的顺利进行。每年完成约100余例手术病人的麻醉\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:55:46');
INSERT INTO `sys_oper_log` VALUES (435, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"检验科\"],\"doctornum\":[\"4\"],\"officecode\":[\"jianyanke\"],\"introduction\":[\"左贡县人民医院检验科，现拥有专业技术人员4人，其中，主任医师1人,助理医师1人,全部具有大专及以上学历。科室人员能够锐意进取、主动作为，自觉把力量汇集到投身改革、干事创业上，努力形成业务能力强、综合素质高的人才队伍，并且不断开展新技术、新业务，为临床及患者提供准确、广泛的实验诊断服务。\\r\\n目前我院检验科拥有多台先进设备,包括全自动生化析仪2台、全自动凝血分析仪、尿液分析仪,血细胞分析仪,电解质分析仪各1台，能系统的开展肝肾功能、心肌酶谱、风湿系列、糖尿病系列、脂类、贫血及离子、肝炎标志物等多个项目的检测。\\r\\n为更好地服务临床,检验科不断拓展业务范围,除了常规检验项目外,还将开展肿瘤、激素、血气分析、甲乙流感病毒、支原体、衣原体肺炎抗体及结核、心梗标志物的检测。另外,检验科还准备建立有自主采血权的血库,为患者的生命安全保驾护航。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:56:54');
INSERT INTO `sys_oper_log` VALUES (436, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"放射科\"],\"doctornum\":[\"2\"],\"officecode\":[\"fangsheke\"],\"introduction\":[\"左贡县人民医院放射科，目前有2名医生，是空军特色医学中心（原空军总医院）重点援助科室，拥有XS-1型安健200毫安DR一台，能够完成全身各系统多种疾病的检查及诊断。\\r\\n为了提升医院的综合实力、满足县医院的创建要求、方便群众的就医，放射科现有的部分设备更新之外，将要引进一台64排螺旋CT。CT检查是无创、高效、精确立体的影像技术。64排螺旋CT具有图像质量高、存储空间大、扫描间距薄、成像速度快、软件功能齐全的特点。引进64排螺旋CT之后能够满足各类外伤、肿瘤、脑血管疾病、骨关节等常见病的检查及诊断。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:57:49');
INSERT INTO `sys_oper_log` VALUES (437, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"药剂科\"],\"doctornum\":[\"3\"],\"officecode\":[\"yaojike\"],\"introduction\":[\"左贡县人民医院药剂科，现有专业技术人员3人，其中主管药师1人、药师2人。药剂科承担全院药品供应保障、临床药学服务及合理用药培训等职能，科室秉承“一切以病人为中心”的药学服务理念，科室管理从药品保障供应模式，逐步转化为以临床药学为工作重点，开展合理用药处方点评工作，为门诊和住院病人提供药物咨询、用药教育等药学服务。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 17:58:53');
INSERT INTO `sys_oper_log` VALUES (438, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"超声科\"],\"doctornum\":[\"2\"],\"officecode\":[\"chaoshenke\"],\"introduction\":[\"左贡县人民医院超声科，现有执业医师2名，均已通过中级职称考试，正在申请聘任主治医师，均为本科学历。现有两台彩色多普勒超声仪(GE VividT8和迈瑞DC-7)。可以开展超声检查项目有：\\r\\n1．腹部超声：各种脏器部位(肝、胆、脾、胰，肾、输尿管、膀胱、前列腺、子宫、附件)、产科胎儿常规检查、阑尾、腹腔淋巴结、腹腔血管等各种疾病。\\r\\n2．心脏彩超（成人心脏）：各种心脏瓣膜病变、心肌病变、感染性病变、肺源性心脏病、冠心病、高心病、肺栓塞、心包疾病以及心功能测定等。\\r\\n3．浅表及小器官：甲状腺、乳腺、腮腺、颌下腺、颈部肿块、各部位淋巴结、男性生殖器官(阴囊、阴茎、精囊、精索)及浅表软组织肿块等。\\r\\n4．血管彩超：颈部血管、上肢血管、下肢血管、腹腔血管等，可显示血管内血栓、血管狭窄、内膜斑块、动脉瘤等病变。\\r\\n另外我科还有数字式十二道心电图机一台（空军总医院赠），可以进行常规心电图检查，基本满足临床需要。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 18:00:05');
INSERT INTO `sys_oper_log` VALUES (439, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"藏医科\"],\"doctornum\":[\"2\"],\"officecode\":[\"zangyike\"],\"introduction\":[\"左贡县人民医院藏医科现有藏医2人，有藏药60种，能够开展多种诊疗服务，自制藏药疗效显著。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 18:01:13');
INSERT INTO `sys_oper_log` VALUES (440, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"眼科\"],\"doctornum\":[\"2\"],\"officecode\":[\"yanke\"],\"introduction\":[\"左贡县人民医院眼科，成立于2019年11月。现有主治医师1名，医生1名。眼科现有YZ5X裂隙灯显微镜、YZ6F检眼镜各1台，以及眼科全套手术器械，能够有效处理和治疗角膜病、晶状体病、青光眼和眼睑病等眼科各种常见病、多发病及眼外伤等。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 18:02:50');
INSERT INTO `sys_oper_log` VALUES (441, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"急诊科\"],\"doctornum\":[\"7\"],\"officecode\":[\"jizhenke\"],\"introduction\":[\"左贡县人民医院急诊科成立于2020年1月，现有主治医师1名、医师2名、主管护师1名、护师2名、护士1名、急救车司机2名及急救车1台，是一个团结、积极向上、有凝聚力的团队，科室配有呼吸机、转运呼吸机、除颤机、洗胃机、心电图机、心电监护仪等急救监护设备，且所有医护人员熟练掌握上述装备的操作和急诊抢救技能。科室建立了创伤、急性心梗、脑卒中、急性呼吸衰竭、高危孕产妇等重点病种的急诊服务流程和规范，多次完成急危重症病人的外抢、急诊救治和安全转运工作。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 18:04:28');
INSERT INTO `sys_oper_log` VALUES (442, '科室', 1, 'com.ruoyi.system.controller.OfficeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/office/add', '127.0.0.1', '内网IP', '{\"officename\":[\"康复理疗科\"],\"doctornum\":[\"2\"],\"officecode\":[\"kangfuiliaoke\"],\"introduction\":[\"左贡县人民医院康复理疗科成立于2020年3月，现有医师2名，配有颈腰椎牵引装置，超短波、电脑中频等理疗设备。主要开展针对颈肩腰腿痛等常见病、多发病的非手术的物理治疗、推拿按摩治疗、针灸和术后患者康复。\"],\"flag\":[\"Y\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-22 18:06:07');
INSERT INTO `sys_oper_log` VALUES (443, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"16,15,14,13,11,10,8,9,7\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 14:29:41');
INSERT INTO `sys_oper_log` VALUES (444, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"news\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 14:29:47');
INSERT INTO `sys_oper_log` VALUES (445, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-24 14:29:52');
INSERT INTO `sys_oper_log` VALUES (446, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-24 14:29:52');
INSERT INTO `sys_oper_log` VALUES (447, '新闻', 1, 'com.ruoyi.system.controller.NewsController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/news/add', '127.0.0.1', '内网IP', '{\"title\":[\"热点新闻\"],\"content\":[\"<p>热点新闻</p>\"],\"imgurl\":[\"\"],\"createuser\":[\"人民医院\"],\"theme\":[\"热点\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 14:39:16');
INSERT INTO `sys_oper_log` VALUES (448, '医生', 1, 'com.ruoyi.system.controller.DoctorController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/doctor/add', '127.0.0.1', '内网IP', '{\"officecode\":[\"妇产科\"],\"doctorname\":[\"张玉莲\"],\"doctorcode\":[\"zhang\"],\"iswork\":[\"Y\"],\"doctorintroduction\":[\"博士\"],\"doctorprofessional\":[\"主任医师\"],\"doctorspeciality\":[\"\"],\"doctorimg\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:17:37');
INSERT INTO `sys_oper_log` VALUES (449, '医生', 2, 'com.ruoyi.system.controller.DoctorController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/doctor/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"officecode\":[\"erke\"],\"doctorname\":[\"张玉莲\"],\"doctorcode\":[\"zhang\"],\"iswork\":[\"Y\"],\"doctorintroduction\":[\"博士\"],\"doctorprofessional\":[\"主任医师\"],\"doctorspeciality\":[\"\"],\"doctorimg\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:18:21');
INSERT INTO `sys_oper_log` VALUES (450, '医生', 1, 'com.ruoyi.system.controller.DoctorController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/doctor/add', '127.0.0.1', '内网IP', '{\"officecode\":[\"pifuke\"],\"doctorname\":[\"111\"],\"doctorcode\":[\"222\"],\"iswork\":[\"\"],\"doctorintroduction\":[\"\"],\"doctorprofessional\":[\"\"],\"doctorspeciality\":[\"\"],\"doctorimg\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:22:18');
INSERT INTO `sys_oper_log` VALUES (451, '医生', 2, 'com.ruoyi.system.controller.DoctorController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/doctor/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"officecode\":[\"yaojike\"],\"doctorname\":[\"111\"],\"doctorcode\":[\"222\"],\"iswork\":[\"\"],\"doctorintroduction\":[\"\"],\"doctorprofessional\":[\"\"],\"doctorspeciality\":[\"\"],\"doctorimg\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:22:31');
INSERT INTO `sys_oper_log` VALUES (452, '医生', 2, 'com.ruoyi.system.controller.DoctorController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/doctor/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"officecode\":[\"yaojike\"],\"doctorname\":[\"111\"],\"doctorcode\":[\"222\"],\"iswork\":[\"\"],\"doctorintroduction\":[\"\"],\"doctorprofessional\":[\"\"],\"doctorspeciality\":[\"\"],\"doctorimg\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:38:40');
INSERT INTO `sys_oper_log` VALUES (453, '医生', 2, 'com.ruoyi.system.controller.DoctorController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/doctor/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"officecode\":[\"erke\"],\"doctorname\":[\"111\"],\"doctorcode\":[\"222\"],\"iswork\":[\"\"],\"doctorintroduction\":[\"\"],\"doctorprofessional\":[\"\"],\"doctorspeciality\":[\"\"],\"doctorimg\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:38:49');
INSERT INTO `sys_oper_log` VALUES (454, '医生', 5, 'com.ruoyi.system.controller.DoctorController.export()', 'POST', 1, 'admin', '研发部门', '/system/doctor/export', '127.0.0.1', '内网IP', '{\"officecode\":[\"\"],\"doctorname\":[\"\"],\"doctorcode\":[\"\"],\"iswork\":[\"\"],\"doctorintroduction\":[\"\"],\"doctorprofessional\":[\"\"],\"doctorspeciality\":[\"\"],\"doctorimg\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"feec2ee7-ac03-4f11-960d-c31e08f124a7_doctor.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:40:45');
INSERT INTO `sys_oper_log` VALUES (455, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"party\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:45:29');
INSERT INTO `sys_oper_log` VALUES (456, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/party', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-24 15:45:36');
INSERT INTO `sys_oper_log` VALUES (457, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/party', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-24 15:45:36');
INSERT INTO `sys_oper_log` VALUES (458, '党建', 2, 'com.ruoyi.system.controller.PartyController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/party/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"theme\":[\"院志工作动态\"],\"title\":[\"院志工作动态\"],\"content\":[\"院志工作动态\"],\"imgurl\":[\"\"],\"publishtime\":[\"2021-01-21\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:47:39');
INSERT INTO `sys_oper_log` VALUES (459, '党建', 1, 'com.ruoyi.system.controller.PartyController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/party/add', '127.0.0.1', '内网IP', '{\"theme\":[\"支部工作\"],\"title\":[\"下乡\"],\"content\":[\"<p>我 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\"],\"imgurl\":[\"\"],\"publishtime\":[\"2021-01-25\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:49:39');
INSERT INTO `sys_oper_log` VALUES (460, '挂号', 3, 'com.ruoyi.system.controller.RegisterrecordController.remove()', 'POST', 1, 'admin', '研发部门', '/system/registerrecord/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11,12,13,14,15,16,17,18,19\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 15:50:57');
INSERT INTO `sys_oper_log` VALUES (461, '挂号', 1, 'com.ruoyi.system.controller.RegisterrecordController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/registerrecord/add', '127.0.0.1', '内网IP', '{\"username\":[\"王子明\"],\"usersex\":[\"男\"],\"userage\":[\"21\"],\"useridentitycard\":[\"1111\"],\"medicalcard\":[\"1111\"],\"gohospitaltime\":[\"2020-12-30\"],\"descriptionofillness\":[\"111\"],\"doctorname\":[\"222\"],\"doctorofficename\":[\"333\"],\"doctorcode\":[\"111\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-24 16:25:38');
INSERT INTO `sys_oper_log` VALUES (462, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"xc_family_member,xc_signing\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-28 19:54:09');
INSERT INTO `sys_oper_log` VALUES (463, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"xc_signing,xc_family_member\"]}', 'null', 0, NULL, '2021-01-28 19:54:24');
INSERT INTO `sys_oper_log` VALUES (464, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"xc_signing,xc_family_member\"]}', 'null', 0, NULL, '2021-01-28 19:54:25');
INSERT INTO `sys_oper_log` VALUES (465, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"3,113,114,1057,1058,1059,1060,1061,6,7012,7013,7014,7015,7016,7017,7018,7019,7020,7021,7022,7023,7024,7025,7026,7027,7028,7029,7030,7031,7032,7033,7034,7035,7036,7037,7038,7039,7040,7041\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-30 10:36:32');
INSERT INTO `sys_oper_log` VALUES (466, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2,111,112,6,7012,7013,7014,7015,7016,7017,7018,7019,7020,7021,7022,7023,7024,7025,7026,7027,7028,7029,7030,7031,7032,7033,7034,7035,7036,7037,7038,7039,7040,7041\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-30 10:38:41');
INSERT INTO `sys_oper_log` VALUES (467, '新闻', 1, 'com.ruoyi.system.controller.NewsController.addSave()', 'POST', 1, 'wang', NULL, '/system/news/add', '127.0.0.1', '内网IP', '{\"title\":[\"111\"],\"content\":[\"<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1111111111111111sssssssseeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeedddddddddddddddddddddddddddddddddddddddddddddddddddddddd</p><p><img style=\\\"width: 91px;\\\" src=\\\"http://localhost/profile/upload/2021/01/30/b53389ce-1ebe-4099-85f6-1a9b5004746e.png\\\"><img style=\\\"width: 154px;\\\" src=\\\"http://localhost/profile/upload/2021/01/30/5dcb9f1a-836b-4ca9-a9ab-09aeb936857f.png\\\"><br></p>\"],\"createuser\":[\"222\"],\"theme\":[\"热点\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-30 12:12:59');
INSERT INTO `sys_oper_log` VALUES (468, '新闻', 3, 'com.ruoyi.system.controller.NewsController.remove()', 'POST', 1, 'wang', NULL, '/system/news/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-30 12:13:29');
INSERT INTO `sys_oper_log` VALUES (469, '党建', 1, 'com.ruoyi.system.controller.PartyController.addSave()', 'POST', 1, 'wang', NULL, '/system/party/add', '127.0.0.1', '内网IP', '{\"theme\":[\"支部工作\"],\"title\":[\"2021下乡活动\"],\"content\":[\"<p>2021下乡活动<br></p>\"],\"publishtime\":[\"2021-01-14\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-30 12:36:52');
INSERT INTO `sys_oper_log` VALUES (470, '新闻', 1, 'com.ruoyi.system.controller.NewsController.addSave()', 'POST', 1, 'wang', NULL, '/system/news/add', '127.0.0.1', '内网IP', '{\"title\":[\"测试\"],\"content\":[\"<p><span style=\\\"background-color: rgb(255, 0, 0);\\\">1111111</span></p><p><img style=\\\"width: 154px;\\\" src=\\\"http://localhost/profile/upload/2021/01/30/74203a64-560d-4bb0-adb6-c43bfcee4413.png\\\"><span style=\\\"background-color: rgb(255, 0, 0);\\\"><br></span><br></p>\"],\"createuser\":[\"cee\"],\"theme\":[\"下乡\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-30 13:20:26');
INSERT INTO `sys_oper_log` VALUES (471, '医生', 3, 'com.ruoyi.system.controller.DoctorController.remove()', 'POST', 1, 'wang', NULL, '/system/doctor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-30 13:35:14');
INSERT INTO `sys_oper_log` VALUES (472, '新闻', 1, 'com.ruoyi.system.controller.NewsController.addSave()', 'POST', 1, 'wang', NULL, '/system/news/add', '127.0.0.1', '内网IP', '{\"title\":[\"wangzimign\"],\"content\":[\"<p><img style=\\\"width: 443px;\\\" src=\\\"/profile/upload/2021/01/30/8edb65a8-988c-4793-b1ac-f77b54bd9d7c.jpg\\\"><br></p>\"],\"createuser\":[\"\"],\"theme\":[\"测试\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-30 15:13:41');
INSERT INTO `sys_oper_log` VALUES (473, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"20\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-05 16:38:30');
INSERT INTO `sys_oper_log` VALUES (474, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"19,18,17\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-05 16:38:33');
INSERT INTO `sys_oper_log` VALUES (475, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"supplier\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-05 16:54:00');
INSERT INTO `sys_oper_log` VALUES (476, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/supplier', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-05 16:54:05');
INSERT INTO `sys_oper_log` VALUES (477, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/supplier', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-05 16:54:06');
INSERT INTO `sys_oper_log` VALUES (478, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"21\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-05 17:01:55');
INSERT INTO `sys_oper_log` VALUES (479, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"supplier\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-05 17:02:00');
INSERT INTO `sys_oper_log` VALUES (480, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/supplier', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-05 17:02:29');
INSERT INTO `sys_oper_log` VALUES (481, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/supplier', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-05 17:02:29');
INSERT INTO `sys_oper_log` VALUES (482, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"22\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-21 08:15:11');
INSERT INTO `sys_oper_log` VALUES (483, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"recruit\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-21 08:17:20');
INSERT INTO `sys_oper_log` VALUES (484, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/recruit', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-21 08:17:26');
INSERT INTO `sys_oper_log` VALUES (485, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/recruit', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-21 08:17:27');
INSERT INTO `sys_oper_log` VALUES (486, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/recruit', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-21 08:20:59');
INSERT INTO `sys_oper_log` VALUES (487, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/recruit', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-21 08:21:00');
INSERT INTO `sys_oper_log` VALUES (488, '招聘', 1, 'com.ruoyi.system.controller.RecruitController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/recruit/add', '127.0.0.1', '内网IP', '{\"title\":[\"招聘一\"],\"content\":[\"<ul><li>测试</li></ul><p><br></p>\"],\"createuser\":[\"汪主任\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-21 08:41:57');
INSERT INTO `sys_oper_log` VALUES (489, '招聘', 5, 'com.ruoyi.system.controller.RecruitController.export()', 'POST', 1, 'admin', '研发部门', '/system/recruit/export', '127.0.0.1', '内网IP', '{\"title\":[\"\"],\"createuser\":[\"\"],\"params[beginCreatetime]\":[\"\"],\"params[endCreatetime]\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"3c47e667-9bca-42e4-958a-8d225f49bb8b_recruit.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-21 08:43:15');
INSERT INTO `sys_oper_log` VALUES (490, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"navigation\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-22 09:44:20');
INSERT INTO `sys_oper_log` VALUES (491, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"23\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-22 09:44:25');
INSERT INTO `sys_oper_log` VALUES (492, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/navigation', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-22 09:44:45');
INSERT INTO `sys_oper_log` VALUES (493, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/navigation', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-04-22 09:44:46');
INSERT INTO `sys_oper_log` VALUES (494, '就医指南', 1, 'com.ruoyi.system.controller.NavigationController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/navigation/add', '127.0.0.1', '内网IP', '{\"title\":[\"就医指南一\"],\"content\":[\"<p>就医指南一<br></p>\"],\"createuser\":[\"院长\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-22 10:45:40');
INSERT INTO `sys_oper_log` VALUES (495, '就医指南', 2, 'com.ruoyi.system.controller.NavigationController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/navigation/edit', '127.0.0.1', '内网IP', '{\"id\":[\"8\"],\"title\":[\"就医指南一\"],\"content\":[\"<p>就医指南一1<br></p>\"],\"createuser\":[\"院长\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-22 10:45:50');
INSERT INTO `sys_oper_log` VALUES (496, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2,111,112,6,7042,7043,7044,7045,7046,7047,7012,7013,7014,7015,7016,7017,7018,7019,7020,7021,7022,7023,7024,7025,7026,7027,7028,7029,7030,7031,7032,7033,7034,7035,7036,7037,7038,7039,7040,7041,7048,7049,7050,7051,7052,7053\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-04-22 10:51:29');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2020-11-20 14:16:22', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2020-11-20 14:16:22', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2020-11-20 14:16:22', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2020-11-20 14:16:22', 'admin', '2021-04-22 10:51:29', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 7012);
INSERT INTO `sys_role_menu` VALUES (2, 7013);
INSERT INTO `sys_role_menu` VALUES (2, 7014);
INSERT INTO `sys_role_menu` VALUES (2, 7015);
INSERT INTO `sys_role_menu` VALUES (2, 7016);
INSERT INTO `sys_role_menu` VALUES (2, 7017);
INSERT INTO `sys_role_menu` VALUES (2, 7018);
INSERT INTO `sys_role_menu` VALUES (2, 7019);
INSERT INTO `sys_role_menu` VALUES (2, 7020);
INSERT INTO `sys_role_menu` VALUES (2, 7021);
INSERT INTO `sys_role_menu` VALUES (2, 7022);
INSERT INTO `sys_role_menu` VALUES (2, 7023);
INSERT INTO `sys_role_menu` VALUES (2, 7024);
INSERT INTO `sys_role_menu` VALUES (2, 7025);
INSERT INTO `sys_role_menu` VALUES (2, 7026);
INSERT INTO `sys_role_menu` VALUES (2, 7027);
INSERT INTO `sys_role_menu` VALUES (2, 7028);
INSERT INTO `sys_role_menu` VALUES (2, 7029);
INSERT INTO `sys_role_menu` VALUES (2, 7030);
INSERT INTO `sys_role_menu` VALUES (2, 7031);
INSERT INTO `sys_role_menu` VALUES (2, 7032);
INSERT INTO `sys_role_menu` VALUES (2, 7033);
INSERT INTO `sys_role_menu` VALUES (2, 7034);
INSERT INTO `sys_role_menu` VALUES (2, 7035);
INSERT INTO `sys_role_menu` VALUES (2, 7036);
INSERT INTO `sys_role_menu` VALUES (2, 7037);
INSERT INTO `sys_role_menu` VALUES (2, 7038);
INSERT INTO `sys_role_menu` VALUES (2, 7039);
INSERT INTO `sys_role_menu` VALUES (2, 7040);
INSERT INTO `sys_role_menu` VALUES (2, 7041);
INSERT INTO `sys_role_menu` VALUES (2, 7042);
INSERT INTO `sys_role_menu` VALUES (2, 7043);
INSERT INTO `sys_role_menu` VALUES (2, 7044);
INSERT INTO `sys_role_menu` VALUES (2, 7045);
INSERT INTO `sys_role_menu` VALUES (2, 7046);
INSERT INTO `sys_role_menu` VALUES (2, 7047);
INSERT INTO `sys_role_menu` VALUES (2, 7048);
INSERT INTO `sys_role_menu` VALUES (2, 7049);
INSERT INTO `sys_role_menu` VALUES (2, 7050);
INSERT INTO `sys_role_menu` VALUES (2, 7051);
INSERT INTO `sys_role_menu` VALUES (2, 7052);
INSERT INTO `sys_role_menu` VALUES (2, 7053);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime(0) DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '3d3e2e119996cedb7401025cced5c1b0', '111111', '0', '0', '127.0.0.1', '2021-04-22 10:42:47', '2020-11-20 14:16:22', 'admin', '2020-11-20 14:16:22', '', '2021-04-22 10:42:47', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '3d3e2e119996cedb7401025cced5c1b0', '222222', '0', '0', '127.0.0.1', '2020-11-20 14:16:22', '2020-11-20 14:16:22', 'admin', '2020-11-20 14:16:22', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (107, NULL, 'wang', 'wang', '01', '', '', '0', '', '0b9e33c6fbf0fa30285514a4294834f0', '6be1c2', '0', '0', '127.0.0.1', '2021-04-21 08:06:04', '2020-11-22 16:53:51', '', '2020-11-22 16:53:51', '', '2021-04-21 08:06:04', NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('920716af-b3c2-4da2-9091-b869bc4fd308', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2021-04-22 10:42:22', '2021-04-22 10:50:34', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);
INSERT INTO `sys_user_role` VALUES (103, 2);
INSERT INTO `sys_user_role` VALUES (104, 2);
INSERT INTO `sys_user_role` VALUES (105, 2);
INSERT INTO `sys_user_role` VALUES (106, 2);
INSERT INTO `sys_user_role` VALUES (107, 2);

SET FOREIGN_KEY_CHECKS = 1;
