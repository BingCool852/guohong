-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: 2016-03-23 12:49:06
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cominfo`
--

INSERT INTO `cominfo` (`id`, `title`, `abstract`, `src`, `content`, `status`, `exchangetime`) VALUES
(1, 'æ–°é—»ä¿¡æ¯', 'æ±‡å›½é™…èžèµ„ç§Ÿèµï¼ˆæ·±åœ³ï¼‰æœ‰é™å…¬å¸æ˜¯ç»å•†åŠ¡éƒ¨æ‰¹å‡†çš„ä¸“é—¨ä»Žäº‹èžèµ„ç§Ÿèµä¸šåŠ¡çš„é‡‘èžæœºæž„ã€‚', './resources/upfile/201603231240555216.png', '<p><span style="color: rgb(110, 110, 110); font-family: å¾®è½¯é›…é»‘; font-size: 14px; line-height: 25px; background-color: rgb(255, 255, 255);">æ±‡å›½é™…èžèµ„ç§Ÿèµï¼ˆæ·±åœ³ï¼‰æœ‰é™å…¬å¸æ˜¯ç»å•†åŠ¡éƒ¨æ‰¹å‡†çš„ä¸“é—¨ä»Žäº‹èžèµ„ç§Ÿèµä¸šåŠ¡çš„é‡‘èžæœºæž„ã€‚å…¬å¸çš„ä¸šåŠ¡æ–¹å‘ä»¥ä¸­å°ä¼ä¸šå’Œäº‹ä¸šå•ä½ä¸ºä¸»ï¼Œæ¶‰åŠè¡Œä¸šä¸»è¦åŒ…æ‹¬åŒ»ç–—å™¨æ¢°ã€æ•™è‚²æ–‡åŒ–ã€å·¥ç¨‹å»ºè®¾ã€æœºæ¢°åŠ å·¥ã€æ±½è½¦ç§Ÿèµå’Œä¸ªäººç§Ÿèµç­‰ï¼Œå¹¶å°†æŒç»­æŽ¢ç´¢æ–°çš„è¡Œä¸šæ–¹å‘å’Œä¸šåŠ¡é¢†åŸŸï¼ŒæŒç»­åˆ›é€ è´´åˆå®¢æˆ·éœ€æ±‚çš„å¤šæ ·åŒ–é‡‘èžäº§å“ã€‚å…¬å¸ä¸»è¦ä¸šåŠ¡... ä¸­æ±‡ç§Ÿèµè‡´åŠ›äºŽä¸ºå®¢æˆ·æä¾›æ›´çµæ´»å¤šæ ·çš„èµ„é‡‘äº§å“å’Œæ›´å…¨é¢çš„å¢žå€¼æœåŠ¡ï¼ŒçŸ¢å¿—äºŽæˆä¸ºä¸­å›½èžèµ„ç§Ÿèµè¡Œä¸šå…·æœ‰ç‹¬ç‰¹å•†ä¸šç”Ÿå‘½åŠ›ã€å»¶å±•åŠ›çš„ä¸­å°å®¢æˆ·é¢†åŸŸå’Œä¸“ä¸šå¸‚åœºçš„ä¸“å®¶åž‹é¢†å¯¼è€…ã€‚</span></p>', 1, '1458733255');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `company_info`
--

CREATE TABLE `company_info` (
  `id` int(16) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '公司名',
  `faxnum` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '传真号码',
  `telnum` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '电话号码',
  `email` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '公司邮箱',
  `weibo` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '微博',
  `webtitle` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '网站标题',
  `resume` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '简历邮箱',
  `address` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '公司地址',
  `exchangetime` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `leavemsg`
--

CREATE TABLE `leavemsg` (
  `id` int(16) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `content` text,
  `exchangetime` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(42, '0', '1', 'è”ç³»æˆ‘ä»¬', '0', 'contact', '1', '1458731738'),
(43, '42', '1', 'è”ç³»æ–¹å¼', '0', 'contactway', '2', '1458733085'),
(44, '42', '1', 'ç•™è¨€åé¦ˆ', '0', 'leavemsg', '1', '1458733397');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(16) NOT NULL,
  `username` varchar(32) COLLATE utf8_bin NOT NULL,
  `pwd` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `pwd`) VALUES
(1, 'admin', 'admin');

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
-- Indexes for table `leavemsg`
--
ALTER TABLE `leavemsg`
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
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `companyinfo`
--
ALTER TABLE `companyinfo`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contactway`
--
ALTER TABLE `contactway`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `decoration`
--
ALTER TABLE `decoration`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `digital`
--
ALTER TABLE `digital`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leavemsg`
--
ALTER TABLE `leavemsg`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
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
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tianhuang`
--
ALTER TABLE `tianhuang`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
