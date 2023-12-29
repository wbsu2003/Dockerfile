-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-12-26 22:47:31
-- 服务器版本： 10.3.29-MariaDB
-- PHP 版本： 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `iptv`
--

-- --------------------------------------------------------

--
-- 表的结构 `iptv_admin`
--

CREATE TABLE `iptv_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `psw` varchar(32) NOT NULL,
  `showcounts` tinyint(1) NOT NULL DEFAULT 20,
  `author` tinyint(1) NOT NULL DEFAULT 0,
  `useradmin` tinyint(1) NOT NULL DEFAULT 0,
  `ipcheck` tinyint(1) NOT NULL DEFAULT 0,
  `epgadmin` tinyint(1) NOT NULL DEFAULT 0,
  `mealsadmin` tinyint(1) NOT NULL DEFAULT 0,
  `channeladmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iptv_admin`
--

INSERT INTO `iptv_admin` (`id`, `name`, `psw`, `showcounts`, `author`, `useradmin`, `ipcheck`, `epgadmin`, `mealsadmin`, `channeladmin`) VALUES
(1, 'admin', '980784867833e9c6e8cf5816874bb08c', 20, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iptv_adminrec`
--

CREATE TABLE `iptv_adminrec` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `loc` varchar(32) DEFAULT NULL,
  `time` varchar(64) NOT NULL,
  `func` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iptv_category`
--

CREATE TABLE `iptv_category` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `psw` varchar(16) DEFAULT NULL,
  `type` varchar(16) NOT NULL DEFAULT 'default',
  `url` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iptv_category`
--

INSERT INTO `iptv_category` (`id`, `name`, `enable`, `psw`, `type`, `url`) VALUES
(59, '上海', 1, '', 'province', NULL),
(66, '云南', 1, '', 'province', NULL),
(70, '内蒙古', 1, '', 'province', NULL),
(71, '北京', 1, '', 'province', NULL),
(61, '吉林', 1, '', 'province', NULL),
(78, '四川', 1, '', 'province', NULL),
(58, '天津', 1, '', 'province', NULL),
(69, '宁夏', 1, '', 'province', NULL),
(55, '安徽', 1, '', 'province', NULL),
(77, '山东', 1, '', 'province', NULL),
(60, '山西', 1, '', 'province', NULL),
(52, '广东', 1, '', 'province', NULL),
(73, '广西', 1, '', 'province', NULL),
(76, '新疆', 1, '', 'province', NULL),
(62, '江苏', 1, '', 'province', NULL),
(56, '江西', 1, '', 'province', NULL),
(54, '河北', 1, '', 'province', NULL),
(51, '河南', 1, '', 'province', NULL),
(75, '浙江', 1, '', 'province', NULL),
(64, '海南', 1, '', 'province', NULL),
(53, '湖北', 1, '', 'province', NULL),
(72, '湖南', 1, '', 'province', NULL),
(74, '甘肃', 1, '', 'province', NULL),
(63, '福建', 1, '', 'province', NULL),
(68, '西藏', 1, '', 'province', NULL),
(1, '试看频道', 1, '', 'default', NULL),
(65, '贵州', 1, '', 'province', NULL),
(50, '重庆', 1, '', 'province', NULL),
(67, '陕西', 1, '', 'province', NULL),
(250, '隐藏频道', 1, '12345', 'vip', NULL),
(57, '黑龙江', 1, '', 'province', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `iptv_channels`
--

CREATE TABLE `iptv_channels` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(1024) DEFAULT NULL,
  `category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iptv_channels`
--

INSERT INTO `iptv_channels` (`id`, `name`, `url`, `category`) VALUES
(2, '测试', 'http://127.0.0.1', '隐藏频道');

-- --------------------------------------------------------

--
-- 表的结构 `iptv_config`
--

CREATE TABLE `iptv_config` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iptv_config`
--

INSERT INTO `iptv_config` (`id`, `name`, `value`) VALUES
(1, 'adinfo', '欢迎使用群晖电视。'),
(2, 'adtext', '欢迎使用群晖电视。'),
(3, 'appurl', 'https://127.0.0.1/tv.apk'),
(4, 'appurl_sdk14', 'https://127.0.0.1/tv_sdk14.apk'),
(5, 'appver', '1.0'),
(6, 'appver_sdk14', '1.0'),
(7, 'app_appname', '群晖电视'),
(8, 'app_packagename', 'com.qhtv.powerful'),
(9, 'app_sign', '12315'),
(10, 'autoupdate', '1'),
(11, 'buffTimeOut', '30'),
(12, 'dataver', '1'),
(13, 'decoder', '1'),
(14, 'epg_api_chk', '0'),
(15, 'ipcount', '2'),
(16, 'ipchk', '1'),
(17, 'max_sameip_user', '5'),
(18, 'needauthor', '1'),
(19, 'randkey', '6d7caa26b6de5941e3b24fd7c573d0bb'),
(20, 'secret_key', NULL),
(21, 'setver', '0'),
(22, 'showtime', '120'),
(23, 'showinterval', '5'),
(24, 'showwea', '0'),
(25, 'tipepgerror_1000', '1000_EPG接口验证失败!如有疑问请加QQ群：762319488'),
(26, 'tipepgerror_1001', '1001_EPG接口验证失败系!如有疑问请加QQ群：762319488'),
(27, 'tipepgerror_1002', '1002_EPG接口验证失败!如有疑问请加QQ群：762319488'),
(28, 'tipepgerror_1003', '1003_EPG接口验证失败!如有疑问请加QQ群：762319488'),
(29, 'tipepgerror_1004', '1004_EPG接口验证失败!如有疑问请加QQ群：762319488'),
(30, 'tipepgerror_1005', '1005_EPG接口验证失败!如有疑问请加QQ群：762319488'),
(31, 'tiploading', '正在连接，请稍后 ...'),
(32, 'tipuserexpired', '账号已到期，请联系管理员。'),
(33, 'tipuserforbidden', '账号已禁用，请联系管理员。'),
(34, 'tipusernoreg', '未被授权使用，请联系管理员。'),
(35, 'trialdays', '-999'),
(36, 'updateinterval', '10'),
(37, 'up_size', '0.0M'),
(38, 'up_sets', '0'),
(39, 'up_text', '1.公告测试'),
(40, 'weaapi_id', NULL),
(41, 'weaapi_key', NULL),
(42, 'alipay_appid', NULL),
(43, 'alipay_privatekey', NULL),
(44, 'alipay_publickey', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `iptv_epg`
--

CREATE TABLE `iptv_epg` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remarks` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iptv_epg`
--

INSERT INTO `iptv_epg` (`id`, `name`, `content`, `status`, `remarks`) VALUES
(1, 'cntv-cctv1', 'CCTV-1', 1, NULL),
(2, 'cntv-cctv2', 'CCTV-2', 1, NULL),
(3, 'cntv-cctv3', 'CCTV-3', 1, NULL),
(4, 'cntv-cctv4', 'CCTV-4', 1, NULL),
(5, 'cntv-cctv5', 'CCTV-5', 1, NULL),
(6, 'cntv-cctv5plus', 'CCTV-5Plus', 1, NULL),
(7, 'cntv-cctv6', 'CCTV-6', 1, NULL),
(8, 'cntv-cctv7', 'CCTV-7', 1, NULL),
(9, 'cntv-cctv8', 'CCTV-8', 1, NULL),
(10, 'cntv-cctvjilu', 'CCTV-9', 1, NULL),
(11, 'cntv-cctv10', 'CCTV-10', 1, NULL),
(12, 'cntv-cctv11', 'CCTV-11', 1, NULL),
(13, 'cntv-cctv12', 'CCTV-12', 1, NULL),
(14, 'cntv-cctv13', 'CCTV-13', 1, NULL),
(15, 'cntv-cctvchild', 'CCTV-14', 1, NULL),
(16, 'cntv-cctv15', 'CCTV-15', 1, NULL),
(17, 'cntv-cctv17', 'CCTV-17', 1, NULL),
(18, 'cntv-cetv1', 'CETV-1', 1, NULL),
(19, 'cntv-cetv2', 'CETV-2', 1, NULL),
(20, 'cntv-cetv3', 'CETV-3', 1, NULL),
(21, 'cntv-cetv4', 'CETV-4', 1, NULL),
(22, 'cntv-cctv4k', 'CCTV 4K超高清', 1, NULL),
(23, 'tvmao-ZJTV-ZJTV1', '浙江卫视', 1, NULL),
(24, 'tvmao-JSTV-JSTV1', '江苏卫视', 1, NULL),
(25, 'tvmao-HUNANTV-HUNANTV1', '湖南卫视', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `iptv_meals`
--

CREATE TABLE `iptv_meals` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `amount` int(4) NOT NULL DEFAULT 0,
  `days` int(4) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iptv_meals`
--

INSERT INTO `iptv_meals` (`id`, `name`, `amount`, `days`, `content`, `status`) VALUES
(1000, '试看套餐', 0, 0, '试看频道', 1),
(1002, '会员套餐', 7, 999, '重庆_河南_广东_湖北_河北_安徽_江西_黑龙江_天津_上海_山西_吉林_江苏_福建_海南_贵州_云南_陕西_西藏_宁夏_内蒙古_北京_湖南_广西_甘肃_浙江_新疆_山东_四川_隐藏频道', 1);

-- --------------------------------------------------------

--
-- 表的结构 `iptv_payment`
--

CREATE TABLE `iptv_payment` (
  `userid` bigint(20) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `meal` int(4) NOT NULL,
  `days` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iptv_users`
--

CREATE TABLE `iptv_users` (
  `id` int(11) NOT NULL,
  `name` bigint(20) NOT NULL,
  `mac` varchar(32) NOT NULL,
  `deviceid` varchar(32) NOT NULL,
  `model` varchar(32) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `region` varchar(32) DEFAULT NULL,
  `exp` bigint(20) NOT NULL,
  `vpn` tinyint(5) NOT NULL DEFAULT 0,
  `idchange` tinyint(5) NOT NULL DEFAULT 0,
  `author` varchar(16) DEFAULT NULL,
  `authortime` bigint(20) NOT NULL DEFAULT 0,
  `status` int(4) NOT NULL DEFAULT -1,
  `lasttime` bigint(20) NOT NULL,
  `marks` varchar(16) DEFAULT NULL,
  `meal` int(11) NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `qhtv_movie`
--

CREATE TABLE `qhtv_movie` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `api` text DEFAULT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `iptv_admin`
--
ALTER TABLE `iptv_admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `iptv_adminrec`
--
ALTER TABLE `iptv_adminrec`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `iptv_category`
--
ALTER TABLE `iptv_category`
  ADD UNIQUE KEY `name` (`name`);

--
-- 表的索引 `iptv_channels`
--
ALTER TABLE `iptv_channels`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `iptv_config`
--
ALTER TABLE `iptv_config`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `iptv_epg`
--
ALTER TABLE `iptv_epg`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `iptv_meals`
--
ALTER TABLE `iptv_meals`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `iptv_users`
--
ALTER TABLE `iptv_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mac` (`mac`,`deviceid`);

--
-- 表的索引 `qhtv_movie`
--
ALTER TABLE `qhtv_movie`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `iptv_admin`
--
ALTER TABLE `iptv_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `iptv_adminrec`
--
ALTER TABLE `iptv_adminrec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `iptv_channels`
--
ALTER TABLE `iptv_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `iptv_config`
--
ALTER TABLE `iptv_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- 使用表AUTO_INCREMENT `iptv_epg`
--
ALTER TABLE `iptv_epg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `iptv_meals`
--
ALTER TABLE `iptv_meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- 使用表AUTO_INCREMENT `iptv_users`
--
ALTER TABLE `iptv_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `qhtv_movie`
--
ALTER TABLE `qhtv_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
