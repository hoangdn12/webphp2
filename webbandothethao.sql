-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 12, 2022 lúc 08:10 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `websitebandothethao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_User` varchar(255) NOT NULL,
  `admin_Name` varchar(255) NOT NULL,
  `admin_Email` varchar(255) NOT NULL,
  `admin_Pass` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_User`, `admin_Name`, `admin_Email`, `admin_Pass`, `level`) VALUES
('admin', 'Nguyễn Hoàng Long', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 0),
('linhlinh', 'heoheo', 'heoheo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
('staff1', 'cac staff', 'sadsadsad@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(44, 'Converse'),
(45, 'Fila'),
(49, 'Puma'),
(51, 'Adidas'),
(52, 'Nike'),
(53, 'ASICS'),
(54, 'New Balance'),
(57, 'Reebok');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `ssId` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productName`, `ssId`, `price`, `size`, `quantity`, `image`) VALUES
(189, 'Vans UA Sport Suede - VN0A4BU6XW3', 'g7tra27g77uiadp0iv1dhn5rkd', 160, '35', 17, '2d391f7fc9.jpg'),
(191, 'Korea 2020 Stadium Away', 'g7tra27g77uiadp0iv1dhn5rkd', 100, 'M', 191, '4f3793a7fb.jpg'),
(194, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '2v31j7flp508afsat0bfb1kpir', 1280000, '38', 1, '9d5064dc07.jpg'),
(195, 'Vans UA Sport Suede - VN0A4BU6XW3', '2v31j7flp508afsat0bfb1kpir', 160, '35', 15, '2d391f7fc9.jpg'),
(212, 'PRIMEBLUE ULTRABOOST 20', 'psebnmap26fkur5oi8mdns309p', 220, '41', 1, 'f02eca4501.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL,
  `catSize` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`, `catSize`) VALUES
(1, 'Giày', '37'),
(2, 'Giày', '38'),
(3, 'Giày', '39'),
(4, 'Giày', '40'),
(5, 'Giày', '41'),
(6, 'Giày', '42'),
(7, 'Giày', '43'),
(8, 'Giày', '35'),
(9, 'Giày', '36'),
(10, 'Giày', '44'),
(11, 'Giày', '34'),
(12, 'Quần', '28'),
(13, 'Quần', '29'),
(14, 'Quần', '30'),
(15, 'Quần', '31'),
(16, 'Quần', '32'),
(17, 'Quần', '33'),
(18, 'Quần', '34'),
(19, 'Quần', '35'),
(20, 'Quần', '36'),
(21, 'Áo', 'S'),
(22, 'Áo', 'M'),
(23, 'Áo', 'L'),
(24, 'Áo', 'XL'),
(25, 'Áo', 'XXL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nameCus` varchar(255) NOT NULL,
  `emailCus` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`username`, `password`, `nameCus`, `emailCus`, `address`, `phone`) VALUES
('a', '0cc175b9c0f1b6a831c399e269772661', 'a', '1', '1', 1),
('longlong', '4419f40c03b445134e2362d0c7bce035', 'Hoàng Long Nguyễn', 'nguyenroony123@gmail.com', 'New york city', 949220009),
('longnguyen', '36ed58c5c14dc2f58eef099585d2a939\r\n', 'Nguyễn Hoàng Long', 'nguyenlong@gmail.com', 'New York, Mỹ', 905152290);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id_discount` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_discount`
--

INSERT INTO `tbl_discount` (`id_discount`, `code`, `discount`) VALUES
(7, 'Giamgialientay', 10),
(8, 'BlackFriday1123', 15),
(9, 'Christmas', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_imgthumb`
--

CREATE TABLE `tbl_imgthumb` (
  `id` int(11) NOT NULL,
  `imgthumb` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_imgthumb`
--

INSERT INTO `tbl_imgthumb` (`id`, `imgthumb`, `product`) VALUES
(2, '5eeb8d0c7f.jpg', 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_Id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `buyer` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `totalprice` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_Id`, `date`, `buyer`, `receiver`, `phone`, `email`, `address`, `totalprice`, `status`) VALUES
(114, '2021-11-24 09:58:44', 'a', 'a', 13213, '1312321', '3213213', 1335, '2'),
(115, '2021-11-25 03:45:23', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 240, '0'),
(116, '2021-11-25 03:49:07', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 78, '1'),
(117, '2021-11-25 04:09:00', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 120, '0'),
(118, '2021-11-25 06:37:47', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 120, '1'),
(119, '2021-11-25 06:41:09', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 270, '0'),
(120, '2021-11-25 06:44:02', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 230, '2'),
(121, '2021-11-25 06:52:50', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 78, '0'),
(122, '2021-11-25 07:06:12', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 200, '1'),
(123, '2021-11-25 12:20:28', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 230, '2'),
(124, '2021-11-25 13:23:15', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 156, '0'),
(125, '2021-12-11 06:12:28', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 50, '0'),
(126, '2021-12-11 06:13:16', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 250, '2'),
(127, '2021-12-11 06:24:38', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 942, '1'),
(128, '2021-12-11 06:59:50', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 240, '0'),
(129, '2021-12-11 07:03:37', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 60, '0'),
(130, '2021-12-11 07:58:16', 'longlong', 'Hoàng Long Nguyễn', 949220009, 'nguyenroony123@gmail.com', 'New york city', 240, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orderdetails`
--

CREATE TABLE `tbl_orderdetails` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_orderdetails`
--

INSERT INTO `tbl_orderdetails` (`id`, `id_order`, `productName`, `size`, `quantity`, `image`, `price`) VALUES
(88, 114, 'Nike Air 231', '42', 5, 'dd9d63206f.jfif', 267),
(89, 115, 'ÁO THUN HEAT.RDY WARRIOR', '34', 2, 'c0c37198a3.jpg', 120),
(90, 116, 'Brooklyn Nets Showtime City Edition', 'XL', 1, '4e3385f698.jfif', 78),
(91, 117, 'ÁO THUN HEAT.RDY WARRIOR', '34', 1, 'c0c37198a3.jpg', 120),
(92, 118, 'ÁO THUN HEAT.RDY WARRIOR', '34', 1, 'c0c37198a3.jpg', 120),
(93, 119, 'LeBron 19', '38', 1, 'a3a7d9755b.jfif', 270),
(94, 120, 'Air Jordan 1 Retro High OG', '42', 1, 'a307eac2ea.jfif', 230),
(95, 121, 'Brooklyn Nets Showtime City Edition', 'XL', 1, '4e3385f698.jfif', 78),
(96, 122, 'QUẦN GIÓ 3 SỌC PLAYER', '35', 2, '18baf0b779.jpg', 100),
(97, 123, 'Air Jordan 1 Retro High OG', '42', 1, 'a307eac2ea.jfif', 230),
(98, 124, 'Brooklyn Nets Showtime City Edition', 'XL', 2, '4e3385f698.jfif', 78),
(99, 125, 'Áo Thun Nam Puma Graphic Tee Tfs', 'L', 1, '8f650f8273.jpg', 50),
(100, 126, 'Áo Thun Nam Puma Graphic Tee Tfs', 'L', 5, '8f650f8273.jpg', 50),
(101, 127, 'Áo Thun Nam Puma Graphic Tee Tfs', 'L', 3, '8f650f8273.jpg', 50),
(102, 127, 'Giày Bóng Rổ Nam Nike Zoom Freak 2', '43', 4, '7f05633bac.jpg', 198),
(103, 128, 'ÁO THUN HEAT.RDY WARRIOR', '31', 2, 'c0c37198a3.jpg', 120),
(104, 129, 'Áo thun New Balance Kl2 ‘Phantom’ MT03596PHM', 'L', 1, '6632569570.png', 60),
(105, 130, 'ÁO THUN HEAT.RDY WARRIOR', '32', 2, 'c0c37198a3.jpg', 120);

--
-- Bẫy `tbl_orderdetails`
--
DELIMITER $$
CREATE TRIGGER `trg_delete` AFTER DELETE ON `tbl_orderdetails` FOR EACH ROW UPDATE tbl_product SET tbl_product.quantity = tbl_product.quantity + old.quantity
WHERE tbl_product.productName = old.productName AND tbl_product.size = old.size
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_update` BEFORE INSERT ON `tbl_orderdetails` FOR EACH ROW UPDATE tbl_product SET tbl_product.quantity = tbl_product.quantity - new.quantity
WHERE tbl_product.productName = new.productName AND tbl_product.size = new.size
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `price` bigint(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `size`, `price`, `quantity`, `image`, `type`, `description`) VALUES
(151, 'QUẦN SHORT THỂ THAO HEAT.RDY', 12, 51, '35', 89, 7, '1462f75a4f.jpg', 0, 'CHIẾC QUẦN SHORT THỂ THAO TÍCH HỢP VÙNG THOÁNG KHÍ. Trời nắng nóng oi ả nhưng bạn lại cảm nhận chính nguồn năng lượng ấy đang thúc đẩy mình tiến bước. Chiếc quần short tập luyện thiếu niên adidas này có thiết kế HEAT.RDY giúp bạn luôn mát mẻ. Chất vải dệt kim co giãn hỗ trợ vận động, từ sân bóng tới sân trượt ván.  Sản phẩm này may bằng vải công nghệ Primeblue, chất liệu tái chế hiệu năng cao có sử dụng sợi Parley Ocean Plastic.'),
(152, 'ÁO HOODIE FULL-ZIP 3 SỌC FUTURE ICONS', 21, 51, 'XL', 96, 10, 'd4e185a962.jpg', 0, 'CHIẾC ÁO HOODIE ĐẦY TÍNH BIỂU TƯỢNG DÀNH CHO VẬN ĐỘNG VIÊN KHI NGHỈ NGƠI. Bạn luôn ghi điểm từ mọi góc nhìn. Chiếc áo hoodie thiếu niên này hòa chung thần thái ấy. F5 phong cách adidas của bạn với phiên bản 3 Sọc đầy mới mẻ. Tận hưởng cảm giác thoải mái khi đi chơi cùng bạn bè hay thư giãn sau buổi tập nhờ chất vải dệt kim mềm mại. Không nói nhiều nữa. Hành động thôi.  Sản phẩm này may bằng vải công nghệ Primegreen, thuộc dòng chất liệu tái chế hiệu năng cao.'),
(153, 'QUẦN ỐNG CÔN 3 SỌC FUTURE ICONS', 12, 51, '36', 92, 8, '38ba6444c5.jpg', 0, 'CHIẾC QUẦN ỐNG CÔN DÀNH CHO NGÔI SAO TƯƠNG LAI. Hãy để 3 Sọc giúp bạn nói lên tất cả. Khởi động hoặc thả lỏng trước và sau buổi tập với chiếc quần thiếu niên này. Thể hiện tình yêu adidas trong bạn với phiên bản 3 Sọc đầy mới mẻ. Chất vải dệt kim mềm mại khiến ngày nào cũng như cuối tuần. Vậy là đủ.  Sản phẩm này may bằng vải công nghệ Primegreen, thuộc dòng chất liệu tái chế hiệu năng cao.'),
(154, 'ÁO THUN HEAT.RDY WARRIOR', 12, 51, '34', 120, 6, 'c0c37198a3.jpg', 1, 'CHIẾC ÁO THUN ÔM SÁT VỚI CÔNG NGHỆ HEAT.DRY GIÚP BẠN LUÔN MÁT MẺ. Boot camp: Ngày đầu tiên. Tưởng gì, vẫn là cuộc thi vượt chướng ngại vật bơm hơi. Bạn sẽ hoàn thành như chơi nhà phao mà thôi. Chiếc áo thun tập luyện adidas này sử dụng công nghệ HEAT.RDY tăng cường lưu thông khí tối đa, giúp bạn luôn mát mẻ khi vận động. Chỉ ba phút sau bạn đã lao qua thác nước và thoát ra ngoài thành công.'),
(155, 'QUẦN GIÓ 3 SỌC PLAYER', 12, 51, '35', 100, 12, '18baf0b779.jpg', 1, 'CHIẾC QUẦN TẬP CÓ KHÓA KÉO Ở MẮT CÁ CHÂN. Lên đồ cho diện mạo và cảm giác như vận động viên chuyên nghiệp với chiếc quần gió adidas này. Với thiết kế dành cho tập luyện bóng đá và bóng chày, chiếc quần này có kiểu dáng regular fit thông thường và các túi chìm hai bên. Khóa kéo ở mắt cá giúp bạn dễ dàng mặc vào và cởi ra khi thời tiết thay đổi.  Sản phẩm này may bằng vải công nghệ Primegreen, thuộc dòng chất liệu tái chế hiệu năng cao.'),
(161, 'Nike Sportswear Icon Clash', 12, 52, '36', 88, 10, 'b072b0d9ef.jfif', 1, 'The Nike Sportswear Wide-Leg Trousers are a care-free, roomy style made from sanded and smooth woven fabrics.The unique combination of woven fabrics is accented with a woven stripe that pays tribute to classic sportswear design.This product is made from at least 75% recycled polyester and recycled nylon fibres.'),
(162, 'Brooklyn Nets Showtime City Edition', 21, 52, 'XL', 78, 6, '4e3385f698.jfif', 1, 'Old-school is the new look for this authentic NBA warm-up. The Brooklyn Nets Showtime City Edition Jacket offers an all-time-greatest-hits mix of team colours and details. The stretchy, striped ribbing, raglan sleeves and lettering are pure vintage, while the performance double-knit fabric keeps you comfortable. And being the NBA\'s 75th season, it\'s embellished with a special logo to honour the diamond anniversary.'),
(163, 'Los Angeles Lakers City Edition', 12, 52, '34', 150, 7, '76fbe78299.jfif', 0, 'Suit up like the pros in the Los Angeles Lakers City Edition Swingman Shorts. Made from smooth, lightweight fabric with sweat-wicking technology, they have authentic team colours and details that match what the players wear on court. This product is made from 100% recycled polyester fibres.'),
(164, 'Los Angeles Lakers City Edition', 12, 52, '34', 150, 7, '9dc787568f.jfif', 0, 'Suit up like the pros in the Los Angeles Lakers City Edition Swingman Shorts. Made from smooth, lightweight fabric with sweat-wicking technology, they have authentic team colours and details that match what the players wear on court. This product is made from 100% recycled polyester fibres.'),
(184, 'Áo thun New Balance Kl2 ‘Phantom’ MT03596PHM', 21, 54, 'L', 60, 18, '6632569570.png', 1, 'New Balance là một thương hiệu thời trang và giày thể thao từ Mỹ. Hơn 100 năm qua, New Balance luôn tìm hiểu nhu cầu của những vận động viên để đầu tư, thiết kế những sản phẩm phù hợp. New Balance luôn tập trung đến từng chuyển động của cơ thể con người để có thể “Tạo-Ra-Điều-Tuyệt-Vời” (Making Excellent Happen)!'),
(185, 'Quần dài New Balance Kl2 ‘Black’ MP03598BM', 12, 54, '35', 56, 14, 'dcf7a37691.png', 0, 'New Balance là một thương hiệu thời trang và giày thể thao từ Mỹ. Hơn 100 năm qua, New Balance luôn tìm hiểu nhu cầu của những vận động viên để đầu tư, thiết kế những sản phẩm phù hợp. New Balance luôn tập trung đến từng chuyển động của cơ thể con người để có thể “Tạo-Ra-Điều-Tuyệt-Vời” (Making Excellent Happen)!'),
(197, 'Giày Thể Thao Unisex Adidas Forum Mid', 1, 51, '41', 120, 8, 'bb1596527c.jpg', 1, 'GIÀY CỔ LỬNG FORUM  ĐÔI GIÀY TRAINER CỔ LỬNG SANG TRỌNG MANG ĐẬM CHẤT BÓNG RỔ.  Cùng dành một phút giây để tôn vinh một biểu tượng. Phải chăng là huyền thoại bóng rổ thách thức trọng lực từ thập niên 80? Hay chính là đôi giày lừng danh điểm trang đôi chân các rapper? Thực ra là cả hai. Dòng giày adidas Forum vẫn luôn thống trị sân bóng rổ cũng như đường phố, nay trở lại với phiên bản cổ lửng giúp đưa các chuyển động của bạn lên một tầm cao mới. Cho đôi chân phong cách không thể hòa lẫn cùng chất liệu da phủ sang trọng và thể hiện đẳng cấp.'),
(198, 'Giày Thể Thao Nam Adidas Ultraboost', 1, 51, '42', 200, 15, '670a52c8c7.jpg', 1, 'GIÀY ULTRABOOST 21  NÂNG TẦM BUỔI CHẠY CỦA BẠN VỚI ĐÔI GIÀY ULTRABOOST 21 NÀY.  Nỗ lực vì chính bản thân bạn. Đôi giày chạy bộ adidas Ultraboost 21 này giúp mọi chuyện dễ dàng hơn. Siêu nhẹ nhưng vẫn giữ nguyên độ nâng đỡ, thân giày adidas Primeknit+ thích ứng theo hình dáng bàn chân khi chuyển động. Lớp đệm Boost đàn hồi cho cảm giác trợ lực như lời nhắc bạn luôn có thể cố gắng thêm một sải bước, một dãy phố hay thậm chí hẳn một dặm. (Nhớ thêm vài bài hát vào playlist chạy bộ. Biết đâu bạn sẽ cần đến.)'),
(199, 'Giày Thể Thao Nam Adidas Ultraboost 4.0 Dna', 1, 51, '36', 150, 13, '32d1884128.jpg', 0, 'GIÀY ULTRABOOST 4.0 DNA  GIÀY ULTRABOOST CHO CẢM GIÁC THOẢI MÁI HÀNG NGÀY.  Một huyền thoại trẻ. Dòng adidas Ultraboost ra mắt năm 2015 và có sức ảnh hưởng mạnh mẽ không chỉ trong giới chạy bộ. Đôi giày này có thân giày bằng vải dệt kim mềm mại tạo độ thoáng khí tại các vị trí cần thiết nhất. Thiết kế trung thành theo nguyên bản với đế giữa Boost cho cảm giác thoải mái đến khó tin.'),
(200, 'Giày Chạy Bộ Nam Adidas Edge Rc 3', 1, 51, '43', 78, 7, '799ee98575.jpg', 0, 'GIÀY EDGE RC 3  GIÀY CHẠY BỘ CHO CẢM GIÁC NÂNG ĐỠ.  Duy trì cardio trong lịch trình tập luyện. Đôi giày chạy bộ adidas này được thiết kế dành cho các bài tập bổ trợ đa dạng kết hợp. Đế ngoài bằng cao su đảm bảo độ ma sát trên những khúc đường quanh co qua ổ gà và cây đổ.'),
(201, 'Giày Chạy Bộ Nữ New Balance FuelCell REBEL V2', 1, 54, '36', 139, 9, '170a7182de.jpg', 1, 'GIÀY THỂ THAO NỮ NEW BALANCE WOMENS CUSHIONING  FuelCell Rebel V2 phù hợp với các hoạt động thể thao của bạn cũng như các bài tập luyện với cường độ cao. Đôi giày chạy bộ này có lớp hiệu suất FuelCell có khả năng hoàn trả năng lượng cao nhất hiện nay trên thị trường, giúp năng lượng bùng nổ trở lại trong mỗi bước chạy. Bộ đếm gót cung cấp thêm sự hỗ trợ và miếng mút cổ đúc cung cấp khả năng cố định đáng kinh ngạc. Thiết kế ở upper để tăng thêm sự thoải mái và thoáng khí, trong khi logo và màu sắc nổi bật tăng thêm điểm phong cách cho trang phục của bạn.'),
(202, 'Giày Chạy Bộ Nam New Balance Fresh Foam 880 V11', 1, 54, '38', 112, 13, '05d8758f38.jpg', 1, 'GIÀY CHẠY BỘ NAM NEW BALANCE FRESH FOAM 880 V11  Fresh Foam 880v11 dành cho nam của New Balance được sản xuất đặc biệt dành riêng cho các vận động viên và những người đam mê chạy bộ, đôi giày chạy bộ này đã được kiểm chứng với khả năng mang lại hiệu quả mỗi ngày. Được trang bị lớp đệm giữa Fresh Foam và lưới jacquard kép mang lại sư thoải mái, vừa vặn, cho bạn trải nghiệm êm ái tuyệt đối. Bàn chân của bạn sẽ cám ơn bạn vì đã lựa chọn đôi giày này.'),
(203, 'Giày Chạy Bộ Nam New Balance Fresh Foam ROAV Cushioning', 1, 54, '40', 99, 19, '4450926108.jpg', 0, 'GIÀY CHẠY BỘ NAM NEW BALANCE FRESH FOAM ROAV CUSHIONING  New Balance Fresh Foam ROAV là sự kết hợp tuyệt vời giữa thời trang và công nghệ. Đệm Fresh Roav mang đến cảm giác siêu êm nhẹ trong mọi chuyển động, tích hợp gót Ultra ôm sát bàn chân tạo cảm giác vừa vặn, nâng đỡ. Những gam màu thời thượng được kết hợp tinh tế cùng kiểu dáng cá tính, giúp bạn thoải mái kết hợp với mọi loại trang phục, hỗ trợ chuyên nghiệp trong hành trình luyện tập thể thao'),
(204, 'Giày Thể Thao Unisex Fila Rgb Flex Newday', 1, 45, '41', 89, 19, 'b42b796f2b.jpg', 1, 'GIÀY THỂ THAO UNISEX FILA RGB FLEX NEWDAY  Mở màn phong cách cho ngày hè năng động. Những đôi giày với thiết kế mang dải màu sắc biểu tượng riêng của Fila, dễ dàng phối hợp với nhiều loại trang phục thường ngày trong tủ quần áo của bạn.'),
(205, 'Giày Luyện Tập Unisex Fila Neuron 3 Waver', 1, 45, '44', 77, 13, '99e8baebd4.jpg', 1, 'GIÀY THỂ THAO UNISEX FILA NEURON 3 WAVER  Đôi giày mang đến trải nghiệm công nghệ mới nhất, sử dụng nguyên liệu đệm công nghệ mới Rush Foam tối ưu hóa cấu trúc đệm giữa trong kết cấu giày, phần lưới TPE cải tiến không đường may mang đến sự linh hoạt, thoải mái tối ưu cho người dùng.'),
(206, 'Giày Thời Trang Unisex Fila Oakmont Tr', 1, 45, '40', 56, 10, '6c29556da8.jpg', 1, 'GIÀY THỜI TRANG UNISEX FILA OAKMONT TR  Đôi giày với phần đế đồ sộ cân bằng với upper bằng chất liệu cao cấp tạo nên kiểu dáng sang trọng nổi bật. Logo Fila trên lưỡi gà, đôi giày Fila Hypercube này dễ dàng phối hợp với nhiều loại trang phục của bạn.'),
(207, 'Giày Thời Trang Unisex Puma RS-Fast Mix', 1, 49, '35', 140, 15, '84acfa9c59.jpg', 1, 'GIÀY THỜI TRANG UNISEX PUMA RS-FAST MIX  Những phối màu độc đáo của những lớp layer đa sắc đã mang đến cho RS - Fast một sự độc đáo và đặc sắc khiến các Puma fan không khỏi mê mẩn. Bùng nổ, phá cách cùng màu sắc xanh đỏ nổi loạn và bật tung chất cool với sắc đen cá tính. Tất cả được thể hiện hoàn hảo qua từng đường nét và form dáng với cảm hứng thiết kế từ những năm 2000 đậm nét.'),
(208, 'Giày Sneakers Nữ PUMA x MR DOODLE Cruise Rider', 1, 49, '42', 100, 7, '7a540743bb.jpg', 1, 'GIÀY SNEAKERS NỮ PUMA X MR DOODLE CRUISE RIDER  Chào đón sự trở lại của Mr.Doodle: Sam Cox trong phiên bản Cruise Rider nổi bật với điểm nhấn từ lớp layer nhiều màu sắc và nét vẽ doodle đặc trưng của Sam, hứa hẹn sẽ là một item không thể thiếu cho outfit mùa lễ hội.'),
(209, 'Quần Ôm Dài Thể Thao Nam Puma Ignite 3/4 Tight', 12, 49, '31', 35, 13, '6892af1559.jpg', 0, 'IGNITE Tights là lựa chọn tuyệt vời để khởi động cho cuộc chạy của bạn. Là một sản phẩm tuyệt vời trong dòng trang phục tập luyện kỹ thuật nhất của PUMA, chiếc quần này không chỉ thể hiện thiết kế tối ưu tăng cường sự thoải mái linh hoạt khi kết hợp cùng mọi loại trang phục cho chuyến đi của bạn, bên cạnh đó sản phẩm cũng được đầu tư công nghệ hút ẩm DryCELL, đường khâu phẳng để giảm ma sát khi hoạt động'),
(210, 'Áo Thun Nam Puma Graphic Tee Tfs', 21, 49, 'L', 50, 2, '8f650f8273.jpg', 1, 'Lấy cảm hứng từ bộ sưu tập Tailored for Sports (TFS) xuất hiện lần đầu năm 1990. Áo thun Puma TFS là sự kết hợp giữa những mảng màu tương phản và họa tiết truyền thống của Puma cùng với chất liệu vải cao cấp mang đến cho người mặc sự thoải mái tuyệt vời. '),
(211, 'INSTAPUMP FURY - FTMD - BRAVE BLUE/TEAM DARK ROYAL/DARK ORCHID', 1, 57, '43', 230, 7, '1dfb72ec8e.jpg', 1, 'Tự tin thể hiện phong cách của bạn với đôi giày thể thao INSTAPUMP FURY - FTMD. Tích hợp công nghệ Pumb để điều chỉnh kích cỡ vừa vặn ôm lấy hình dạng tự nhiên của bàn chân của bạn mang lại sự thoải mái, an toàn. Phần thân trên với chất liệu da sáng tạo với phong cách cổ điển pha lẫn hiện đại, phá cách tạo nên cá tính riêng. Sở hữu lỗ thông khí động lực học cùng 360 độ linh hoạt. Lớp đệm lót tăng cường sự ổn định, giảm thiếu lực ép lên chân, giúp di chuyển được vững chắc. Công nghệ đế tách Split-Cushion giúp giày có trọng lượng nhẹ và độ đàn hồi tốt.'),
(212, 'CL TS GOLF POLO', 21, 57, 'L', 59, 4, 'f74eec8679.jpg', 1, 'Loại bỏ mọi xao lãng và hướng đến sân golf với chiếc áo golf Reebok này. Chất lưới nhẹ mát mang lại cảm giác nhẹ nhàng, thoáng khí để bạn tập trung vào trận đấu. Phong cách polo classic với điểm nhấn màu tương phản trên cổ áo đầy tinh tế.'),
(213, 'ZIG KINETICA II - MORNING FOG/BOULDER GREY/ENERGY GLOW', 1, 57, '44', 119, 7, '5ea702bf26.jpg', 1, 'Thiết kế mạnh mẽ, cứng cáp, màu sắc phối phong cách cùng các họa tiết đan chéo thời trang. Đệm giày Floatride Energy cao cấp, tạo bởi hàng ngàn viên nang năng lượng, mang đến độ hoàn trả năng lượng, siêu đàn hồi giúp runners dễ dàng tăng tốc. Với cấu hình không thể nhầm lẫn, midsole ZigTech phân tán năng lượng dọc theo chiều dài của giày để giúp cung cấp đệm êm khi di chuyển.'),
(214, 'TS PERFORMANCE TRACK PANT', 12, 57, '31', 78, 10, '4e71aa0b73.jpg', 0, 'Quần Reebok TS Performance Track Pant thiết kế dành cho nam hỗ trợ quá trình tập luyện và đem lại sự thoải mái. Gấu quần cắt ngang mắt cá chân và đai quần co giãn tùy chỉnh giúp bạn dễ dàng di chuyển vận động, thuận lợi cho các động tác khởi động, bước nhỏ, vặn người. Vải chống thấm nước, co giãn bốn chiều giúp bạn luôn khô ráo và cho phép bạn di chuyển linh hoạt. Túi có khóa bảo vệ an toàn,'),
(215, 'Giày Converse Chuck 70 Archive Paint Splatter', 1, 44, '40', 88, 13, '377a5a688d.jpg', 1, ''),
(216, 'Giày Converse Chuck Taylor All Star 70 Blocked Camo', 1, 44, '35', 117, 19, '8a1da78a56.png', 1, 'Mùa thu này, Converse đã phát hành phiên bản \"Blocked Camo\" của dòng Chuck 70 Hi từ lâu đã trở thành biểu tượng của hãng, pha trộn vải canvas ripstop với màu sắc là \"Carbon Gray\" và \"Egret\", sẵn sàng mang lại cho bạn một vẻ ngoài hoàn hảo trong thời tiết trời thu.'),
(217, 'Giày Converse Chuck Taylor All Star Classic - Cream White', 1, 44, '42', 120, 7, '08339fcb33.jpg', 0, 'giày Converse classic có màu sắc đơn giản nhưng không gây ra sự đơn điệu, các tông màu từ đen, đỏ, trắng, be, hồng… đều không quá lố mà với tông cực trẻ trung, hợp thời trang và hợp với nhiều phong cách thời trang khác nhau. Dù bạn là những người cá tính hay những người có phong cách thời trang đơn giản, tinh tế đề sử dụng được.'),
(218, 'Giày Chạy Bộ Nữ ASICS Gel-Kayano 5 360', 1, 53, '35', 238, 15, 'd97bbc9519.jpg', 1, ''),
(219, 'Giày Chạy Bộ Nam Asics Gel-Cumulus 22 Lite-Show', 1, 53, '42', 197, 12, '82697ad0fe.jpg', 1, 'Giày chạy bộ GEL-CUMULUS ™ 22 LITE-SHOW ™ là sự lựa chọn tuyệt vời cho những vận động viên chạy bộ trung tính muốn sở hữu một đôi giày chạy hàng ngày mềm mại, linh hoạt với cảm giác vừa vặn. Sản phẩm này cũng kết hợp các điểm nhấn phản chiếu nổi bật trong điều kiện ánh sáng yếu.  Phiên bản cải tiến có phần upper phối lưới kết hợp với cấu trúc in 3D liền mạch, giúp cân bằng sự hỗ trợ và thoải mái xung quanh bàn chân - mang lại cho bạn cảm giác vừa vặn thoải mái trên từng cự ly chạy.  Đế giữa của công nghệ FLYTEFOAM ™ mềm hơn so với phiên bản trước mang lại cảm giác thoải mái hơn. Phần dưới gót chân ở vị trí bàn chân chạm đất đầu tiên đã được thiết kế lại để cách ly tác động tốt hơn, thiết kế mới với các rãnh uốn cong bàn chân trước sâu hơn và phần đệm ở giữa mềm hơn.'),
(220, 'Giày Bóng Rổ Nam Nike Zoom Freak 2', 1, 52, '43', 198, 8, '7f05633bac.jpg', 1, 'GIÀY BÓNG RỔ NAM NIKE ZOOM FREAK 2  Giannis sở hữu sự kết hợp kỳ lạ giữa chiều cao, chiều dài và tốc độ hiếm thấy ở giải đấu. Zoom Freak 2 khai thác sức mạnh của anh ta và giúp anh ta tạo ra năng lượng trên sân đấu. Lớp phủ đúc bao phủ khu vực ngón chân bên ngoài từng bước giúp Giannis đợt phá tại Euro.  Một dòng mới về tốc độ và sức mạnh  Sự kết hợp giữa đệm Zoom Air ở bàn chân trước và đệm siêu mềm, nhạy giúp bạn khai thác sức mạnh của mình trên sân.  Các bước ổn định của Euro  Một miếng TPU đúc ở mặt trước bên ngoài được thiết kế cho một trong những bước di chuyển hiệu quả nhất của Giannis, giúp ổn định bàn chân trong suốt trận đấu.  Nhẹ và linh hoạt  Cao su đế ngoài được tách thành 2 khu vực với một miếng hỗ trợ cứng ở giữa. Điều này giúp giảm trọng lượng và cải thiện tính linh hoạt.  Tên của Giannis và 4 anh em của anh ấy (Alex, Francis, Thanasis và Kostas) được đúc ở đế ngoài'),
(221, 'Giày Thời Trang Nam Nike Fw Air Max Zephyr', 1, 52, '41', 220, 12, '12c43d74de.jpg', 1, 'Bước vào vương quốc của dòng Air mới với Nike Air Max Zephyr. Lớp đệm Air nổi bật, thiết kế mang phong cách hiện đại vượt thời gian. Cấu tạo không đường may và lớp phủ vẫn giữ DNA của thế hệ Air, lưới xúc giác siêu thoáng và các điểm nhấn Air được thêm vào mang lại kiểu dáng bắt mắt cho đôi giày này.'),
(222, 'Giày Bóng Rổ Nam Nike Jordan \'Why Not?\' Zer0.4 PF', 1, 52, '42', 300, 12, 'cf9ec4f7c9.jpg', 1, 'GIÀY BÓNG RỔ NAM NIKE JORDAN \'WHY NOT?\' ZER0.4 PF  Tốc độ là vũ khí bất ly thân giúp Russell Westbrook giành được chiến thắng trong nhiều trận thi đấu bóng rổ mang tầm cỡ thế giới. Lối chơi bóng đặc biệt với những động tác dứt khoát đã đưa anh lên đỉnh cao chiến thắng. Bên cạnh đó, Jordan \'Why Not?\' Zer0.4 – đôi giày đã đồng hành cùng anh trong các trận đấu là đôi giày đầu tiên có đế Air Zoom kép được xếp chồng lên nhau ở bàn chân trước, mang lại một hệ thống cực nhạy giúp Russell chuyển hóa tốc độ thành lực và tập trung để tấn công. Phiên bản PF này được tích hợp lớp đế ngoài siêu bền, lý tưởng cho các trận thi đấu ngoài trời.  Tấn công kép  Đế Air Zoom kép được xếp chồng lên nhau ở bàn chân trước mang lại khả năng đàn hồi và đệm tối ưu, hỗ trợ hoàn trả năng lượng sau mỗi bước chân.  Hệ thống dây thắt chắc chắn  Thiết kế dây thắt đặc biệt với các dải vải ở gót và bàn chân trước giúp cố định bàn chân khi bạn thắt chặt dây buộc.'),
(223, 'Giày Thời Trang Nam Nike Air Max Infinity 2', 1, 52, '43', 211, 12, 'f7757d1924.jpg', 1, 'Với vẻ ngoài hiện đại, phần gót nổi bật và phần upper được phối hợp với các loại chất liệu, Nike Air Max Infinity 2 mang đến cho bạn vẻ ngoài hợp thời trang, thiết kế đa năng mà bạn có thể phối hợp với mọi loại trang phục thường ngày. Các đường nét thiết kế lượn sóng mang lại sự linh hoạt, lớp đệm Max Air tạo sự êm ái cho ngày dài của bạn.  Phần trên kết hợp vật liệu không đường may kiểu dáng đẹp với các chi tiết lưới mang lại sự thông thoáng.  Công nghệ Max Air cung cấp lớp đệm nhẹ, đáp ứng tốt trong khi đế giữa bằng đệm xốp sang trọng với các rãnh uốn giúp tăng thêm tính linh hoạt và cải thiện tính di động.  Cổ giày thấp có đệm tạo cảm giác thoải mái.  THÔNG SỐ'),
(224, 'Giày Bóng Đá Nam Nike Vapor 14 Academy TF', 1, 52, '39', 150, 12, '764812d4e9.jpg', 0, 'GIÀY BÓNG ĐÁ NAM NIKE VAPOR 14 ACADEMY TF  Nike Mercurial Vapor 14 Academy TF có thiết kế chắc chắn với lực kéo đa hướng giúp thiết lập cho bạn tốc độ hồi năng lượng siêu nhanh. Mặt trên đúc, thiết kế mang lại độ kiểm soát bóng tốt hơn khi dẫn bóng ở tốc độ cao.  Dành cho chuyển động  Dựa trên phân tích nghiên cứu về chuyển động của người chơi, đế ngoài cao su được thiết kế cho lực kéo đa hướng.  Phù hợp và cảm nhận liền mạch  Lớp lót thoải mái ôm lấy bàn chân của bạn để tạo cảm giác tự nhiên, ôm sát.'),
(225, 'Giày Thể Thao Unisex Adidas X Speedflow.1 Fg', 1, 51, '43', 350, 12, '7244b352f7.jpg', 1, 'Quan sát, đọc tình huống rồi dứt điểm. Và lặp lại. Khi tinh thần nhạy bén hòa hợp cùng sự nhanh nhẹn của cơ thể, bạn sẽ trở thành phiên bản nhanh nhất của chính mình. Hãy kiếm tìm nhịp điệu của bạn và bỏ lại mọi thứ phía sau. Bất kể khái niệm \"tốc độ\" của bạn là gì, đôi giày đá bóng adidas X này sẽ giúp bạn luôn dẫn đầu. Với vận động viên nước rút, miếng đệm bằng sợi carbon Carbitex và mũi giày hếch nhẹ tạo lực đẩy bùng nổ. Với phù thủy sân cỏ, khung AgilityCage tạo độ ổn định và mang lại cảm giác chắc chắn cho những bước đổi hướng ma thuật. Với cỗ máy săn bàn, chất liệu adidas Primeknit co giãn tăng thêm cảm giác thoải mái trong lúc chờ đợi cơ hội tỏa sáng.'),
(226, 'ÁO THUN HEAT.RDY WARRIOR', 12, 51, '33', 120, 8, 'c0c37198a3.jpg', 1, 'CHIẾC ÁO THUN ÔM SÁT VỚI CÔNG NGHỆ HEAT.DRY GIÚP BẠN LUÔN MÁT MẺ. Boot camp: Ngày đầu tiên. Tưởng gì, vẫn là cuộc thi vượt chướng ngại vật bơm hơi. Bạn sẽ hoàn thành như chơi nhà phao mà thôi. Chiếc áo thun tập luyện adidas này sử dụng công nghệ HEAT.RDY tăng cường lưu thông khí tối đa, giúp bạn luôn mát mẻ khi vận động. Chỉ ba phút sau bạn đã lao qua thác nước và thoát ra ngoài thành công.'),
(227, 'ÁO THUN HEAT.RDY WARRIOR', 12, 51, '32', 120, 11, 'c0c37198a3.jpg', 1, 'CHIẾC ÁO THUN ÔM SÁT VỚI CÔNG NGHỆ HEAT.DRY GIÚP BẠN LUÔN MÁT MẺ. Boot camp: Ngày đầu tiên. Tưởng gì, vẫn là cuộc thi vượt chướng ngại vật bơm hơi. Bạn sẽ hoàn thành như chơi nhà phao mà thôi. Chiếc áo thun tập luyện adidas này sử dụng công nghệ HEAT.RDY tăng cường lưu thông khí tối đa, giúp bạn luôn mát mẻ khi vận động. Chỉ ba phút sau bạn đã lao qua thác nước và thoát ra ngoài thành công.'),
(228, 'ÁO THUN HEAT.RDY WARRIOR', 12, 51, '31', 120, 6, 'c0c37198a3.jpg', 1, 'CHIẾC ÁO THUN ÔM SÁT VỚI CÔNG NGHỆ HEAT.DRY GIÚP BẠN LUÔN MÁT MẺ. Boot camp: Ngày đầu tiên. Tưởng gì, vẫn là cuộc thi vượt chướng ngại vật bơm hơi. Bạn sẽ hoàn thành như chơi nhà phao mà thôi. Chiếc áo thun tập luyện adidas này sử dụng công nghệ HEAT.RDY tăng cường lưu thông khí tối đa, giúp bạn luôn mát mẻ khi vận động. Chỉ ba phút sau bạn đã lao qua thác nước và thoát ra ngoài thành công.'),
(229, 'ÁO THUN HEAT.RDY WARRIOR', 12, 51, '30', 120, 10, 'c0c37198a3.jpg', 1, 'CHIẾC ÁO THUN ÔM SÁT VỚI CÔNG NGHỆ HEAT.DRY GIÚP BẠN LUÔN MÁT MẺ. Boot camp: Ngày đầu tiên. Tưởng gì, vẫn là cuộc thi vượt chướng ngại vật bơm hơi. Bạn sẽ hoàn thành như chơi nhà phao mà thôi. Chiếc áo thun tập luyện adidas này sử dụng công nghệ HEAT.RDY tăng cường lưu thông khí tối đa, giúp bạn luôn mát mẻ khi vận động. Chỉ ba phút sau bạn đã lao qua thác nước và thoát ra ngoài thành công.'),
(230, 'Áo Thun Nam Puma Graphic Tee Tfs', 21, 49, 'M', 50, 8, '8f650f8273.jpg', 1, 'Lấy cảm hứng từ bộ sưu tập Tailored for Sports (TFS) xuất hiện lần đầu năm 1990. Áo thun Puma TFS là sự kết hợp giữa những mảng màu tương phản và họa tiết truyền thống của Puma cùng với chất liệu vải cao cấp mang đến cho người mặc sự thoải mái tuyệt vời. '),
(231, 'Áo Thun Nam Puma Graphic Tee Tfs', 21, 49, 'S', 50, 8, '8f650f8273.jpg', 1, 'Lấy cảm hứng từ bộ sưu tập Tailored for Sports (TFS) xuất hiện lần đầu năm 1990. Áo thun Puma TFS là sự kết hợp giữa những mảng màu tương phản và họa tiết truyền thống của Puma cùng với chất liệu vải cao cấp mang đến cho người mặc sự thoải mái tuyệt vời. '),
(232, 'Áo Thun Nam Puma Graphic Tee Tfs', 21, 49, 'XL', 50, 13, '8f650f8273.jpg', 1, 'Lấy cảm hứng từ bộ sưu tập Tailored for Sports (TFS) xuất hiện lần đầu năm 1990. Áo thun Puma TFS là sự kết hợp giữa những mảng màu tương phản và họa tiết truyền thống của Puma cùng với chất liệu vải cao cấp mang đến cho người mặc sự thoải mái tuyệt vời. '),
(233, 'Áo Thun Nam Puma Graphic Tee Tfs', 21, 49, 'XXL', 50, 2, '8f650f8273.jpg', 1, 'Lấy cảm hứng từ bộ sưu tập Tailored for Sports (TFS) xuất hiện lần đầu năm 1990. Áo thun Puma TFS là sự kết hợp giữa những mảng màu tương phản và họa tiết truyền thống của Puma cùng với chất liệu vải cao cấp mang đến cho người mặc sự thoải mái tuyệt vời. '),
(234, 'Áo thun New Balance Kl2 ‘Phantom’ MT03596PHM', 21, 54, 'S', 60, 1, '6632569570.png', 1, 'New Balance là một thương hiệu thời trang và giày thể thao từ Mỹ. Hơn 100 năm qua, New Balance luôn tìm hiểu nhu cầu của những vận động viên để đầu tư, thiết kế những sản phẩm phù hợp. New Balance luôn tập trung đến từng chuyển động của cơ thể con người để có thể “Tạo-Ra-Điều-Tuyệt-Vời” (Making Excellent Happen)!'),
(235, 'Áo thun New Balance Kl2 ‘Phantom’ MT03596PHM', 21, 54, 'M', 60, 2, '6632569570.png', 1, 'New Balance là một thương hiệu thời trang và giày thể thao từ Mỹ. Hơn 100 năm qua, New Balance luôn tìm hiểu nhu cầu của những vận động viên để đầu tư, thiết kế những sản phẩm phù hợp. New Balance luôn tập trung đến từng chuyển động của cơ thể con người để có thể “Tạo-Ra-Điều-Tuyệt-Vời” (Making Excellent Happen)!'),
(236, 'Áo thun New Balance Kl2 ‘Phantom’ MT03596PHM', 21, 54, 'XL', 60, 3, '6632569570.png', 1, 'New Balance là một thương hiệu thời trang và giày thể thao từ Mỹ. Hơn 100 năm qua, New Balance luôn tìm hiểu nhu cầu của những vận động viên để đầu tư, thiết kế những sản phẩm phù hợp. New Balance luôn tập trung đến từng chuyển động của cơ thể con người để có thể “Tạo-Ra-Điều-Tuyệt-Vời” (Making Excellent Happen)!'),
(237, 'Áo thun New Balance Kl2 ‘Phantom’ MT03596PHM', 21, 54, 'XXL', 60, 2, '6632569570.png', 1, 'New Balance là một thương hiệu thời trang và giày thể thao từ Mỹ. Hơn 100 năm qua, New Balance luôn tìm hiểu nhu cầu của những vận động viên để đầu tư, thiết kế những sản phẩm phù hợp. New Balance luôn tập trung đến từng chuyển động của cơ thể con người để có thể “Tạo-Ra-Điều-Tuyệt-Vời” (Making Excellent Happen)!'),
(238, 'Giày Luyện Tập Unisex Fila Neuron 3 Waver', 1, 45, '38', 77, 8, '99e8baebd4.jpg', 1, 'GIÀY THỂ THAO UNISEX FILA NEURON 3 WAVER  Đôi giày mang đến trải nghiệm công nghệ mới nhất, sử dụng nguyên liệu đệm công nghệ mới Rush Foam tối ưu hóa cấu trúc đệm giữa trong kết cấu giày, phần lưới TPE cải tiến không đường may mang đến sự linh hoạt, thoải mái tối ưu cho người dùng.'),
(239, 'CL TS GOLF POLO', 21, 57, 'S', 59, 2, 'f74eec8679.jpg', 1, 'Loại bỏ mọi xao lãng và hướng đến sân golf với chiếc áo golf Reebok này. Chất lưới nhẹ mát mang lại cảm giác nhẹ nhàng, thoáng khí để bạn tập trung vào trận đấu. Phong cách polo classic với điểm nhấn màu tương phản trên cổ áo đầy tinh tế.'),
(240, 'CL TS GOLF POLO', 21, 57, 'M', 59, 3, 'f74eec8679.jpg', 1, 'Loại bỏ mọi xao lãng và hướng đến sân golf với chiếc áo golf Reebok này. Chất lưới nhẹ mát mang lại cảm giác nhẹ nhàng, thoáng khí để bạn tập trung vào trận đấu. Phong cách polo classic với điểm nhấn màu tương phản trên cổ áo đầy tinh tế.'),
(241, 'CL TS GOLF POLO', 21, 57, 'XL', 59, 2, 'f74eec8679.jpg', 1, 'Loại bỏ mọi xao lãng và hướng đến sân golf với chiếc áo golf Reebok này. Chất lưới nhẹ mát mang lại cảm giác nhẹ nhàng, thoáng khí để bạn tập trung vào trận đấu. Phong cách polo classic với điểm nhấn màu tương phản trên cổ áo đầy tinh tế.'),
(242, 'CL TS GOLF POLO', 21, 57, 'XXL', 59, 2, 'f74eec8679.jpg', 1, 'Loại bỏ mọi xao lãng và hướng đến sân golf với chiếc áo golf Reebok này. Chất lưới nhẹ mát mang lại cảm giác nhẹ nhàng, thoáng khí để bạn tập trung vào trận đấu. Phong cách polo classic với điểm nhấn màu tương phản trên cổ áo đầy tinh tế.'),
(243, 'Giày Bóng Rổ Nam Nike Zoom Freak 2', 1, 52, '39', 198, 2, '7f05633bac.jpg', 1, 'GIÀY BÓNG RỔ NAM NIKE ZOOM FREAK 2  Giannis sở hữu sự kết hợp kỳ lạ giữa chiều cao, chiều dài và tốc độ hiếm thấy ở giải đấu. Zoom Freak 2 khai thác sức mạnh của anh ta và giúp anh ta tạo ra năng lượng trên sân đấu. Lớp phủ đúc bao phủ khu vực ngón chân bên ngoài từng bước giúp Giannis đợt phá tại Euro.  Một dòng mới về tốc độ và sức mạnh  Sự kết hợp giữa đệm Zoom Air ở bàn chân trước và đệm siêu mềm, nhạy giúp bạn khai thác sức mạnh của mình trên sân.  Các bước ổn định của Euro  Một miếng TPU đúc ở mặt trước bên ngoài được thiết kế cho một trong những bước di chuyển hiệu quả nhất của Giannis, giúp ổn định bàn chân trong suốt trận đấu.  Nhẹ và linh hoạt  Cao su đế ngoài được tách thành 2 khu vực với một miếng hỗ trợ cứng ở giữa. Điều này giúp giảm trọng lượng và cải thiện tính linh hoạt.  Tên của Giannis và 4 anh em của anh ấy (Alex, Francis, Thanasis và Kostas) được đúc ở đế ngoài'),
(244, 'Giày Chạy Bộ Nam Asics Gel-Cumulus 22 Lite-Show', 1, 53, '39', 197, 2, '82697ad0fe.jpg', 1, 'Giày chạy bộ GEL-CUMULUS ™ 22 LITE-SHOW ™ là sự lựa chọn tuyệt vời cho những vận động viên chạy bộ trung tính muốn sở hữu một đôi giày chạy hàng ngày mềm mại, linh hoạt với cảm giác vừa vặn. Sản phẩm này cũng kết hợp các điểm nhấn phản chiếu nổi bật trong điều kiện ánh sáng yếu.  Phiên bản cải tiến có phần upper phối lưới kết hợp với cấu trúc in 3D liền mạch, giúp cân bằng sự hỗ trợ và thoải mái xung quanh bàn chân - mang lại cho bạn cảm giác vừa vặn thoải mái trên từng cự ly chạy.  Đế giữa của công nghệ FLYTEFOAM ™ mềm hơn so với phiên bản trước mang lại cảm giác thoải mái hơn. Phần dưới gót chân ở vị trí bàn chân chạm đất đầu tiên đã được thiết kế lại để cách ly tác động tốt hơn, thiết kế mới với các rãnh uốn cong bàn chân trước sâu hơn và phần đệm ở giữa mềm hơn.'),
(245, 'Giày Chạy Bộ Nam Asics Gel-Cumulus 22 Lite-Show', 1, 53, '40', 197, 2, '82697ad0fe.jpg', 1, 'Giày chạy bộ GEL-CUMULUS ™ 22 LITE-SHOW ™ là sự lựa chọn tuyệt vời cho những vận động viên chạy bộ trung tính muốn sở hữu một đôi giày chạy hàng ngày mềm mại, linh hoạt với cảm giác vừa vặn. Sản phẩm này cũng kết hợp các điểm nhấn phản chiếu nổi bật trong điều kiện ánh sáng yếu.  Phiên bản cải tiến có phần upper phối lưới kết hợp với cấu trúc in 3D liền mạch, giúp cân bằng sự hỗ trợ và thoải mái xung quanh bàn chân - mang lại cho bạn cảm giác vừa vặn thoải mái trên từng cự ly chạy.  Đế giữa của công nghệ FLYTEFOAM ™ mềm hơn so với phiên bản trước mang lại cảm giác thoải mái hơn. Phần dưới gót chân ở vị trí bàn chân chạm đất đầu tiên đã được thiết kế lại để cách ly tác động tốt hơn, thiết kế mới với các rãnh uốn cong bàn chân trước sâu hơn và phần đệm ở giữa mềm hơn.'),
(246, 'Giày Chạy Bộ Nam Asics Gel-Cumulus 22 Lite-Show', 1, 53, '41', 197, 13, '82697ad0fe.jpg', 1, 'Giày chạy bộ GEL-CUMULUS ™ 22 LITE-SHOW ™ là sự lựa chọn tuyệt vời cho những vận động viên chạy bộ trung tính muốn sở hữu một đôi giày chạy hàng ngày mềm mại, linh hoạt với cảm giác vừa vặn. Sản phẩm này cũng kết hợp các điểm nhấn phản chiếu nổi bật trong điều kiện ánh sáng yếu.  Phiên bản cải tiến có phần upper phối lưới kết hợp với cấu trúc in 3D liền mạch, giúp cân bằng sự hỗ trợ và thoải mái xung quanh bàn chân - mang lại cho bạn cảm giác vừa vặn thoải mái trên từng cự ly chạy.  Đế giữa của công nghệ FLYTEFOAM ™ mềm hơn so với phiên bản trước mang lại cảm giác thoải mái hơn. Phần dưới gót chân ở vị trí bàn chân chạm đất đầu tiên đã được thiết kế lại để cách ly tác động tốt hơn, thiết kế mới với các rãnh uốn cong bàn chân trước sâu hơn và phần đệm ở giữa mềm hơn.'),
(247, 'Giày Chạy Bộ Nam Asics Gel-Cumulus 22 Lite-Show', 1, 53, '36', 197, 13, '82697ad0fe.jpg', 1, 'Giày chạy bộ GEL-CUMULUS ™ 22 LITE-SHOW ™ là sự lựa chọn tuyệt vời cho những vận động viên chạy bộ trung tính muốn sở hữu một đôi giày chạy hàng ngày mềm mại, linh hoạt với cảm giác vừa vặn. Sản phẩm này cũng kết hợp các điểm nhấn phản chiếu nổi bật trong điều kiện ánh sáng yếu.  Phiên bản cải tiến có phần upper phối lưới kết hợp với cấu trúc in 3D liền mạch, giúp cân bằng sự hỗ trợ và thoải mái xung quanh bàn chân - mang lại cho bạn cảm giác vừa vặn thoải mái trên từng cự ly chạy.  Đế giữa của công nghệ FLYTEFOAM ™ mềm hơn so với phiên bản trước mang lại cảm giác thoải mái hơn. Phần dưới gót chân ở vị trí bàn chân chạm đất đầu tiên đã được thiết kế lại để cách ly tác động tốt hơn, thiết kế mới với các rãnh uốn cong bàn chân trước sâu hơn và phần đệm ở giữa mềm hơn.'),
(248, 'Giày Chạy Bộ Nam Asics Gel-Cumulus 22 Lite-Show', 1, 53, '39', 197, 2, '82697ad0fe.jpg', 1, 'Giày chạy bộ GEL-CUMULUS ™ 22 LITE-SHOW ™ là sự lựa chọn tuyệt vời cho những vận động viên chạy bộ trung tính muốn sở hữu một đôi giày chạy hàng ngày mềm mại, linh hoạt với cảm giác vừa vặn. Sản phẩm này cũng kết hợp các điểm nhấn phản chiếu nổi bật trong điều kiện ánh sáng yếu.  Phiên bản cải tiến có phần upper phối lưới kết hợp với cấu trúc in 3D liền mạch, giúp cân bằng sự hỗ trợ và thoải mái xung quanh bàn chân - mang lại cho bạn cảm giác vừa vặn thoải mái trên từng cự ly chạy.  Đế giữa của công nghệ FLYTEFOAM ™ mềm hơn so với phiên bản trước mang lại cảm giác thoải mái hơn. Phần dưới gót chân ở vị trí bàn chân chạm đất đầu tiên đã được thiết kế lại để cách ly tác động tốt hơn, thiết kế mới với các rãnh uốn cong bàn chân trước sâu hơn và phần đệm ở giữa mềm hơn.'),
(249, 'Giày Thể Thao Unisex Adidas X Speedflow.1 Fg', 1, 51, '42', 350, 2, '7244b352f7.jpg', 1, 'Quan sát, đọc tình huống rồi dứt điểm. Và lặp lại. Khi tinh thần nhạy bén hòa hợp cùng sự nhanh nhẹn của cơ thể, bạn sẽ trở thành phiên bản nhanh nhất của chính mình. Hãy kiếm tìm nhịp điệu của bạn và bỏ lại mọi thứ phía sau. Bất kể khái niệm \"tốc độ\" của bạn là gì, đôi giày đá bóng adidas X này sẽ giúp bạn luôn dẫn đầu. Với vận động viên nước rút, miếng đệm bằng sợi carbon Carbitex và mũi giày hếch nhẹ tạo lực đẩy bùng nổ. Với phù thủy sân cỏ, khung AgilityCage tạo độ ổn định và mang lại cảm giác chắc chắn cho những bước đổi hướng ma thuật. Với cỗ máy săn bàn, chất liệu adidas Primeknit co giãn tăng thêm cảm giác thoải mái trong lúc chờ đợi cơ hội tỏa sáng.'),
(250, 'Giày Thể Thao Unisex Adidas X Speedflow.1 Fg', 1, 51, '41', 350, 2, '7244b352f7.jpg', 1, 'Quan sát, đọc tình huống rồi dứt điểm. Và lặp lại. Khi tinh thần nhạy bén hòa hợp cùng sự nhanh nhẹn của cơ thể, bạn sẽ trở thành phiên bản nhanh nhất của chính mình. Hãy kiếm tìm nhịp điệu của bạn và bỏ lại mọi thứ phía sau. Bất kể khái niệm \"tốc độ\" của bạn là gì, đôi giày đá bóng adidas X này sẽ giúp bạn luôn dẫn đầu. Với vận động viên nước rút, miếng đệm bằng sợi carbon Carbitex và mũi giày hếch nhẹ tạo lực đẩy bùng nổ. Với phù thủy sân cỏ, khung AgilityCage tạo độ ổn định và mang lại cảm giác chắc chắn cho những bước đổi hướng ma thuật. Với cỗ máy săn bàn, chất liệu adidas Primeknit co giãn tăng thêm cảm giác thoải mái trong lúc chờ đợi cơ hội tỏa sáng.'),
(251, 'Giày Thể Thao Unisex Adidas X Speedflow.1 Fg', 1, 51, '44', 350, 2, '7244b352f7.jpg', 1, 'Quan sát, đọc tình huống rồi dứt điểm. Và lặp lại. Khi tinh thần nhạy bén hòa hợp cùng sự nhanh nhẹn của cơ thể, bạn sẽ trở thành phiên bản nhanh nhất của chính mình. Hãy kiếm tìm nhịp điệu của bạn và bỏ lại mọi thứ phía sau. Bất kể khái niệm \"tốc độ\" của bạn là gì, đôi giày đá bóng adidas X này sẽ giúp bạn luôn dẫn đầu. Với vận động viên nước rút, miếng đệm bằng sợi carbon Carbitex và mũi giày hếch nhẹ tạo lực đẩy bùng nổ. Với phù thủy sân cỏ, khung AgilityCage tạo độ ổn định và mang lại cảm giác chắc chắn cho những bước đổi hướng ma thuật. Với cỗ máy săn bàn, chất liệu adidas Primeknit co giãn tăng thêm cảm giác thoải mái trong lúc chờ đợi cơ hội tỏa sáng.'),
(252, 'Giày Thể Thao Unisex Adidas X Speedflow.1 Fg', 1, 51, '40', 350, 2, '7244b352f7.jpg', 1, 'Quan sát, đọc tình huống rồi dứt điểm. Và lặp lại. Khi tinh thần nhạy bén hòa hợp cùng sự nhanh nhẹn của cơ thể, bạn sẽ trở thành phiên bản nhanh nhất của chính mình. Hãy kiếm tìm nhịp điệu của bạn và bỏ lại mọi thứ phía sau. Bất kể khái niệm \"tốc độ\" của bạn là gì, đôi giày đá bóng adidas X này sẽ giúp bạn luôn dẫn đầu. Với vận động viên nước rút, miếng đệm bằng sợi carbon Carbitex và mũi giày hếch nhẹ tạo lực đẩy bùng nổ. Với phù thủy sân cỏ, khung AgilityCage tạo độ ổn định và mang lại cảm giác chắc chắn cho những bước đổi hướng ma thuật. Với cỗ máy săn bàn, chất liệu adidas Primeknit co giãn tăng thêm cảm giác thoải mái trong lúc chờ đợi cơ hội tỏa sáng.'),
(253, 'Giày Thể Thao Unisex Adidas X Speedflow.1 Fg', 1, 51, '39', 350, 2, '7244b352f7.jpg', 1, 'Quan sát, đọc tình huống rồi dứt điểm. Và lặp lại. Khi tinh thần nhạy bén hòa hợp cùng sự nhanh nhẹn của cơ thể, bạn sẽ trở thành phiên bản nhanh nhất của chính mình. Hãy kiếm tìm nhịp điệu của bạn và bỏ lại mọi thứ phía sau. Bất kể khái niệm \"tốc độ\" của bạn là gì, đôi giày đá bóng adidas X này sẽ giúp bạn luôn dẫn đầu. Với vận động viên nước rút, miếng đệm bằng sợi carbon Carbitex và mũi giày hếch nhẹ tạo lực đẩy bùng nổ. Với phù thủy sân cỏ, khung AgilityCage tạo độ ổn định và mang lại cảm giác chắc chắn cho những bước đổi hướng ma thuật. Với cỗ máy săn bàn, chất liệu adidas Primeknit co giãn tăng thêm cảm giác thoải mái trong lúc chờ đợi cơ hội tỏa sáng.'),
(254, 'Giày Bóng Đá Nam Nike Vapor 14 Academy TF', 1, 52, '38', 150, 8, '764812d4e9.jpg', 0, 'GIÀY BÓNG ĐÁ NAM NIKE VAPOR 14 ACADEMY TF  Nike Mercurial Vapor 14 Academy TF có thiết kế chắc chắn với lực kéo đa hướng giúp thiết lập cho bạn tốc độ hồi năng lượng siêu nhanh. Mặt trên đúc, thiết kế mang lại độ kiểm soát bóng tốt hơn khi dẫn bóng ở tốc độ cao.  Dành cho chuyển động  Dựa trên phân tích nghiên cứu về chuyển động của người chơi, đế ngoài cao su được thiết kế cho lực kéo đa hướng.  Phù hợp và cảm nhận liền mạch  Lớp lót thoải mái ôm lấy bàn chân của bạn để tạo cảm giác tự nhiên, ôm sát.'),
(255, 'Giày Bóng Đá Nam Nike Vapor 14 Academy TF', 1, 52, '40', 150, 8, '764812d4e9.jpg', 0, 'GIÀY BÓNG ĐÁ NAM NIKE VAPOR 14 ACADEMY TF  Nike Mercurial Vapor 14 Academy TF có thiết kế chắc chắn với lực kéo đa hướng giúp thiết lập cho bạn tốc độ hồi năng lượng siêu nhanh. Mặt trên đúc, thiết kế mang lại độ kiểm soát bóng tốt hơn khi dẫn bóng ở tốc độ cao.  Dành cho chuyển động  Dựa trên phân tích nghiên cứu về chuyển động của người chơi, đế ngoài cao su được thiết kế cho lực kéo đa hướng.  Phù hợp và cảm nhận liền mạch  Lớp lót thoải mái ôm lấy bàn chân của bạn để tạo cảm giác tự nhiên, ôm sát.'),
(256, 'Giày Bóng Đá Nam Nike Vapor 14 Academy TF', 1, 52, '41', 150, 8, '764812d4e9.jpg', 0, 'GIÀY BÓNG ĐÁ NAM NIKE VAPOR 14 ACADEMY TF  Nike Mercurial Vapor 14 Academy TF có thiết kế chắc chắn với lực kéo đa hướng giúp thiết lập cho bạn tốc độ hồi năng lượng siêu nhanh. Mặt trên đúc, thiết kế mang lại độ kiểm soát bóng tốt hơn khi dẫn bóng ở tốc độ cao.  Dành cho chuyển động  Dựa trên phân tích nghiên cứu về chuyển động của người chơi, đế ngoài cao su được thiết kế cho lực kéo đa hướng.  Phù hợp và cảm nhận liền mạch  Lớp lót thoải mái ôm lấy bàn chân của bạn để tạo cảm giác tự nhiên, ôm sát.'),
(257, 'Giày Bóng Đá Nam Nike Vapor 14 Academy TF', 1, 52, '42', 150, 2, '764812d4e9.jpg', 0, 'GIÀY BÓNG ĐÁ NAM NIKE VAPOR 14 ACADEMY TF  Nike Mercurial Vapor 14 Academy TF có thiết kế chắc chắn với lực kéo đa hướng giúp thiết lập cho bạn tốc độ hồi năng lượng siêu nhanh. Mặt trên đúc, thiết kế mang lại độ kiểm soát bóng tốt hơn khi dẫn bóng ở tốc độ cao.  Dành cho chuyển động  Dựa trên phân tích nghiên cứu về chuyển động của người chơi, đế ngoài cao su được thiết kế cho lực kéo đa hướng.  Phù hợp và cảm nhận liền mạch  Lớp lót thoải mái ôm lấy bàn chân của bạn để tạo cảm giác tự nhiên, ôm sát.'),
(258, 'Giày Thời Trang Nam Nike Air Max Infinity 2', 1, 52, '42', 211, 8, 'f7757d1924.jpg', 1, 'Với vẻ ngoài hiện đại, phần gót nổi bật và phần upper được phối hợp với các loại chất liệu, Nike Air Max Infinity 2 mang đến cho bạn vẻ ngoài hợp thời trang, thiết kế đa năng mà bạn có thể phối hợp với mọi loại trang phục thường ngày. Các đường nét thiết kế lượn sóng mang lại sự linh hoạt, lớp đệm Max Air tạo sự êm ái cho ngày dài của bạn.  Phần trên kết hợp vật liệu không đường may kiểu dáng đẹp với các chi tiết lưới mang lại sự thông thoáng.  Công nghệ Max Air cung cấp lớp đệm nhẹ, đáp ứng tốt trong khi đế giữa bằng đệm xốp sang trọng với các rãnh uốn giúp tăng thêm tính linh hoạt và cải thiện tính di động.  Cổ giày thấp có đệm tạo cảm giác thoải mái.  THÔNG SỐ'),
(259, 'Giày Thời Trang Nam Nike Air Max Infinity 2', 1, 52, '41', 211, 8, 'f7757d1924.jpg', 1, 'Với vẻ ngoài hiện đại, phần gót nổi bật và phần upper được phối hợp với các loại chất liệu, Nike Air Max Infinity 2 mang đến cho bạn vẻ ngoài hợp thời trang, thiết kế đa năng mà bạn có thể phối hợp với mọi loại trang phục thường ngày. Các đường nét thiết kế lượn sóng mang lại sự linh hoạt, lớp đệm Max Air tạo sự êm ái cho ngày dài của bạn.  Phần trên kết hợp vật liệu không đường may kiểu dáng đẹp với các chi tiết lưới mang lại sự thông thoáng.  Công nghệ Max Air cung cấp lớp đệm nhẹ, đáp ứng tốt trong khi đế giữa bằng đệm xốp sang trọng với các rãnh uốn giúp tăng thêm tính linh hoạt và cải thiện tính di động.  Cổ giày thấp có đệm tạo cảm giác thoải mái.  THÔNG SỐ'),
(260, 'Giày Thời Trang Nam Nike Air Max Infinity 2', 1, 52, '40', 211, 2, 'f7757d1924.jpg', 1, 'Với vẻ ngoài hiện đại, phần gót nổi bật và phần upper được phối hợp với các loại chất liệu, Nike Air Max Infinity 2 mang đến cho bạn vẻ ngoài hợp thời trang, thiết kế đa năng mà bạn có thể phối hợp với mọi loại trang phục thường ngày. Các đường nét thiết kế lượn sóng mang lại sự linh hoạt, lớp đệm Max Air tạo sự êm ái cho ngày dài của bạn.  Phần trên kết hợp vật liệu không đường may kiểu dáng đẹp với các chi tiết lưới mang lại sự thông thoáng.  Công nghệ Max Air cung cấp lớp đệm nhẹ, đáp ứng tốt trong khi đế giữa bằng đệm xốp sang trọng với các rãnh uốn giúp tăng thêm tính linh hoạt và cải thiện tính di động.  Cổ giày thấp có đệm tạo cảm giác thoải mái.  THÔNG SỐ'),
(261, 'Giày Thời Trang Nam Nike Air Max Infinity 2', 1, 52, '44', 211, 2, 'f7757d1924.jpg', 1, 'Với vẻ ngoài hiện đại, phần gót nổi bật và phần upper được phối hợp với các loại chất liệu, Nike Air Max Infinity 2 mang đến cho bạn vẻ ngoài hợp thời trang, thiết kế đa năng mà bạn có thể phối hợp với mọi loại trang phục thường ngày. Các đường nét thiết kế lượn sóng mang lại sự linh hoạt, lớp đệm Max Air tạo sự êm ái cho ngày dài của bạn.  Phần trên kết hợp vật liệu không đường may kiểu dáng đẹp với các chi tiết lưới mang lại sự thông thoáng.  Công nghệ Max Air cung cấp lớp đệm nhẹ, đáp ứng tốt trong khi đế giữa bằng đệm xốp sang trọng với các rãnh uốn giúp tăng thêm tính linh hoạt và cải thiện tính di động.  Cổ giày thấp có đệm tạo cảm giác thoải mái.  THÔNG SỐ'),
(262, 'Giày Thời Trang Nam Nike Fw Air Max Zephyr', 1, 52, '40', 220, 2, '12c43d74de.jpg', 1, 'Bước vào vương quốc của dòng Air mới với Nike Air Max Zephyr. Lớp đệm Air nổi bật, thiết kế mang phong cách hiện đại vượt thời gian. Cấu tạo không đường may và lớp phủ vẫn giữ DNA của thế hệ Air, lưới xúc giác siêu thoáng và các điểm nhấn Air được thêm vào mang lại kiểu dáng bắt mắt cho đôi giày này.'),
(263, 'Giày Thời Trang Nam Nike Fw Air Max Zephyr', 1, 52, '39', 220, 8, '12c43d74de.jpg', 1, 'Bước vào vương quốc của dòng Air mới với Nike Air Max Zephyr. Lớp đệm Air nổi bật, thiết kế mang phong cách hiện đại vượt thời gian. Cấu tạo không đường may và lớp phủ vẫn giữ DNA của thế hệ Air, lưới xúc giác siêu thoáng và các điểm nhấn Air được thêm vào mang lại kiểu dáng bắt mắt cho đôi giày này.'),
(264, 'Giày Thời Trang Nam Nike Fw Air Max Zephyr', 1, 52, '42', 220, 8, '12c43d74de.jpg', 1, 'Bước vào vương quốc của dòng Air mới với Nike Air Max Zephyr. Lớp đệm Air nổi bật, thiết kế mang phong cách hiện đại vượt thời gian. Cấu tạo không đường may và lớp phủ vẫn giữ DNA của thế hệ Air, lưới xúc giác siêu thoáng và các điểm nhấn Air được thêm vào mang lại kiểu dáng bắt mắt cho đôi giày này.'),
(265, 'Giày Thời Trang Nam Nike Fw Air Max Zephyr', 1, 52, '43', 220, 2, '12c43d74de.jpg', 1, 'Bước vào vương quốc của dòng Air mới với Nike Air Max Zephyr. Lớp đệm Air nổi bật, thiết kế mang phong cách hiện đại vượt thời gian. Cấu tạo không đường may và lớp phủ vẫn giữ DNA của thế hệ Air, lưới xúc giác siêu thoáng và các điểm nhấn Air được thêm vào mang lại kiểu dáng bắt mắt cho đôi giày này.'),
(266, 'Giày Bóng Rổ Nam Nike Zoom Freak 2', 1, 52, '40', 198, 2, '7f05633bac.jpg', 1, 'GIÀY BÓNG RỔ NAM NIKE ZOOM FREAK 2  Giannis sở hữu sự kết hợp kỳ lạ giữa chiều cao, chiều dài và tốc độ hiếm thấy ở giải đấu. Zoom Freak 2 khai thác sức mạnh của anh ta và giúp anh ta tạo ra năng lượng trên sân đấu. Lớp phủ đúc bao phủ khu vực ngón chân bên ngoài từng bước giúp Giannis đợt phá tại Euro.  Một dòng mới về tốc độ và sức mạnh  Sự kết hợp giữa đệm Zoom Air ở bàn chân trước và đệm siêu mềm, nhạy giúp bạn khai thác sức mạnh của mình trên sân.  Các bước ổn định của Euro  Một miếng TPU đúc ở mặt trước bên ngoài được thiết kế cho một trong những bước di chuyển hiệu quả nhất của Giannis, giúp ổn định bàn chân trong suốt trận đấu.  Nhẹ và linh hoạt  Cao su đế ngoài được tách thành 2 khu vực với một miếng hỗ trợ cứng ở giữa. Điều này giúp giảm trọng lượng và cải thiện tính linh hoạt.  Tên của Giannis và 4 anh em của anh ấy (Alex, Francis, Thanasis và Kostas) được đúc ở đế ngoài'),
(267, 'Giày Bóng Rổ Nam Nike Zoom Freak 2', 1, 52, '41', 198, 3, '7f05633bac.jpg', 1, 'GIÀY BÓNG RỔ NAM NIKE ZOOM FREAK 2  Giannis sở hữu sự kết hợp kỳ lạ giữa chiều cao, chiều dài và tốc độ hiếm thấy ở giải đấu. Zoom Freak 2 khai thác sức mạnh của anh ta và giúp anh ta tạo ra năng lượng trên sân đấu. Lớp phủ đúc bao phủ khu vực ngón chân bên ngoài từng bước giúp Giannis đợt phá tại Euro.  Một dòng mới về tốc độ và sức mạnh  Sự kết hợp giữa đệm Zoom Air ở bàn chân trước và đệm siêu mềm, nhạy giúp bạn khai thác sức mạnh của mình trên sân.  Các bước ổn định của Euro  Một miếng TPU đúc ở mặt trước bên ngoài được thiết kế cho một trong những bước di chuyển hiệu quả nhất của Giannis, giúp ổn định bàn chân trong suốt trận đấu.  Nhẹ và linh hoạt  Cao su đế ngoài được tách thành 2 khu vực với một miếng hỗ trợ cứng ở giữa. Điều này giúp giảm trọng lượng và cải thiện tính linh hoạt.  Tên của Giannis và 4 anh em của anh ấy (Alex, Francis, Thanasis và Kostas) được đúc ở đế ngoài'),
(268, 'Giày Bóng Rổ Nam Nike Zoom Freak 2', 1, 52, '42', 198, 2, '7f05633bac.jpg', 1, 'GIÀY BÓNG RỔ NAM NIKE ZOOM FREAK 2  Giannis sở hữu sự kết hợp kỳ lạ giữa chiều cao, chiều dài và tốc độ hiếm thấy ở giải đấu. Zoom Freak 2 khai thác sức mạnh của anh ta và giúp anh ta tạo ra năng lượng trên sân đấu. Lớp phủ đúc bao phủ khu vực ngón chân bên ngoài từng bước giúp Giannis đợt phá tại Euro.  Một dòng mới về tốc độ và sức mạnh  Sự kết hợp giữa đệm Zoom Air ở bàn chân trước và đệm siêu mềm, nhạy giúp bạn khai thác sức mạnh của mình trên sân.  Các bước ổn định của Euro  Một miếng TPU đúc ở mặt trước bên ngoài được thiết kế cho một trong những bước di chuyển hiệu quả nhất của Giannis, giúp ổn định bàn chân trong suốt trận đấu.  Nhẹ và linh hoạt  Cao su đế ngoài được tách thành 2 khu vực với một miếng hỗ trợ cứng ở giữa. Điều này giúp giảm trọng lượng và cải thiện tính linh hoạt.  Tên của Giannis và 4 anh em của anh ấy (Alex, Francis, Thanasis và Kostas) được đúc ở đế ngoài'),
(269, 'Giày Chạy Bộ Nữ ASICS Gel-Kayano 5 360', 1, 53, '36', 238, 8, 'd97bbc9519.jpg', 1, ''),
(270, 'Giày Chạy Bộ Nữ ASICS Gel-Kayano 5 360', 1, 53, '37', 238, 2, 'd97bbc9519.jpg', 1, ''),
(271, 'Giày Chạy Bộ Nữ ASICS Gel-Kayano 5 360', 1, 53, '38', 238, 8, 'd97bbc9519.jpg', 1, ''),
(272, 'Giày Chạy Bộ Nữ ASICS Gel-Kayano 5 360', 1, 53, '40', 238, 2, 'd97bbc9519.jpg', 1, ''),
(273, 'Giày Chạy Bộ Nữ ASICS Gel-Kayano 5 360', 1, 53, '39', 238, 8, 'd97bbc9519.jpg', 1, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_User`) USING BTREE;

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id_discount`);

--
-- Chỉ mục cho bảng `tbl_imgthumb`
--
ALTER TABLE `tbl_imgthumb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_Id`);

--
-- Chỉ mục cho bảng `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`),
  ADD KEY `brandId` (`brandId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id_discount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_imgthumb`
--
ALTER TABLE `tbl_imgthumb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD CONSTRAINT `tbl_orderdetails_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`order_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
