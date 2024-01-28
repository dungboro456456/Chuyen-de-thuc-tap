-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 09:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `levansang_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_brand`
--

CREATE TABLE `2121110243_brand` (
  `id` int(11) NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) NOT NULL COMMENT 'SLug Loại SP',
  `sort_order` int(11) NOT NULL COMMENT 'Thứ tự',
  `image` varchar(255) DEFAULT '' COMMENT 'Hình đại diện',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_brand`
--

INSERT INTO `2121110243_brand` (`id`, `name`, `slug`, `sort_order`, `image`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Việt Nam', 'viet-nam', 0, 'vn.png', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2022-11-19 07:54:25', 1, 1),
(2, 'Hàn Quốc', 'han-quoc', 0, 'hq.jpg', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2022-11-19 07:54:31', 1, 1),
(3, 'Thái Lan', 'thai-lan', 0, 'tl.png', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2022-11-19 07:54:36', 1, 1),
(4, 'Nhật Bản', 'nhat-ban', 0, 'nb.png', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2022-11-19 07:54:44', 1, 1),
(5, 'Quảng Châu', 'quang-chau', 0, 'tq.png', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2022-11-19 11:33:57', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_category`
--

CREATE TABLE `2121110243_category` (
  `id` int(11) NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) NOT NULL COMMENT 'SLug Loại SP',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Mã cấp cha',
  `sort_order` int(11) NOT NULL COMMENT 'Thứ tự',
  `level` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL COMMENT 'Hình đại diện',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người tạo',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_category`
--

INSERT INTO `2121110243_category` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `level`, `image`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Man', 'Man', 0, 0, 1, NULL, 'Đồ nam', 'Đồ nam', '2022-11-22 18:17:31', 1, '2024-01-26 14:59:07', 1, 1),
(2, 'Women', 'Women', 0, 0, 1, NULL, 'Đồ nữ', 'Đồ nữ', '2022-11-22 18:18:00', 1, '2022-11-22 18:18:00', 0, 1),
(3, 'Clothing', 'Clothing ', 1, 0, 1, NULL, 'sangdeptrai', 'sangdeptrai', '2022-11-22 18:18:53', 1, '2022-11-22 18:18:53', 0, 1),
(4, 'Accessories', 'Accessories', 1, 0, 1, NULL, 'sangdeptrai', 'sangdeptrai', '2022-11-22 18:19:32', 1, '2022-11-22 18:19:32', 0, 1),
(5, 'Shoes', 'Shoes', 1, 0, 1, NULL, 'sangdeptrai', 'sangdeptrai', '2022-11-22 18:19:57', 1, '2024-01-26 14:59:38', 1, 1),
(6, 'Clothing', 'Clothing', 2, 0, 1, NULL, 'sangdeptrai', 'sangdeptrai', '2022-11-22 18:21:27', 1, '2024-01-26 14:59:38', 1, 1),
(7, 'Accessories', 'Accessories', 2, 0, 1, NULL, 'sangdeptrai', 'sangdeptrai', '2022-11-22 18:21:43', 1, '2024-01-26 14:59:39', 1, 1),
(8, 'Shoes', 'Shoes', 2, 0, 1, NULL, 'sangdeptrai', 'sangdeptrai', '2024-01-08 20:38:15', 1, '2024-01-26 14:59:39', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_config`
--

CREATE TABLE `2121110243_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(155) DEFAULT NULL,
  `facebook` varchar(155) DEFAULT NULL,
  `twitter` varchar(155) DEFAULT NULL,
  `youtube` varchar(155) DEFAULT NULL,
  `googleplus` varchar(155) DEFAULT NULL,
  `status` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_config`
--

INSERT INTO `2121110243_config` (`id`, `site_name`, `metakey`, `metadesc`, `author`, `phone`, `email`, `facebook`, `twitter`, `youtube`, `googleplus`, `status`) VALUES
(1, 'Cửa hàng thời trang adidas', 'Cửa hàng thời trang adidas', 'Cửa hàng thời trang adidas', 'Lê Văn Sáng', '0345313382', 'sangdeptrai1302@gmail.com\r\n', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_contact`
--

CREATE TABLE `2121110243_contact` (
  `id` int(11) NOT NULL COMMENT 'Mã liên hệ',
  `name` varchar(255) NOT NULL COMMENT 'Họ và tên',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `phone` varchar(100) NOT NULL COMMENT 'Điện thoại',
  `title` varchar(255) NOT NULL COMMENT 'Tiêu đề',
  `detail` mediumtext NOT NULL COMMENT 'Chi tiết',
  `replaydetail` text DEFAULT NULL COMMENT 'Nội dung liên hệ',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày liên hệ',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày trả lời',
  `updated_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người trả lời',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Tráng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_contact`
--

INSERT INTO `2121110243_contact` (`id`, `name`, `email`, `phone`, `title`, `detail`, `replaydetail`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Nguyễn Văn Toàn', 'nguyenvantoan@gmail.com', '0987654321', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', 'xzXZZ', '2020-06-30 22:31:49', '2023-06-30 08:08:25', 1, 1),
(2, 'Lê Thái Sơn', 'lethaison@gmail.com', '0987667986', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', 'sản phẩm quá chi là đẹp luôn', '2020-06-30 22:31:49', '2020-06-30 22:31:49', 1, 1),
(3, 'Trần Ngọc Ái', 'tranngocai@gmail.com', '0987654379', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', 'sản phẩm này đẹp quá giao gấp cho tôi vào ngày hôm nay nha shop ơi', '2020-06-30 22:31:49', '2020-06-30 22:31:49', 1, 1),
(4, 'Mai Tiến Sơn', 'maitienson@gmail.com', '0987654367', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', 'sáng đẹp trai 123', '2020-06-30 22:31:49', '2023-06-15 14:34:48', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_menu`
--

CREATE TABLE `2121110243_menu` (
  `id` int(11) NOT NULL COMMENT 'Mã Menu',
  `name` varchar(255) NOT NULL COMMENT 'Tên Menu',
  `link` varchar(255) NOT NULL COMMENT 'Liên kết',
  `type` varchar(50) NOT NULL COMMENT 'Kiểu Menu',
  `table_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Mã trong bảng',
  `sort_order` int(11) NOT NULL DEFAULT 0 COMMENT 'Thứ tự',
  `position` varchar(255) NOT NULL COMMENT 'Vị trí',
  `level` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL COMMENT 'Mã cấp cha',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày Tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_menu`
--

INSERT INTO `2121110243_menu` (`id`, `name`, `link`, `type`, `table_id`, `sort_order`, `position`, `level`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trang chủ', 'index.php', 'custom', 0, 1, 'mainmenu', 1, 0, '2022-11-22 12:36:05', 1, '2024-01-26 08:00:16', 1, 2),
(2, 'sản phẩm', 'index.php?option=product&id=products', 'page', 39, 2, 'mainmenu', 1, 0, '2022-11-22 13:13:46', 1, '2022-11-22 13:18:22', 1, 1),
(8, 'Accessories', 'index.php?option=product&cat=Accessories', 'category', 8, 4, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1),
(9, 'Clothing', 'index.php?option=product&cat=Clothing', 'category', 7, 3, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1),
(10, 'Shoes', 'index.php?option=product&cat=Shoes', 'category', 6, 13, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:04', 1, 1),
(11, 'Accessories', 'index.php?option=product&cat=Accessories', 'category', 5, 12, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:04', 1, 1),
(12, 'Clothing', 'index.php?option=product&cat=Clothing', 'category', 4, 11, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:04', 1, 1),
(14, 'Women', 'san-pham/Accessories', 'category', 2, 4, 'mainmenu', 1, 0, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:41', 1, 1),
(15, 'Man', 'san-pham/Man', 'category', 1, 3, 'mainmenu', 1, 0, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:41', 1, 1),
(16, 'Giới thiệu', 'index.php?option=page&cat=gioi-thieu', 'page', 39, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2023-06-30 08:11:37', 1, 1),
(17, 'Chính Sách Hoàn Tiền', 'index.php?option=page&cat=chinh-sach-hoan-tien', 'page', 38, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2023-06-15 13:15:46', 1, 1),
(18, 'Chính sách bảo hành', 'index.php?option=page&cat=chinh-sach-bao-hanh', 'page', 37, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2022-11-22 13:55:40', 1, 1),
(19, 'Chính sách đổi hàng', 'index.php?option=page&cat=chinh-sach-doi-hang', 'page', 36, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2022-11-22 13:55:39', 1, 1),
(20, 'tin tức\r\n', 'index.php?option=post&cat=tin-tuc', 'custom', 0, 1, 'mainmenu', 1, 0, '2022-11-22 12:36:05', 1, '2022-11-22 12:36:09', 1, 1),
(21, 'giới thiệu\r\n', 'index.php?option=page&cat=gioi-thieu', 'custom', 0, 1, 'mainmenu', 1, 0, '2022-11-22 12:36:05', 1, '2022-11-22 12:36:09', 1, 1),
(22, 'bài viết', 'index.php?option=post', 'custom', 0, 1, 'mainmenu', 1, 0, '2022-11-22 12:36:05', 1, '2022-11-22 12:36:09', 1, 1),
(23, 'Quần short nữ', 'index.php?option=product&cat=quan-short-nu', 'category', 10, 1, 'footermenu', 0, 0, '2023-05-28 18:32:38', 1, '2023-05-28 18:32:38', 1, 2),
(25, 'Áo kiểu', 'index.php?option=product&cat=ao-kieu', 'category', 9, 1, 'footermenu', 0, 0, '2023-05-29 04:23:37', 1, '2024-01-26 08:00:25', 1, 0),
(29, 'Balo', 'index.php?option=category&cat=balo', 'category', 11, 1, 'footermenu', 0, 0, '2023-06-30 08:10:01', 1, '2024-01-26 08:00:25', 1, 0),
(31, 'Shoes', 'index.php?option=product&cat=Shoes\n', 'category', 8, 4, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_order`
--

CREATE TABLE `2121110243_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `code` varchar(20) NOT NULL COMMENT 'Code đơn hàng',
  `user_id` int(11) NOT NULL COMMENT 'Mã khách hàng',
  `exportdate` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày xuất',
  `deliveryaddress` varchar(255) NOT NULL COMMENT 'Địa chỉ người nhận',
  `deliveryname` varchar(100) NOT NULL COMMENT 'Tên người nhận',
  `deliveryphone` varchar(120) NOT NULL COMMENT 'Điện thoại người nhận',
  `deliveryemail` varchar(120) NOT NULL COMMENT 'Email ngươig nhận',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Ngày cập nhật',
  `updated_by` tinyint(3) UNSIGNED DEFAULT NULL COMMENT 'Người cập nhật',
  `status` tinyint(3) UNSIGNED NOT NULL COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_order`
--

INSERT INTO `2121110243_order` (`id`, `code`, `user_id`, `exportdate`, `deliveryaddress`, `deliveryname`, `deliveryphone`, `deliveryemail`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(12, '1684751817', 1, '2023-05-22 10:36:57', 'tân lập ', 'le van sang', '09876543', 'sangdeptrai1302@gmail.com', '2023-05-22 05:36:57', '2023-06-15 13:15:51', 1, 1),
(13, '1684771694', 1, '2023-05-22 16:08:15', 'tân lập ', 'le van sang', '09876543', 'sangdeptrai1302@gmail.com', '2023-05-22 11:08:14', '2023-06-15 13:30:59', 1, 1),
(14, '1704893179', 1, '2024-01-10 13:26:19', 'dak lak', 'sáng', '012345678', 'sangdeptrai1302@gmail.com', '2024-01-10 07:26:19', '2024-01-26 07:57:17', 1, 2),
(15, '1706180153', 1, '2024-01-25 10:55:54', 'thu duc', 'dung', '0866519547', 'dungboro456456@gmail.com', '2024-01-25 04:55:53', '2024-01-26 07:57:57', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_orderdetail`
--

CREATE TABLE `2121110243_orderdetail` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã CT Đơn hàng',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `price` float(12,2) NOT NULL COMMENT 'Giá sản phẩm',
  `qty` int(10) UNSIGNED NOT NULL COMMENT 'Số lượng',
  `amount` float(12,2) NOT NULL COMMENT 'Thành tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_orderdetail`
--

INSERT INTO `2121110243_orderdetail` (`id`, `order_id`, `product_id`, `price`, `qty`, `amount`) VALUES
(11, 12, 1, 30000.00, 1, 30000.00),
(12, 12, 6, 10000.00, 1, 10000.00),
(13, 13, 4, 10000.00, 1, 10000.00),
(14, 13, 1, 20000.00, 2, 40000.00),
(15, 13, 36, 10000.00, 1, 10000.00),
(16, 14, 34, 10000.00, 5, 50000.00),
(17, 15, 33, 10000.00, 1, 10000.00),
(18, 15, 34, 10000.00, 3, 30000.00),
(19, 15, 31, 10000.00, 1, 10000.00),
(20, 15, 17, 10000.00, 1, 10000.00);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_post`
--

CREATE TABLE `2121110243_post` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã bài viết',
  `topic_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Mã chủ đề',
  `title` varchar(1000) NOT NULL COMMENT 'Tiêu đề bài viết',
  `slug` varchar(1000) NOT NULL COMMENT 'Slug tiêu đề',
  `detail` longtext NOT NULL COMMENT 'Chi tiết bài viết',
  `image` varchar(1000) NOT NULL COMMENT 'Hình ảnh',
  `type` varchar(10) NOT NULL DEFAULT 'post' COMMENT 'Kiểu bài viết',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_post`
--

INSERT INTO `2121110243_post` (`id`, `topic_id`, `title`, `slug`, `detail`, `image`, `type`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(33, 1, 'GRAND OPENING TOTODAY CẦN THƠ', 'grand-opening-totoday-can-tho', '<p>Ngo&agrave;i kh&ocirc;ng gian sang trọng v&agrave; trẻ trung với nhiều g&oacute;c xinh lung linh cho FRIENDs thoải m&aacute;i &ldquo;sống ảo&rdquo;, TOTODAY Cần Thơ c&ograve;n mang đến thật nhiều thiết kế s&agrave;nh điệu v&agrave; c&aacute; t&iacute;nh nh&acirc;n dịp khai trương n&agrave;y.&nbsp;</p>\r\n\r\n<p>Hơn nữa, dịp khai trương n&agrave;y c&ograve;n hứa hẹn sẽ &ldquo;đốn tim&rdquo; c&aacute;c t&iacute;n đồ thời trang tại Cần Thơ bằng những ưu đ&atilde;i b&ugrave;ng nổ chưa từng c&oacute;:</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 1: Opening</strong></p>\r\n\r\n<p><strong>Duy nhất từ 19h, ng&agrave;y 14/11/2022:</strong></p>\r\n\r\n<p>- Giảm 70% cho 10 FRIENDs đầu ti&ecirc;n đến cửa h&agrave;ng (&aacute;p dụng cho 1 sản phẩm).</p>\r\n\r\n<p>- Giảm 50% cho 15 FRIENDs đến cửa h&agrave;ng tiếp theo (&aacute;p dụng cho 1 sản phẩm).</p>\r\n\r\n<p>- Giảm 30% cho 20 FRIENDs đến cửa h&agrave;ng tiếp theo (&aacute;p dụng cho 1 sản phẩm).</p>\r\n\r\n<p>- Giảm 10% cho tất cả c&aacute;c FRIENDs c&ograve;n lại (&aacute;p dụng cho tất cả c&aacute;c sản phẩm).&nbsp;</p>\r\n\r\n<p><strong>Từ ng&agrave;y 15/11/2022 đến 16/11/2022:&nbsp;</strong>Giảm gi&aacute; 10% cho tất cả c&aacute;c sản phẩm.</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 2: V&ograve;ng quay may mắn</strong></p>\r\n\r\n<p>Khi FRIENDs thực hiện like page&nbsp;<strong>TOTODAY + Comment + tag 3 người bạn v&agrave;o b&agrave;i viết ch&iacute;nh của chương tr&igrave;nh,</strong>&nbsp;FRIENDs sẽ được tham gia minigame &ldquo;V&ograve;ng quay may mắn&rdquo; với nhiều phần qu&agrave; hấp dẫn như sau:</p>\r\n\r\n<p>- &Aacute;o thun c&aacute; t&iacute;nh trị gi&aacute; 245k.&nbsp;</p>\r\n\r\n<p>- T&uacute;i tote thời trang Freestyle.</p>\r\n\r\n<p>- Sổ tay TOTODAY.</p>\r\n\r\n<p>- Voucher trị gi&aacute; 100k (&aacute;p dụng h&oacute;a đơn 500k cho lần mua h&agrave;ng tiếp theo).</p>\r\n\r\n<p>- Voucher trị gi&aacute; 50k (&aacute;p dụng h&oacute;a đơn 300k cho lần mua h&agrave;ng tiếp theo).</p>\r\n\r\n<p>- Giảm th&ecirc;m 50k cho h&oacute;a đơn bất k&igrave; (kh&ocirc;ng điều kiện).&nbsp;</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 3: Tặng t&uacute;i tote &amp; m&oacute;c kh&oacute;a</strong></p>\r\n\r\n<p>- Khi mua sắm với h&oacute;a đơn từ 499.000đ, FRIENDs sẽ được tặng ngay 1 chiếc t&uacute;i tote thời trang Freestyle, thỏa sức mix&amp;match c&ugrave;ng nhiều phong c&aacute;ch (&aacute;p dụng sau chiết khấu).</p>\r\n\r\n<p>- Ngo&agrave;i ra, những chiếc m&oacute;c kh&oacute;a cực dễ thương đang chờ đợi chủ nh&acirc;n nữa đ&oacute; (&aacute;p dụng khi ph&aacute;t sinh h&oacute;a đơn trong thời gian diễn ra chương tr&igrave;nh).</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 4:</strong></p>\r\n\r\n<p>- Giảm ngay 100k cho 1 sản phẩm nguy&ecirc;n gi&aacute; khi FRIENDs cầm tờ rơi GRAND OPENING CẦN THƠ 2&nbsp;đến cửa h&agrave;ng trong suốt thời gian diễn ra chương tr&igrave;nh.&nbsp;</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 5: Voucher Lumos Cake &amp; Bread</strong></p>\r\n\r\n<p>- Giảm ngay 30% cho tất cả sản phẩm khi FRIENDs sử dụng voucher của tiệm b&aacute;nh Lumos Cake &amp; Bread trong suốt thời gian diễn ra chương tr&igrave;nh.</p>\r\n\r\n<p><em>Tất cả 5 chương tr&igrave;nh được&nbsp;&aacute;p dụng tại cửa h&agrave;ng 22 Nguy&ecirc;̃n Vi&ecirc;̣t H&ocirc;̀ng, Qu&acirc;̣n Ninh Ki&ecirc;̀u, TP. C&acirc;̀n Thơ&nbsp;từ ng&agrave;y 14/11/2022 đến hết 16/11/2022.&nbsp;</em></p>\r\n\r\n<p><strong>Điều kiện &aacute;p dụng:</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chiết khấu VIP.</p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng đồng thời với c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.&nbsp;</p>\r\n\r\n<p>- FRIENDs được t&iacute;ch lũy điểm dựa tr&ecirc;n doanh số thanh to&aacute;n cuối c&ugrave;ng.</p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng đổi trả đối với sản phẩm giảm gi&aacute;.</p>\r\n\r\n<p>-----------------------------</p>\r\n\r\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>\r\n', 'post5.png', 'post', 'GRAND OPENING TOTODAY CẦN THƠ', 'GRAND OPENING TOTODAY CẦN THƠ', '2022-11-22 12:50:14', 1, '2022-11-22 12:56:09', 1, 1),
(34, 1, 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', 'deal-shock-thang-11-chot-gon-quan-jean-den-sieu-hot-chi-voi-299k', '<p>Với m&ocirc;̃i hóa đơn từ 300k mua tại website hoặc fanpage của TOTODAY, FRIENDs có ngay 01 ưu đãi mua HOT ITEM jean đen mã M1QJN04201FSFTR chỉ với 299k đ&ecirc;́n h&ecirc;́t tháng 11 này.</p>\n\n<p><strong>Điều kiện &aacute;p dụng:</strong></p>\n\n<ul>\n	<li>Chương tr&igrave;nh diễn ra đến hết th&aacute;ng 11.</li>\n	<li>Chương tr&igrave;nh chỉ &aacute;p dụng tại 02 k&ecirc;nh mua sắm online l&agrave; Website v&agrave; Fanpage ch&iacute;nh của TOTODAY.</li>\n	<li>FRIENDs được t&iacute;ch lũy điểm dựa tr&ecirc;n doanh số thanh to&aacute;n cuối c&ugrave;ng.</li>\n</ul>\n', 'post2.jpg', 'post', 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', '2022-11-22 13:01:25', 1, '2022-11-22 13:01:25', 1, 1),
(35, 1, 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', 'khai-tiec-sinh-nhat-bat-tung-bat-ngo', '<p><strong>RINH QU&Agrave; BOM TẤN TRỊ GI&Aacute; 500K</strong></p>\n\n<p>Với mỗi h&oacute;a đơn 999k, kh&aacute;ch h&agrave;ng sẽ nhận ngay 1 combo qu&agrave; trị gi&aacute; 500k bao gồm:</p>\n\n<p>-&nbsp;T&uacute;i tote thời trang Freestyle.</p>\n\n<p>- Chiếc n&oacute;n thời trang c&aacute; t&iacute;nh.</p>\n\n<p>- Sổ tay thanh lịch cho c&aacute;c bạn trẻ .</p>\n\n<p>- B&uacute;t bi thương hiệu Totoday.</p>\n\n<p>- Phụ kiện m&oacute;c kh&oacute;a trẻ trung.&nbsp;</p>\n\n<p>- Đặc biệt l&agrave; voucher trị gi&aacute; 100k (&aacute;p dụng cho h&oacute;a đơn 500k, từ ng&agrave;y 20/10 đến 31/12).</p>\n\n<p><em>Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng Totoday v&agrave; online kể từ ng&agrave;y 08/10/2022 đến 16/10/2022.&nbsp;</em></p>\n\n<p><em><strong>Điều kiện &aacute;p dụng:</strong></em></p>\n\n<p><em>- Kh&ocirc;ng &aacute;p dụng cấp số nh&acirc;n.</em></p>\n\n<p><em>- Qu&agrave; tặng kh&ocirc;ng c&oacute; gi&aacute; trị quy đổi th&agrave;nh tiền mặt.</em></p>\n\n<p><em>- C&aacute;c sản phẩm tặng kh&ocirc;ng &aacute;p dụng ch&iacute;nh s&aacute;ch đổi trả.</em></p>\n\n<p><em>- Kh&ocirc;ng &aacute;p dụng chung với c&aacute;c voucher giảm gi&aacute; v&agrave; CTKM kh&aacute;c.</em></p>\n\n<p><em>- &Aacute;p dụng chung với chiết khấu VIP, t&iacute;nh tr&ecirc;n gi&aacute; trị h&oacute;a đơn thanh to&aacute;n cuối c&ugrave;ng sau chiết khấu.</em></p>\n\n<p><strong>THỬ TH&Aacute;CH MINIGAME &ldquo;THỔI NẾN KH&Ocirc;NG TẮT&rdquo;</strong></p>\n\n<p>Với mỗi h&oacute;a đơn mua h&agrave;ng, kh&aacute;ch h&agrave;ng sẽ được tham gia minigame &ldquo;Thổi nến nhận qu&agrave;&rdquo; c&ugrave;ng Totoday c&oacute; thể lệ như sau:</p>\n\n<p>- Mỗi kh&aacute;ch h&agrave;ng sẽ được tham gia thổi 3 lần/ lần chơi, kh&aacute;ch h&agrave;ng thổi tắt nến tr&ecirc;n b&aacute;nh kem sẽ được nhận&nbsp;<strong>1 voucher trị gi&aacute; 50k</strong>&nbsp;(kh&ocirc;ng &aacute;p dụng với phụ kiện, từ ng&agrave;y 20/10 đến 31/12).</p>\n\n<p>- Quy định khoảng c&aacute;ch: Kh&aacute;ch h&agrave;ng đứng tại vạch, c&aacute;ch b&aacute;nh kem 60cm (1 &ocirc; gạch).</p>\n\n<p><em>Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng Totoday từ ng&agrave;y 08/10/2022 đến 16/10/2022.&nbsp;</em></p>\n\n<p>Đến Totoday rinh qu&agrave; khủng v&agrave; dự tiệc sinh nhật c&ugrave;ng ch&uacute;ng m&igrave;nh FRIENDs nh&eacute;!</p>\n\n<p>-----------------------------</p>\n', 'post1.jpg', 'post', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', '2022-11-22 13:03:06', 1, '2023-06-15 13:15:58', 1, 1),
(36, NULL, 'Chính sách đổi hàng', 'chinh-sach-doi-hang', '<h1>1. Điều kiện đổi trả\n<h1>\n<p>Quý Khách hàng cần kiểm tra tình trạng hàng hóa và có thể đổi hàng/ trả lại hàng ngay tại thời điểm giao/nhận hàng trong những trường hợp sau:</p>\n\nHàng không đúng chủng loại, mẫu mã trong đơn hàng đã đặt hoặc như trên website tại thời điểm đặt hàng.\nKhông đủ số lượng, không đủ bộ như trong đơn hàng.\nTình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể vỡ…\nKhách hàng có trách nhiệm trình giấy tờ liên quan chứng minh sự thiếu sót trên để hoàn thành việc hoàn trả/đổi trả hàng hóa.\n\n2. Quy định về thời gian thông báo và gửi sản phẩm đổi trả\n\nThời gian thông báo đổi trả: trong vòng 48h kể từ khi nhận sản phẩm đối với trường hợp sản phẩm thiếu phụ kiện, quà tặng hoặc bể vỡ.\nThời gian gửi chuyển trả sản phẩm: trong vòng 14 ngày kể từ khi nhận sản phẩm.\nĐịa điểm đổi trả sản phẩm: Khách hàng có thể mang hàng trực tiếp đến văn phòng/ cửa hàng của chúng tôi hoặc chuyển qua đường bưu điện.\nTrong trường hợp Quý Khách hàng có ý kiến đóng góp/khiếu nại liên quan đến chất lượng sản phẩm, Quý Khách hàng vui lòng liên hệ đường dây chăm sóc khách hàng của chúng tôi', 'post2.jpg', 'page', 'Chính sách đổi hàng', 'Chính sách đổi hàng', '2022-11-22 13:07:28', 1, '2022-11-22 13:07:28', 1, 1),
(37, NULL, 'Chính sách bảo hành', 'chinh-sach-bao-hanh', '<h1>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</h1>\n', 'post3.jpg', 'page', 'Chính sách bảo hành', 'Chính sách bảo hành', '2022-11-22 13:08:13', 1, '2022-11-22 13:08:13', 1, 1),
(38, NULL, 'Chính Sách Hoàn Tiền', 'chinh-sach-hoan-tien', 'Chính sách hoàn tiền\n\nChúng tôi sẽ thực hiện việc đổi/trả hàng và hoàn tiền cho khách hàng trong những trường hợp sau:\n\n1.      Sản phẩm Chúng tôi giao không đúng đơn đặt hàng (tên sản phẩm, kích thước, mẫu mã, màu sắc) \n\n2.    Sản phẩm Chúng tôi giao bị lỗi hoặc đã qua sử dụng\n\nTrường hợp sản phẩm hư hại do quá trình vận chuyển hoặc do nhà sản xuất thì quý khách có thể từ chối nhận và yêu cầu bộ phận giao hàng liên hệ trực tiếp với chúng tôi. \n\nVới những sản phẩm bảo hành đã qua sử dụng, khi mã sản phẩm, nhãn sản phẩm hãng không còn sản xuất hoặc do lý do bất khả kháng, chúng tôi sẽ khấu hao thời gian sử dụng theo cam kết của từng nhãn hàng tới đại lý và khách hàng mua hàng trực tiếp.\n\n3.    Điều kiện đổi trả hàng (chỉ áp dụng khi mua hàng online)\n\nThời gian: Trong vòng 07 ngày kể từ khi nhận được hàng.\n\nĐiều kiện về sản phẩm:\n\n- Hàng hóa còn đầy đủ: Sản phẩm nguyên hộp không rách nát, kèm theo các sản phẩm tặng (nếu có), chưa bóc tem, nhãn mác, hóa đơn.\n\n- Hàng hóa tuyệt đối không có dấu hiệu đã qua sử dụng.\n\n4.    Chi phí chuyển đổi, hoàn trả sản phẩm\n\n- Trong trường hợp lỗi từ phía Chúng tôi: Chúng tôi sẽ chịu hoàn toàn chi phí vận chuyển đổi trả.\n\n- Trong trường hợp do nhu cầu cá nhân, khách hàng muốn đổi sản phẩm khác: Khách hàng chịu hoàn toàn chi phí trả hàng và giao sản phẩm mới. \n\n5.    Điều kiện hoàn tiền\n\nChúng tôi sẽ hoàn tiền cho khách hàng trong 3 trường hợp:\n\n- Hoàn tiền khi đặt hàng thành công nhưng chưa nhận sản phẩm\n\nTrường hợp này xảy ra khi Chúng tôi hết sản phẩm khách muốn đặt nhưng chưa cập nhật kịp thời trên website hoặc khách hàng đặt nhầm.\n\n- Hoàn tiền khi khách hàng nhận được sản phẩm nhưng sản phẩm lỗi từ phía Chúng tôi.\n\n- Hoàn tiền khi khách không muốn nhận sản phẩm do nhu cầu cá nhân thay đổi. Chúng tôi sẽ trừ chi phí vận chuyển trực tiếp vào tiền chuyển hoàn của khách hàng. \n\n*** CHÚNG TÔI CHỈ HOÀN TIỀN CHO KHÁCH HÀNG KHI NHẬN ĐƯỢC HÀNG TRẢ LẠI ĐÁP ỨNG ĐỦ CÁC ĐIỀU KIỆN TRÊN.\n\n \n\nQUY TRÌNH CHUYỂN HOÀN HÀNG HÓA\n\nGọi điện về số Hotline 0772226146 thông báo yêu cầu chuyển hoàn hàng hóa.\nĐóng gói hàng hóa (sản phẩm còn nguyên vẹn (chưa xé tem mác) + hóa đơn + quà tặng (nếu có))\nChuyển về trực tiếp địa chỉ cửa hàng đã đặt mua online: Trên bưu kiện ghi rõ Họ tên, địa chỉ, SĐT khách hàng và nội dung *YÊU CẦU TRẢ HÀNG', 'post4.jpg', 'page', 'Chính Sách Hoàn Tiền', 'Chính Sách Hoàn Tiền', '2022-11-22 13:11:30', 1, '2022-11-22 13:11:30', 1, 1),
(39, NULL, 'Giới thiệu', 'gioi-thieu', '<p>Shop Thời Trang Dịu Hiền với phương ch&acirc;m l&agrave; &ldquo; Sẽ lu&ocirc;n lu&ocirc;n l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng với phong c&aacute;ch thời trang của bạn&rdquo;. Dịu hiền sẽ l&agrave; một trong những shop đồ thời trang uy t&iacute;n v&agrave; chất lượng nhất tại Tp.HCM ch&uacute;ng t&ocirc;i lu&ocirc;n mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm mới nhất v&agrave; chất lượng, gi&aacute; th&agrave;nh hợp l&yacute; nhất tại cửa h&agrave;ng Thời Trang Dịu Hiền dưới đ&acirc;y l&agrave; đối n&eacute;t giới thiệu cơ bản về Shop Thời Trang Nữ Cao Cấp Dịu Hiền.</p>\n\n<p>Blog giới thiệu thời trang</p>\n\n<p>C&aacute;ch M&agrave; Thời Trang Dịu Hiền Tạo Dựng Thương Hiệu?</p>\n\n<p>Nhằm đ&aacute;p ứng được nhu cầu của người ti&ecirc;u d&ugrave;ng n&ecirc;n c&oacute; rất nhiều shop thời trang h&agrave;ng loạt được ra đời nhưng trong một khoảng thời gian ngắn rồi họ cũng lặng lẽ đ&oacute;ng cửa. Chắc c&oacute; lẽ bạn cũng rất ngạc nhi&ecirc;n khi ai đ&oacute; n&oacute;i với bạn rằng chắc c&oacute; một cửa h&agrave;ng nhỏ lẻ, kh&ocirc;ng thương hiệu m&agrave; lại tồn tại nhiều năm nay. Nhờ r&uacute;t kinh nghiệm từ những shop cửa h&agrave;ng nhỏ lẻ kh&aacute;c. Ch&iacute;nh v&igrave; vậy m&agrave; Dịu Hiền một trong những cửa h&agrave;ng shop thời trang nhỏ nhắn xinh xắn nằm tr&ecirc;n tuyến đường Nguyễn Văn Lượng&nbsp; ( Quận G&ograve; Vấp, TP. Hồ Ch&iacute; Minh ) nhờ được sự tin tưởng của kh&aacute;ch h&agrave;ng với hơn 800.000 lượt theo d&otilde;i n&ecirc;n Shop Thời Trang Nữ Cao Cấp Dịu Hiền đ&atilde; đi được hơn 10 năm chặng đường kinh doanh trong lĩnh vực thời trang đ&atilde; trở th&agrave;nh một trong những địa điểm b&aacute;n thời trang uy t&iacute;n nhất cho kh&aacute;ch h&agrave;ng lựa chọn.</p>\n\n<p>Dưới đ&acirc;y l&agrave; một v&agrave;i ti&ecirc;u ch&iacute; đ&atilde; tạo n&ecirc;n thương hiệu của dịu hiền c&oacute; vị tr&iacute; tại thị trường Việt Nam cụ thể như sau :</p>\n\n<p>Khỏi nguồn từ niềm y&ecirc;u th&iacute;ch của bạn th&acirc;n</p>\n\n<p>Giới thiệu cơ bản về Thời Trang Dịu Hiền được ra đời dựa v&agrave;o t&igrave;nh y&ecirc;u m&atilde;nh liệt m&agrave; chị chủ đ&atilde; d&agrave;nh hết cả tuổi thanh xu&acirc;n để d&agrave;nh cho thời trang lu&ocirc;n mang đến cho kh&aacute;ch những sản phẩm chất lượng tốt nhất đến cho bạn.</p>\n\n<p>Mặc d&ugrave; shop dịu hiền kh&ocirc;ng phải l&agrave; một cửa h&agrave;ng rất lớn nhưng ngay từ l&uacute;c ban đầu, Chị hiền đ&atilde; x&aacute;c định mục ti&ecirc;u của m&igrave;nh l&agrave;m g&igrave; v&agrave; những kh&aacute;ch h&agrave;ng m&agrave; shop hướng tới l&agrave; đối tượng n&agrave;o. Tuy nhi&ecirc;n b&ecirc;n cạnh đ&oacute; shop cũng đồng thời t&igrave;m ra những n&eacute;t ri&ecirc;ng cho shop m&agrave; cứ thế m&agrave; Shop Thời Trang C&ocirc;ng Sở Dịu Hiền c&oacute; được chỗ vững chắc tr&ecirc;n thị trường Việt Nam hiện nay.</p>\n\n<p>Shop dịu hiền nhờ chọn được vị địa l&yacute; thuận lợi c&oacute; rất nhiều d&acirc;n văn ph&ograve;ng n&ecirc;n Dịu Hiền Shop hướng tới những kh&aacute;ch h&agrave;ng trẻ tuổi đặc biệt l&agrave; những kh&aacute;ch h&agrave;ng c&oacute; thu nhập tầm trung chủ yếu l&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng&hellip;</p>\n\n<p>&nbsp;</p>\n\n<p>Giới thiệu shop dịu hiền thời trang</p>\n\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; tất cả c&aacute;c sản phẩm đa dạng v&agrave; mẫu m&atilde; chủ yếu tập trung phần nhiều v&agrave;o &Aacute;o sơ mi, Ch&acirc;n v&aacute;y, Đầm, Quần, Vest, T-shirt&hellip;nhờ thiết kế đa dạng v&agrave; phong ph&uacute; n&ecirc;n tất cả c&aacute;c d&ograve;ng sản phẩm tại shop c&oacute; thể sử dụng đi l&agrave;m, đi chơi, du lịch, d&atilde; ngoại hay thậm tr&iacute; trong những buổi tiệc sang trọng.</p>\n\n<p>Giới thiệu một v&agrave;i n&eacute;t ri&ecirc;ng tạo ấn tượng trong mắt kh&aacute;ch h&agrave;ng</p>\n\n<p>Đối với c&aacute;c shop thời trang hiện nay th&igrave; b&agrave;i to&aacute;n về lợi nhuận l&agrave; một b&agrave;i to&aacute;n kh&oacute; đối với những shop thời trang nhỏ lẻ như Cửa H&agrave;ng Thời Trang Dịu Hiền. Để giải quyết được b&agrave;i to&aacute;n lợi nhuận m&agrave; ph&acirc;n kh&uacute;c gi&aacute; của c&aacute;c sản phẩm phải vẫn nằm ở tầm trung. Dịu hiền đ&atilde; tối ưu h&oacute;a nhất từ kh&acirc;u nhập h&agrave;ng cũng như sau những nghi&ecirc;n cứu của Dịu Hiền Shop những nhu cầu của kh&aacute;ch h&agrave;ng v&agrave; xu hướng thời trang hot trong thời gian một c&aacute;ch kỹ lưỡng để shop c&oacute; thể chọn được những mẩu đẹp v&agrave; chất lượng tốt nhất.</p>\n\n<p>&nbsp;</p>\n\n<p>Nhận thấy được nhu cầu của kh&aacute;ch h&agrave;ng ng&agrave;y c&agrave;ng cao cấp với những sản phẩm&nbsp; độc lạ, ấn tượng v&agrave; điểm nhấn mạnh đ&aacute;ng ch&uacute; &yacute; nhất l&agrave; &ldquo;kh&ocirc;ng đụng h&agrave;ng&rdquo; n&ecirc;n ngo&agrave;i những sản phẩm nhập th&igrave; Thời Trang Dịu Hiền cũng c&oacute; thiết kế với nhiều mẫu m&atilde; mới hot trend để đ&aacute;p ứng được nhu cầu của kh&aacute;ch h&agrave;ng. N&ecirc;n từ đ&oacute; Dịu Hiền Shop v&agrave; c&acirc;u chuyện thương hiệu n&oacute; cũng bắt nguồn từ đ&oacute; &ldquo; Bạn Muốn Mua Những Sản Phẩm Thời Trang Đẹp, Độc V&agrave; Kh&ocirc;ng Đụng H&agrave;ng, Chỉ C&oacute; Tại Shop Thời Trang Cao Cấp Dịu Hiền :)&rdquo;</p>\n\n<p>B&ecirc;n cạnh đ&oacute;, để đối mặt với t&iacute;nh khốc liệt của thị trường n&ecirc;n Shop dịu hiền sẽ giới thiệu cho bạn những chiếc lược marketing cũng như chiếc lược kinh doanh cũng mang những phong c&aacute;ch độc đ&aacute;o ri&ecirc;ng. Đối với những mặt h&agrave;ng trưng b&agrave;y tại cửa h&agrave;ng Thời Trang Dịu Hiền chỉ trưng b&agrave;y những sản phẩm c&oacute; số lượng kham hiến, nhờ hiểu được t&acirc;m l&yacute; của kh&aacute;ch h&agrave;ng n&ecirc;n đối với việc trưng b&agrave;y như vậy kh&aacute;ch h&agrave;ng sẽ suy nghĩ nếu kh&ocirc;ng mua th&igrave; sẽ hết h&agrave;ng!</p>\n\n<p>Ch&iacute;nh v&igrave; c&oacute; những chiến lược kinh doanh độc đ&aacute;o m&agrave; Thời Trang Dịu Hiền ng&agrave;y c&agrave;ng được nhiều kh&aacute;ch h&agrave;ng t&igrave;m đến với sớm với những ti&ecirc;u ch&iacute; &ldquo; Chất Lượng &ndash; Uy T&iacute;n &ndash; Sản Phẩm Độc Lạ &ldquo;</p>\n\n<p>&nbsp;</p>\n\n<p>Kh&ocirc;ng chỉ kinh doanh quần, &aacute;o, v&aacute;y, đầm&hellip;th&igrave; shop cũng c&oacute; b&agrave;y b&aacute;n phụ kiện trang sức k&egrave;m theo để cho bạn đẹp c&agrave;ng đẹp th&ecirc;m với những bộ trang sức k&egrave;m theo. Tuy nhi&ecirc;n đ&oacute; cũng chưa phải l&agrave; những g&igrave; tạo n&ecirc;n sự th&agrave;nh c&ocirc;ng như ng&agrave;y h&ocirc;m nay của Cửa H&agrave;ng Thời Trang Dịu Hiền.</p>\n\n<p>&nbsp;</p>\n\n<p>Giới thiệu shop dịu hiền thời trang</p>\n\n<p>Đặc biệt một trong những yếu tố th&agrave;nh c&ocirc;ng nhất của shop Thời Trang Quần &Aacute;o Nữ Cao Cấp Dịu Hiền đ&oacute; l&agrave; tạo dựng được một xưởng sản xuất thời trang c&ocirc;ng sở lớn nhất tại Tp.HCM.</p>\n\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; Thời Trang Dịu Hiền sẽ nơi lựa chọn ho&agrave;n hảo nhất d&agrave;nh cho phong c&aacute;ch thời trang bạn nh&eacute;!!!</p>\n\n<p>Mọi đ&oacute;ng g&oacute;p &yacute; kiến của qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo địa chỉ :</p>\n\n<p>Shop Thời Trang Dịu Hiền</p>\n', 'post1.jpg', 'page', '', '', '2022-11-22 13:13:30', 1, '2023-05-29 09:31:03', 1, 0),
(40, 1, 'GRAND OPENING TOTODAY CẦN THƠ', 'grand-opening-totoday-can-tho', '<p>Ngo&agrave;i kh&ocirc;ng gian sang trọng v&agrave; trẻ trung với nhiều g&oacute;c xinh lung linh cho FRIENDs thoải m&aacute;i &ldquo;sống ảo&rdquo;, TOTODAY Cần Thơ c&ograve;n mang đến thật nhiều thiết kế s&agrave;nh điệu v&agrave; c&aacute; t&iacute;nh nh&acirc;n dịp khai trương n&agrave;y.&nbsp;</p>\r\n\r\n<p>Hơn nữa, dịp khai trương n&agrave;y c&ograve;n hứa hẹn sẽ &ldquo;đốn tim&rdquo; c&aacute;c t&iacute;n đồ thời trang tại Cần Thơ bằng những ưu đ&atilde;i b&ugrave;ng nổ chưa từng c&oacute;:</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 1: Opening</strong></p>\r\n\r\n<p><strong>Duy nhất từ 19h, ng&agrave;y 14/11/2022:</strong></p>\r\n\r\n<p>- Giảm 70% cho 10 FRIENDs đầu ti&ecirc;n đến cửa h&agrave;ng (&aacute;p dụng cho 1 sản phẩm).</p>\r\n\r\n<p>- Giảm 50% cho 15 FRIENDs đến cửa h&agrave;ng tiếp theo (&aacute;p dụng cho 1 sản phẩm).</p>\r\n\r\n<p>- Giảm 30% cho 20 FRIENDs đến cửa h&agrave;ng tiếp theo (&aacute;p dụng cho 1 sản phẩm).</p>\r\n\r\n<p>- Giảm 10% cho tất cả c&aacute;c FRIENDs c&ograve;n lại (&aacute;p dụng cho tất cả c&aacute;c sản phẩm).&nbsp;</p>\r\n\r\n<p><strong>Từ ng&agrave;y 15/11/2022 đến 16/11/2022:&nbsp;</strong>Giảm gi&aacute; 10% cho tất cả c&aacute;c sản phẩm.</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 2: V&ograve;ng quay may mắn</strong></p>\r\n\r\n<p>Khi FRIENDs thực hiện like page&nbsp;<strong>TOTODAY + Comment + tag 3 người bạn v&agrave;o b&agrave;i viết ch&iacute;nh của chương tr&igrave;nh,</strong>&nbsp;FRIENDs sẽ được tham gia minigame &ldquo;V&ograve;ng quay may mắn&rdquo; với nhiều phần qu&agrave; hấp dẫn như sau:</p>\r\n\r\n<p>- &Aacute;o thun c&aacute; t&iacute;nh trị gi&aacute; 245k.&nbsp;</p>\r\n\r\n<p>- T&uacute;i tote thời trang Freestyle.</p>\r\n\r\n<p>- Sổ tay TOTODAY.</p>\r\n\r\n<p>- Voucher trị gi&aacute; 100k (&aacute;p dụng h&oacute;a đơn 500k cho lần mua h&agrave;ng tiếp theo).</p>\r\n\r\n<p>- Voucher trị gi&aacute; 50k (&aacute;p dụng h&oacute;a đơn 300k cho lần mua h&agrave;ng tiếp theo).</p>\r\n\r\n<p>- Giảm th&ecirc;m 50k cho h&oacute;a đơn bất k&igrave; (kh&ocirc;ng điều kiện).&nbsp;</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 3: Tặng t&uacute;i tote &amp; m&oacute;c kh&oacute;a</strong></p>\r\n\r\n<p>- Khi mua sắm với h&oacute;a đơn từ 499.000đ, FRIENDs sẽ được tặng ngay 1 chiếc t&uacute;i tote thời trang Freestyle, thỏa sức mix&amp;match c&ugrave;ng nhiều phong c&aacute;ch (&aacute;p dụng sau chiết khấu).</p>\r\n\r\n<p>- Ngo&agrave;i ra, những chiếc m&oacute;c kh&oacute;a cực dễ thương đang chờ đợi chủ nh&acirc;n nữa đ&oacute; (&aacute;p dụng khi ph&aacute;t sinh h&oacute;a đơn trong thời gian diễn ra chương tr&igrave;nh).</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 4:</strong></p>\r\n\r\n<p>- Giảm ngay 100k cho 1 sản phẩm nguy&ecirc;n gi&aacute; khi FRIENDs cầm tờ rơi GRAND OPENING CẦN THƠ 2&nbsp;đến cửa h&agrave;ng trong suốt thời gian diễn ra chương tr&igrave;nh.&nbsp;</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 5: Voucher Lumos Cake &amp; Bread</strong></p>\r\n\r\n<p>- Giảm ngay 30% cho tất cả sản phẩm khi FRIENDs sử dụng voucher của tiệm b&aacute;nh Lumos Cake &amp; Bread trong suốt thời gian diễn ra chương tr&igrave;nh.</p>\r\n\r\n<p><em>Tất cả 5 chương tr&igrave;nh được&nbsp;&aacute;p dụng tại cửa h&agrave;ng 22 Nguy&ecirc;̃n Vi&ecirc;̣t H&ocirc;̀ng, Qu&acirc;̣n Ninh Ki&ecirc;̀u, TP. C&acirc;̀n Thơ&nbsp;từ ng&agrave;y 14/11/2022 đến hết 16/11/2022.&nbsp;</em></p>\r\n\r\n<p><strong>Điều kiện &aacute;p dụng:</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chiết khấu VIP.</p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng đồng thời với c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.&nbsp;</p>\r\n\r\n<p>- FRIENDs được t&iacute;ch lũy điểm dựa tr&ecirc;n doanh số thanh to&aacute;n cuối c&ugrave;ng.</p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng đổi trả đối với sản phẩm giảm gi&aacute;.</p>\r\n\r\n<p>-----------------------------</p>\r\n\r\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>\r\n', 'post1.jpg', 'post', 'GRAND OPENING TOTODAY CẦN THƠ', 'GRAND OPENING TOTODAY CẦN THƠ', '2022-11-22 12:50:14', 1, '2022-11-22 12:56:09', 1, 1),
(41, 1, 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', 'deal-shock-thang-11-chot-gon-quan-jean-den-sieu-hot-chi-voi-299k', '<p>Với m&ocirc;̃i hóa đơn từ 300k mua tại website hoặc fanpage của TOTODAY, FRIENDs có ngay 01 ưu đãi mua HOT ITEM jean đen mã M1QJN04201FSFTR chỉ với 299k đ&ecirc;́n h&ecirc;́t tháng 11 này.</p>\r\n\r\n<p><strong>Điều kiện &aacute;p dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Chương tr&igrave;nh diễn ra đến hết th&aacute;ng 11.</li>\r\n	<li>Chương tr&igrave;nh chỉ &aacute;p dụng tại 02 k&ecirc;nh mua sắm online l&agrave; Website v&agrave; Fanpage ch&iacute;nh của TOTODAY.</li>\r\n	<li>FRIENDs được t&iacute;ch lũy điểm dựa tr&ecirc;n doanh số thanh to&aacute;n cuối c&ugrave;ng.</li>\r\n</ul>\r\n', 'post2.jpg', 'post', 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', '2022-11-22 13:01:25', 1, '2022-11-22 13:01:25', 1, 1),
(42, 1, 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', 'khai-tiec-sinh-nhat-bat-tung-bat-ngo', '<p><strong>RINH QU&Agrave; BOM TẤN TRỊ GI&Aacute; 500K</strong></p>\r\n\r\n<p>Với mỗi h&oacute;a đơn 999k, kh&aacute;ch h&agrave;ng sẽ nhận ngay 1 combo qu&agrave; trị gi&aacute; 500k bao gồm:</p>\r\n\r\n<p>-&nbsp;T&uacute;i tote thời trang Freestyle.</p>\r\n\r\n<p>- Chiếc n&oacute;n thời trang c&aacute; t&iacute;nh.</p>\r\n\r\n<p>- Sổ tay thanh lịch cho c&aacute;c bạn trẻ .</p>\r\n\r\n<p>- B&uacute;t bi thương hiệu Totoday.</p>\r\n\r\n<p>- Phụ kiện m&oacute;c kh&oacute;a trẻ trung.&nbsp;</p>\r\n\r\n<p>- Đặc biệt l&agrave; voucher trị gi&aacute; 100k (&aacute;p dụng cho h&oacute;a đơn 500k, từ ng&agrave;y 20/10 đến 31/12).</p>\r\n\r\n<p><em>Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng Totoday v&agrave; online kể từ ng&agrave;y 08/10/2022 đến 16/10/2022.&nbsp;</em></p>\r\n\r\n<p><em><strong>Điều kiện &aacute;p dụng:</strong></em></p>\r\n\r\n<p><em>- Kh&ocirc;ng &aacute;p dụng cấp số nh&acirc;n.</em></p>\r\n\r\n<p><em>- Qu&agrave; tặng kh&ocirc;ng c&oacute; gi&aacute; trị quy đổi th&agrave;nh tiền mặt.</em></p>\r\n\r\n<p><em>- C&aacute;c sản phẩm tặng kh&ocirc;ng &aacute;p dụng ch&iacute;nh s&aacute;ch đổi trả.</em></p>\r\n\r\n<p><em>- Kh&ocirc;ng &aacute;p dụng chung với c&aacute;c voucher giảm gi&aacute; v&agrave; CTKM kh&aacute;c.</em></p>\r\n\r\n<p><em>- &Aacute;p dụng chung với chiết khấu VIP, t&iacute;nh tr&ecirc;n gi&aacute; trị h&oacute;a đơn thanh to&aacute;n cuối c&ugrave;ng sau chiết khấu.</em></p>\r\n\r\n<p><strong>THỬ TH&Aacute;CH MINIGAME &ldquo;THỔI NẾN KH&Ocirc;NG TẮT&rdquo;</strong></p>\r\n\r\n<p>Với mỗi h&oacute;a đơn mua h&agrave;ng, kh&aacute;ch h&agrave;ng sẽ được tham gia minigame &ldquo;Thổi nến nhận qu&agrave;&rdquo; c&ugrave;ng Totoday c&oacute; thể lệ như sau:</p>\r\n\r\n<p>- Mỗi kh&aacute;ch h&agrave;ng sẽ được tham gia thổi 3 lần/ lần chơi, kh&aacute;ch h&agrave;ng thổi tắt nến tr&ecirc;n b&aacute;nh kem sẽ được nhận&nbsp;<strong>1 voucher trị gi&aacute; 50k</strong>&nbsp;(kh&ocirc;ng &aacute;p dụng với phụ kiện, từ ng&agrave;y 20/10 đến 31/12).</p>\r\n\r\n<p>- Quy định khoảng c&aacute;ch: Kh&aacute;ch h&agrave;ng đứng tại vạch, c&aacute;ch b&aacute;nh kem 60cm (1 &ocirc; gạch).</p>\r\n\r\n<p><em>Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng Totoday từ ng&agrave;y 08/10/2022 đến 16/10/2022.&nbsp;</em></p>\r\n\r\n<p>Đến Totoday rinh qu&agrave; khủng v&agrave; dự tiệc sinh nhật c&ugrave;ng ch&uacute;ng m&igrave;nh FRIENDs nh&eacute;!</p>\r\n\r\n<p>-----------------------------</p>\r\n', 'post1.jpg', 'post', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', '2022-11-22 13:03:06', 1, '2022-11-22 13:03:06', 1, 1),
(43, NULL, 'Chính sách đổi hàng', 'chinh-sach-doi-hang', '<p>Ch&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ng</p>\r\n', 'post2.jps', 'page', 'Chính sách đổi hàng', 'Chính sách đổi hàng', '2022-11-22 13:07:28', 1, '2022-11-22 13:07:28', 1, 1),
(44, NULL, 'Chính sách bảo hành', 'chinh-sach-bao-hanh', '\n1. Bảo hành là gì?\nTheo định nghĩa nêu trong từ điển “bảo hành” là “việc thực hiện đảm bảo bằng văn bản sẽ được nhà sản xuất phát cho người mua. Nội dung trong văn bản sẽ đề cập tới vấn đề sẽ cam kết sửa chữa, thay thế sản phẩm nếu cần tại một khoảng thời gian nhất định”. Hiểu theo cách đơn giản thì đây chính là một bản cam kết chính thức giữa nhà sản xuất với người mua hàng (Đối tượng mua sản phẩm). Và đảm bảo trong khoảng thời gian cố định đưa ra, chất lượng sản phẩm sẽ đáp ứng đủ mong đợi từ phía người mua.\n\nVí dụ cụ thể: Nếu bạn mua sản phẩm trong 1 cửa hàng điện tử, nhân viên bán hàng sẽ cung cấp cho bạn thông tin rằng bạn sẽ nhận được bảo hành 3 năm nếu bạn mua ổ đĩa cứng  của thương hiệu nào đó. Thì có nghĩa là nhà sản xuất ổ đĩa cứng này sẽ chịu trách nhiệm sửa chữa, thay thế và có thể hoàn tiền 100% cho bạn nếu như sản phẩm không đáp ứng đủ các chức năng của nó  trong 3 năm dùng.\n\n \n\n2. Chính sách bảo hành là gì?\nChính sách bảo hành gồm các quy định, cam kết của nhà sản xuất (NSX) hay của người bán với người mua sản phẩm của họ. Độ mạnh, yếu từ các cam kết này sẽ phụ thuộc theo  mức độ uy tín của người bán, người đề ra bản cam kết đó. Và thông thường thì công ty càng lớn,sự uy tín sẽ càng cao và chính sách bảo hành cũng sẽ được đảm bảo.', 'post3.jpg', 'page', 'Chính sách bảo hành', 'Chính sách bảo hành', '2022-11-22 13:08:13', 1, '2022-11-22 13:08:13', 1, 1),
(45, NULL, 'Chính Sách Hoàn Tiền', 'chinh-sach-hoan-tien', ' \n\n1. Bảo hành là gì?\nTheo định nghĩa nêu trong từ điển “bảo hành” là “việc thực hiện đảm bảo bằng văn bản sẽ được nhà sản xuất phát cho người mua. Nội dung trong văn bản sẽ đề cập tới vấn đề sẽ cam kết sửa chữa, thay thế sản phẩm nếu cần tại một khoảng thời gian nhất định”. Hiểu theo cách đơn giản thì đây chính là một bản cam kết chính thức giữa nhà sản xuất với người mua hàng (Đối tượng mua sản phẩm). Và đảm bảo trong khoảng thời gian cố định đưa ra, chất lượng sản phẩm sẽ đáp ứng đủ mong đợi từ phía người mua.\n\nVí dụ cụ thể: Nếu bạn mua sản phẩm trong 1 cửa hàng điện tử, nhân viên bán hàng sẽ cung cấp cho bạn thông tin rằng bạn sẽ nhận được bảo hành 3 năm nếu bạn mua ổ đĩa cứng  của thương hiệu nào đó. Thì có nghĩa là nhà sản xuất ổ đĩa cứng này sẽ chịu trách nhiệm sửa chữa, thay thế và có thể hoàn tiền 100% cho bạn nếu như sản phẩm không đáp ứng đủ các chức năng của nó  trong 3 năm dùng.\n\n \n\n2. Chính sách bảo hành là gì?\nChính sách bảo hành gồm các quy định, cam kết của nhà sản xuất (NSX) hay của người bán với người mua sản phẩm của họ. Độ mạnh, yếu từ các cam kết này sẽ phụ thuộc theo  mức độ uy tín của người bán, người đề ra bản cam kết đó. Và thông thường thì công ty càng lớn,sự uy tín sẽ càng cao và chính sách bảo hành cũng sẽ được đảm bảo.', 'post4.jpg', 'page', 'Chính Sách Hoàn Tiền', 'Chính Sách Hoàn Tiền', '2022-11-22 13:11:30', 1, '2022-11-22 13:11:30', 1, 1),
(46, NULL, 'Giới thiệu', 'gioi-thieu', '<p>Shop Thời Trang Dịu Hiền với phương ch&acirc;m l&agrave; &ldquo; Sẽ lu&ocirc;n lu&ocirc;n l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng với phong c&aacute;ch thời trang của bạn&rdquo;. Dịu hiền sẽ l&agrave; một trong những shop đồ thời trang uy t&iacute;n v&agrave; chất lượng nhất tại Tp.HCM ch&uacute;ng t&ocirc;i lu&ocirc;n mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm mới nhất v&agrave; chất lượng, gi&aacute; th&agrave;nh hợp l&yacute; nhất tại cửa h&agrave;ng Thời Trang Dịu Hiền dưới đ&acirc;y l&agrave; đối n&eacute;t giới thiệu cơ bản về Shop Thời Trang Nữ Cao Cấp Dịu Hiền.</p>\n\n<p>Blog giới thiệu thời trang</p>\n\n<p>C&aacute;ch M&agrave; Thời Trang Dịu Hiền Tạo Dựng Thương Hiệu?</p>\n\n<p>Nhằm đ&aacute;p ứng được nhu cầu của người ti&ecirc;u d&ugrave;ng n&ecirc;n c&oacute; rất nhiều shop thời trang h&agrave;ng loạt được ra đời nhưng trong một khoảng thời gian ngắn rồi họ cũng lặng lẽ đ&oacute;ng cửa. Chắc c&oacute; lẽ bạn cũng rất ngạc nhi&ecirc;n khi ai đ&oacute; n&oacute;i với bạn rằng chắc c&oacute; một cửa h&agrave;ng nhỏ lẻ, kh&ocirc;ng thương hiệu m&agrave; lại tồn tại nhiều năm nay. Nhờ r&uacute;t kinh nghiệm từ những shop cửa h&agrave;ng nhỏ lẻ kh&aacute;c. Ch&iacute;nh v&igrave; vậy m&agrave; Dịu Hiền một trong những cửa h&agrave;ng shop thời trang nhỏ nhắn xinh xắn nằm tr&ecirc;n tuyến đường Nguyễn Văn Lượng&nbsp; ( Quận G&ograve; Vấp, TP. Hồ Ch&iacute; Minh ) nhờ được sự tin tưởng của kh&aacute;ch h&agrave;ng với hơn 800.000 lượt theo d&otilde;i n&ecirc;n Shop Thời Trang Nữ Cao Cấp Dịu Hiền đ&atilde; đi được hơn 10 năm chặng đường kinh doanh trong lĩnh vực thời trang đ&atilde; trở th&agrave;nh một trong những địa điểm b&aacute;n thời trang uy t&iacute;n nhất cho kh&aacute;ch h&agrave;ng lựa chọn.</p>\n\n<p>Dưới đ&acirc;y l&agrave; một v&agrave;i ti&ecirc;u ch&iacute; đ&atilde; tạo n&ecirc;n thương hiệu của dịu hiền c&oacute; vị tr&iacute; tại thị trường Việt Nam cụ thể như sau :</p>\n\n<p>Khỏi nguồn từ niềm y&ecirc;u th&iacute;ch của bạn th&acirc;n</p>\n\n<p>Giới thiệu cơ bản về Thời Trang Dịu Hiền được ra đời dựa v&agrave;o t&igrave;nh y&ecirc;u m&atilde;nh liệt m&agrave; chị chủ đ&atilde; d&agrave;nh hết cả tuổi thanh xu&acirc;n để d&agrave;nh cho thời trang lu&ocirc;n mang đến cho kh&aacute;ch những sản phẩm chất lượng tốt nhất đến cho bạn.</p>\n\n<p>Mặc d&ugrave; shop dịu hiền kh&ocirc;ng phải l&agrave; một cửa h&agrave;ng rất lớn nhưng ngay từ l&uacute;c ban đầu, Chị hiền đ&atilde; x&aacute;c định mục ti&ecirc;u của m&igrave;nh l&agrave;m g&igrave; v&agrave; những kh&aacute;ch h&agrave;ng m&agrave; shop hướng tới l&agrave; đối tượng n&agrave;o. Tuy nhi&ecirc;n b&ecirc;n cạnh đ&oacute; shop cũng đồng thời t&igrave;m ra những n&eacute;t ri&ecirc;ng cho shop m&agrave; cứ thế m&agrave; Shop Thời Trang C&ocirc;ng Sở Dịu Hiền c&oacute; được chỗ vững chắc tr&ecirc;n thị trường Việt Nam hiện nay.</p>\n\n<p>Shop dịu hiền nhờ chọn được vị địa l&yacute; thuận lợi c&oacute; rất nhiều d&acirc;n văn ph&ograve;ng n&ecirc;n Dịu Hiền Shop hướng tới những kh&aacute;ch h&agrave;ng trẻ tuổi đặc biệt l&agrave; những kh&aacute;ch h&agrave;ng c&oacute; thu nhập tầm trung chủ yếu l&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng&hellip;</p>\n\n<p>&nbsp;</p>\n\n<p>Giới thiệu shop dịu hiền thời trang</p>\n\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; tất cả c&aacute;c sản phẩm đa dạng v&agrave; mẫu m&atilde; chủ yếu tập trung phần nhiều v&agrave;o &Aacute;o sơ mi, Ch&acirc;n v&aacute;y, Đầm, Quần, Vest, T-shirt&hellip;nhờ thiết kế đa dạng v&agrave; phong ph&uacute; n&ecirc;n tất cả c&aacute;c d&ograve;ng sản phẩm tại shop c&oacute; thể sử dụng đi l&agrave;m, đi chơi, du lịch, d&atilde; ngoại hay thậm tr&iacute; trong những buổi tiệc sang trọng.</p>\n\n<p>Giới thiệu một v&agrave;i n&eacute;t ri&ecirc;ng tạo ấn tượng trong mắt kh&aacute;ch h&agrave;ng</p>\n\n<p>Đối với c&aacute;c shop thời trang hiện nay th&igrave; b&agrave;i to&aacute;n về lợi nhuận l&agrave; một b&agrave;i to&aacute;n kh&oacute; đối với những shop thời trang nhỏ lẻ như Cửa H&agrave;ng Thời Trang Dịu Hiền. Để giải quyết được b&agrave;i to&aacute;n lợi nhuận m&agrave; ph&acirc;n kh&uacute;c gi&aacute; của c&aacute;c sản phẩm phải vẫn nằm ở tầm trung. Dịu hiền đ&atilde; tối ưu h&oacute;a nhất từ kh&acirc;u nhập h&agrave;ng cũng như sau những nghi&ecirc;n cứu của Dịu Hiền Shop những nhu cầu của kh&aacute;ch h&agrave;ng v&agrave; xu hướng thời trang hot trong thời gian một c&aacute;ch kỹ lưỡng để shop c&oacute; thể chọn được những mẩu đẹp v&agrave; chất lượng tốt nhất.</p>\n\n<p>&nbsp;</p>\n\n<p>Nhận thấy được nhu cầu của kh&aacute;ch h&agrave;ng ng&agrave;y c&agrave;ng cao cấp với những sản phẩm&nbsp; độc lạ, ấn tượng v&agrave; điểm nhấn mạnh đ&aacute;ng ch&uacute; &yacute; nhất l&agrave; &ldquo;kh&ocirc;ng đụng h&agrave;ng&rdquo; n&ecirc;n ngo&agrave;i những sản phẩm nhập th&igrave; Thời Trang Dịu Hiền cũng c&oacute; thiết kế với nhiều mẫu m&atilde; mới hot trend để đ&aacute;p ứng được nhu cầu của kh&aacute;ch h&agrave;ng. N&ecirc;n từ đ&oacute; Dịu Hiền Shop v&agrave; c&acirc;u chuyện thương hiệu n&oacute; cũng bắt nguồn từ đ&oacute; &ldquo; Bạn Muốn Mua Những Sản Phẩm Thời Trang Đẹp, Độc V&agrave; Kh&ocirc;ng Đụng H&agrave;ng, Chỉ C&oacute; Tại Shop Thời Trang Cao Cấp Dịu Hiền :)&rdquo;</p>\n\n<p>B&ecirc;n cạnh đ&oacute;, để đối mặt với t&iacute;nh khốc liệt của thị trường n&ecirc;n Shop dịu hiền sẽ giới thiệu cho bạn những chiếc lược marketing cũng như chiếc lược kinh doanh cũng mang những phong c&aacute;ch độc đ&aacute;o ri&ecirc;ng. Đối với những mặt h&agrave;ng trưng b&agrave;y tại cửa h&agrave;ng Thời Trang Dịu Hiền chỉ trưng b&agrave;y những sản phẩm c&oacute; số lượng kham hiến, nhờ hiểu được t&acirc;m l&yacute; của kh&aacute;ch h&agrave;ng n&ecirc;n đối với việc trưng b&agrave;y như vậy kh&aacute;ch h&agrave;ng sẽ suy nghĩ nếu kh&ocirc;ng mua th&igrave; sẽ hết h&agrave;ng!</p>\n\n<p>Ch&iacute;nh v&igrave; c&oacute; những chiến lược kinh doanh độc đ&aacute;o m&agrave; Thời Trang Dịu Hiền ng&agrave;y c&agrave;ng được nhiều kh&aacute;ch h&agrave;ng t&igrave;m đến với sớm với những ti&ecirc;u ch&iacute; &ldquo; Chất Lượng &ndash; Uy T&iacute;n &ndash; Sản Phẩm Độc Lạ &ldquo;</p>\n\n<p>&nbsp;</p>\n\n<p>Kh&ocirc;ng chỉ kinh doanh quần, &aacute;o, v&aacute;y, đầm&hellip;th&igrave; shop cũng c&oacute; b&agrave;y b&aacute;n phụ kiện trang sức k&egrave;m theo để cho bạn đẹp c&agrave;ng đẹp th&ecirc;m với những bộ trang sức k&egrave;m theo. Tuy nhi&ecirc;n đ&oacute; cũng chưa phải l&agrave; những g&igrave; tạo n&ecirc;n sự th&agrave;nh c&ocirc;ng như ng&agrave;y h&ocirc;m nay của Cửa H&agrave;ng Thời Trang Dịu Hiền.</p>\n\n<p>&nbsp;</p>\n\n<p>Giới thiệu shop dịu hiền thời trang</p>\n\n<p>Đặc biệt một trong những yếu tố th&agrave;nh c&ocirc;ng nhất của shop Thời Trang Quần &Aacute;o Nữ Cao Cấp Dịu Hiền đ&oacute; l&agrave; tạo dựng được một xưởng sản xuất thời trang c&ocirc;ng sở lớn nhất tại Tp.HCM.</p>\n\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; Thời Trang Dịu Hiền sẽ nơi lựa chọn ho&agrave;n hảo nhất d&agrave;nh cho phong c&aacute;ch thời trang bạn nh&eacute;!!!</p>\n\n<p>Mọi đ&oacute;ng g&oacute;p &yacute; kiến của qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo địa chỉ :</p>\n\n<p>Shop Thời Trang Dịu Hiền</p>\n', 'post1.jpg', 'page', '', '', '2022-11-22 13:13:30', 1, '2022-11-22 13:13:30', 1, 1),
(61, NULL, 's', 's', 'bài viết mới nhất nè', '', 'post', 's', '', '2023-05-28 19:46:17', 1, '2023-05-29 09:08:29', 1, 0),
(62, NULL, 'sdadd', 'sdadd', 'đá thủ dak lak', '', 'post', 'ngu', 'ngu', '2023-05-29 05:14:44', 1, '2023-05-29 09:08:27', 1, 0),
(64, 1, 'sáng', 'sang', 'sáng', 'ss6.jpg', 'post', 'sang dep trai', 'sáng', '2023-06-29 15:51:42', 1, '2023-06-29 16:01:33', 1, 0),
(65, 1, 'sa', 'sa', 'sa', 'ss7.jpg', 'post', 'da', 'sáng', '2023-06-29 15:52:31', 1, '2023-06-29 16:01:32', 1, 0),
(66, NULL, 'da', 'da', 'ds', 'ss5.jpg', 'page', 'sad', 'sad', '2023-06-29 15:57:46', 1, '2023-06-29 15:58:17', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_product`
--

CREATE TABLE `2121110243_product` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'Mã loại sản phẩm',
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL COMMENT 'Tên sản phẩm',
  `slug` varchar(1000) NOT NULL COMMENT 'Slug tên sản phẩm',
  `image` varchar(255) NOT NULL COMMENT 'Hình ảnh',
  `detail` mediumtext NOT NULL COMMENT 'Chi tiết',
  `qty` smallint(5) UNSIGNED NOT NULL COMMENT 'Số lượng',
  `price` float(12,2) NOT NULL COMMENT 'Giá',
  `pricesale` float(12,3) NOT NULL COMMENT 'Giá khuyến mãi',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_product`
--

INSERT INTO `2121110243_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `image`, `detail`, `qty`, `price`, `pricesale`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 5, 1, ' Áo sơ mi dài tay Aristino ALS07803', 'so-mi', 'somi1.webp', 'Thông tin sản phẩm FORM DÁNG: Dáng vừa/ Regular Fit THIẾT KẾ: - Áo sơ mi dài tay phom Regular Fit suông nhẹ, phù hợp với mọi dáng người, - Áo thiết kế đơn giản với màu trắng kẻ xám đơn giản nhưng tinh tế, mang đến CHẤT LIỆU: - 50% Bamboo từ sợi tre thiên nhiên mang đến sự thoáng mát, t - 50% Polyspun giúp tiết kiệm tối đa thời gian cho chuyện là MÀU SẮC: Trắng kẻ xám SIZE: 38/39/40/41/42/43', 1, 30000.00, 20000.000, 'áo thun nam bao chất lượng', 'Thông tin sản phẩm FORM DÁNG: Dáng vừa/ Regular Fit THIẾT KẾ: - Áo sơ mi dài tay phom Regular Fit suông nhẹ, phù hợp với mọi dáng người, - Áo thiết kế đơn giản với màu trắng kẻ xám đơn giản nhưng tinh tế, mang đến CHẤT LIỆU: - 50% Bamboo từ sợi tre thiên ', '2022-11-22 11:40:37', 1, '2022-11-22 11:40:37', 1, 1),
(2, 5, 1, ' Áo sơ mi dài tay Aristino ALS07803', 'so-mi', 'somi2.webp', 'ao-thun-nam2', 1, 378000.00, 378000.000, 'áo thun nam bao chất lượng', 'áo thun nam bao chất lượng', '2022-11-22 11:42:49', 1, '2022-11-22 11:42:49', 1, 1),
(4, 5, 1, ' Áo sơ mi dài tay Aristino ALS07803', 'so-mi', 'somi3.webp', 'ao-thun-nam3', 1, 10000.00, 10000.000, 'áo thun nam bao chất lượng', 'áo thun nam bao chất lượng', '2022-11-22 11:49:40', 1, '2022-11-22 11:49:40', 1, 1),
(5, 5, 1, ' Áo sơ mi dài tay Aristino ALS07803', 'so-mi', 'somi4.webp', 'ao-khoac-nam5', 1, 10000.00, 10000.000, 'áo khoác nam vừa rẻ vừa chất lượng ', 'áo khoác nam vừa rẻ vừa chất lượng ', '2022-11-22 12:11:51', 1, '2022-11-22 12:15:16', 1, 1),
(7, 3, 1, 'Áo vest, blazer Aristino ABZM0203', 'ao-khoac-nam7', 'vet1.webp', 'ao-khoac-nam7', 1, 10000.00, 10000.000, 'áo khoác nam vừa rẻ vừa chất lượng ', 'áo khoác nam vừa rẻ vừa chất lượng ', '2022-11-22 12:16:17', 1, '2022-11-22 12:16:17', 1, 1),
(8, 3, 1, 'Áo blazer Aristino ABZ00302', 'ao-khoac-nam3', 'vet2.webp', 'ao-khoac-nam3', 1, 10000.00, 10000.000, 'áo khoác nam vừa rẻ vừa chất lượng \n', 'áo khoác nam vừa rẻ vừa chất lượng \n', '2022-11-22 12:16:51', 1, '2022-11-22 12:16:51', 1, 1),
(9, 3, 1, '\nÁo blazer nam Aristino ABZ00502', 'balo-nam1', 'vet3.webp', 'balo-nam1', 1, 10000.00, 10000.000, 'balo nam đẹp chất lượng cao', 'balo nam đẹp chất lượng cao', '2022-11-22 12:17:53', 1, '2022-11-22 12:17:53', 1, 1),
(10, 3, 1, '\nÁo blazer nam Aristino ABZ00201', 'balo-nam2', 'vet4.webp', 'balo-nam2', 1, 10000.00, 10000.000, 'balo nam đẹp chất lượng cao', 'balo nam đẹp chất lượng cao', '2022-11-22 12:19:09', 1, '2022-11-22 12:19:09', 1, 1),
(13, 4, 1, 'polo có cổ ngắn tay APS085S3\n', 'giay-nam7', 'polo1.webp', 'giay-nam7', 1, 10000.00, 10000.000, 'giày nam adidas đẹp chất lượng cao', 'giày nam adidas đẹp chất lượng cao', '2022-11-22 12:21:58', 1, '2022-11-22 12:21:58', 1, 1),
(14, 4, 1, 'polo nam ngắn tay  APS166S3', 'giay-nam1', 'polo2.webp', 'giay-nam1', 1, 10000.00, 10000.000, 'giày nam adidas đẹp chất lượng cao', 'giày nam adidas đẹp chất lượng cao', '2022-11-22 12:22:27', 1, '2022-11-22 12:22:27', 1, 1),
(15, 4, 1, 'polo nam ngắn tay  APS166S3', 'giay-nam2', 'polo3.webp', 'giay-nam2', 1, 10000.00, 10000.000, 'giày nam adidas đẹp chất lượng cao', 'giày nam adidas đẹp chất lượng cao', '2022-11-22 12:22:56', 1, '2022-11-22 12:22:56', 1, 1),
(16, 4, 1, 'polo nam ngắn tay  APS166S3', 'giay-nam4', 'polo4.webp', 'giay-nam4', 1, 10000.00, 10000.000, 'giày nam adidas đẹp chất lượng cao', 'giày nam adidas đẹp chất lượng cao', '2022-11-22 12:23:18', 1, '2022-11-22 12:23:18', 1, 1),
(17, 6, 1, 'Quần short nam Aristino ASO055AZ', 'ao-khoac-nu1', 'dui1.webp', 'ao-khoac-nu1', 1, 10000.00, 10000.000, 'áo khoac nữ bao đẹp chất lượng cao nhập từ Việt Nam', 'áo khoac nữ bao đẹp chất lượng cao nhập từ Việt Nam', '2022-11-22 12:24:58', 1, '2022-11-22 12:24:58', 1, 1),
(18, 6, 1, 'Quần short nam Aristino ASO055AZ', 'ao-khoac-nu2', 'dui2.webp', 'ao-khoac-nu2', 1, 10000.00, 10000.000, 'áo khoac nữ bao đẹp chất lượng cao nhập từ Việt Nam', 'áo khoac nữ bao đẹp chất lượng cao nhập từ Việt Nam', '2022-11-22 12:26:02', 1, '2022-11-22 12:26:02', 1, 1),
(19, 6, 1, 'Quần short nam Aristino ASO055AZ', 'ao-khoac-nu3', 'dui3.webp', 'ao-khoac-nu3', 1, 10000.00, 10000.000, 'áo khoac nữ bao đẹp chất lượng cao nhập từ Việt Nam', 'áo khoac nữ bao đẹp chất lượng cao nhập từ Việt Nam', '2022-11-22 12:26:25', 1, '2022-11-22 12:26:25', 1, 1),
(20, 6, 1, 'Quần short nam Aristino ASO055AZ', 'ao-khoac-nu4', 'dui4.webp', 'ao-khoac-nu4', 1, 10000.00, 10000.000, 'áo khoac nữ bao đẹp chất lượng cao nhập từ Việt Nam', 'áo khoac nữ bao đẹp chất lượng cao nhập từ Việt Nam', '2022-11-22 12:26:44', 1, '2022-11-22 12:26:44', 1, 1),
(21, 7, 1, 'Quần Khaki Aristino AKK00202', 'giay-nu5', 'ka1.webp', 'giay-nu5', 1, 10000.00, 10000.000, 'giày nữ adidas nhập khẩu từ Quảng Châu(Trung Quốc) chất lượng cao', 'giày nữ adidas nhập khẩu từ Quảng Châu(Trung Quốc) chất lượng cao', '2022-11-22 12:29:53', 1, '2022-11-22 12:29:53', 1, 1),
(22, 7, 1, 'Quần Khaki Aristino AKK00202', 'giay-nu2', 'ka2.webp', 'giay-nu2', 1, 10000.00, 10000.000, 'giày nữ adidas nhập khẩu từ Quảng Châu(Trung Quốc) chất lượng cao', 'giày nữ adidas nhập khẩu từ Quảng Châu(Trung Quốc) chất lượng cao', '2022-11-22 12:30:23', 1, '2022-11-22 12:30:23', 1, 1),
(23, 7, 1, 'Quần Khaki Aristino AKK00202', 'giay-nu3', 'ka3.webp', 'giay-nu3', 1, 10000.00, 10000.000, 'giày nữ adidas nhập khẩu từ Quảng Châu(Trung Quốc) chất lượng cao', 'giày nữ adidas nhập khẩu từ Quảng Châu(Trung Quốc) chất lượng cao', '2022-11-22 12:30:45', 1, '2022-11-22 12:30:45', 1, 1),
(24, 7, 1, 'Quần Khaki Aristino AKK00202', 'giay-nu4', 'ka4.webp', 'giay-nu4', 1, 10000.00, 10000.000, 'giày nữ adidas nhập khẩu từ Quảng Châu(Trung Quốc) chất lượng cao', 'giày nữ adidas nhập khẩu từ Quảng Châu(Trung Quốc) chất lượng cao', '2022-11-22 12:31:09', 1, '2022-11-22 12:31:09', 1, 1),
(25, 8, 1, 'Quần âu Aristino ATR00803', 'tui-cheo1', 'au1.webp', 'giay-nu4', 1, 10000.00, 10000.000, 'túi chéo adidas thời trang giới trẻ đẹp và rẻ', 'túi chéo adidas thời trang giới trẻ đẹp và rẻ', '2022-11-22 12:34:00', 1, '2022-11-22 12:34:00', 1, 1),
(26, 8, 1, 'Quần âu Aristino ATR00803', 'tui-cheo-adidas', 'au2.webp', 'tui-cheo-adidas', 1, 10000.00, 10000.000, 'túi chéo adidas thời trang giới trẻ đẹp và rẻ', 'túi chéo adidas thời trang giới trẻ đẹp và rẻ', '2022-11-22 12:34:21', 1, '2022-11-22 12:34:21', 1, 1),
(27, 8, 1, 'Quần âu Aristino ATR00803', 'tui-cheo4', 'au3.webp', 'tui-cheo4', 1, 10000.00, 10000.000, 'túi chéo adidas thời trang giới trẻ đẹp và rẻ\n', 'túi chéo adidas thời trang giới trẻ đẹp và rẻ\n', '2022-11-22 12:34:52', 1, '2022-11-22 12:34:52', 1, 1),
(28, 8, 1, 'Quần âu Aristino ATR00803', 'giay-dep2-adidas', 'au4.webp', 'giay-dep2-adidas', 1, 10000.00, 10000.000, 'giày đẹp adidas\nsiêu rẻ', 'giày đẹp adidas\nsiêu rẻ', '2022-11-22 12:35:13', 1, '2022-11-22 12:35:13', 1, 1),
(30, 8, 1, 'Quần âu Aristino ATR00803', 'balo-nu2', 'au5.webp', 'balo-nu2', 1, 10000.00, 10000.000, 'balo nữ sài bao đẹp', 'balo nữ sài bao đẹp', '2022-11-22 12:38:39', 1, '2022-11-22 12:38:39', 1, 1),
(31, 5, 1, 'sơ mi dài tay Aristino ', 'balo-nu4', 'somi5.webp', 'balo-nu4', 1, 10000.00, 10000.000, 'Mã SP: h116012', 'Mã SP: h116012', '2022-11-22 12:38:59', 1, '2022-11-22 12:38:59', 1, 1),
(32, 5, 1, 'sơ mi dài tay Aristino ', 'balo-nu3', 'somi6.webp', 'balo-nu3\n', 1, 10000.00, 10000.000, 'Mã SP: h113595\n', 'Mã SP: h113595\n', '2022-11-22 12:39:47', 1, '2022-11-22 12:39:48', 1, 1),
(33, 5, 1, 'sơ mi dài tay Aristino ', 'balo xanh adidas', 'somi7.webp', 'balo-xanh-adidas', 1, 10000.00, 10000.000, 'balo xanh adidas', 'balo xanh adidas chất lượng cực', '2022-11-22 12:41:15', 1, '2022-11-22 12:41:15', 1, 1),
(34, 5, 1, 'sơ mi dài tay Aristino ', 'áo khoác nam adidas', 'somi8.webp', '<h1>CH&Acirc;N V&Aacute;Y áo khoác nam adidas</h1>\n', 1, 10000.00, 10000.000, 'áo khoác nam adidas', 'áo khoác nam adidas', '2022-11-22 12:41:36', 1, '2022-11-22 12:41:36', 1, 1),
(35, 6, 1, 'Quần short Aristino ASO054AZ', 'áo khoác nam adidas trắng', 'dui5.webp', '<h1>CH&Acirc;N V&Aacute;Y áo khoác nam adidas trắng</h1>\n', 1, 10000.00, 10000.000, 'áo khoác nam adidas trắng', 'áo khoác nam adidas trắng', '2022-11-22 12:41:58', 1, '2023-06-15 13:06:26', 1, 1),
(36, 6, 1, 'Quần short Aristino ASO054AZ', 'ao-hodie-xanh', 'dui6.webp', '<h1>CH&Acirc;N V&Aacute;Y aohodiexanh</h1>\n', 1, 10000.00, 10000.000, 'ao-hodie-xanh', 'ao-hodie-xanh', '2022-11-22 12:42:21', 1, '2023-06-15 13:06:24', 1, 1),
(39, 6, 1, 'Quần short Aristino ASO054AZ', 'ao-thun-nam4', 'dui7.webp', '<p>ao-thun-nam4</p>\r\n', 1, 30000.00, 20000.000, 'áo thun nam bao chất lượng', 'áo thun nam bao chất lượng', '2022-11-22 11:40:37', 1, '2022-11-22 11:40:37', 1, 1),
(40, 7, 1, 'Quần âu Aristino ATR00803', 'áo khoác nam adidas', 'au5.webp', '<h1>CH&Acirc;N V&Aacute;Y áo khoác nam adidas</h1>\r\n', 1, 10000.00, 10000.000, 'áo khoác nam adidas', 'áo khoác nam adidas', '2022-11-22 12:41:36', 1, '2022-11-22 12:41:36', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_slider`
--

CREATE TABLE `2121110243_slider` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã Slider',
  `name` varchar(255) NOT NULL COMMENT 'Tên Slider',
  `link` varchar(255) NOT NULL COMMENT 'Liên kết',
  `position` varchar(100) NOT NULL COMMENT 'Vị trí',
  `image` varchar(100) NOT NULL COMMENT 'Hình ảnh',
  `sort_order` int(10) UNSIGNED NOT NULL COMMENT 'Thứ tự',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_slider`
--

INSERT INTO `2121110243_slider` (`id`, `name`, `link`, `position`, `image`, `sort_order`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Khuyễn mãi hè 2020', 'http://domain.com/index.php?option=page&cat=khuyen-mai-he', 'slideshow', 'slider2.jpg', 1, '2020-07-01 00:12:13', 1, '2024-01-08 09:39:35', 1, 1),
(2, 'Khuyễn mãi mùa khai giảng', 'http://domain.com/index.php?option=page&cat=khuyen-mai-mua-khai-giang', 'slideshow', 'slider4.jpg', 2, '2020-07-01 00:12:13', 1, '2024-01-08 09:39:26', 1, 1),
(3, 'Khuyễn mãi giáng sinh', 'http://domain.com/index.php?option=page&cat=khuyen-giang-sinh', 'slideshow', 'slider3.jpg', 3, '2020-07-01 00:12:13', 1, '2020-07-01 00:12:13', 1, 1),
(4, 'Khuyễn mãi Covid', 'http://domain.com/index.php?option=page&cat=khuyen-mai-covid', 'slideshow', 'slider1.jpg', 4, '2020-07-01 00:12:13', 1, '2022-11-20 11:24:40', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_topic`
--

CREATE TABLE `2121110243_topic` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã chủ đề',
  `name` varchar(255) NOT NULL COMMENT 'Tên chủ đề',
  `slug` varchar(255) NOT NULL COMMENT 'Slug tên chủ đề',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Mã cấp cha',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Sắp xếp',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_topic`
--

INSERT INTO `2121110243_topic` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Tin tức', 'tin-tuc', 0, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:14:39', 1, '2023-06-15 13:16:02', 1, 1),
(2, 'Dịch vụ', 'dich-vu', 0, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:14:39', 1, '2020-07-03 09:14:39', 1, 1),
(3, 'ádsxcxc', 'adsxcxc', 0, 0, 'dsadasx', 'dsadsxzcxzcxc', '2022-09-01 07:44:20', 1, '2022-09-01 07:46:30', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2121110243_user`
--

CREATE TABLE `2121110243_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã tài khoản',
  `name` varchar(100) NOT NULL COMMENT 'Họ và tên',
  `username` varchar(100) NOT NULL COMMENT 'Tên đăng nhâp',
  `password` varchar(64) NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `gender` tinyint(3) UNSIGNED NOT NULL COMMENT 'Giới tính',
  `phone` varchar(11) NOT NULL COMMENT 'Điện thoại',
  `image` varchar(100) NOT NULL COMMENT 'Hình',
  `roles` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quyền truy cập',
  `address` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `2121110243_user`
--

INSERT INTO `2121110243_user` (`id`, `name`, `username`, `password`, `email`, `gender`, `phone`, `image`, `roles`, `address`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Quản trị', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin@gmail.com', 1, '0987654367', 'admin.jpg', 1, 'Hồ Chí Minh', '2020-07-01 00:16:03', 1, '2022-11-21 14:37:14', 1, 1),
(2, 'Khách hàng', 'khachhang', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'khachhang@gmail.com', 1, '0987654367', 'khachhang.jpg', 0, 'Hồ Chí Minh', '2020-07-01 00:16:03', 1, '2022-11-21 13:36:23', 1, 1),
(7, 'sáng', 'sangdep trai', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sangdeptrai1302@gmail.com', 0, '1234567890', '', 1, '123456', '2023-05-28 16:13:17', 1, '2023-05-28 16:15:12', 1, 0),
(10, 'sáng', 'sangdep trai', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sangdeptrai1302@gmail.com', 0, '1234567890', '', 1, '123456', '2023-05-28 16:13:33', 1, '2023-05-28 16:15:08', 1, 0),
(14, 'sáng', 'admin', 'f08ce6bb0f09e7bc908bcea5355215be6b7aa622', 'sangdeptrai1302@gamil.com', 0, '132456yu', '', 0, '1234567', '2023-05-28 16:24:25', 1, '2023-05-29 04:19:46', 1, 0),
(15, 'dũng', 'khachhang', '69c5fcebaa65b560eaf06c3fbeb481ae44b8d618', 'sangdeptrai1302@gamil.com', 0, '1234567890', '', 0, 'daklak', '2023-05-28 18:13:52', 1, '2024-01-24 11:09:00', 1, 1),
(16, 'sáng', 'sang', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sangdeptrai1302@gamil.com', 0, '1234567890', 'vi-da-nam.jpg', 1, 'daklak', '2023-05-28 18:14:33', 1, '2023-05-28 18:14:33', 1, 1),
(17, 'sSss', 'sSS', 'ad53aa6f320599c5cd53dec0d10ff62de9f40b69', 'ssS@gnmaij.com', 0, 'xã', '', 0, 'Ss', '2023-05-29 09:49:52', 1, '2023-05-29 09:49:56', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2121110243_brand`
--
ALTER TABLE `2121110243_brand`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_category`
--
ALTER TABLE `2121110243_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_config`
--
ALTER TABLE `2121110243_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2121110243_contact`
--
ALTER TABLE `2121110243_contact`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_menu`
--
ALTER TABLE `2121110243_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_order`
--
ALTER TABLE `2121110243_order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_orderdetail`
--
ALTER TABLE `2121110243_orderdetail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_post`
--
ALTER TABLE `2121110243_post`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_product`
--
ALTER TABLE `2121110243_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_slider`
--
ALTER TABLE `2121110243_slider`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_topic`
--
ALTER TABLE `2121110243_topic`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110243_user`
--
ALTER TABLE `2121110243_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2121110243_brand`
--
ALTER TABLE `2121110243_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `2121110243_category`
--
ALTER TABLE `2121110243_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `2121110243_config`
--
ALTER TABLE `2121110243_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `2121110243_contact`
--
ALTER TABLE `2121110243_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã liên hệ', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `2121110243_menu`
--
ALTER TABLE `2121110243_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Menu', AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `2121110243_order`
--
ALTER TABLE `2121110243_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `2121110243_orderdetail`
--
ALTER TABLE `2121110243_orderdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã CT Đơn hàng', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `2121110243_post`
--
ALTER TABLE `2121110243_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã bài viết', AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `2121110243_product`
--
ALTER TABLE `2121110243_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `2121110243_slider`
--
ALTER TABLE `2121110243_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã Slider', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `2121110243_topic`
--
ALTER TABLE `2121110243_topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `2121110243_user`
--
ALTER TABLE `2121110243_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã tài khoản', AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
