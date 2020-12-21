/*
 Navicat MySQL Data Transfer

 Source Server         : fy
 Source Server Type    : MySQL
 Source Server Version : 50568
 Source Host           : 47.92.216.215:3306
 Source Schema         : fuyuan

 Target Server Type    : MySQL
 Target Server Version : 50568
 File Encoding         : 65001

 Date: 21/12/2020 17:01:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cancact
-- ----------------------------
DROP TABLE IF EXISTS `cancact`;
CREATE TABLE `cancact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cancact
-- ----------------------------
INSERT INTO `cancact` VALUES (1, '张先生', '138 3486 0003', '山西综改示范区晋中开发汇通智能制造产业园', '0354-3070303');

-- ----------------------------
-- Table structure for introduce
-- ----------------------------
DROP TABLE IF EXISTS `introduce`;
CREATE TABLE `introduce`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of introduce
-- ----------------------------
INSERT INTO `introduce` VALUES (1, '晋中釜源节能科技有限公司，是一家从事环保节能设备研发、设计、制造、销售、服务为一体的高新技术企业。我公司坐落于山西示范区晋中开发区汇通产业园区。本公司不断吸纳新思维，加大科研创新，旨在为企业提供先进的技术、优质的产品和更佳的节能解决方案，帮助企业节约成本，提高用户企业能源利用率，降低污染排放，努力为企业及社会创造更多的价值。针对目前国家“煤、气改电”共造蓝天工程，我公司自主研发模块式变频：电磁采暖炉、电磁热风炉、电磁洗浴热水炉、电磁蒸汽发生器；矿井冷凝水余热回收系统、压机余热回收机组和瓦斯发电余热回收机组');
INSERT INTO `introduce` VALUES (2, '目前企业空气压缩机应用广泛，在其长期、连续的运行过程中产生大量热能，以风冷的形式浪费到环境中，不仅运营成本高，而且环境污染极为严重，我公司开发出空压机余热回收节能系统，将该部分热能回收利用于企业生活用热水(洗澡)、采暖、工业用热水、热水空调可为企业消减大量的热水投资成本。');

-- ----------------------------
-- Table structure for news_list
-- ----------------------------
DROP TABLE IF EXISTS `news_list`;
CREATE TABLE `news_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news_list
-- ----------------------------
INSERT INTO `news_list` VALUES (1, '微电网继电保护技术规定', '本标准规定了徽电网的分布式电源保护、电化学储能保护.变压器保护、并网点保护、线路保护、母线保护和安全自动装置应满足的技术要求...', '2020-06-23', 'industry');
INSERT INTO `news_list` VALUES (2, '山西省政府关于能源环境治理重要通知', '强化“禁煤区”建设。2020年10月底前,各市县建成区要 全部划定为“禁煤区”。(省生态环境厅牵头，市县政府负责落实) 严格落实散煤禁烧规定,严厉查处“禁煤区”内散煤销售,依法清理 “禁煤区”散煤及燃煤设施,避免散煤复烧...', '2020-05-23', 'industry');
INSERT INTO `news_list` VALUES (3, '习近平太原考察调研', '习近平强调：长期以来，山西兴于煤，困于煤，一煤独大导致产业单一。建设转型综合改革示范区是党中央赋予山西的一次重大任务，也是试验山西转型发展的关键因素。山西要有紧迫感，更要有长远战略谋划，正确的就要坚持下去...', '2020-05-13', 'industry');
INSERT INTO `news_list` VALUES (4, '“煤改电”势在必行', '冬季燃煤取暖存在着很大的潜在危险。大量的煤灰对人体存在着极大的危害，粉尘易导致肺病，燃烧未尽的废煤容易导致煤气中毒及火灾。长期燃煤产生的大量废煤垃圾量大而且难以清理，浪费大量的人力、物力。目前，我过经济不断发展壮大...', '2017-10-17', 'company');
INSERT INTO `news_list` VALUES (5, '探析油田电气节能方案', '为了达到油田电气节能目标，其补偿方式有：低压补偿、高压补偿、固定补偿、动态调节补偿、调压补偿、降损补偿、分散补偿、集中补偿、无功补偿等...', '2017-08-14', 'company');
INSERT INTO `news_list` VALUES (6, '电磁锅炉安装、维护及注意事项', '1. 电锅炉安装的环境要干燥，有良好的通风条件，温度在2℃~40℃，设备附近要有下水口之类的排水系统。2. 设置开放的膨胀水斗，水斗应安装在供暖系统的****处，同时设置逆止阀防止反水，禁止将水箱安装在电磁锅炉的正上方...', '2020-06-25', 'problem');
INSERT INTO `news_list` VALUES (7, '电磁锅炉在运行过程中为什么会出现漏电问题？', '这是一种常见的电器漏电的原因，因为线路老化所以线路无法承载住供暖的时候所产生的电流，进而就会造成设备的漏电现象，因此在每年使用供暖电磁锅炉之前，应该仔细的检查线路是否出现老化问题...', '2020-06-24', 'problem');
INSERT INTO `news_list` VALUES (8, '怎样保证电磁锅炉更加省电', '如果安装电锅炉的房间保温效果不好会导致温度快速流失，如果想要达到自己想要的温度就应调试更高的温度，通过这种方式来弥补流失的温度，这样就会浪费更多的电能...', '2020-06-14', 'problem');
INSERT INTO `news_list` VALUES (9, '电磁锅炉有哪些优点？', '全自动加热：工作方式灵活，可设置为手动或自动模式，无需人员值守。可在负荷变化时确保给水泵、循环泵自动启动或停止。稳定传统的电阻式热水锅炉由于是直接为电阻棒供电，易发生过流冲击和造成电压波动，稳定性存在问题。电磁采暖锅炉采用的是电磁感应加热原理，核心采用的电磁加热器系统构造精密，稳定性更强...', '2020-06-10', 'problem');

-- ----------------------------
-- Table structure for product_list
-- ----------------------------
DROP TABLE IF EXISTS `product_list`;
CREATE TABLE `product_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trait` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `capacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ishome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_list
-- ----------------------------
INSERT INTO `product_list` VALUES (1, '/imgs/product/reshuilu1.png', '家用变频电磁壁挂炉', 'WIFI控制 水电分离', '6KW/8KW/10KW', '220V-380V', 'bigualu', '变频电磁采暖炉的核心是采用电磁感应原理，利用磁力线切割金属发生涡流所产生的热能作为热源，通过热量散发系统(如水暖系统)， 以达到取暖目的的热量发生设备。', '电磁热水炉', '1');
INSERT INTO `product_list` VALUES (2, '/imgs/product/reshuilu4.png', '变频电磁热水炉', '快速升温 不易结垢', '40KW/50KW/60KW', '380V', 'reshuilu1', '变频电磁采暖炉的核心是采用电磁感应原理，利用磁力线切割金属发生涡流所产生的热能作为热源，通过热量散发系统(如水暖系统)， 以达到取暖目的的热量发生设备。', '电磁热水炉', '1');
INSERT INTO `product_list` VALUES (3, '/imgs/product/reshuilu7.png', '变频电磁热水炉', '低温防冻 智能控制', '15KW/20KW/30KW', '380V', 'reshuilu2', '变频电磁采暖炉的核心是采用电磁感应原理，利用磁力线切割金属发生涡流所产生的热能作为热源，通过热量散发系统(如水暖系统)， 以达到取暖目的的热量发生设备。', '电磁热水炉', '1');
INSERT INTO `product_list` VALUES (4, '/imgs/product/reshuilu10.png', '变频电磁热水炉模块', '快速升温 不易结垢', '120~1000KW', '380V', 'reshuilu3', '变频电磁采暖炉的核心是采用电磁感应原理，利用磁力线切割金属发生涡流所产生的热能作为热源，通过热量散发系统(如水暖系统)， 以达到取暖目的的热量发生设备。', '电磁热水炉', '1');
INSERT INTO `product_list` VALUES (5, '/imgs/product/zhengqi.png', '变频电磁蒸汽发生器', '智能一体化 寿命长', '', '380V', 'zhengqi1', '电磁蒸发器是一款利用清洁能源电为燃料的新型产品，符合国家煤改电环保政策:“ 既要金山银山，又要绿水青山\"，电磁蒸发器告别老式煤炭锅炉，开启蒸汽新时代。', '电蒸汽发生器', '1');
INSERT INTO `product_list` VALUES (6, '/imgs/product/zhengqi2.png', '电加热管蒸汽发生器', '噪音小 低污染', '', '220V-380V', 'zhengqi2', '采用国内外知名品牌电器元件，噪音小、低污染。电热元件与炉体连接拆装方便，利于维护和保养', '电蒸汽发生器', '0');
INSERT INTO `product_list` VALUES (7, '/imgs/product/refenglu1.png', '变频热风炉', '快速启动 软启软停', '', '380V', 'refenglu1', '电磁热风炉，主要由炉体、变频电源柜和控制柜组成。电磁加热器内置于变频电派柜内部，触摸屏+PLC控制器内置于控制柜中，炉体内置简体，炉体两端分别设置进风口和出风口，进风口与一台离心风机相连，', '电磁热风炉', '1');
INSERT INTO `product_list` VALUES (8, '/imgs/product/kongyaji1.png', '空压机余热回收', '高效节能 自动补水', '', '380V', 'kongyaji1', '空压机在生活中应用极其广泛，在其长期、连续的运行过程中，把电能转换为高压压缩空气。在转化过程中产生的大量热量，经润滑油带出机体外，最后以风冷或水冷的形式把热量散发出去。空压机润滑温度通常高达80℃(冬季) 97℃ (夏秋季)，这些热能都通过空压机散热系统白白地排放到环境中。', '空压机余热回收', '1');
INSERT INTO `product_list` VALUES (9, '/imgs/product/other1.png', '瓦斯发电机余热回收', '节燃料 高效益', '', '380V', 'other1', '在很多煤矿利用自身资源进行瓦斯发电，但瓦斯发电机组所使用的燃气发动机的有效效率仅为30%-40%，瓦斯发电机组在运行过程中产生及排放出高温烟气，而自带冷却系统却远不能满足机组散热需求', '其他', '0');
INSERT INTO `product_list` VALUES (10, '/imgs/product/other2.png', '气体余热回收', '助力小 易清污', '', '380V', 'other2', '宽通道换热器由两块板片组成，板片边缘通过激光焊接在一起，板片中间焊接为国点焊接，圆点间距与直径由换热器承压与流体性质决定。为了达到高效换热效果，我们通过改变焊接形式来设定换热流程', '其他', '0');
INSERT INTO `product_list` VALUES (12, '/imgs/product/reshuilu8.png', '变频电磁热水炉', '', '120KW', '', 'reshuilu3', '', NULL, '1');
INSERT INTO `product_list` VALUES (13, '/imgs/product/reshuilu9.png', '变频电磁热水炉', '', '180KW', '', 'reshuilu3', '', NULL, '1');
INSERT INTO `product_list` VALUES (14, '/imgs/product/reshuilu10.png', '变频电磁热水炉', '', '240KW', '', 'reshuilu3', '', NULL, '1');
INSERT INTO `product_list` VALUES (15, '/imgs/product/reshuilu11.png', '变频电磁热水炉', '', '300KW/400KW/600KW', '', 'reshuilu3', '', NULL, '1');
INSERT INTO `product_list` VALUES (16, '/imgs/product/reshuilu11.png', '变频电磁热水炉', '', '800KW', '', 'reshuilu3', '', NULL, '1');

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `num` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ask` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recruit
-- ----------------------------
INSERT INTO `recruit` VALUES (1, '销售总监', '1名', '男女不限，学历不限，人脉关系广，从事多年销售工作，有丰富的销售经验，具备较强的市场开拓、客户沟通能力，较强的沟通技巧和团队管理能力；能够承受较大的工作压力和销售业绩要求', '20 - 50万 / 年', 0);
INSERT INTO `recruit` VALUES (2, '销售经理', '若干', '1. 男女不限、学历不限、人脉关系广、从事多年供暖行业及设备的销售、擅长团队的管理及业务的拓展、具有长远的眼光，积极向上的拼搏精神等\r\n\r\n2. 可自行勘测现场及设计方案等优势者优先考虑', '20 - 50万 / 年', 1);
INSERT INTO `recruit` VALUES (3, '销售员', '若干', '男女不限，学历不限，吃苦耐劳，暖通及热动力专业应届毕业生或有市场销售经验者优先', '2000 + 提成', 2);
INSERT INTO `recruit` VALUES (4, '电气成套工程师', '3 名', '1. 男，大专及本科以上学历， 有5年工作经验岗位、电气自动化或相关专业毕业\r\n\r\n2. 要求会电气设备电路图的设计及懂电器安全标准要求，可以PLC编程等', '4000 + 生产提成', 3);
INSERT INTO `recruit` VALUES (5, '学徒电工', '若干', '男，中专及以上学历，学习电路组装，有电基础知识，具备较高的纪律性、责任心、语言表达能力、学习能力。', '2500 + 生产提成', 4);
INSERT INTO `recruit` VALUES (6, '学徒焊工', '若干', '男，初中及以上学历 , 学习电焊及管道安装等技能，具备较高的纪律性、责任心、语言表达能力、学习能力。', '2500 + 生产提成', 5);

-- ----------------------------
-- Table structure for system
-- ----------------------------
DROP TABLE IF EXISTS `system`;
CREATE TABLE `system`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system
-- ----------------------------
INSERT INTO `system` VALUES (1, '智能热网(热力站)集中监控系统');
INSERT INTO `system` VALUES (2, '空压机节电及余热回收系统');
INSERT INTO `system` VALUES (3, '无人值守换热站');
INSERT INTO `system` VALUES (4, '锅炉监控系统');
INSERT INTO `system` VALUES (5, '污水处理系统');
INSERT INTO `system` VALUES (6, '中央水泵房自动排水系统');
INSERT INTO `system` VALUES (7, '风机在线监控系统');
INSERT INTO `system` VALUES (8, '乳化液自动配比输送装置');
INSERT INTO `system` VALUES (9, '钢绳芯输送带在线检测系统');
INSERT INTO `system` VALUES (10, '水窝自动排水装置');
INSERT INTO `system` VALUES (11, '矿用多回路组合开关柜');
INSERT INTO `system` VALUES (12, '液压自动张紧装置');
INSERT INTO `system` VALUES (13, '中频电源');
INSERT INTO `system` VALUES (14, 'GGD低压固定式开关柜');
INSERT INTO `system` VALUES (15, 'MNS 型低压抽出式成套开关柜');
INSERT INTO `system` VALUES (16, '二次网平衡智能调节系统');
INSERT INTO `system` VALUES (17, '多种物料组合式自动配料生产线');

SET FOREIGN_KEY_CHECKS = 1;
