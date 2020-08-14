-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 01:26 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakeonl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'PhanTrung', 'phan.trung.99@gmail.com', NULL, '$2y$10$NwmbRqe8CUBtBTIBoebfkuZ6JN1A2Foz8XzNkYs895pAGP/ssAz2i', 'PrOeMzyAYqZA1IJXLo3Rn8QqkSEBvTKBp1k3IRNMcoMaXEeYrwq6dilxHkie', NULL, '2019-05-14 16:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `attentions`
--

CREATE TABLE `attentions` (
  `id` int(11) NOT NULL,
  `day` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attentions`
--

INSERT INTO `attentions` (`id`, `day`, `img`, `nd`, `note`) VALUES
(1, '1/1', 'phao_hoa_2019_da_nag.jpg', 'Tết Dương lịch', 'Tết Dương lịch còn gọi là tết tây. Theo thời đại phát triển, thì nước ta có thêm tết dương lịch và được nghỉ thêm 1 ngày đặc biệt trong năm như 1 số các nước khác trên thế giới. Chính vì vậy vào những ngày như thế này, các bạn có thể tặng 1 chiếc bánh kem ngọt ngào hay những loại bánh hoa quả màu sắc, để chúc mừng cũng như tạo thêm sự vui vẻ trong các mối quan hệ trong đầu năm mới.'),
(2, '14/2', 'loi-chuc1421.jpg', 'Lễ tình nhân (Valentine)', 'Ngày lễ tình nhân 14/2 là ngày cho sự yêu thương đôi lứa, ngày mà các bạn nữ tặng quà cho các bạn nam. Các bạn nữ nghĩ sao về việc tặng bạn nam mình yêu thương bằng 1 loại bánh ngọt vị dâu đầy ngọt ngào cùng với sô-cô-la. Chúc các bạn có ngày lễ tình nhân vui vẻ'),
(3, '8/3', 'nhung-loi-chuc-8-3-cuc-hay.jpg', 'Ngày Quốc tế Phụ nữ', 'Vào ngày này, các bạn nam nên tặng người khác giới hay người phụ nữ bạn yêu thương 1 loại bánh ngọt nhỏ nhắn cùng với hoa thì còn gì tuyệt vời hơn, chắc chắn sẽ làm các bạn sẽ có 1 ngày lễ tuyệt vời.'),
(4, '1/4', 'loi-to-tinh-1-4.png', 'Ngày Cá tháng Tư.(Ngày nói dối)', 'Ngày mà các bạn thích đi tỏ tình với người mình thích nếu có bị từ chối cũng có lý do rằng là \"đùa thôi\". Hay là các bạn thích trêu đùa nhau ngày này và tạo cho bạn bè người thân mình những cú lừa thì các bạn nghĩ sao khi mua những cái bánh kem ngọt ngào vừa để an ủi tâm trạng không vui vừa có thể cầm bánh kem úp (có thể ném hay tạo bẫy) vào người bạn muốn trêu đùa. Tin tôi nó sẽ rất vui'),
(5, '13/5', 'ngay-cua-me-1.jpg', 'Ngày của mẹ', 'Bạn chỉ cần đặt 1 loại bánh có vị ngọt vừa phải, nhiều kem kèm thêm tên của mẹ bạn và tặng họ cùng với lời chúc từ chính bạn nói ra thì mẹ bạn cũng sẽ hạnh phúc hết mức rồi. Ngày của mẹ vui vẻ'),
(6, '1/6', '5481_Quoc Te Thieu Nhi.jpg', 'Ngày Quốc tế thiếu nhi', 'Ngày của trẻ nhỏ, và hãy mua các loại bánh crepe hoặc su kem chẳng hạn, các em nhỏ sẽ rất thích thú đấy. Chúc các bạn vui vẻ khi mua hàng'),
(7, '17/6', 'ngay-cua-cha-2019.jpg', 'Ngày của cha', 'Qua ngày của mẹ, ngày thiếu nhi, thì ắt đến ngày của cha, và cũng như ngày của mẹ, dù bố ko thích bánh ngọt nhưng bạn có thể mua loại bánh trái cây hoàn toàn hợp lý để tặng người dù có khó tính. mong rằng bạn có thể nói lời cảm ơn đến bố bạn. Vui vẻ nhé!'),
(8, '20/10', 'hinh-anh-dep-20-10-3.jpg', 'Ngày Phụ nữ Việt Nam', 'Có quốc tế phụ nữ nên cũng sẽ có ngày phụ nữ việt Nam, tôn vinh người phụ nữ Việt Nam, Bạn nghĩ sao về đặt 1 loại bán và in hình gì đó lên để tặng cho những người phụ nữ hay bạn nữ xung quanh bạn, điều đó sẽ rất đặc biệt trong ngày như thế này đấy. Chúc vui vẻ'),
(9, '31/10', 'halloween.jpg', 'Ngày Halloween', 'Dù là ngày lễ của nước ngoài nhưng nước ta cũng đã dẫn hòa nhập và có ngày lễ này trong cuộc sống chúng ta. Ngày lễ Halloween là ngày của ma quỷ, ngày lễ này phổ biến là bánh táo và bánh bí ngô. Vậy nên chúc các bạn có 1 ngày lễ Halloween đầy hoảng sợ và cũng có cả niềm vui nữa. Muhahaha ...'),
(10, '20/11', 'happy-teacher’s-day-2016-wishes_1280x720.jpg', 'Ngày Nhà giáo Việt Nam', 'Ngày cảm ơn các thầy cô đã và đang giảng dạy bạn. Cố gắng mua cái bánh kem thật to hay mua 2 hay 3 cái để có thể cùng nhau tận hưởng ngày vui vẻ này nhé.'),
(11, '24/12', 'a1407154-c96a-11e6-97b9-cac091044fd5.jpg', 'Ngày lễ Giáng sinh', 'Thêm 1 ngày lễ của nước ngoài du nhập vào nước mình. Ngày trời lại thì nên ăn ít bánh và hãy thưởng thức những loại bánh pizza nóng hổi, để có thể ấm áp hơn vào mùa đông lạnh giá, nhất là với những bạn có gia đình hay người yêu thì đúng là 10/10 rồi');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(23, 23, '2020-07-27', 180000, 'ATM', '123dsadhs', '2020-07-27 07:42:04', '2020-07-27 07:42:04'),
(22, 22, '2020-07-20', 160000, 'COD', 'sadasdasdsa', '2020-07-20 05:54:48', '2020-07-20 05:54:48'),
(12, 12, '2017-03-21', 520000, 'COD', 'Vui lòng chuyển đúng hạn', '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(11, 12, '2017-03-21', 420000, 'COD', 'không chú', '2020-07-18 11:27:15', '2017-03-21 07:16:09'),
(15, 15, '2017-03-24', 220000, 'COD', 'e', '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(16, 15, '2020-07-03', 240000, 'COD', 'sdasdsad', '2020-07-18 11:28:18', '2020-07-03 10:17:41'),
(17, 17, '2020-07-13', 280000, 'COD', 'qưeqwe', '2020-07-13 09:29:16', '2020-07-13 09:29:16'),
(18, 18, '2020-07-15', 240000, 'COD', 'ádc', '2020-07-15 09:02:56', '2020-07-15 09:02:56'),
(19, 18, '2020-07-15', 240000, 'COD', '3132', '2020-07-18 11:30:47', '2020-07-15 09:21:48'),
(20, 20, '2020-07-16', 240000, 'COD', 'wdádas', '2020-07-16 04:24:58', '2020-07-16 04:24:58'),
(21, 21, '2020-07-16', 560000, 'ATM', 'ádasgh', '2020-07-16 04:49:58', '2020-07-16 04:49:58'),
(24, 24, '2020-07-27', 1380000, 'ATM', 'sedrftgyhjksdfcgvb', '2020-07-27 09:12:07', '2020-07-27 09:12:07'),
(25, 28, '2020-08-03', 220000, 'COD', 'kkkkkkkkkkkk', '2020-08-03 05:47:18', '2020-08-03 05:47:18'),
(26, 30, '2020-08-03', 520000, 'COD', 'asdadfgjk;qưertyui', '2020-08-03 06:41:58', '2020-08-03 06:41:58'),
(27, 32, '2020-08-03', 580000, 'COD', 'aqwertyui', '2020-08-03 06:54:19', '2020-08-03 06:54:19'),
(28, 33, '2020-08-03', 340000, 'COD', 'ưertyuio', '2020-08-03 07:35:01', '2020-08-03 07:35:01'),
(29, 34, '2020-08-03', 120000, 'COD', 'ádfghj', '2020-08-03 07:54:50', '2020-08-03 07:54:50'),
(31, 40, '2020-08-04', 60000, 'COD', '123456789', '2020-08-04 12:49:56', '2020-08-04 12:49:56'),
(32, 41, '2020-08-06', 60000, 'COD', 'ádfghjkl', '2020-08-06 11:28:40', '2020-08-06 11:28:40'),
(33, 42, '2020-08-06', 160000, 'COD', 'ertyuiop[', '2020-08-06 11:29:06', '2020-08-06 11:29:06'),
(35, 44, '2020-08-13', 300000, 'COD', 'qưertyu', '2020-08-13 01:08:11', '2020-08-13 01:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(18, 15, 62, 5, 220000, '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(17, 14, 2, 1, 160000, '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(16, 13, 60, 1, 200000, '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(15, 13, 59, 1, 200000, '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(14, 12, 60, 2, 200000, '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(13, 12, 61, 1, 120000, '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(12, 11, 61, 1, 120000, '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(11, 11, 57, 2, 150000, '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(19, 16, 1, 2, 120000, '2020-07-03 10:17:41', '2020-07-03 10:17:41'),
(20, 17, 13, 1, 280000, '2020-07-13 09:29:16', '2020-07-13 09:29:16'),
(21, 18, 1, 2, 120000, '2020-07-15 09:02:56', '2020-07-15 09:02:56'),
(22, 19, 1, 2, 120000, '2020-07-15 09:21:48', '2020-07-15 09:21:48'),
(23, 20, 1, 2, 120000, '2020-07-16 04:24:58', '2020-07-16 04:24:58'),
(24, 21, 13, 2, 280000, '2020-07-16 04:49:58', '2020-07-16 04:49:58'),
(25, 22, 2, 1, 160000, '2020-07-20 05:54:48', '2020-07-20 05:54:48'),
(26, 23, 2, 3, 60000, '2020-07-27 07:42:04', '2020-07-27 07:42:04'),
(27, 24, 13, 2, 280000, '2020-07-27 09:12:07', '2020-07-27 09:12:07'),
(28, 24, 2, 1, 60000, '2020-07-27 09:12:07', '2020-07-27 09:12:07'),
(29, 24, 7, 1, 160000, '2020-07-27 09:12:07', '2020-07-27 09:12:07'),
(30, 24, 15, 1, 320000, '2020-07-27 09:12:07', '2020-07-27 09:12:07'),
(31, 24, 14, 1, 280000, '2020-07-27 09:12:07', '2020-07-27 09:12:07'),
(32, 25, 25, 1, 70000, '2020-08-03 05:47:18', '2020-08-03 05:47:18'),
(33, 25, 22, 1, 150000, '2020-08-03 05:47:18', '2020-08-03 05:47:18'),
(34, 26, 14, 1, 280000, '2020-08-03 06:41:58', '2020-08-03 06:41:58'),
(35, 26, 6, 1, 180000, '2020-08-03 06:41:58', '2020-08-03 06:41:58'),
(36, 26, 2, 1, 60000, '2020-08-03 06:41:58', '2020-08-03 06:41:58'),
(37, 27, 2, 2, 60000, '2020-08-03 06:54:19', '2020-08-03 06:54:19'),
(38, 27, 13, 1, 280000, '2020-08-03 06:54:19', '2020-08-03 06:54:19'),
(39, 27, 12, 1, 180000, '2020-08-03 06:54:19', '2020-08-03 06:54:19'),
(40, 28, 2, 1, 60000, '2020-08-03 07:35:01', '2020-08-03 07:35:01'),
(41, 28, 13, 1, 280000, '2020-08-03 07:35:01', '2020-08-03 07:35:01'),
(42, 29, 2, 2, 60000, '2020-08-03 07:54:50', '2020-08-03 07:54:50'),
(43, 30, 7, 2, 160000, '2020-08-03 08:06:12', '2020-08-03 08:06:12'),
(44, 30, 13, 1, 280000, '2020-08-03 08:06:12', '2020-08-03 08:06:12'),
(45, 31, 2, 1, 60000, '2020-08-04 12:49:57', '2020-08-04 12:49:57'),
(46, 32, 2, 1, 60000, '2020-08-06 11:28:40', '2020-08-06 11:28:40'),
(47, 33, 7, 1, 160000, '2020-08-06 11:29:06', '2020-08-06 11:29:06'),
(48, 34, 13, 1, 280000, '2020-08-06 13:08:57', '2020-08-06 13:08:57'),
(49, 34, 22, 1, 150000, '2020-08-06 13:08:57', '2020-08-06 13:08:57'),
(50, 35, 22, 2, 150000, '2020-08-13 01:08:11', '2020-08-13 01:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(15, 'ê', 'Nữ', 'huongnguyen@gmail.com', 'e', 'e', 'e', '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(14, 'hhh', 'nam', 'huongnguyen@gmail.com', 'Lê thị riêng', '99999999999999999', 'k', '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(13, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '23456789', 'Vui lòng giao hàng trước 5h', '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(12, 'Khoa phạm', 'Nam', 'khoapham@gmail.com', 'Lê thị riêng', '1234567890', 'Vui lòng chuyển đúng hạn', '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(11, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '234567890-', 'không chú', '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(16, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'sdasdsad', '2020-07-03 10:17:41', '2020-07-03 10:17:41'),
(17, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'qưeqwe', '2020-07-13 09:29:16', '2020-07-13 09:29:16'),
(18, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'ádc', '2020-07-15 09:02:56', '2020-07-15 09:02:56'),
(19, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', '3132', '2020-07-15 09:21:48', '2020-07-15 09:21:48'),
(20, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'wdádas', '2020-07-16 04:24:58', '2020-07-16 04:24:58'),
(21, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'ádasgh', '2020-07-16 04:49:58', '2020-07-16 04:49:58'),
(22, 'tungsweet', 'nam', 'phan.trung.99@gmail.com', 'mars', '0199999933', 'sadasdasdsa', '2020-07-20 05:54:48', '2020-07-20 05:54:48'),
(23, 'tungsweet', 'nữ', 'nganthoi@gmail.com', 'mars', '0199999933', '123dsadhs', '2020-07-27 07:42:04', '2020-07-27 07:42:04'),
(24, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'sedrftgyhjksdfcgvb', '2020-07-27 09:12:07', '2020-07-27 09:12:07'),
(25, 'sdf', 'nam', 'gidohayhay@gmail.com', 'sadsadsad', '0199999933', 'ertyuiodfghjk', '2020-07-27 09:12:24', '2020-07-27 09:12:24'),
(26, 'sdf', 'nam', 'gidohayhay@gmail.com', 'sadsadsad', '0199999933', 'ertyuiodfghjk', '2020-07-27 09:12:39', '2020-07-27 09:12:39'),
(27, 'sdf', 'nam', 'gidohayhay@gmail.com', 'sadsadsad', '0199999933', 'ertyuiodfghjk', '2020-07-27 09:47:51', '2020-07-27 09:47:51'),
(28, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'sadsadsad', '0199999933', 'kkkkkkkkkkkk', '2020-08-03 05:47:18', '2020-08-03 05:47:18'),
(29, 'tungsweet', 'nam', 'gidohayhay@gmail.com', 'ccccaaa', '0199999933', 'ưieuiwiyeqwi', '2020-08-03 05:47:49', '2020-08-03 05:47:49'),
(30, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'asdadfgjk;qưertyui', '2020-08-03 06:41:58', '2020-08-03 06:41:58'),
(31, 'Khoa phạm', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', '123456789', '2020-08-03 06:53:07', '2020-08-03 06:53:07'),
(32, 'Khoa phạm', 'nam', 'phan.trung.99@gmail.com', 'mars', '0199999933', 'aqwertyui', '2020-08-03 06:54:19', '2020-08-03 06:54:19'),
(33, 'tungsweet', 'nam', 'gidohayhay@gmail.com', 'helll', '0199999933', 'ưertyuio', '2020-08-03 07:35:01', '2020-08-03 07:35:01'),
(34, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'helll', '0199999933', 'ádfghj', '2020-08-03 07:54:50', '2020-08-03 07:54:50'),
(35, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'ádfghjk', '2020-08-03 07:56:02', '2020-08-03 07:56:02'),
(36, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'ádfghjk', '2020-08-03 08:00:12', '2020-08-03 08:00:12'),
(37, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'zsdfg', '2020-08-03 08:00:23', '2020-08-03 08:00:23'),
(38, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'zsdfg', '2020-08-03 08:01:37', '2020-08-03 08:01:37'),
(39, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'zxcvbnm,', '2020-08-03 08:06:12', '2020-08-03 08:06:12'),
(40, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'sadsadsad', '0199999933', '123456789', '2020-08-04 12:49:56', '2020-08-04 12:49:56'),
(41, 'tungsweet', 'nam', 'nganthoi@gmail.com', 'helll', '0199999933', 'ádfghjkl', '2020-08-06 11:28:40', '2020-08-06 11:28:40'),
(42, 'Khoa phạm', 'nam', 'nganthoi@gmail.com', 'mars', '0199999933', 'ertyuiop[', '2020-08-06 11:29:06', '2020-08-06 11:29:06'),
(43, 'aksmdklas', 'nam', 'nam12hn@gmail.com', 'nám', '0199999933', 'nam ngo kjaskldjsadkasla', '2020-08-06 13:08:57', '2020-08-06 13:08:57'),
(44, 'nam', 'nam', 'nam123hn@gmail.com', 'qqqqq', '0199999933', 'qưertyu', '2020-08-13 01:08:11', '2020-08-13 01:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(2, 'Bánh lava chocolate', 5, 'Bánh lava chocolate', 180000, 60000, 'cach-lam-banh-lava-chocolate-ngot-ngao-cho-co-nag-ban-ron-1.jpg', 'hộp', 1, '2016-10-26 03:00:16', '2020-07-20 06:17:17'),
(3, 'Bánh su kem', 5, 'Bánh su kem', 150000, 120000, 'recipe14845-635609728286090639.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(4, 'Bánh mỳ hoa quả', 5, 'Bánh mỳ hoa quả', 160000, 0, 'Old-English-Fruitcake-2.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(5, 'Bánh Crepe Dâu', 5, 'bánh nhiều kem và dâu tay ngọt mát', 160000, 0, 'crepedau.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2020-06-25 07:50:24'),
(6, 'Bánh Crepe Pháp', 5, '', 200000, 180000, 'crepe-phap.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(7, 'Bánh Crepe Táo', 5, '', 160000, 0, 'crepe-tao.jpg', 'hộp', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(8, 'Bánh Crepe Trà xanh', 5, '', 160000, 150000, 'crepe-traxanh.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(9, 'Bánh Crepe Sầu riêng và Dứa', 5, '', 160000, 150000, 'saurieng-dua.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(11, 'Bánh Gato Trái cây Việt Quất', 3, '', 250000, 0, '544bc48782741.png', 'cái', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(12, 'Bánh sinh nhật rau câu trái cây', 3, '', 200000, 180000, '210215-banh-sinh-nhat-rau-cau-body- (6).jpg', 'cái', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(13, 'Bánh kem Chocolate Dâu', 3, '', 300000, 280000, 'banh kem sinh nhat.jpg', 'cái', 1, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(14, 'Bánh kem Dâu III', 3, '', 300000, 280000, 'strawberry-cake-with-champagne-buttercream-taste-153204-1.webp', 'cái', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(15, 'Bánh kem Dâu I', 3, '', 350000, 320000, 'strawberry-cake-jpg-1522267153.jpg', 'cái', 1, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(16, 'Bánh trái cây II', 3, '', 150000, 120000, 'banh-pizza-hoa-qua.jpg', 'hộp', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(17, 'Bánh táo', 3, 'Bánh táo', 250000, 240000, 'apple-cake.jpg', 'cai', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(18, 'Bánh ngọt nhân cream táo', 2, '', 180000, 0, '20131108144733.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(19, 'Bánh kem hoa quả', 2, 'Bánh kem hoa quả', 150000, 0, 'Angel-Fruit-Trifle-4.jpg', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(21, 'Peach Cake', 2, '', 160000, 150000, 'fc80do068-02-main.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(22, 'Bánh kẹo socola kiểu I', 1, 'Bánh kẹo socola kiểu I', 160000, 150000, 'Candy-Dish-Layer-Cake_ExtraLarge1000_ID-2906327.jpg', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(25, 'Cupcake\r\n', 1, '', 80000, 70000, 'cupcakes_93722_16x9.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(27, 'Cupcake vị trà xanh\r\n', 1, '', 100000, 80000, 'cropped-cach-lam-banh-cupcake-tra-xanh.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(28, 'Bánh Scone Peach cheese Cake', 1, '', 120000, 0, '70143c113162cd9b0a840b41d964b745.jpg', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(30, 'Bánh quy bơ\r\n', 4, '', 380000, 350000, 'banhquybo.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(31, 'Thạch hoa quả', 4, '', 380000, 350000, 'thachhoaqua.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(32, 'Bánh flan dừa', 4, '', 380000, 350000, 'banh-flan-dua-la-dua.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(33, 'Bánh quy socola chip', 4, '', 280000, 250000, 'banhquychip.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(34, 'Bánh chiffon dưa hấu', 4, '', 280000, 0, 'chiffonmelon.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(35, 'Bánh kem dâu tây', 4, '', 320000, 300000, 'banhkemdau.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(36, 'Bánh gấu socola browny', 4, '', 320000, 300000, 'unnamed.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(37, 'Bánh kem xoài', 4, '', 320000, 300000, 'banhkemxoai.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(38, 'Bánh pizza hawaii\r\n', 4, '', 350000, 330000, 'banh-pizza-thom-ngon.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(39, 'Bánh kem Flower Fruit', 4, '', 350000, 330000, 'images.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(40, 'Bánh kem Strawberry Delight', 4, '', 350000, 330000, 'maxresdefault.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(41, 'Bánh kem Raspberry Delight', 4, '', 350000, 330000, 'd838589c8b2fbdd6e9d0f09faef3555b.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(42, 'Beefy Pizza', 6, 'Thịt bò xay, ngô, sốt BBQ, phô mai mozzarella', 150000, 130000, '40819_food_pizza.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(43, 'Hawaii Pizza', 6, 'Sốt cà chua, ham , dứa, pho mai mozzarella', 120000, 0, 'hawaiian paradise_large-900x900.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(47, 'All Meaty Pizza', 6, 'Ham, bacon, chorizo, pho mai mozzarella.', 140000, 0, 'all1).jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(49, 'Bánh su kem nhân dừa', 7, '', 120000, 100000, 'bánhukemnhandua.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(50, 'Bánh su kem sữa tươi', 7, '', 120000, 100000, 'photo.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(51, 'Bánh su kem sữa tươi chiên giòn', 7, '', 150000, 0, '1434429117-banh-su-kem-chien-20.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(54, 'Bánh su kem nhân trái cây sữa tươi', 7, '', 150000, 0, 'mach-chi-em-cach-lam-banh-su-kem-ngon-bat-bai-ma-cuc-ky-nhanh-gon-10-1537772050-942-width650height488.jpg', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(57, 'Bánh su kem sữa tươi chocolate', 7, '', 150000, 0, 'banhsukemscl.jpg', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(58, 'Bánh Macaron Pháp', 2, 'Thưởng thức macaron, người ta có thể tìm thấy từ những hương vị truyền thống như mâm xôi, chocolate, cho đến những hương vị mới như nấm và trà xanh. Macaron với vị giòn tan của vỏ bánh, béo ngậy ngọt ngào của phần nhân, với vẻ ngoài đáng yêu và nhiều màu sắc đẹp mắt, đây là món bạn không nên bỏ qua khi khám phá nền ẩm thực Pháp.', 200000, 180000, 'hinh-banh-macaron-600x400.jpg', '', 0, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(59, 'Bánh Tiramisu - Italia', 2, 'Chỉ cần cắn một miếng, bạn sẽ cảm nhận được tất cả các hương vị đó hòa quyện cùng một chính vì thế người ta còn ví món bánh này là Thiên đường trong miệng của bạn', 200000, 0, '234.jpg', '', 0, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(60, 'Bánh Táo - Mỹ', 2, 'Bánh táo Mỹ với phần vỏ bánh mỏng, giòn mềm, ẩn chứa phần nhân táo thơm ngọt, điểm chút vị chua dịu của trái cây quả sẽ là một lựa chọn hoàn hảo cho những tín đồ bánh ngọt trên toàn thế giới.', 200000, 0, '1234.jpg', '', 0, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(61, 'Bánh Cupcake - Anh Quốc', 6, 'Những chiếc cupcake có cấu tạo gồm phần vỏ bánh xốp mịn và phần kem trang trí bên trên rất bắt mắt với nhiều hình dạng và màu sắc khác nhau. Cupcake còn được cho là chiếc bánh mang lại niềm vui và tiếng cười như chính hình dáng đáng yêu của chúng.', 150000, 120000, 'Những chiếc bánh cupcake ngọt ngào và siêu dễ thương(1).jpg', 'cái', 1, NULL, NULL),
(62, 'Bánh Sachertorte', 6, 'Sachertorte là một loại bánh xốp được tạo ra bởi loại&nbsp;chocholate&nbsp;tuyệt hảo nhất của nước Áo. Sachertorte có vị ngọt nhẹ, gồm nhiều lớp bánh được làm từ ruột bánh mì và bánh sữa chocholate, xen lẫn giữa các lớp bánh là mứt mơ. Món bánh chocholate này nổi tiếng tới mức thành phố Vienna của Áo đã ấn định&nbsp;tổ chức một ngày Sachertorte quốc gia, vào 5/12 hằng năm', 250000, 220000, '111.jpg', 'cái', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Bánh mặn', 'Nếu từng bị mê hoặc bởi các loại tarlet ngọt thì chắn chắn bạn không thể bỏ qua những loại tarlet mặn. Ngoài hình dáng bắt mắt, lớp vở bánh giòn giòn cùng với nhân mặn như thịt gà, nấm, thị heo ,… của bánh sẽ chinh phục bất cứ ai dùng thử.', 'banh-man-thu-vi-nhat-1.jpg', NULL, NULL),
(2, 'Bánh ngọt', 'Bánh ngọt là một loại thức ăn thường dưới hình thức món bánh dạng bánh mì từ bột nhào, được nướng lên dùng để tráng miệng. Bánh ngọt có nhiều loại, có thể phân loại dựa theo nguyên liệu và kỹ thuật chế biến như bánh ngọt làm từ lúa mì, bơ, bánh ngọt dạng bọt biển. Bánh ngọt có thể phục vụ những mục đính đặc biệt như bánh cưới, bánh sinh nhật, bánh Giáng sinh, bánh Halloween..', '20131108144733.jpg', '2016-10-12 02:16:15', '2016-10-13 01:38:35'),
(3, 'Bánh trái cây', 'Bánh trái cây, hay còn gọi là bánh hoa quả, là một món ăn chơi, không riêng gì của Huế nhưng khi \"lạc\" vào mảnh đất Cố đô, món bánh này dường như cũng mang chút tinh tế, cầu kỳ và đặc biệt. Lấy cảm hứng từ những loại trái cây trong vườn, qua bàn tay khéo léo của người phụ nữ Huế, món bánh trái cây ra đời - ngọt thơm, dịu nhẹ làm đẹp lòng biết bao người thưởng thức.', 'banhtraicay.jpg', '2016-10-18 00:33:33', '2016-10-15 07:25:27'),
(4, 'Bánh kem', 'Với người Việt Nam thì bánh ngọt nói chung đều hay được quy về bánh bông lan – một loại tráng miệng bông xốp, ăn không hoặc được phủ kem lên thành bánh kem. Tuy nhiên, cốt bánh kem thực ra có rất nhiều loại với hương vị, kết cấu và phương thức làm khác nhau chứ không chỉ đơn giản là “bánh bông lan” chung chung đâu nhé!', 'banhkem.jpg', '2016-10-26 03:29:19', '2016-10-26 02:22:22'),
(5, 'Bánh crepe', 'Crepe là một món bánh nổi tiếng của Pháp, nhưng từ khi du nhập vào Việt Nam món bánh đẹp mắt, ngon miệng này đã làm cho biết bao bạn trẻ phải “xiêu lòng”', 'crepe.jpg', '2016-10-28 04:00:00', '2016-10-27 04:00:23'),
(6, 'Bánh Pizza', 'Pizza đã không chỉ còn là một món ăn được ưa chuộng khắp thế giới mà còn được những nhà cầm quyền EU chứng nhận là một phần di sản văn hóa ẩm thực châu Âu. Và để được chứng nhận là một nhà sản xuất pizza không hề đơn giản. Người ta phải qua đủ mọi các bước xét duyệt của chính phủ Ý và liên minh châu Âu nữa… tất cả là để đảm bảo danh tiếng cho món ăn này.', 'pizza.jpg', '2016-10-25 17:19:00', NULL),
(7, 'Bánh su kem', 'Bánh su kem là món bánh ngọt ở dạng kem được làm từ các nguyên liệu như bột mì, trứng, sữa, bơ.... đánh đều tạo thành một hỗn hợp và sau đó bằng thao tác ép và phun qua một cái túi để định hình thành những bánh nhỏ và cuối cùng được nướng chín. Bánh su kem có thể thêm thành phần Sô cô la để tăng vị hấp dẫn. Bánh có xuất xứ từ nước Pháp.', 'sukemdau.jpg', '2016-10-25 17:19:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Phan Trung Phu', 'phupt.humg.94@gmail.com', '$2y$10$Mvd0SwKimKXmaWeoRsvRDO0B1ywAfkOV5U4XyYtYq.oYPs0w277yC', '0986420994', 'Ngách 138, Số nhà 62', 1, 'PBvXbSawZ3csj5JBbSExE745jEaNPoLzwdvA8GhuVpxjhQuVTUSg2VXaZYGr', '2019-09-29 05:42:09', '2019-09-29 05:42:09'),
(8, 'nhat nam nguyen tran', 'nam12hn@gmail.com', '$2y$10$/3V.YhhT70w53os1ntIk1.Wg4US.dZ3oxPRM7kngQ60Cpquaav7/y', '123456789', 'nnônno', 1, NULL, '2020-06-08 07:38:50', '2020-06-08 07:38:50'),
(10, 'Nguyễn Thanh Tùng', 'nganthoi@gmail.com', '$2y$10$rj.s0/xCq8pIcRPxdPpx4.BHXabk3emsrZYGDLTS7PG2eJkHVksWm', '0199999933', 'mars', 1, 'nMCDuTHSCsrDhuW6dDqLUvD7dMpDxL6MmK1IHzLBv35B8qQFMsnBE2yQ9Uos', '2020-06-25 07:02:42', '2020-06-25 07:02:42'),
(11, 'Nguyễn Thanh Tùng', 'ccc@gmail.com', '$2y$10$nN.wsTfEsvXoC02DdRSmUOAwiy3CVddXL3dj5ETS9VCM0dDSVH1B.', '0199999933', 'sadsadsad', 1, 'uwTJ6SGuvkKIqBTVS9IAMZ8emJdpQ357TExGVGhHA9movrzr7Gy53orytGsG', '2020-07-27 07:47:23', '2020-07-27 07:47:23'),
(12, 'hell', 'gidohayhay@gmail.com', '$2y$10$qsiM2p7DJ9BDYnvnZutiquu/EoKbnMwEFASAbNOX3Jk5vz2/DbdWm', '0199999933', 'trái đất', 1, 'x1pDWuOZuOSBAvmz5cZ0YWZNPyihvC3XLMfrXd9ynaNN8eEMpbCP91RlQLd0', '2020-08-03 05:45:40', '2020-08-03 05:45:40'),
(13, 'Nam', 'nam123hn@gmail.com', '$2y$10$nF44z85r2/2b9haERVPtQeyhD1nPm9EvaWHLSvqjrW/82Bdw0UyWC', '0199999933', 'ád', 1, 'EoSfLUiFJdM2eFqDimJ5KbXJWNG2SiGbk674PVFGwT3OrVfXjRWJUVzVruur', '2020-08-13 01:05:58', '2020-08-13 01:05:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `attentions`
--
ALTER TABLE `attentions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Indexes for table `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attentions`
--
ALTER TABLE `attentions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
