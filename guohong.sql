-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: 2016-03-30 04:35:28
-- 服务器版本： 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guohong`
--

-- --------------------------------------------------------

--
-- 表的结构 `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `beauty`
--

CREATE TABLE `beauty` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(4) DEFAULT '1',
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `business`
--

CREATE TABLE `business` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(4) DEFAULT '1',
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `case`
--

CREATE TABLE `case` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cominfo`
--

CREATE TABLE `cominfo` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(4) DEFAULT '1',
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cominfo`
--

INSERT INTO `cominfo` (`id`, `title`, `abstract`, `src`, `content`, `status`, `exchangetime`) VALUES
(1, 'æ–°é—»ä¿¡æ¯', 'æ±‡å›½é™…èžèµ„ç§Ÿèµï¼ˆæ·±åœ³ï¼‰æœ‰é™å…¬å¸æ˜¯ç»å•†åŠ¡éƒ¨æ‰¹å‡†çš„ä¸“é—¨ä»Žäº‹èžèµ„ç§Ÿèµä¸šåŠ¡çš„é‡‘èžæœºæž„ã€‚', './resources/upfile/201603231240555216.png', '<p><span style="color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);">æ±‡å›½é™…èžèµ„ç§Ÿèµï¼ˆæ·±åœ³ï¼‰æœ‰é™å…¬å¸æ˜¯ç»å•†åŠ¡éƒ¨æ‰¹å‡†çš„ä¸“é—¨ä»Žäº‹èžèµ„ç§Ÿèµä¸šåŠ¡çš„é‡‘èžæœºæž„ã€‚å…¬å¸çš„ä¸šåŠ¡æ–¹å‘ä»¥ä¸­å°ä¼ä¸šå’Œäº‹ä¸šå•ä½ä¸ºä¸»ï¼Œæ¶‰åŠè¡Œä¸šä¸»è¦åŒ…æ‹¬åŒ»ç–—å™¨æ¢°ã€æ•™è‚²æ–‡åŒ–ã€å·¥ç¨‹å»ºè®¾ã€æœºæ¢°åŠ å·¥ã€æ±½è½¦ç§Ÿèµå’Œä¸ªäººç§Ÿèµç­‰ï¼Œå¹¶å°†æŒç»­æŽ¢ç´¢æ–°çš„è¡Œä¸šæ–¹å‘å’Œä¸šåŠ¡é¢†åŸŸï¼ŒæŒç»­åˆ›é€ è´´åˆå®¢æˆ·éœ€æ±‚çš„å¤šæ ·åŒ–é‡‘èžäº§å“ã€‚å…¬å¸ä¸»è¦ä¸šåŠ¡... ä¸­æ±‡ç§Ÿèµè‡´åŠ›äºŽä¸ºå®¢æˆ·æä¾›æ›´çµæ´»å¤šæ ·çš„èµ„é‡‘äº§å“å’Œæ›´å…¨é¢çš„å¢žå€¼æœåŠ¡ï¼ŒçŸ¢å¿—äºŽæˆä¸ºä¸­å›½èžèµ„ç§Ÿèµè¡Œä¸šå…·æœ‰ç‹¬ç‰¹å•†ä¸šç”Ÿå‘½åŠ›ã€å»¶å±•åŠ›çš„ä¸­å°å®¢æˆ·é¢†åŸŸå’Œä¸“ä¸šå¸‚åœºçš„ä¸“å®¶åž‹é¢†å¯¼è€…ã€‚</span></p>', 1, '1458733255'),
(2, 'æ–°é—»ä¿¡æ¯2', 'æ–°é—»ä¿¡æ¯2222222222', './resources/upfile/201603250555349601.jpg', '<p>æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222æ–°é—»ä¿¡æ¯2222222222</p>', 1, '1458881734');

-- --------------------------------------------------------

--
-- 表的结构 `companyinfo`
--

CREATE TABLE `companyinfo` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `companyinfo`
--

INSERT INTO `companyinfo` (`id`, `title`, `abstract`, `src`, `content`, `exchangetime`) VALUES
(1, 'æˆéƒ½å›½å¼˜æŠ•èµ„å®žä¸šæœ‰é™å…¬å¸', NULL, './resources/upfile/201603250406497284.jpg', '<p class="p1"><span class="s1">æˆéƒ½å›½å¼˜æŠ•èµ„å®žä¸šæœ‰é™å…¬å¸æ˜¯ä¸€å®¶é›†æŠ•èµ„ã€å¼€å‘ã€é¤é¥®å¨±ä¹ã€é¥®å“é…’ä¸šå’Œç”Ÿç‰©ç§‘æŠ€å¼€å‘ä¸ºä¸€ä½“ï¼Œå¤šå…ƒåŒ–å‘å±•çš„é›†å›¢åž‹ä¼ä¸šã€‚æ‹¥æœ‰èµ„äº§å…­åƒä¸‡å…ƒï¼Œå‘˜å·¥200åï¼Œæœ¬ç§‘ç”Ÿ38åï¼Œæœ¬ç§‘ç”Ÿ38åï¼Œä»¥åŠ5åç¡•å£«ç ”ç©¶ç”Ÿã€‚ä¸‹å±žä¼ä¸šæœ‰ï¼šæ–°ä¸–çºªä¿±ä¹éƒ¨ï¼Œæˆéƒ½å¸‚ä¹…æºé…’ä¸šæœ‰é™å…¬å¸ï¼ˆé‚›å³¡é…’æºé…’ä¸šåŽ‚ï¼‰ï¼Œæˆéƒ½å›½å¼˜ç”Ÿç‰©ç§‘æŠ€å¼€å‘æœ‰é™å…¬å¸ã€å›½å¼˜å…¸å½“è¡Œã€å›½æ¢æ±½è½¦ç§Ÿèµæœ‰é™å…¬</span></p><p class="p1"><span class="s1">å¸ï¼Œæžå…·å®è¾¾è§„æ¨¡çš„ä»™éœ²æ˜Žç å›½é™…ä¼šæ‰€ï¼ˆæ¡‘æ‹¿ï¼Œä¼‘é—²ï¼Œè¿åŠ¨å’Œé¤é¥®å¨±ä¹ä¸­å¿ƒï¼‰ã€‚ç‰¹åˆ«æ˜¯æˆ‘å…¬å¸æ‹¥æœ‰ä¸€æ‰¹é¢‡å…·ç»éªŒçš„ç­–åˆ’ã€ç»è¥ç®¡ç†äººæ‰ï¼Œä»–ä»¬çš„ç›®å…‰é”æ•ã€æ€è·¯å¼€é˜”ï¼Œæ˜¯æ•¢äºŽå°è¯•å„ç§è·¨è¡Œä¸šã€è·¨åœ°åŒºå¼€å‘çš„ä¼˜ç§€ç²¾è‹±ï¼Œå›½å¼˜ä½œä¸ºä¸€å®¶æŠ•èµ„åž‹ä¼ä¸šæ·±çŸ¥èšè´¤çº³å£«ï¼Œå¹¿æ‹›äººæ‰ï¼Œä¸æ–­ç»™ä¼ä¸šå¢žæ·»æ–°é²œè¡€æ¶²ï¼Œæ³¨å…¥æ–°çš„æ´»åŠ›æ‰æ˜¯ä¼ä¸šç”Ÿå­˜å’Œå‘å±•çš„æ ¹æœ¬æ‰€åœ¨ã€‚</span></p><p class="p1"><span class="s1">å±•æœ›è·¨ä¸–çºªçš„å›½å¼˜ï¼Œå¿…å°†ä»¥æ–°çš„é¢è²Œè¿ŽæŽ¥æŒ‘æˆ˜ã€‚</span></p><p class="p2"><span class="s1"></span><br/></p><p class="p1"><span class="s1">Chengdu Hong investment Industrial Co., Ltd. is a set of investment, development, catering and entertainment, beverage industry and biotechnology development as one of the diversified development of the group type enterprise. With assets of sixty million yuan, 200 employees, 38 undergraduate students, 38 undergraduate students, and 5 graduate students. Subordinate enterprises are: New Century Club, Chengdu City for a long time source Wine Co., Ltd. (Qiong gap source wine wine factory), Chengdu, China Hong Biotechnology Development Co., Ltd., the Hong hock OK, Guoliang car rental Co., Ltd., HTC scale very elegant and graceful International Club&nbsp;</span></p>', '1458875209');

-- --------------------------------------------------------

--
-- 表的结构 `company_info`
--

CREATE TABLE `company_info` (
  `id` int(4) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin DEFAULT '无' COMMENT '公司名',
  `faxnum` varchar(32) COLLATE utf8_bin DEFAULT '无' COMMENT '传真号码',
  `telnum` varchar(32) COLLATE utf8_bin DEFAULT '无' COMMENT '电话号码',
  `email` varchar(255) COLLATE utf8_bin DEFAULT '无' COMMENT '公司邮箱',
  `weibo` varchar(255) COLLATE utf8_bin DEFAULT '无' COMMENT '微博',
  `webtitle` varchar(32) COLLATE utf8_bin DEFAULT '无' COMMENT '网站标题',
  `resume` varchar(255) COLLATE utf8_bin DEFAULT '无' COMMENT '简历邮箱',
  `address` varchar(255) COLLATE utf8_bin DEFAULT '无' COMMENT '公司地址',
  `exchangetime` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `company_info`
--

INSERT INTO `company_info` (`id`, `name`, `faxnum`, `telnum`, `email`, `weibo`, `webtitle`, `resume`, `address`, `exchangetime`) VALUES
(1, 'å›½å¼˜å®žä¸š', '', '028-1234678', 'kefu@huizhongcf.com', '', 'å›½å¼˜å®žä¸š', 'kefu@huizhongcf.com', 'å››å·çœ-æˆéƒ½å¸‚-é”¦æ±ŸåŒº-äºŒçŽ¯è·¯ä¸œäº”æ®µä¸‡è¾¾å¹¿åœº', '1458745538');

-- --------------------------------------------------------

--
-- 表的结构 `contactway`
--

CREATE TABLE `contactway` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `contactway`
--

INSERT INTO `contactway` (`id`, `title`, `abstract`, `src`, `content`, `exchangetime`) VALUES
(1, 'å›½å¼˜å®žä¸š', NULL, './resources/upfile/201603281337028237.jpg', '<p><img src="/ueditor/php/upload/image/20160328/1459164452918282.png" title="1459164452918282.png" alt="å±å¹•å¿«ç…§ 2016-03-28 ä¸‹åˆ7.27.17.png" width="572" height="372" style="width: 572px; height: 372px; float: left;"/></p><p style="text-align: left;"><span style="color: rgb(89, 89, 89); font-size: 24px;"><strong>&nbsp; &nbsp;</strong></span></p><p style="text-align: left;"><span style="font-size: 14px;">&nbsp; &nbsp; &nbsp;<span style="font-size: 14px; color: rgb(127, 127, 127);"><strong><span style="font-size: 16px;">å®¢æœçƒ­çº¿ï¼š028-123456<br/></span></strong></span></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;å®¢æœé‚®ç®±:&nbsp; &nbsp;kefu@gcf.com</span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;åœ¨çº¿QQï¼š87233312</span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;å…¬å¸åœ°å€ï¼šå››å·çœï¼é”¦æ±ŸåŒºï¼äºŒçŽ¯è·¯ä¸œäº”æ®µ17å·</span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><span style="color: rgb(127, 127, 127); font-size: 14px;"><strong><span style="color: rgb(127, 127, 127); font-size: 16px;"><br/></span></strong></span></p><p style="text-align: left;"><br/></p>', '1459267912');

-- --------------------------------------------------------

--
-- 表的结构 `decoration`
--

CREATE TABLE `decoration` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(4) DEFAULT '1',
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `digital`
--

CREATE TABLE `digital` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(4) DEFAULT '1',
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `digital`
--

INSERT INTO `digital` (`id`, `title`, `abstract`, `src`, `content`, `status`, `exchangetime`) VALUES
(1, 'å¡è¥¿æ¬§æ•°ç ç›¸æœº', 'å¡è¥¿æ¬§ ZR3500æ˜¯ä¸€æ¬¾æ‹¥æœ‰å¤šç§é¢œè‰²é€‰æ‹©çš„ç›¸æœºï¼Œç²¾è‡´å°å·§çš„æœºèº«æºå¸¦ä¹Ÿæ›´åŠ æ–¹ä¾¿ã€‚', './resources/upfile/201603280643178087.png', '<p class="p1"><span class="s1">ZR3500æ‹¥æœ‰å…¨æ–°å‡çº§çš„ç¾Žé¢œplusæ¨¡å¼ï¼Œ12çº§è‚¤è‰²çš„è®¾ç½®ï¼Œ12çº§å¹³æ»‘è‚Œè‚¤çš„è°ƒèŠ‚ï¼Œç¾Žé¢œæ•ˆæžœä¸°å¯Œã€è‡ªç„¶ï¼Œåªéœ€è¦æ‰‹æŒ‡ç‚¹ä¸€ç‚¹ï¼Œæ— è®ºæ˜¯å…‰å½©äº®ç™½è‰²è¿˜æ˜¯å¥åº·å°éº¦è‰²éƒ½å¯ä»¥éšæ—¶æ‹¥æœ‰ï¼Œæ­è½½1/1.7ä¼ æ„Ÿå™¨ï¼Œé…å¤‡F2.8é•œå¤´ï¼ŒèƒŒç…§å¼åå°„ç³»ç»Ÿç”¨å…‰æ›´é«˜æ•ˆï¼Œé«˜æ„Ÿå…‰åº¦çš„æƒ…å†µä¸‹èƒ½æœ‰æ•ˆæŠ‘åˆ¶å™ªç‚¹ï¼Œä½Žç…§æ˜ŽçŽ¯å¢ƒä¸‹ä¾ç„¶å¯ä»¥èŽ·å¾—æ¸…æ™°çš„ç”»é¢ã€‚</span></p><p class="p1"><span class="s1"><a href="http://detail.zol.com.cn/digital_camera/index398632.shtml">ZR3500</a>æ‹¥æœ‰æ›´ä¾¿æ·çš„ä¼ é€ä¸Žåˆ†äº«æ–¹å¼ï¼Œç›¸æœºã€æ‰‹æœºå¯ä»¥å®žçŽ°è½»æ¾äº’è”ï¼Œéšæ—¶éšåˆ»èŽ·äº«æ¥è‡ªç›¸æœºçš„ç…§ç‰‡ã€‚æˆ‘ä»¬åªéœ€è¦å®‰è£…â€œEXILIM CONNECTâ€œAPPï¼Œå®Œæˆæ™ºèƒ½æ‰‹æœºå’Œç›¸æœºçš„è¿žæŽ¥é…å¯¹ï¼Œå°±å¯ä»¥å¯ç”¨ç…§ç‰‡çš„è‡ªåŠ¨ä¼ è¾“åŠŸèƒ½ã€‚é€šè¿‡ç…§ç‰‡åˆ†äº«APPâ€œSCENEâ€ï¼Œå…±äº«åˆ°äº‘ç«¯ç›¸å†Œï¼Œå®žçŽ°å½±åƒå¿«é€Ÿå…±äº«ã€‚</span></p><p><img src="/ueditor/php/upload/image/20160328/1459140191879519.png" title="1459140191879519.png" alt="ChMlWlWsVwiIf0j6AALTBg5Cx6oAAHY4APxpqEAAtMe240.png"/></p>', 1, '1459140197');

-- --------------------------------------------------------

--
-- 表的结构 `idea`
--

CREATE TABLE `idea` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `industry`
--

CREATE TABLE `industry` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `industry`
--

INSERT INTO `industry` (`id`, `title`, `abstract`, `src`, `content`, `exchangetime`) VALUES
(1, 'å›½å¼˜è¡Œä¸šèµ„è´¨', NULL, NULL, '<p class="p1"><span class="s1">ä¼ä¸šèµ„è´¨è¯ä¹¦å®žé™…ä¸Šå°±æ˜¯æŒ‡ä¼ä¸šæœ‰èƒ½åŠ›å®Œæˆä¸€é¡¹å·¥ç¨‹çš„è¯æ˜Žä¹¦ã€‚ä»¥å»ºç­‘ä¸šä¼ä¸šä¸ºä¾‹ï¼Œæ ¹æ®ã€Šå»ºç­‘ä¸šä¼ä¸šèµ„è´¨ç®¡ç†è§„å®šã€‹ï¼ˆä¸­åŽäººæ°‘å…±å’Œå›½å»ºè®¾éƒ¨ä»¤ç¬¬87å·ï¼‰ï¼Œå»ºç­‘ä¸šä¼ä¸šåº”å½“æŒ‰ç…§å…¶æ‹¥æœ‰çš„æ³¨å†Œèµ„æœ¬ã€å‡€èµ„äº§ã€ä¸“ä¸šæŠ€æœ¯äººå‘˜ã€æŠ€æœ¯è£…å¤‡å’Œå·²å®Œæˆçš„å»ºç­‘å·¥ç¨‹ä¸šç»©ç­‰èµ„è´¨æ¡ä»¶ç”³è¯·èµ„è´¨ï¼Œç»å®¡æŸ¥åˆæ ¼ï¼Œå–å¾—ç›¸åº”ç­‰çº§çš„èµ„è´¨è¯ä¹¦åŽï¼Œæ–¹å¯åœ¨å…¶èµ„è´¨ç­‰çº§è®¸å¯çš„èŒƒå›´å†…ä»Žäº‹å»ºç­‘æ´»åŠ¨ã€‚</span></p><p><img src="/ueditor/php/upload/image/20160328/1459140368102413.jpg" title="1459140368102413.jpg" alt="14583716089360.jpg"/></p>', '1459140371');

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE `menu` (
  `id` int(16) NOT NULL,
  `parmenu` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '父栏目',
  `status` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '状态 1:启用 0:禁用',
  `name` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '栏目名',
  `sort` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '栏目排序',
  `url` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '栏目链接',
  `type` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '栏目页面类型',
  `exchangetime` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `parmenu`, `status`, `name`, `sort`, `url`, `type`, `exchangetime`) VALUES
(25, '0', '1', 'å…³äºŽæˆ‘ä»¬', '0', 'aboutus', '1', '1458733576'),
(26, '25', '1', 'å…¬å¸ç®€ä»‹', '0', 'companyinfo', '1', '1458730488'),
(27, '25', '1', 'è¡Œä¸šèµ„è´¨', '0', 'industry', '1', '1458730715'),
(28, '25', '1', 'æœåŠ¡ç†å¿µ', '0', 'idea', '1', '1458730764'),
(29, '25', '1', 'å…¬å¸ä½“ç³»', '0', 'system', '1', '1458730801'),
(30, '0', '1', 'æ–°é—»åŠ¨æ€', '0', 'news', '2', '1458730847'),
(31, '30', '1', 'å…¬å¸æ–°é—»', '0', 'cominfo', '2', '1458730930'),
(32, '30', '1', 'å…¶ä»–åŠ¨æ€', '0', 'otherinfo', '2', '1458730955'),
(33, '0', '1', 'æœåŠ¡é¢†åŸŸ', '0', 'business', '2', '1458731041'),
(34, '33', '1', 'æ•°ç ä¸šåŠ¡', '0', 'digital', '2', '1458731074'),
(35, '33', '1', 'ç¾Žå®¹ä¸šåŠ¡', '0', 'beauty', '2', '1458731136'),
(36, '33', '1', 'å®¶è£…ä¸šåŠ¡', '0', 'decoration', '2', '1458731190'),
(37, '33', '1', 'å…¶ä»–ä¸šåŠ¡', '0', 'otherbusiness', '2', '1458731241'),
(38, '0', '1', 'æˆåŠŸæ¡ˆä¾‹', '0', 'case', '1', '1458731324'),
(39, '38', '1', 'æ¡ˆä¾‹', '0', 'showcase', '1', '1458731571'),
(40, '0', '1', 'å…¨èµ„å­å…¬å¸', '0', 'childcom', '1', '1458731618'),
(41, '40', '1', 'å¤©å‡°å½±è§†æ–‡åŒ–', '0', 'tianhuang', '1', '1458731692'),
(42, '0', '1', 'è”ç³»æˆ‘ä»¬', '0', 'contact', '1', '1458736150'),
(45, '42', '1', 'è”ç³»æˆ‘ä»¬', '0', 'contactway', '1', '1458741997');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(4) DEFAULT '1',
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `otherbusiness`
--

CREATE TABLE `otherbusiness` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(4) DEFAULT '1',
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `otherinfo`
--

CREATE TABLE `otherinfo` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(4) DEFAULT '1',
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `showcase`
--

CREATE TABLE `showcase` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `showcase`
--

INSERT INTO `showcase` (`id`, `title`, `abstract`, `src`, `content`, `exchangetime`) VALUES
(1, 'æ¡ˆä¾‹1', NULL, './resources/upfile/201603281319572688.jpg', '<p>æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1æ¡ˆä¾‹1<img src="/ueditor/php/upload/image/20160328/1459163986490378.jpg" title="1459163986490378.jpg" alt="14583716089360.jpg"/></p>', '1459163997');

-- --------------------------------------------------------

--
-- 表的结构 `system`
--

CREATE TABLE `system` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tianhuang`
--

CREATE TABLE `tianhuang` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tianhuang`
--

INSERT INTO `tianhuang` (`id`, `title`, `abstract`, `src`, `content`, `exchangetime`) VALUES
(1, 'æˆéƒ½å¤©å‡°å½±è§†æœ‰é™å…¬å¸', NULL, './resources/upfile/201603281325243331.jpg', '<h2 style="padding: 0px; margin: 0px; list-style: none; color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; line-height: 33px; white-space: normal;"><span style="font-size: 14px;">Sunrich Management Berhad was established on May, 2007 and managed by a team of experienced and qualified personnels who are fully committed to the &nbsp; success of the company. The companyâ€™s primary business drivers include &nbsp;property and land development, building construction, infrastructure and have&nbsp;</span></h2><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; font-size: 14px; line-height: 33px; white-space: normal;">been advanced to provide maximum interaction for efficiency, cost effective and innovative results. Sunrich Management Berhad delivers program and&nbsp;</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; font-size: 14px; line-height: 33px; white-space: normal;">construction management services to clients from project concept to completion and commissioning. &nbsp; Our construction services team offers clients a single and comprehensive source of solution combining local knowledge and global expertise. As a full service developer, our team is dedicated and has the ability to rapidly move&nbsp;</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; font-size: 14px; line-height: 33px; white-space: normal;">any project from site selection, acquisition, financing, construction, leasing, property management and property maintenance. Besides offering a visually impressive piece of architecture, Sunrich Management Berhad understands that the foundation of every successful project derived from a perfect lifestyle&nbsp;</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; font-size: 14px; line-height: 33px; white-space: normal;">setting. &nbsp;</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; font-size: 14px; line-height: 33px; white-space: normal;">Therefore, our construction services experts provide clients with an extensive range of pre-construction and construction-related services and solutions for&nbsp;</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; font-size: 14px; line-height: 33px; white-space: normal;">projects of varying scope, budget, schedule and complexity. To achieve the companyâ€™s vision as Malaysiaâ€™s prominent and innovative developer, Sunrich&nbsp;</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; font-size: 14px; line-height: 33px; white-space: normal;">Management Berhad strive to combine the best of residential, retail and commercial concepts, whilst providing higher values of convenience, security and quality to our customers.</p><p><img src="/ueditor/php/upload/image/20160328/1459164307424625.jpg" title="1459164307424625.jpg" alt="14583716089360.jpg"/></p>', '1459164324');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `role` int(4) NOT NULL DEFAULT '1' COMMENT '0:超级管理员 1:管理员',
  `menu` varchar(64) NOT NULL COMMENT '权限模块',
  `logintime` varchar(64) DEFAULT NULL,
  `latetime` varchar(64) DEFAULT NULL,
  `status` int(4) NOT NULL DEFAULT '0' COMMENT '1:启用  0:停用',
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `pwd`, `role`, `menu`, `logintime`, `latetime`, `status`, `exchangetime`) VALUES
(1, 'admin', 'd41d8cd98f00b204e9800998ecf8427e', 0, '25,30,33,38,40,42', '1459220861', '1459268038', 1, '1459295131'),
(2, 'test1', '5a105e8b9d40e1329780d62ea2265d8a', 1, '25,30,33', '1459221004', '1459295438', 1, '1459221004'),
(3, 'test2', 'ad0234829205b9033196ba818f7a872b', 1, '25,30,40,42', '1459241640', '1459328656', 1, '1459241640'),
(4, 'test3', '8ad8757baa8564dc136c1e07507f4a98', 1, '33,38,40', '1459267174', NULL, 0, '1459267174'),
(5, 'test4', '86985e105f79b95d6bc918fb45ec7727', 1, '25', '1459281355', NULL, 1, '1459281355'),
(6, 'test5', 'd41d8cd98f00b204e9800998ecf8427e', 1, '25,42', '1459281380', NULL, 0, '1459294362'),
(7, 't6', 'd41d8cd98f00b204e9800998ecf8427e', 1, '25,30', '1459294823', NULL, 0, '1459294849'),
(8, 't7', '3685708fd594a6861aa73f181e657dc5', 1, '38', '1459294863', NULL, 0, '1459294863'),
(9, 't8', 'd41d8cd98f00b204e9800998ecf8427e', 1, '25,30', '1459294894', NULL, 0, '1459294960'),
(14, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 0, '25,30,33,38,40,42', '1459328714', NULL, 1, '1459328714');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beauty`
--
ALTER TABLE `beauty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case`
--
ALTER TABLE `case`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cominfo`
--
ALTER TABLE `cominfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyinfo`
--
ALTER TABLE `companyinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactway`
--
ALTER TABLE `contactway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital`
--
ALTER TABLE `digital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherbusiness`
--
ALTER TABLE `otherbusiness`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherinfo`
--
ALTER TABLE `otherinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showcase`
--
ALTER TABLE `showcase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tianhuang`
--
ALTER TABLE `tianhuang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `beauty`
--
ALTER TABLE `beauty`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `case`
--
ALTER TABLE `case`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cominfo`
--
ALTER TABLE `cominfo`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `companyinfo`
--
ALTER TABLE `companyinfo`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contactway`
--
ALTER TABLE `contactway`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `decoration`
--
ALTER TABLE `decoration`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `digital`
--
ALTER TABLE `digital`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `otherbusiness`
--
ALTER TABLE `otherbusiness`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `otherinfo`
--
ALTER TABLE `otherinfo`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `showcase`
--
ALTER TABLE `showcase`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tianhuang`
--
ALTER TABLE `tianhuang`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
