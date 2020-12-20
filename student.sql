/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2020-12-20 21:32:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` int(14) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('A2', '机械学院2018级硕士研究生以及留学生学位...', '20191220');
INSERT INTO `student` VALUES ('ACB', '机械学院“线上教学”平稳运行', '20200309');
INSERT INTO `student` VALUES ('MODE', '机械学院开展2020级新生专业教育讲座', '20200917');
INSERT INTO `student` VALUES ('abc', '省机械工程会考察我院陈涛老师科研....', '20200919');
INSERT INTO `student` VALUES ('img/1.png', '我院召开教学工作专题研讨会', '20191125');
INSERT INTO `student` VALUES ('img/2.png', '我院举行期中教学会谈', '20191206');
INSERT INTO `student` VALUES ('img/3.png', '机械学院举报“世界精神卫生日”主题班', '20201013');
INSERT INTO `student` VALUES ('img/4.png', '机械学院“线上教学”平稳运行', '20200309');
INSERT INTO `student` VALUES ('“211”工程高校', '机械学院《智造中国》学生讲党课第8讲....', '20200701');
INSERT INTO `student` VALUES ('便民服务', '机械学院党委荣获“先进基层组织”容....', '20200702');
INSERT INTO `student` VALUES ('党建与思想政治', '机械工程与自动化学院召开9月份中心组....', '20200918');
INSERT INTO `student` VALUES ('友情链接', '机械学院《智造中国》学生讲党课第6讲....', '20200925');
INSERT INTO `student` VALUES ('国家有关部委', '机械学院新手参观实验室', '20201005');
INSERT INTO `student` VALUES ('学工动态', '机械学院18级召开年纪大会强调学风教育', '20201006');
INSERT INTO `student` VALUES ('教学与科研', '机械学院第78期团校开课', '20200702');
INSERT INTO `student` VALUES ('档群，行政部门', '机械工程与自动化学院召开6月份中心组', '20200625');
INSERT INTO `student` VALUES ('直属，教学单位', '机械学院组织新手开展“阳光健康跑”', '20201012');
INSERT INTO `student` VALUES ('相关高校', '机械学院“专题做党课”开讲', '20200710');
