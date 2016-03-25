-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: 2016-03-23 16:37:40
-- 服务器版本： 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `guohong`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;