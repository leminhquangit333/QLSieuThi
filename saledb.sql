-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 12:35 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Đồ dùng gia đình', NULL),
(2, 'Thiết Bị Điện Tử', NULL),
(3, 'Thời trang', NULL),
(4, 'Thực Phẩm', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_price` decimal(10,0) DEFAULT 0,
  `num` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `unit_price`, `num`) VALUES
(30, 16, 2, '21000000', '1'),
(31, 16, 25, '12000000', '1'),
(32, 16, 26, '1000000', '3'),
(33, 17, 2, '21000000', '5');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT 0,
  `manufacturer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `manufacturer`, `image`, `created_date`, `active`, `category_id`) VALUES
(1, 'iPhone 7 Plus', '32GB', '11000000', 'Apple', '/resources/images/iphone-7-plus.jpg', '2020-01-20 00:00:00', b'1', 2),
(2, 'Galaxy Note 10', '64GB', '21000000', 'Samsung', '/resources/images/samsung-galaxy-note-10.jpg', '2020-01-08 00:00:00', b'1', 2),
(3, 'iPhone 11', '64GB', '17000000', 'Apple', '/resources/images/iphone-11.jpg', '2020-01-12 00:00:00', b'1', 2),
(4, 'iPhone 11 Pro Max', '64GB', '28000000', 'Apple', '/resources/images/apple-iphone-11-pro.jpg', '2020-01-15 00:00:00', b'1', 2),
(5, 'TiVi SonyBravia 4k', 'Hệ Điều Hành Android', '18600000', 'Sony', '/resources/images/5070541_sony_bravia_2020.jpg', '2020-01-12 00:00:00', b'1', 2),
(19, 'Máy Giặt SAMSUNG', 'Cửa Đứng', '12000000', 'SamSung', '/resources/images/SamSung.jpg', '2021-05-09 10:49:48', b'1', 2),
(20, 'Điều Hòa SANYO', 'Điều Hòa SANYO', '1000000', 'SANYO', '/resources/images/may-lanh-sanyo.jpg', '2021-05-09 10:49:48', b'1', 2),
(22, 'Test SP ne', 'aaaaaaaaaaaaaaaaaaaaaaa Test SP ne', '8000000', NULL, '/resources/images/im.png', NULL, b'1', 2),
(23, 'Bộ Nồi', 'Inox', '12000000', 'Sunhouse', '/resources/images/bo-noi-inox-sunhouse-shg2303mra_001.jpg', '2021-05-09 10:49:48', b'1', 1),
(24, 'Ấm Chén Trà', 'Ấm Chén Sứ', '1000000', 'null', '/resources/images/am-chen-bat-trang-018.jpg', '2021-05-09 10:49:48', b'1', 1),
(25, 'Móc Treo Quần Áo', 'Bộ Móc', '12000000', 'null', '/resources/images/2-jpg-015dbc27-af00-4970-bd62-6ba8cc05794a.jpg', '2021-05-09 10:49:48', b'1', 1),
(26, 'Sào Phơi Đồ', 'Sào Phơi', '1000000', 'null', '/resources/images/cay-phoi-quan-ao-bang-sat-loai-don-tron.jpg', '2021-05-09 10:49:48', b'1', 1),
(27, 'Bộ Bàn Ghế', 'Gỗ Ghép', '12000000', '', '/resources/images/ban-ghe-an-dep-181.jpg', '2021-05-09 10:49:48', b'1', 1),
(28, 'Tủ Quần Áo', 'Tủ Gỗ', '1000000', '', '/resources/images/tu-quan-ao-11-copy.jpg', '2021-05-09 10:49:48', b'1', 1),
(29, 'Cây Lau Nhà', 'Tự Xoay 360', '120000', '', '/resources/images/caylaunha360danangthongminh.jpg', '2021-05-09 10:49:48', b'1', 1),
(30, 'Thảm Lau Chân', '100% cotton', '1000000', '', '/resources/images/97079999-1565139713645484-4761050554187120640-n.jpg', '2021-05-09 10:49:48', b'1', 1),
(55, 'Áo sơ mi nam tay ngắn', 'vải cotton thoáng mát', '135000', NULL, '/resources/images/mausac_blue_10s21shs022__1__b9aa0bd4e95d43448618597624c96e23_1024x1024.jpg', '2021-05-09 11:39:55', b'1', 3),
(56, 'Áo sơ mi nam tay ngắn', 'Áo sơ mi nam tay ngắn , có thêu.', '225000', NULL, '/resources/images/mausac_tiger_10f20shs006__1__512d1ed162b34682b1e1c2335f339d5f_1024x1024.jpg', '2021-05-09 11:39:55', b'1', 3),
(57, 'Áo Thun nữ Cam ', 'Áo Thun nữ Cam ', '100000', NULL, '/resources/images/2906202130622_1_thumb.jpg', '2021-05-09 11:39:55', b'1', 3),
(58, 'Áo Thun nữ đẹp trơn', 'Áo Thun nữ', '100000', NULL, '/resources/images/2921202132134_1_thumb.jpg', '2021-05-09 11:39:55', b'1', 3),
(59, 'Áo Khoác Nam Đen', 'Áo Khoác Nam Đen', '225000', NULL, '/resources/images/16042021110431_1.jpg', '2021-05-09 11:39:55', b'1', 3),
(60, 'Nón Lưỡi Trai', 'Nón Lưỡi Trai', '125000', NULL, '/resources/images/12042021030439_IMG_6929.jpg', '2021-05-09 11:39:55', b'1', 3),
(61, 'Dây Nịt Nam', 'Dây Nịt Nam', '235000', NULL, '/resources/images/03042021090404_IMG_6549.jpg', '2021-05-09 11:39:55', b'1', 3),
(62, 'Túi Đeo Chéo', 'Túi Đeo Chéo', '500000', NULL, '/resources/images/1216202131616_IMG_9779.jpg', '2021-05-09 11:39:55', b'1', 3),
(63, 'Thịt Bò KOBE', 'Thịt Bò KOBE 1kg', '1000000', NULL, '/resources/images/thit-bo-kobe.jpg', '2021-05-09 12:05:27', b'1', 4),
(64, 'Rau Cải Muối Hũ', 'Rau Cải Muối Hũ', '30000', NULL, '/resources/images/41661057-251550975502482-915854505461940224-n-large.jpg', '2021-05-09 12:05:27', b'1', 4),
(65, 'Mực 1 nắng', 'loại 1 ', '1200000', NULL, '/resources/images/85057-muc-mot-nang-nha-trang-1kg.jpg', '2021-05-09 12:05:27', b'1', 4),
(66, 'Cà Chua', 'Cà Chua Đà Lạt', '12000', NULL, '/resources/images/3084.jpg_wh860.jpg', '2021-05-09 12:05:27', b'1', 4),
(67, 'Thịt Heo 3 Ngon', 'Thịt Heo 3 Ngon', '150000', NULL, '/resources/images/thit-heo-shutterstock_mkbo.jpg', '2021-05-09 12:05:27', b'1', 4),
(68, 'Xúc Xích Tuyệt Trùng', 'Xúc Xích Tuyệt Trùng', '20000', NULL, '/resources/images/xuc_xich_vi_sinh_mr_pig.jpg', '2021-05-09 12:05:27', b'1', 4),
(69, 'Cá Hộp 3 cô gái', 'Cá Hộp 3 cô gái', '27000', NULL, '/resources/images/f19429872b739039f86dba049aa9471c.jpg', '2021-05-09 12:05:27', b'1', 4),
(70, 'Thịt Hộp ', 'Thịt Hộp ', '32000', NULL, '/resources/images/img_3288-700x700_0.jpg', '2021-05-09 12:05:27', b'1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sale_order`
--

CREATE TABLE `sale_order` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sale_order`
--

INSERT INTO `sale_order` (`id`, `amount`, `created_date`, `user_id`) VALUES
(11, '84000000', '2020-02-07 00:00:00', 8),
(16, '36000000', '2021-05-09 00:00:00', NULL),
(17, '105000000', '2021-05-09 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` bit(1) DEFAULT b'1',
  `user_role` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `phone`, `username`, `password`, `active`, `user_role`) VALUES
(8, 'Doremon', 'Mr', 'mon@gmail.com', '1111111111', 'doremon', '$2a$10$qv8SsUwRnp/YhPWTPqdgp.MXJ01hcW4ji6wKvP6.qkWWx1ZxhqxyG', b'1', 'ROLE_USER'),
(9, 'Le Minh', 'Quang', 'leminhquangit@gmail.com', '0339474333', 'leminhquangit@gmail.com', '$2a$10$b4rb6VVRhnLnDexgQBRiH.BrXG/Yy0Htc20nuZwE0rOXs0mtxwSli', b'0', 'ROLE_ADMIN'),
(10, 'Le Minh', 'Quang', 'leminhquangit', '0339474333', 'sikaqwe01', '$2a$10$639XNKg7ZCVU6Ijh9cPFGuVoF/LTCPg/I934aTED0ZTJsOfh.eouK', b'0', 'ROLE_USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ORDERDETAIL_ORDER_idx` (`order_id`),
  ADD KEY `FK_ORDERDETAIL_PRODUCT_idx` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUCE_CATEGORY_idx` (`category_id`);

--
-- Indexes for table `sale_order`
--
ALTER TABLE `sale_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ORDER_USER_idx` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `sale_order`
--
ALTER TABLE `sale_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FK_ORDERDETAIL_ORDER` FOREIGN KEY (`order_id`) REFERENCES `sale_order` (`id`),
  ADD CONSTRAINT `FK_ORDERDETAIL_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_PRODUCE_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `sale_order`
--
ALTER TABLE `sale_order`
  ADD CONSTRAINT `FK_ORDER_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
