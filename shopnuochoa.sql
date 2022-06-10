-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2021 lúc 07:37 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopnuochoa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID_Admin` int(11) NOT NULL,
  `User` varchar(128) NOT NULL,
  `Pass` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID_Admin`, `User`, `Pass`) VALUES
(1, 'Admin1', '123'),
(2, 'Admin2', '234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `Ma_Comment` int(11) NOT NULL,
  `ID_KhachHang` int(11) NOT NULL,
  `Ma_SP` int(11) NOT NULL,
  `Noi_Dung` varchar(5000) NOT NULL,
  `Ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`Ma_Comment`, `ID_KhachHang`, `Ma_SP`, `Noi_Dung`, `Ngay`) VALUES
(9, 4, 100, 'đẹp', '2021-11-17'),
(10, 6, 3, 'đẹp', '2021-11-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_donhang`
--

CREATE TABLE `ct_donhang` (
  `Ma_DonHang` int(11) NOT NULL,
  `MA_SP` int(11) NOT NULL,
  `So_Luong` int(11) NOT NULL,
  `VAT` int(11) NOT NULL,
  `Thanh_Tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ct_donhang`
--

INSERT INTO `ct_donhang` (`Ma_DonHang`, `MA_SP`, `So_Luong`, `VAT`, `Thanh_Tien`) VALUES
(7, 6, 1, 0, 1599000),
(7, 71, 3, 0, 8100000),
(7, 75, 2, 0, 5140000),
(8, 6, 1, 0, 1599000),
(8, 71, 3, 0, 8100000),
(8, 75, 2, 0, 5140000),
(9, 6, 10, 0, 15990000),
(9, 71, 1, 0, 2700000),
(9, 75, 1, 0, 2570000),
(10, 6, 10, 0, 15990000),
(10, 71, 1, 0, 2700000),
(10, 75, 1, 0, 2570000),
(11, 6, 10, 0, 15990000),
(11, 71, 1, 0, 2700000),
(11, 75, 5, 0, 12850000),
(12, 18, 1, 0, 4100000),
(13, 98, 1, 0, 3200000),
(14, 98, 2, 0, 3200000),
(15, 98, 2, 0, 3200000),
(16, 98, 2, 0, 3200000),
(17, 7, 1, 0, 1900000),
(17, 98, 2, 0, 3200000),
(18, 7, 1, 0, 1900000),
(18, 98, 2, 0, 3200000),
(19, 7, 1, 0, 1900000),
(19, 98, 2, 0, 3200000),
(20, 1, 1, 0, 1899000),
(20, 7, 1, 0, 1900000),
(20, 98, 2, 0, 3200000),
(21, 1, 1, 0, 1899000),
(21, 7, 1, 0, 1900000),
(21, 96, 1, 0, 2950000),
(21, 98, 2, 0, 3200000),
(22, 3, 2, 0, 6398000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `Ma_DonHang` int(11) NOT NULL,
  `Ngay_Dat` date NOT NULL,
  `Phi_Ship` int(11) NOT NULL,
  `Tong_Tien` int(11) NOT NULL,
  `ID_KhachHang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`Ma_DonHang`, `Ngay_Dat`, `Phi_Ship`, `Tong_Tien`, `ID_KhachHang`) VALUES
(7, '2021-10-21', 0, 14839000, 4),
(8, '2021-10-21', 0, 14839000, 4),
(9, '2021-10-21', 0, 21260000, 4),
(10, '2021-10-21', 0, 21260000, 4),
(11, '2021-10-21', 0, 31540000, 4),
(12, '2021-11-14', 0, 4100000, 5),
(13, '2021-11-17', 0, 3200000, 6),
(14, '2021-11-17', 0, 6999000, 6),
(15, '2021-11-17', 0, 6999000, 6),
(16, '2021-11-17', 0, 6999000, 6),
(17, '2021-11-17', 0, 6999000, 6),
(18, '2021-11-17', 0, 6999000, 6),
(19, '2021-11-17', 0, 6999000, 6),
(20, '2021-11-17', 0, 6999000, 6),
(21, '2021-11-17', 0, 9949000, 6),
(22, '2021-11-18', 0, 6398000, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaohang`
--

CREATE TABLE `giaohang` (
  `Ma_DonHang` int(11) NOT NULL,
  `ID_KhachHang` int(11) NOT NULL,
  `Ten` varchar(128) NOT NULL,
  `Dia_Chi` varchar(500) NOT NULL,
  `Tinh` varchar(128) NOT NULL,
  `SDT` int(15) NOT NULL,
  `Email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giaohang`
--

INSERT INTO `giaohang` (`Ma_DonHang`, `ID_KhachHang`, `Ten`, `Dia_Chi`, `Tinh`, `SDT`, `Email`) VALUES
(20, 6, 'Nguyen Van B', 'quan 1', 'HCM', 123132, 'banhu@gmail.com'),
(21, 6, 'Cao Duc Man', 'quan 1', 'HCM', 46548520, 'man@gmail.com'),
(22, 7, 'Nguyen Van B', 'quan 1', '', 123156465, 'man@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ID` int(11) NOT NULL,
  `User` varchar(128) NOT NULL,
  `Pass` varchar(500) NOT NULL,
  `Ten` varchar(500) NOT NULL,
  `Phai` varchar(5) NOT NULL,
  `SDT` int(15) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Ngay_Sinh` date NOT NULL,
  `Dia_Chi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ID`, `User`, `Pass`, `Ten`, `Phai`, `SDT`, `Email`, `Ngay_Sinh`, `Dia_Chi`) VALUES
(4, 'Man', '0cc175b9c0f1b6a831c399e269772661', 'Man', '', 12, '4@gmail.com', '0000-00-00', 'HCM'),
(5, 'a', '0cc175b9c0f1b6a831c399e269772661', 'Dior', '', 12, 'a@gmail.com', '0000-00-00', 'HCM'),
(6, 'uu', '7b774effe4a349c6dd82ad4f4f21d34c', 'Man', '', 123, 'u@gmail.com', '0000-00-00', 'HCM'),
(7, 'Man', 'c4ca4238a0b923820dcc509a6f75849b', 'Man', '', 123, 'man@gmail.com', '0000-00-00', 'HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `Ma_Loai` varchar(10) NOT NULL,
  `Ten_Loai` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`Ma_Loai`, `Ten_Loai`) VALUES
('EDC', 'Eau de Cologne'),
('EDP', 'Eau de Parfum'),
('EDT', 'Eau de Toilette'),
('P', 'Parfum'),
('PO', 'Perfume Oil');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `ID` int(5) NOT NULL,
  `Ten` varchar(128) NOT NULL,
  `action` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`ID`, `Ten`, `action`) VALUES
(1, 'Trang Chủ', 'home'),
(2, 'Sản Phẩm', 'sanpham'),
(3, 'Liên Hệ', 'lienhe'),
(4, 'Dịch Vụ', 'dichvu'),
(5, 'Sự Kiện', 'sukien'),
(6, 'Cữa Hàng', 'hotro');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MA_SP` int(11) NOT NULL,
  `Ten_Sp` varchar(500) NOT NULL,
  `Mo_Ta` varchar(5000) NOT NULL,
  `Gia` int(11) NOT NULL,
  `Gia_Giam` int(11) NOT NULL,
  `Hinh` varchar(500) NOT NULL,
  `So_Luong` int(11) NOT NULL,
  `Ngay_Them` date NOT NULL,
  `Ngay_Update` date NOT NULL,
  `Trang_Thai` varchar(100) NOT NULL,
  `Nhom_SP` int(11) NOT NULL,
  `So_Luoc_Xem` int(11) NOT NULL DEFAULT 1,
  `Ma_Loai` varchar(10) NOT NULL,
  `Ma_Thuong_Hieu` varchar(10) NOT NULL,
  `ID_Admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MA_SP`, `Ten_Sp`, `Mo_Ta`, `Gia`, `Gia_Giam`, `Hinh`, `So_Luong`, `Ngay_Them`, `Ngay_Update`, `Trang_Thai`, `Nhom_SP`, `So_Luoc_Xem`, `Ma_Loai`, `Ma_Thuong_Hieu`, `ID_Admin`) VALUES
(1, 'Chanel Chance EDP', '- Nước hoa Chanel Chance EDP Mang nét mềm mại, tinh khiết như những giọt sương ban mai, Hương thơm của Chanel Chance EDP phảng phất hòa trong gió và len lỏi vào từng ký ức, tạo ra ánh sáng lung linh, huyền ảo. Tưởng chừng vô hình mà hữu hình khiến cho mọi xúc cảm tự thăng hoa.', 2000000, 1899000, 'sp1.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 1, 3, 'EDP', 'Chanel', 1),
(2, 'Chanel Chance Eau Tendre EDT', ' Với mùi hương của nước hoa nữ Chanel Chance Eau Tendre khi lan tỏa ra xung quanh sẽ chinh phục mọi không gian bằng vẻ đẹp dịu dàng tinh tế. Mùi hương của nó gợi lên sự trong trẻo, nhẹ nhàng, đi đến đâu nó sẽ mang đến cho mọi người hương hoa thơm ngát của mùa xuân hè rực rỡ.\r\n\r\n', 3390000, 0, 'sp2.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 1, 2, 'EDP', 'Chanel', 1),
(3, 'Chanel Coco Mademoiselle EDP', '- Nước Hoa Chanel Coco Mademoiselle là một phiên bản bổ sung cho nét tính cách đầy tương phản của Gabrielle Chanel. Đó là biểu hiện cho nét nữ tính, một hương thơm sinh động, tươi mát và phức cảm dành cho những phụ nữ thanh lịch và quý phái. Mùi hương thơm phương Đông hiện đại này với những nốt hương cơ bản là hoa hồng và hoa lài, nó tựa 1 bản nhạc nhẹ nhàng lướt qua như những cánh hoa rơi.', 3390000, 3199000, 'sp3.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 1, 14, 'EDP', 'Chanel', 1),
(4, 'Chanel Coco Mademoiselle Intense EDP', '- Chắc hẳn dòng nước hoa Coco mademoiselle EDP của Chanel không còn quá xa lạ với chị em phụ nữ yêu nước hoa, hầu như ai cũng thích mùi hương sang chảnh và quyến rũ này. Ra mắt từ năm 2001 và Coco mademoiselle edp luôn giữ top đầu trong danh sách những mùi hương mà chị em yêu thích.', 3650000, 3450000, 'sp4.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 1, 1, 'EDP', 'Chanel', 1),
(5, 'Chanel Coco Noir EDP', 'Nước hoa Chanel Coco Noir là 1 sản phẩm mới của dòng nước hoa Chanel được thừa hưởng cả 2 nét đẹp rạng rỡ và nồng ấm từ Coco Mademoiselle và Coco eau de parfum.\r\nVẻ hấp dẫn đầy bí ẩn của Coco Noir cuốn hút cho sức mạnh, quyền lực và sự đam mê từ Chanel Coco Noir sẽ là một món quà tinh thần tuyệt vời dành cho những người phụ nữ hiện đại.\r\n\r\n', 2199000, 0, 'sp5.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 1, 4, 'EDP', 'Chanel', 1),
(6, 'Gucci Guilty Intense Pour Homme', 'Nước hoa nam Gucci Guilty Intense Pour Homme là phiên bản được nâng cấp mạnh mẽ từ dòng nước hoa Gucci Guilty nam đang được rất nhiều bạn trai yêu thích trước đó. Với phiên bản mới này những lớp hương dường như trở nên mạnh mẽ và cuồng nhiệt hơn, có sức lan tỏa mãnh liệt hơn với thành phần chủ đạo là mùi hoa oải hương sắc lạnh được trung hòa trong mùi hương hổ phách ngọt ngào. Thêm vào đó một chút tươi tắn của hương hoa cam, hoa chanh trên nền gỗ tuyết tùng với mùi nồng nàn quyến rũ.', 1750000, 1599000, 'sp6.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 2, 1, 'EDP', 'Gucci', 1),
(7, 'Gucci Guilty Black Pour Homme', 'Nước hoa nam Gucci Guilty Black Pour Homme là một mùi hương gợi lên sự nhiệt huyết, xông pha và đầy bản lĩnh của tuổi trẻ. Bằng cách kết hợp các mùi hương một cách khéo léo và sắc sảo, nhà sản xuất đã cô đọng từ những mùi hương như hoa cam, oải hương, gỗ tuyết tùng, hạt ngò tây và đặc biệt là mùi hương cỏ xanh để tạo ra sự cám dỗ cực kỳ lớn trong mùi hương da nước hoa này tạo ra như chính cái tên của nó “Guilty”', 2100000, 1900000, 'sp7.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 2, 1, 'EDP', 'Gucci', 1),
(8, 'Gucci Guilty Absolute Pour Homme', 'Gucci Guilty Absolute được tạo ra bằng cách kết hợp đặc biệt giữa các mùi hương gồm các chiết xuất tự nhiên từ hương gỗ trầm hương, cây bách, dầu, da thuộc. Hương đầu là da thuộc đặc trưng, hương giữa là mùi của hoắc hương, hương cây bách, hương cuối là mùi thơm của gỗ khô và cỏ hương bài. Đây là mùi hương hết sức nam tính và vô cùng cuốn hút đối với người khác phái.', 2350000, 0, 'sp8.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 2, 1, 'EDP', 'Gucci', 1),
(9, 'Gucci Made To Measure Pour Homme', 'Sang trọng, lịch lãm mà không quá phô trương là mùi hương nước hoa nam Gucci Made To Measure. Cũng giống như những bộ lễ phục được may đo một cách tỉ mỉ và cẩn thận dành riêng cho bạn một cách vừa vặn để có thể phô hết những điểm mạnh vốn có  trên cơ thể. Mùi nước hoa nam  Gucci Made To Measure được tạo nên từ các chất liệu đầy lôi cuốn và kích thích như hương vị cay nồng, da thuộc, hoắc hương, hương hoa oải hương, hương gỗ phách. Nhưng lại mang đến một mùi hương vô cùng dễ chịu nhờ sự tiết chế và cân bằng trong kết cấu của mỗi nguyên liệu khiến cho bạn dễ tiếp nhận nhưng luôn đọng lại một dư âm ấn tượng đến khó quên.', 3050000, 0, 'sp9.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 2, 5, 'EDP', 'Gucci', 1),
(10, 'Gucci Pour Homme', 'Gucci Pour Homme được trình làng từ năm 2008 hiện là dòng nước hoa bán chạy của thương hiệu này. Pour Homme có mùi hương quyến rũ là sự hòa quyện của sự thân quen và xa lạ. Đây là một trong những mùi hương Gucci nước hoa nam đáng để thử cho tất cả phái mạnh.\r\nLà sự hòa quyện của mùi hương từ những cánh hoa xinh đẹp kiêu sa như hương hoa cam, hoa oải hương, hồi hương làm lớp hương đầu tiên. ở lớp hương thứ hai sẽ là sự bùng nổ của những mùi hương lịch lãm dành riêng cho phái mạnh được chọn lọc từ nhục đậu khấu, quế cay nồng cùng quả bách xù, quả mận đỏ đậm chất phương đông. Lớp hương cuối cùng lưu đọng lại trên da sẽ là mùi hương da thuộc quen thuộc kết hợp cùng hương cây hoắc hương, hổ phách và  Labdanum nồng nàn.', 2250000, 2099000, 'sp10.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 2, 1, 'EDP', 'Gucci', 1),
(11, 'Dior J’adore In Joy', 'J’adore In Joy được ví là “đại sứ” của Dior nước hoa, mang đến sự vui tươi, tình yêu cuộc sống và kéo gần khoảng cách giữa mọi người lại với nhau.Tầng hương đầu là hương muối biển mặn mà, da diết thích hợp với cái nắng oi ả của mùa hè. Hòa vào với đó là mùi trái cây chín tới ngọt ngào, kết hợp hoa nhài, hoàng lan, hoa huệ, hoa cam. Kết thúc với tầng hương cuối là hoa đào mát nhẹ, thanh khiết rất phù hợp với các cô gái yêu thích phong cách trưởng thành, quyến rũ.', 2050000, 1900000, 'sp11.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 3, 3, 'EDP', 'Dior', 1),
(12, 'Dior Addict Eau De Parfum', 'Dior Addict Eau De Parfum sở hữu mùi hương rất cuốn hút, rất phương Đông khiến ai nấy cũng phải ngất ngây, lâng lâng cảm xúc. Lấy cảm hứng từ đặc trưng phương Đông là thần bí nhưng lại cuốn hút khó cưỡng, chuyên gia điều chế mùi hương Francois Demachy đã kết tinh ra sản phẩm Dior Addict Eau De Parfum vào năm 2012.Cảm nhận đầu tiên khi sử dụng nước hoa Dior nữ này đó là mùi hương ngọt ngào đến từ loài hoa có nhiều ở Mexico – Vanilla Planifolia. Kết hợp cùng vẻ gợi cảm, hấp dẫn đó là sự góp mặt của các loại hoa cỏ phương Đông như hoa cam, tinh dầu hoa nhài nhẹ nhàng. Ngoài ra, tầng hương giữa còn có mùi hoa hồng, hoa quỳnh mê đắm.\r\n\r\n', 2800000, 0, 'sp12.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 3, 1, 'EDP', 'Dior', 1),
(13, 'Miss Dior N’Roses', 'Đúng như tên gọi của nó, nước hoa Miss Dior N’Roses có mùi hương chủ đạo là hương hoa hồng thanh lịch. Mùi hương này được sáng tạo nên bởi bậc thầy hương liệu Francois Demachy, lấy cảm hứng từ vườn hoa hồng nở rộ trong ký ức của ông. Hương thơm này đặc biệt còn ở chỗ nguyên liệu là những đóa hồng quý hiếm, trồng theo hình thức canh tác bền vững.Tầng hương đầu là sự kết hợp giữa hương hoa hồng Grasse và hoa hồng Damask tạo nên hỗn hợp mùi hương hấp dẫn, thú vị và đầy mãnh liệt. Đến tầng hương giữa lãng mạn với hương cam, quýt, hoa phong lữ Geranium. Cú chốt là mùi xạ hương trắng ngọt ngây, mê hoặc.', 2699000, 2499000, 'sp13.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 3, 3, 'EDP', 'Dior', 1),
(14, ' Miss Dior Blooming Bouquet', 'Với mùi hương đặc biệt, nước hoa Miss Dior Blooming Bouquet nằm trong top những dòng nước hoa bán chạy nhất thế giới. Xuất hiện với tư cách là một trong những “đàn chị” đời đầu của Dior vào năm 1947, mẫu nước hoa này vẫn tạo được sức hút riêng biệt, đầy quyến rũ.\r\n\r\n', 2699000, 2499000, 'sp14.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 3, 1, 'EDP', 'Dior', 1),
(15, ' Miss Dior Eau De Parfum', 'Miss Dior Eau De Parfum có diện mạo tương tự với các sản phẩm khác trong dòng nước hoa Miss Dior với hình nơ xinh xắn gắn trên chai thủy tinh vuông vức. Trông vẻ ngoài chai nước hoa giống y hệt một món quà nhỏ tinh tế, đáng yêu. Do đó, mọi người có thể thoải mái chọn nó để dành tặng cho những người phụ nữ thân yêu của mình.Nước hoa Miss Dior Eau De Parfum có mùi hương chủ đạo của hoa hồng đến từ “xứ sở ngàn hoa” Grasse miền Nam nước Pháp. Thêm vào đó là hương quýt Mandarin, cam Bergamot, cam ngọt, chanh, hoa nhài. Hương cuối với hoắc hương và gỗ hồng mộc thanh mát, quyến rũ giúp tôn vinh sự tự tin của người phụ nữ hiện đại.', 2650000, 0, 'sp15.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 3, 1, 'EDP', 'Dior', 1),
(16, 'My Burberry EDP', 'Nếu bạn là yêu thích nước hoa Burberry nữ thì chắc chắn bạn không nên bỏ lỡ sản phẩm này. Nó được sở hữu thiết kế chai là một hình tượng thu nhỏ cùng với những chi tiết tinh tế của chiếc áo khoác trench nhà Burberry. Điều này mang đến một vẻ đẹp tinh tế, sang trọng và đầy cuốn hút. Đặc biệt nó còn lưu trữ trọn vẹn hương thơm của khu vườn Luân Đôn sau những cơn mưa với từng tầng hương thơm nồng nàn.Lớp hương cuối nó được tạo thành từ hoắc hương, hương của gỗ Damascus và hoa hồng Centifolia. Từ đó mang đến một cảm nhận về thảo mộc nhẹ nhàng, tương phản với chút cay nồng và một vị đắng, nhưng nó lại không kém phần ngọt ngào, trầm ấm cũng như sâu lắng và đầy bí ẩn.', 1900000, 1599000, 'sp16.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 4, 1, 'EDP', 'Burberry', 1),
(17, 'Burberry My Burberry Black Parfum', 'Nước hoa Burberry My Burberry Black Parfum cho nữ là một sản phẩm được bán rất chạy trên thị trường. Sản phẩm này được mang trên mình một dáng vóc của chiếc áo choàng đen bóng, đây chính một trong những điểm nổi bật với phiên bản lần này. Hơn nữa với thiết kế cũng đem lại một sự tò mò, khi người dùng lần đầu tiếp xúc với dòng sản phẩm bới nó có khả năng thể hiện được sự sáng tạo cũng như phá cách của hãng Burberry.', 2200000, 2099000, 'sp17.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 4, 2, 'EDP', 'Burberry', 1),
(18, 'My Burberry Blush ', 'Với dòng sản phẩm này được chứa đựng trong một chai nước hoa có thiết kế rất tinh tế và thon gọn. Bên cạnh đó ống xịt được mang thiết kế  khá tinh xảo, điều này sẽ giúp người dùng dễ dàng có thể kiểm soát được lượng nước hoa khi sử dụng.Hơn nữa dòng nước hoa này có mùi hương khá dịu dàng có lớp hương đầu là mùi hương chua dịu của trái chanh cùng với vị ngọt ngào của quả lựu. Sau đó bạn có thể cảm nhận được là hàng loạt những mùi hương của cánh hoa hồng, hoa phong lữ, cùng với táo xanh,.. với tỉ lệ vàng đã được nghiên cứu rất thơm mát, nhằm tạo ra một lớp hương giữa đầy lôi cuốn.', 4100000, 0, 'sp18.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 4, 1, 'EDP', 'Burberry', 1),
(19, ' Burberry Brit Sheer', 'Dòng nước hoa này chính là sự kết hợp rất hoàn hảo của những hương thơm từ hoa cỏ trái cây thơm mát. Hơn nữa nước hoa Burberry Brit Sheer cũng chính là gợi ý tuyệt vời để bạn có thể bắt đầu một ngày mới tràn đầy năng lượng.Không chỉ có thiết kế sang trọng mà  dòng sản phẩm này còn được chứa một hàm lượng tinh dầu thơm trung bình cùng với hương thơm nhẹ nhàng và có khả năng lưu hương  rất bền. Với mùi hương ngọt ngào nhưng không hề kém phần trẻ trung và thanh lịch sản phẩm này sẽ giúp bạn trở nên khác biệt với người đối diện.', 2200000, 2050000, 'sp19.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 4, 1, 'EDP', 'Burberry', 1),
(20, 'Burberry London', 'Có thể nói rằng đây chính là dòng nước hoa biểu tượng cho vẻ đẹp hiện đại và thanh lịch của nước Anh nói chung cũng  thủ đô London nói riêng. Bởi loại nước hoa này nó giống như một bức tranh thu nhỏ của phong sống tự do, thoải mái của người dân xứ sương mù.Hơn nữa, loại nước này thuộc dòng sản phẩm mang phong cách cổ điển và tinh tế, nó là sự kết hợp nhẹ nhàng với sự hiện đại. Đặc biệt mùi hương của em này sẽ tạo lên sự ấm áp nhưng không quá gắt, do nó chủ yếu là hương thơm của loài hoa.', 1300000, 0, 'sp20.jpg', 20, '2021-09-25', '2021-09-25', 'Còn hàng', 4, 1, 'EDP', 'Burberry', 1),
(21, 'Tom Ford Black Orchid', 'Tom Ford Black Orchid lần đầu được giới thiệu vào năm 2006, và là một dòng nước hoa sản xuất dành cho phái nữ, thế nhưng sau một thời gian ra mắt không lâu, cánh mày râu lại đem lòng yêu thích mùi hương này, biến Black Orchid trở thành một chai nước hoa Unisex bất đắc dĩ, vì để định nghĩa được một dòng nước nước unisex hay không, phụ thuộc hoàn toàn vào nhu cầu thực tế của cả hai giới. Một trong những yếu tố khiến các dòng nước hoa Tom Ford dễ nhận diện đối với các hãng khác đó là hương thơm luôn đậm, ấm và có thể bám tỏa tốt. Tom Ford Black Orchid cũng không ngoại lệ, với các thành phần chính như Sô cô la Mexico, Nấm truffle, sự ngọt ngào trầm ấm thể hiện rất rõ ràng và mạnh mẽ. Black Orchid được hãng hướng đến nữ giới bởi thành phần hoa xuất hiện rất nhiều trong mùi hương này, Hoa phong lan là mùi hương rõ ràng nhất, cùng với hoa sen hay hoa nhài. Tuy nhiên sự có mặt của Cây hoặc hương kết hợp cùng Gia vị và Vani, vô tình khiến mùi hương này trở nên cá tính và khác biệt, gây ấn tượng mạnh với cả cánh mày râu, khiến những chàng trai khó tính nhất cũng phải công nhận rằng đây cũng là một mùi hương xứng đáng dành cho nam giới. Tom Ford Black Orchid tinh tế trong cách tỏa hương, sang trọng như chính thương hiệu của hãng, sành điệu, thời thượng và cuốn hút như cái cách nhà Tom Ford luôn dành cho những sản phẩm của mình.', 2900000, 2699000, 'sp21.jpg', 30, '2021-10-10', '2021-10-10', 'Còn hàng', 5, 1, 'EDP', 'Tom Ford', 1),
(22, 'Tom Ford Noir Pour Femme', 'Đối với Tom Ford, không có gì là không thể khi thương hiệu này luôn cho ra mắt rất nhiều mùi hương độc đáo và đặc biệt hơn so với nhiều đối thủ cạnh tranh khác. Trong đó, Tom Ford Noir Pour Femme là một trong những minh chứng rõ ràng nhất thể hiện những nghịch lý kỳ lạ nhưng luôn đem đến sức hấp dẫn đến mức kinh ngạc đối với giới mộ điệu của mình. Bằng cách thay đổi và luôn sáng tạo, dù là những thành phần hương cơ bản nhất như Cam Bergamot, Hoa hồng, Hoa nhài thì Tom Ford Noir Pour Femme vẫn khác biệt so với bất kỳ mùi hương nào từ sự gợi cảm, bí ẩn và sang trọng có sẵn bên trong mình. Cùng với một vài thành phần đặc biệt như Hương Kulfi, Hổ Phách và Nhũ hương, Tom Ford Noir Pour Femme lại càng nâng cấp sự quyến rũ, hấp dẫn của phụ nữ lên thêm một tầm cao mới mà bất kỳ đối thủ hay gã trai nào cũng thèm khát có được.', 1990000, 0, 'sp22.jpg', 30, '2021-10-10', '2021-10-10', 'Còn hàng', 5, 1, 'EDP', 'Tom Ford', 1),
(23, 'Tom Ford Velvet Orchid', 'Không chỉ được xem là một di sản tuyệt vời trong bộ sưu tập của nhà Tom Ford, mùi hương lẫn thiết kế của Velvet Orchid tượng trưng cho sự táo bạo, quyến rũ của người phụ nữ cầm quyền. Bằng cách sử dụng Rượu rum kết hợp cùng các loại trái cây trộn lẫn vào Mật ong, hương thơm của Velvet Orchid vừa mang lại sự sang trọng cho các quý cô vừa thể hiện được sự ngọt ngào hiếm có. Tuy nhiên, điều bí mật thật sự khiến hương thơm của Velvet Orchid giúp cho người phụ nữ gợi cảm, quyến rũ và thu hút hơn cả đó chính là loạt hương Hoa được các nhà sáng tạo cất giấu bên trong. Nhờ sự đa dụng cùng tầng hương đặc trưng giúp phụ nữ trở thành tâm điểm nổi bật giữa đám đông, Tom Ford Velvet Orchid trở thành mùi hương đáng sở hữu nhất trong những năm gần đây.', 2600000, 2499000, 'sp23.jpg', 23, '2021-10-10', '2021-10-10', 'Còn hàng', 5, 1, 'EDP', 'Tom Ford', 1),
(24, 'Tom Ford Orchid Soleil', 'Tom Ford Orchid Soleil được xem là một trong những phiên bản nâng cấp hoàn mỹ nhất tính đến thời điểm hiện nay kể từ khi được công bố vào tháng 7 năm 2016 gần đây. Có thể nói, Orchid Soleil mở ra những mùi hương mới mẽ bộc lộ được cá tính sôi động, rạng rỡ và gợi cảm được ẩn sâu bên trong của người con gái. Nhằm để khai thác những điều độc đáo đó, những nốt hương Hồng tiêu, Cây bách được lựa chọn làm sự khởi đầu đầy nồng cháy và ấm áp. Tiếp đến là những tông hương mềm mại, dịu dàng được tung ra thông qua những bông Hoa huệ đỏ và Hoa huệ trắng giúp khai thác sự gợi cảm bên trên làn da của phụ nữ. Và đặc biệt hơn cả, những nốt hương Vanilla và Kem tươi được cẩn thận sử dụng vào những khoảnh khắc cuối cùng để các nàng vẫn luôn giữ trọn được sự ngọt ngào, vui vẻ của mình cho đến hết ngày.', 2850000, 2550000, 'sp24.jpg', 20, '2021-10-10', '2021-10-10', 'Còn hàng', 5, 1, 'EDP', 'Tom Ford', 1),
(25, 'Tom Ford White Patchouli', 'Nước hoa Tom Ford White Patchouli của thương hiệu Tom Ford là dòng thiết thế dành riêng cho phái nữ. Hương thơm của Tom Ford White Patchouli thuộc nhóm hương hoa cỏ síp thanh mát, cay nồng mang đến cho người dùng phong vị giản dị nhưng đầy sang trọng và tinh tế, phù hợp với những ngày lạnh của mùa thu và mùa đông. Sự tươi mới và dễ chịu này sẽ giúp cho bạn tận hưởng thiên nhiên tươi đẹp và thêm yêu cuộc sống.', 2650000, 0, 'sp25.jpg', 30, '2021-10-10', '2021-10-10', 'Còn hàng', 5, 1, 'EDP', 'Tom Ford', 1),
(26, 'Tom Ford For Men', 'Nước hoa Tom Ford for Men của thương hiệu Tom Ford là dòng thiết thế dành riêng cho nam ra mắt năm 2007. Thuộc nhóm hương gỗ hoa cỏ xạ hương, Tom Ford for Men được sáng tạo bởi chuyên gia nước hoa nổi tiếng Cassar.', 3650000, 3550000, 'sp26.jpg', 30, '2021-10-10', '2021-10-10', 'Còn hàng', 6, 1, 'EDP', 'Tom Ford', 1),
(27, 'Tom Ford Noir Extreme Cologne', 'Tom Ford Noir Extreme đem tới những âm hưởng của các quý ông giàu có phương Đông đẫm trong sắc đen huyền bí, sang trọng mà toàn bộ thiết kế lẫn mùi hương đều được cân bằng một cách hoàn hảo từ trong ra ngoài.\r\n\r\nChẳng cần phải nói quá nhiều, Tom Ford Noir Extreme đánh gục bất kì cô gái nào ngay từ tầng hương đầu tiên bằng sự tươi mới, ngọt ngào với Quýt hồng, Bạch đậu khấu và Nhục đậu khấu. Bộc lộ nhiều khía cạnh bằng cách xoay chuyển những nốt hương một cách nhịp nhàng, Nhũ hương thấm nhẹ vào các nốt hương Hoa chậm rãi, toát lên sự quyến rũ, ấm áp đầy mê hoặc trong mắt đối phương. Bằng sự linh hoạt trong phong thái lẫn cảm xúc, Tom Ford Noir Extreme để lại ấn tượng sâu sắc thông qua những nốt hương Gỗ, Hổ phách, Gỗ đàn hương trầm lắng và kết thúc nhẹ nhàng với lời hứa hẹn dịu ngọt của Vanilla.', 3800000, 0, 'sp27.jpg', 20, '2021-10-10', '2021-10-10', 'Còn hàng', 6, 1, 'EDP', 'Tom Ford', 1),
(28, 'Tom Ford Gray Vetiver', 'Tom Ford Grey Vetiver là một trong những phiên bản tâm đắc của nhà Tom Ford trong suốt khoảng thời gian vừa qua. Mang đến những cảm giác tươi mới, độc đáo khi sử dụng tinh chất Bưởi, Hoa cam và Cây xô thơm, tầng hương đầu còn giúp cho tinh thần của bạn trở nên sảng khoái hơn mỗi khi nó phảng phất nơi đầu mũi. Với dụng ý muốn tạo ra sự đặc trưng riêng biệt của Tom Ford Grey Vetiver, nhà sáng tạo đã khai thác triệt để sự dịu ngọt từ Nhục đậu khấu cùng cảm giác cay nhẹ, nồng ấm từ Ớt Pimento. Có lẽ chính bởi vì sự kết hợp lạ lẫm này mà Tom Ford Grey Vetiver lại trở nên đặc biệt đối với những chàng trai ưa thích sự nổi trội, nam tính mỗi khi xuất hiện nơi đám đông.', 2650000, 2550000, 'sp28.jpg', 35, '2021-10-10', '2021-10-10', 'Còn hàng', 6, 1, 'EDP', 'Tom Ford', 1),
(29, 'Tom Ford Tuscan Leather', 'Tom Ford Tuscan Leather dường như luôn sẵn sàng chiều chuộng và làm thoả mãn khát khao của khứu giác. Nồng nàn nhưng vẫn biết cách tiết chế mùi hương một cách điêu luyện, hài hoà và cân đối, đó là “quy ước” riêng mà Tom Ford Tuscan Leather đã ngấm ngầm khẳng định.\r\n\r\nNgay từ cái tên, dòng nước hoa này đã bộc lộ gần như toàn bộ đặc tính của mình. Một mùi hương da thuộc nô nức cuộc trào, ngào ngạt và khẩn trương kiếm tìm những tế bào cảm xúc. Thế nhưng, hương thơm nồng của da không làm ta hoàn toàn lúng túng, bởi xoay quanh hương da thuộc, Hoa nghê tây, Mâm xôi và Húng cây đã tạo nên note hương mở đầu nhẹ nhàng, thoang thoảng. Đến note hương giữa, Tom Ford Tuscan Leather xuất hiện trước mặt bạn như một tấm chăn bông dày dặn phơi dưới ánh mặt trời rực rỡ giữa cánh đồng hoa ngát hương.\r\n\r\nĐó là lúc sự mâu thuẫn bắt đầu bủa vây tâm trí bạn, khi ấy, da thuộc vẫn giữ vững thói quen, với tràn hương đặc quyện đầy kiêu ngạo, lẫn đâu đó là hương thơm tinh tế, ngọt ngào của cỏ cây, của cánh nhài mỏng manh, hương trầm ấm áp. Tom Ford Tuscan Leather là thế, dù chiếc chăn ấy có cuộn chặt, làm bạn choáng ngợp, thì cũng chính nó mang đến sự ấm áp, mịn màng, vừa oi ả lại tinh khiết, lắm lúc hoang mang, bối rối nhưng rồi cũng rất êm ả, dịu dàng.\r\n\r\nMột mùi hương nồng nàn quyến rũ, cả nam lẫn nữ đều có thể sử dụng được, tuy nồng nhưng vẫn có thể sử dụng được trong các văn phòng làm việc. Tuscan Leather có độ lưu hương cực lâu.', 6390000, 6299000, 'sp29.jpg', 20, '2021-10-10', '2021-10-10', 'Còn hàng', 6, 1, 'EDP', 'Tom Ford', 1),
(30, 'Tom Ford Neroli Portofino', 'Nước hoa Tom Ford Neroli Portofino Eau De Parfum 50ml là dòng nước hoa Unisex đến từ BST Private Blend Tom Ford. Sản phẩm đặc biệt ở chỗ sử dụng một cách linh hoạt hương thơm của nhóm hương cam chanh thảo mộc tạo nên sự trẻ trung, thanh mát và sang trọng cho người sử dụng.', 6050000, 5990000, 'sp30.jpg', 20, '2021-10-10', '2021-10-10', 'Còn hàng', 6, 1, 'EDP', 'Tom Ford', 1),
(31, 'Bvlgari Omnia Pink Sapphire', 'Bvlgari Omnia Pink Sappire là hương thơm dành cho các cô gái hiện đại, năng động và thích sự phá cách. Hương hoa cỏ dịu dàng của sản phẩm sẽ cân bằng lại cảm giác và giúp các nàng có những phúc giây tuyệt vời để thực hiện đam mê của mình.', 1500000, 0, 'sp31.jpg', 20, '2021-10-15', '2021-10-15', 'Còn hàng', 7, 1, 'EDP', 'Bvlgari', 1),
(32, 'Bvlgari Omnia Amethyste', 'Hương đầu: Bưởi hồng, Hương xanh\r\nHương giữa: Hoa diên vĩ, Hoa hồng Bulgaria\r\nHương cuối: Hương gỗ, Hoa vòi voi\r\n\r\nMột lần nữa lấy cảm hứng từ loại đá quý nổi tiếng - Thạch anh tím (Amethyst) - Omnia Amethyste cũng khoác lên người bộ cánh màu tím sang trọng như chính cái tên của nó.\r\n\r\nĐược cho là sản phẩm nhận nhiều phản hồi tích cực nhất trong dàn siêu phẩm với tông hương hoa nhẹ nhàng, với chỉ làn hương đầu tiên, Omnia Amethyste đã thổi một làn gió tươi mát từ Bưởi hồng cùng sự hòa quyện giữa lá trà tươi và cỏ non, đem lại cho người dùng cảm giác sảng khoái, dễ chịu khó tả.\r\n\r\nBao quát cả một tầng hương tiếp theo bằng khu vườn của sự thanh lịch với Hoa diên vĩ và hoa Hồng Bulgaria, sẽ là bất khả để cưỡng lại hương phấn hoa đặc trưng với mùi hương quyến rũ, gọi mời này.\r\n\r\nCuối cùng, để lưu giữ lại hành trình xuyên qua từng làn hương, từng nốt Hương gỗ và Hoa vòi voi nhẹ nhàng được khám phá, để lại cho ta cảm giác ấm áp hơn nhưng vẫn tràn ngập hương hoa ngọt ngào ban đầu. Một sự trọn vẹn đến khó tin.\r\n\r\nXem thêm', 2550000, 0, 'sp32.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 7, 1, 'EDP', 'Bvlgari', 1),
(33, 'Bvlgari Omnia Coral', 'Bvlgari Omnia Coral lấy hình ảnh những rạn san hô đầy màu sắc, ẩn hiện dưới mặt nước mênh mông để thể hiện vẻ đẹp lạc quan, tự do và khoáng đãng của phái đẹp. Bằng sự kết hợp giữa những thành phần trái cây, hoa cỏ, Bvlgari Omnia Coral đã phác hoạ lên nét đẹp lãng mạn tràn đầy niềm vui hân hoan. \r\nNốt hương từ quả mọng đỏ Gojo kết hợp cùng quả Cam Bergamot đã tạo nên sự sảng khoái, sự tinh tế và nổi bật càng được nhấn nhá rõ nét hơn khi mùi hương từ quả lựu được cộng hưởng vào. Yếu tố nữ tính dần được thêm vào với sự góp mặt của Hoa súng và hoa dâm bụt. Bvlgari Omnia Coral dần khép lại bằng mùi hương của Tuyết tùng và Xạ hương nồng nàn và êm dịu. ', 1750000, 0, 'sp33.jpg', 30, '2021-10-15', '2021-10-15', 'Còn hàng', 7, 1, 'EDP', 'Bvlgari', 1),
(34, 'Bvlgari Rose Essentielle\r\n\r\n', 'Nước hoa nữ Rose Essentielle EDP của thương hiệu Bvlgari được ra mắt năm 2006 và được xem là hiện thân sáng giá của sự quyến rũ, tinh tế nhất cho dòng sản phẩm nước hoa hương hoa hồng. Bvlgari Rose Essentielle EDP được ví như bức tranh tả thực của nơi quyến rũ nhất phụ nữ. \r\nNước hoa nữ Rose Essentielle EDP với hai nhóm hương hoa hồng – hoa hồng Thổ Nhĩ Kỳ sang trọng, sâu lắng và sự tinh khiết, xanh mát của hương hoa hồng Prelude tạo nên lớp hương đầu đầy ấn tượng. Tiếp theo tại lớp hương giữa, hương trái cây thơm ngon từ quả cây việt quất được hòa dịu với hương hoa tím tinh tế và hoa hài đầy sáng tạo. Cuối cùng, hương thơm của gỗ đàn hương và hoắc hương giúp mùi hương thăng hoa tạo nên sự quyến rũ dài lâu.', 2200000, 2099000, 'sp34.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 7, 1, 'EDP', 'Bvlgari', 1),
(35, ' Bvlgari Rose Goldea', 'Nếu bạn hỏi tôi đâu là ‘bà hoàng\' trong hương hoa, tôi sẽ không ngần ngại mà chọn lấy Hoa hồng. Và nếu bạn lại hỏi đâu là mùi hương hoa hồng tôi yêu thích nhất, một lần nữa tôi vẫn sẽ khăng khăng đưa bạn đến Rose Goldea Bvlgari.\r\n\r\nBên cạnh một sự thật hiển nhiên rằng Hoa hồng sẽ chiếm lấy hầu hết ‘sân khấu’, nhưng điều làm tôi lưu tâm nhất vẫn là cách các nốt hương được bố trí rất khéo léo và tinh tế ngay từ tầng hương đầu tiên, đặc biệt là Xạ hương. Khi bắt đầu mở ra màn trình diễn của mình, Rose Goldea đã khiến bất kỳ ai đối diện cũng phải thấy quyến luyến và gần gũi nơi da thịt bởi chất xúc tác mãnh liệt của Xạ hương. Ấy thế, Rose Goldea của chúng ta vẫn không hề thiếu đi sự thuỳ mị và dịu dàng với Lựu và Cam bergamot.\r\n\r\nVà kể cả khi bạn có ngày một dấn thân sâu hơn vào sức hút của mùi hương này, lúc bấy giờ đã trở nên phương phi đến kịch liệt với các nốt hương hoa nâng đỡ như Mẫu đơn hay Nhài, thì yên tâm nhé, Rose Goldea vẫn luôn biết cách chiều lòng người và nịnh khứu giác. Điểm xuyết với chút ngọt ấm, hơi tư lự của Đàn hương và Vanilla, Rose Goldea cuối cùng cũng đã hoàn thành bức tự họa tinh tế khó cưỡng của mình.', 2900000, 2800000, 'sp35.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 7, 1, 'EDP', 'Bvlgari', 1),
(36, 'Bvlgari Goldea The Roman Night', 'Mùi hương của tuổi trẻ, tình yêu và những cảm xúc thanh khiết, ngọt ngào. Bvlgari Goldea The Roman Night mở đầu bằng hương thơm của trái cây, hương vị tươi mát, mọng nước từ Dâu tằm và Cam Bergamot tạo nên một khởi đầu trong trẻo. Hương thơm của Tiêu đen chậm rãi chạm lấy vị giác như để tạo nên bước nền để bạn cảm nhận sự rực rỡ của những đoá hoa đang chuẩn bị nở rộ. “The Roman Night\" - một đêm đầy lãng mạn bắt đầu khi những đoá hoa nhài toả hương trong màn đêm, hương thơm nhẹ nhàng, thanh tao quyện vào sự quyến rũ của Hoa hồng, Hoa huệ và mẫu đơn, khiến làn da của phái đẹp như được những cánh hoa ve vẩy để trở nên mượt mà và mềm mại. Một cô nàng kiêu kỳ, gợi cảm theo cách cổ điển dần hiện ra trong tầng hương cuối, khi cỏ vetiver bắt gặp hương thơm của Xạ hương đen, Hoắc hương và Rêu, đó là sự cuốn hút đầy mặn nồng và đánh động.', 2600000, 2490000, 'sp36.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 8, 1, 'EDP', 'Bvlgari', 1),
(37, 'Bvlgari Man In Black', 'Bvlgari kỷ niệm 130 năm thành lập của mình bằng cách cho ra đời một chai nước hoa mới với tên gọi Bvlgari Man In Black, là một người đàn ông \"khác\" so với bản gốc Bvlgari Man từ năm 2010. Man in Black được hãng BVL tuyên bố là một mùi hương Nam tính, táo bạo và  lôi cuốn, được lấy cảm hứng từ câu chuyện đầy li kỳ về sự ra đời của Vulcan, vị thần của trái đất. Mở đầu mùi hương bằng việc mix Gia vị, thuốc lá và Rượu Rum có lẽ là một cách thức táo bạo nhất mà chuyên gia nước hoa Alberto Morillas đã từng làm, đó là sự nam tính, trầm tĩnh, như thể định nghĩa nó là một mùi hương hoàn toàn danh cho \"phái mạnh\" vậy. Da thuộc cùng sự nhẹ nhàng của Hoa diễn vĩ nằm ở hương giữa, tạo khoảng không gian nhẹ nhàng, thư thái, trước khi kết thúc bằng hương Gỗ Guaiac và Đậu tonka. Bvlgari Man In Black là một người đàn ông điển hình cho sự trưởng thành, thành đạt và hấp dẫn, mang trong mình nhiều suy nghĩ của một kẻ đầy tham vọng, dám nghĩ, dám làm. ', 2570000, 0, 'sp37.jpg', 30, '2021-10-15', '2021-10-15', 'Còn hàng', 8, 1, 'EDP', 'Bvlgari', 1),
(38, 'Bvlgari Man Extreme', 'Là bức tranh miêu tả sức hút khó cưỡng của người đàn ông hiện đại luôn đuổi theo sự mới mẻ, người đàn ông luôn thích thú trước những đổi thay của vạn vật, Bvlgari Man Extreme một lần nữa là “đứa con” mang đến thành công vang dội cho cha đẻ của mình - Alberto Morillas.\r\n\r\nKhông gì thú vị hơn khi được ở cạnh một người đàn ông tràn đầy năng lượng, Man Extreme đã thỏa mãn ta ngay từ tầng hương đầu tiên với Bưởi hồng, Cam bergamot thanh mát, tinh nghịch. Cùng một ít hương thảo mộc của Xương rồng, Man Extreme như được lấp đầy bằng sức sống mới.\r\n\r\nNhẹ nhàng len lỏi ở tầng hương tiếp theo, hương cay nồng của Bạch đậu khấu như vực dậy những khứu giác khó tính nhất được kết hợp khéo léo cùng ít nhiều nét ngọt nhẹ, trầm ổn của Hoa lan Nam Phi.\r\n\r\nĐưa ta từ những bất ngờ này đến bất ngờ khác, Man Extreme cuối cùng để lại ta với sự ngọt ngào ấm áp khó diễn tả thành lời với Benzoin và Gỗ vetiver', 2000000, 1900000, 'sp38.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 8, 1, 'EDP', 'Bvlgari', 1),
(39, 'Bvlgari Aqva Pour Homme', 'Nước hoa Aqva Pour Homme của hãng Bvlgari mang hương vị của biển cả, với các note hương tươi mát và sảng khoái dành cho những người đàn ông yêu thích sự đơn giản, phóng khoáng nhưng vẫn rất lịch lãm. Được ví như là trái tim của đại dương, Bvlgari Aqva Pour Homme mang trong mình mùi vị đặc trưng của rong biển, kết hợp cùng Hương cam và quýt, tạo nên một hương vị của vùng biển nhiệt đới. Tươi mới đến bất ngờ, Bvlgari Aqva Pour Homme là dòng nước hoa được nhiều chàng trai ưu ái mặc lên mình thường xuyên và mặc trong một thời gian dài, thậm chí họ xem đó là mùi hương của chính cơ thể mình. Đơn giản, hiện đại, tươi mát nhưng không kém phần lôi cuốn với hương hoa Lavender cùng vị xanh của Tinh dầu lá chanh. Bvlgari Aqva Pour Homme là một người đàn ông gần gũi nhất, an toàn nhất dành cho mọi cô gái yêu thích cảm giác được che chở và yêu thương. ', 2200000, 2100000, 'sp39.jpg', 20, '2021-10-15', '2021-10-15', 'Còn hàng', 8, 1, 'EDP', 'Bvlgari', 1),
(40, 'Bvlgari Aqva Amara', 'Bvlgari là thương hiệu nổi tiếng với những sản phẩm sang trọng cao cấp của Ý được thành lập bởi Sotirios Voulgaris năm 1884. Ở lĩnh vực chế tạo mùi hương cũng là một thành công lớn của hãng, mỗi chai nước hoa không những có mùi hương sang trọng mà hãng còn đầu tư chăm chút cho thiết kế của sản phẩm như một món phụ kiện trang sức đắt tiền. Trong đó, Aqva Amara for men được ra mắt vào năm 2004, sản phẩm nước hoa dành riêng cho nam giới với tên gọi Aqva Amara của thương hiệu Bvlgari đã tạo nên một bước ngoặt mới trong thế giới các loại nước hoa mùi vị biển. Chuyên gia Jacques Cavallier đã mang đến những nguyện liệu sang trọng và đẳng cấp để làm nên một Aqva Amara nổi bật nhưng vẫn lưu giữ được nét cá tính riêng của vùng đất Địa Trung Hải đầy hấp dẫn.', 1000000, 0, 'sp40.jpg', 30, '2021-10-15', '2021-10-15', 'Còn hàng', 8, 1, 'EDP', 'Bvlgari', 1),
(41, 'Lancome La Vie Est Belle', 'Thu hút số đông ánh nhìn của nữ giới kể từ khi ra mắt vào mùa thu năm 2012, La Vie Est Belle xuất hiện với vẻ ngoài độc đáo cùng mùi hương dịu dàng dường như chưa bao giờ là hết “hot” tính đến những năm gần đây.\r\n\r\nNắm giữ những tầng hương đơn giản nhưng lại vô cùng đồng điệu, cảm xúc mà La Vie Est Belle mang lại là thứ mà bất kì cô gái cũng phải mềm lòng. Chỉ với làn hương đầu tiên, hương thơm mà Quả lý chua đen, Quả lê đem lại là sự nhẹ nhàng, trẻ trung của những quý cô thời hiện đại.\r\n\r\nBằng cách phối hợp những nốt hương Hoa diên vĩ, Hoa nhài, Hoa cam đan xen cùng nền hương Xạ và Kẹo Praline, Lancome La Vie Est Belle phảng phất liên tục sự ngọt ngào, hấp dẫn từ cơ thể người phụ nữ khiến cho phái mạnh đều phải thầm thương, trộm nhớ về dáng vẻ và mùi hương này mang lại mỗi khi nó lướt qua.', 3000000, 0, 'sp41.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 9, 1, 'EDP', 'Lancôme', 1),
(42, 'Lancome Miracle', 'Miracle có nghĩa là \"Điều kỳ diệu\", và sở hữu nước hoa Miracle của hãng Lancome có lẽ là điều dễ dàng nhất bạn chạm tay tới một điều kỳ diệu. Sự kỳ diệu đôi khi đến một cách giản đơn, chân thật, không quá cầu kỳ hay màu mè. Miracle mang trong mình màu hồng tinh khôi, như biến mọi thứ khó khăn, mệt mỏi của một ngày làm việc bận rộn trở nên nhẹ nhàng, thư giãn, và với nhiều người, đó đã là một điều \"kỳ diệu\" rồi. Alberto Morillas và Harry Premont là hai kỳ tài trong giới chuyên gia nước hoa, đã bắt tay cùng tạo ra cô nàng Miracle, gửi gắm tới những người yêu thích nước hoa với thông điệp hãy trân trọng những giây phút trong cuộc sống này, vì đó chính là phép màu. Miracle nữ tính, tươi vui cùng hương thơm của Trái vải và Hoa mộc lan, nhẹ nhàng, sạch sẽ cùng Gừng và Hổ phách, nhưng đủ hương vị của tình yêu với tiêu đen trộn lẫn xạ hương. Hãy là một người phụ nữ giản dị nhưng nhiều mộng mơ, vì khi là chính mình, mọi thứ ắt sẽ đến với bạn, như một phép màu, như Miracle. ', 1650000, 0, 'sp42.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 9, 1, 'EDP', 'Lancôme', 1),
(43, 'Lancome La Nuit Tresor', 'Ra mắt vào tháng 2 năm 2015, Lancome La Nuit Tresor tựa như lọ thuốc tình yêu dành cho phụ nữ, sức hút mà viên kim cương đen này đem lại chính là khả năng kích thích dục vọng ẩn sâu bên trong bản tính người đàn ông.\r\n\r\nMở ra những cảm xúc mới lạ cùng với sự thú vị khác biệt so với những sức hút bình thường, những tinh chất từ Quả lê, Cam bergamot, Quả quýt tuy quen thuộc nhưng đầy sự cuốn hút trong lần đầu chạm tới khứu giác đối phương. Những nốt hương tựa như một bông hồng đen tuyệt đẹp nhưng không kém phần gai góc, phảng phất từng đợt mạnh mẽ, ngọt ngào với Hoa phong lan Vanilla, Hoa hồng đen.\r\n\r\nThay vì giữ lại những thứ vốn có của mình, tầng hương cuối rũ bỏ mọi thứ và chuyển đổi bằng những nốt Hoắc hương, Kẹo hạt dẻ, Vanilla và Cà phê một cách tinh tế. Để lại sự nhớ nhung ghì chặt vào tâm trí đối phương, khiến họ phải vấn vương đến khó dứt về hình bóng của bạn dù chỉ là vô tình lướt qua.', 3600000, 3500000, 'sp43.jpg', 30, '2021-10-15', '2021-10-15', 'Còn hàng', 9, 1, 'EDP', 'Lancôme', 1),
(44, 'Lancome Poeme ', 'Dù đã ra mắt cách đây 2 thập kỷ nhưng hương thơm sang trọng cùng vẻ ngoài lôi cuốn của nước hoa Lancome Poeme 100ml vẫn luôn là những dấu ấn khó phai khi nhắc tới dòng sản phẩm này.', 2170000, 2100000, 'sp44.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 9, 1, 'EDP', 'Lancôme', 1),
(45, 'Lancome Tresor Tidnight Rose', 'Vào tháng 9 năm 2011, Lancome đã tạo một làn sóng mới sau thành công của Tresor In Love năm 2010. Lancome midnight rose được công nhận là một viên ngọc tím sáng giá trong lòng người hâm mộ.\r\n\r\nLancome Midnight Rose được lấy cảm hứng từ những sự lãng mạn ở thành phố tình yêu Paris. Những ánh mắt đẩy đưa đến những chuyện tình đầy nước mắt. Hương hoa hồng đan xen cùng mâm xôi đã tạo nên một nét tương đồng, một dấu ấn trong tiềm thức.\r\n\r\nMơ mộng trong vô thức, cảm xúc của hoa nhài và lý chua đen mang lại là những chuyện tình bằng ánh mắt. Họ gắn kết với nhau cốt là ở khứu giác, hoa mẫu đơn dẫn dắt dần dà bước vào nơi cảm xúc bắt đầu.\r\n\r\nRồi cảm xúc lại trở nên trọn vẹn bởi những điều mới lạ, hương xạ hương và gỗ tuyết tùng sẵn sàng đốn mạt những ngông cuồng của kẻ si tình, để lại một khoảng trời đầy thương nhớ mà đọng lại nơi miền ký ức là sự ngọt ngào của Vanilla.', 1880000, 1800000, 'sp45.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 9, 1, 'EDP', 'Lancôme', 1),
(46, 'Lancome Hypnose', 'Hypnose của Lancome là một hương thơm Vanilla và hổ phách dành cho phụ nữ. Hypnôse được ra mắt vào năm 2005, được tạo ra bởi Annick Menardo và Thierry Wasser. Hương đầu là Hoa lạc tiên; hương giữa là Hoa nhài và Hoa dành dành; hương cuối là Vanille và cỏ Vetiver.\r\n\r\nHypnose của Lancome là một mùi hương theo hướng phương Đông đầy nắng, rừng với sắc thái sành điệu. Hương thơm nổi bật với hoa lạc tiên, tạo nên sự dịu dàng và nồng nàn của nữ giới. Sản phẩm kỳ diệu của hương hoa - vani có mùi thơm và ấm áp trên da và cỏ vetiver được bao quanh bởi hoa trắng và hoa nhài Sambac mang đến cảm giác gợi cảm và sâu lắng.\r\n\r\nThân hình chai xinh đẹp được thiết kế theo hình bóng của một người phụ nữ và màu sắc của nước hoa thôi miên giống như màu xanh dịu dàng của đôi mắt phụ nữ.', 1950000, 0, 'sp46.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 10, 1, 'EDP', 'Lancôme', 1),
(47, 'Ô De Lancome', 'Với thiết kế vừa cổ điển, sang trọng cùng hương thơm trưởng thành quyến rũ, Nước hoa Lancome Ô De Lancôme Eau De Toilette 75ml là sự lựa chọn hoàn hảo cho các quý cô. Dòng sản phẩm có tuổi đời  nửa thế kỉ này là tuyệt tác bất chấp mọi sự thay đổi của thời gian, và vẫn luôn là một trong những sản  phẩm bán chạy của hãng nước hoa Lancôme nổi tiếng.', 1550000, 1500000, 'sp47.jpg', 30, '2021-10-15', '2021-10-15', 'Còn hàng', 10, 1, 'EDP', 'Lancôme', 1),
(48, 'Lancome L’autre Ôud', 'Nước hoa unisex L’Autre Oud Eau de Parfum phù hợp với người trên 25 tuổi.Đây là dòng nước hoa Lancome này có độ lưu hương lâu - 7 giờ đến 12 giờ. và độ tỏa hương thuộc dạng xa - toả hương trong vòng bán kính 2 mét. Perfumista.vn khuyến cáo L’Autre Oud Eau de Parfum phù hợp để sử dụng trong cả ngày lẫn đêm vào mùa thu, đông.\r\n\r\nĐây là dòng nước hoa Lancome thuộc nhóm Oriental Woody (Hương gỗ phương đông). Christophe Raynaud chính là nhà pha chế ra loại nước hoa này. Bên cạnh đó, Gỗ trầm hương và Hoa hồng Thổ Nhĩ Kỳ là hai hương bạn có thể dễ dàng cảm nhận được nhất khi sử dụng nước hoa này.', 2940000, 0, 'sp48.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 10, 1, 'EDP', 'Lancôme', 1),
(49, 'Lancome Maison Ôud Bouquet', 'Nước hoa Lancome Maison Oud Bouquet hội tụ hai thành phần huyền thoại của nước hoa là gỗ quý và nữ hoàng hoa để tạo ra mùi hương đặc sắc, kết hợp nét tinh tế của Pháp và sự sang trọng phương Đông. Lancome Maison Oud Bouquet quý giá với các hương hổ phách, tạo nên trò chơi giữa ánh sáng và bóng đêm', 2450000, 2350000, 'sp49.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 10, 1, 'EDP', 'Lancôme', 1),
(50, 'Lancome Tresor Lumineuse', 'Để ăn mừng sự thành công sau hơn hai thập kỷ của chai nước hoa Tresor trong huyền thoại, thương hiệu Lancome đã giới thiệu một phiên bản mới được làm lại của mẫu nước hoa gốc mang tên Tresor Eau De Parfum Lumineuse. Sự chuyển biến từ mẫu nước hoa gốc sang phiên bản mới này được cho biết là mang lại một sự tươi mát ngọt ngào hoàn toàn mới, cân bằng bởi nốt hương violet và kẹo nhân hạt. Tresor Eau de Parfum Lumineuse được xếp vào dòng hương hoa cỏ - phương Đông và đã được ra mắt vào năm 2013, Dominique Ropion là người đã tinh chế nên mùi hương của phiên bản mới này.', 2190000, 0, 'sp50.jpg', 35, '2021-10-15', '2021-10-15', 'Còn hàng', 10, 1, 'EDP', 'Lancôme', 1),
(51, 'Versace Pour Femme', 'Versace Pour Femme là sản phẩm nước hoa dành cho phái nữa được nhãn hiệu Versace công bố vào ngày 01/04/2007. Versace Pour Femme mang một hương vị cổ điển làm nổi bật vẻ nữ tính, sang trọng và quý phái nhằm tôn vinh vẻ đẹp của người sử dụng.\r\n\r\nTheo quan điểm của một vài người mà Perfume168 khảo sát được thì sản phẩm nước hoa mang nhược điểm về độ lưu hương không được lâu nhưng bởi vì hương vị độc đáo được tạo thành mà sản phẩm vẫn được nhiều người ưa chuộng và sử dụng.', 1650000, 0, 'sp51.jpg', 20, '2021-10-17', '2021-10-17', 'Còn hàng', 11, 1, 'EDP', 'Versace', 1),
(52, 'Versace Versace Dylan Blue Pour Femme', 'Versace Pour Femme Dylan Blue được ra mắt vào năm 2017 bởi chuyên gia nước hoa hàng đầu Calice Becker. Donatella Versace đã miêu tả về cô nàng này rằng \" Pour Femme Dylan Blue là sự tôn vinh của tôi đối với nữ giới, vì vậy chúng tôi đã tạo ra một mùi hương mạnh mẽ, gợi cảm và rất tinh tế cho những người phụ nữ, để họ có thể khám phá được sức mạnh của chính mình\". Mở đầu bằng hương thơm của Trái lý chua đen cùng Táo xanh Granny Smith, Versace Pour Femme Dylan Blue mang tới sự tươi mới, thanh lịch, một sự dễ chịu đến tuyệt tời dành cho mọi thời gian và không gian. Bạn có thể mang cô nàng này đi  khắp mọi nơi, từ công sở cho tới những bữa tiệc, bởi sự dịu dàng và cuốn hút là điều Versace Pour Femme Dylan Blue đã làm rất tốt. Base note là sự kết hợp giữa nụ Tầm xuân, hoa Petalia cùng Trái đào, sự thanh tao và khơi gợi những điều mềm mại trong tâm hồn của những người phụ nữ truyền thống. Nhưng kết thúc bằng Gỗ trắng và xạ hương, khiến những rung cảm mãnh liệt và táo báo xuất hiện, biến Versace Pour Femme Dylan Blue trở nên mạnh mẽ theo cách rất \"phụ nữ\". ', 1815000, 1700000, 'sp52.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 11, 1, 'EDP', 'Versace', 1),
(53, 'Versace Eros Pour Femme', 'Một trong số những phiên bản đặc biệt đứng dưới cái tên Eros, thương hiệu Versace tiếp tục ra mắt Eros Pour Femme EDP nhằm tôn vinh sức hút vô cùng đặc biệt của nó dành riêng cho giới nữ hiện đại. Đại diện cho vị thần tình yêu Eros huyền thoại của Hy Lạp, Pour Femme kế thừa sự tươi mới đầy cuốn hút thông qua những tinh chất Chanh vàng Sicili, Cam Bergamot và Quả lựu. Nhờ sự khéo léo được đưa vào gợi lên nét mềm mại, dịu dàng của các nốt hương Hoa ở tầng hương giữa kết hợp cùng nền Gỗ đàn hương, Ambroxan, Xạ hương nên Eros Pour Femme mang đến sự quyến rũ vô cùng nổi bật mỗi khi bất kỳ ai sử dụng nó.', 1980000, 1800000, 'sp53.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 11, 1, 'EDP', 'Versace', 1),
(54, 'Versace Bright Crystal', 'Một thiết kế nữ tính nhất của hãng Versace, đó là những gì bạn phải thốt lên khi nhìn thấy chai nước hoa Bright Crystal. Nắp chai thiết kế như một viên pha lê lấp lánh được gọt dũa tỉ mỉ, che đậy một lớp nước màu hồng nhạt tinh khiết.Versace Bright Crystal không chỉ đẹp về thiết kế, mà nó còn đẹp về mùi hương nữa. Bạn sẽ dễ dàng bị hấp dẫn bởi hương thơm của trái Yuzu và quả lựu tươi được ngâm mình trong một dòng nước mát lạnh. Hương thơm nhẹ nhàng nhưng đủ để gây sự chú ý cho những cô nàng biết chiều chuộng bản thân mình. Hương hoa sen, hoa mộc lan và một chút hoa mẫu đơn mang lại cho bạn cảm giác rõ ràng hơn sau khi lớp hương đầu bay đi. Kết thúc bằng hương gỗ rất tròn vị pha lẫn một ít xạ hương nữa. Versace Bright Crystal không phải là vũ khí hạ gục một ai đó ngay lần gặp đầu tiên, nhưng nó lại khiến cho người đối diện có cảm giác vấn vương, bối rối vì nhớ nhung mùi hương đó một cách từ từ và chậm rãi...', 3200000, 0, 'sp54.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 11, 1, 'EDP', 'Versace', 1),
(55, 'Versace Yellow Diamond Intense', 'Hương thơm nữ tính của Versace Yellow Diamond Intense for women mở ra với hương thơm hoa quả được kết hợp từ một khu vườn cam với đầy đủ hương hoa cam và quả cam, đôi chút vị lê tươi mát và lẫn lộn trong đó là sự nhẹ nhàng từ cây thanh yên. Tiếp đến là tầng hương giữa thơm ngát được xây dựng từ bó hoa lan, hoa nhài và mộc tê. Cuối cùng lưu lại trên da nốt hương ấm áp từ gỗ, được bao quanh bởi an tức hương và xạ hương quyến rũ.', 1950000, 1850000, 'sp55.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 11, 1, 'EDP', 'Versace', 1),
(56, 'Versace Versus Blue Jeans', 'Năm 1994, Thương hiệu Versace đã cho ra đời nước hoa Blue Jean. Mùi hương này được tạo ra bởi nhà sáng tạo nước hoa lừng danh Jean – Pierre Bethouart. Tuy đây là sản phẩm nước hoa dành cho nam giới, nhưng thật chất nó lại phù hợp với cả các bạn nam lẫn các bạn nữ yêu thích thể hiện sự phá cách, cá tính mạnh mẽ.Blue Jean sẽ làm mọi người xung quanh phải phát điên vì mùi hương lôi cuốn và đầy hấp dẫn tỏa ra từ cơ thể bạn.', 1300000, 0, 'sp56.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 12, 1, 'EDP', 'Versace', 1),
(57, 'Versace Oud Noir', 'Mang tới cảm giác huyền bí, nổi bật tựa như ánh trăng vàng chói rọi xuống nơi tối tăm, Versace Pour Homme Oud Noir sử dụng những nốt hương đặc trưng đến từ phương Đông nhằm phô trương những nét cá tính đầy táo bạo, mạnh mẽ của những chàng trai ưa thích các buổi tiệc về đêm. Không rườm rà mà đi thẳng vào vấn đề một cách nhanh chóng, Oud Noir thể hiện sức hút mãnh liệt đầy nam tính của mình thông qua hương thơm được lấy từ Da thuộc. Kéo theo đó, Gỗ trầm hương thể hiện sự sang trọng, ấm áp của mình một cách khéo léo rồi bứt phá khỏi vùng an toàn bởi hương Gia vị, tạo ra một sự nổi loạn, táo bạo ngay chính bên trong bản chất đặc biệt vốn có cho tới khi hoàn toàn kết thúc nó.', 2480000, 2300000, 'sp57.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 12, 1, 'EDP', 'Versace', 1),
(58, 'Versace Man Eau Fraiche', 'Hòa mình vào khung cảnh Địa Trung Hải tuyệt đẹp, Versace Man Eau Fraiche tạo ra một vùng trời mới mẻ và đặc biệt khi đem tới những làn gió từ phương Đông đến với giới mộ điệu nước hoa. Chỉ cần Versace Man EF thổi vào những làn hương tươi mới bằng tinh chất Cam Bergamot, Bạch đậu khấu, Chanh vàng ngay từ lúc đầu thì đã thu hút được rất nhiều sự chú ý của rất ánh mắt xung quanh. Nhấn mạnh nét nam tính, ấm áp riêng biệt từ phong cách bên trong, Cây xô thơm, Gỗ tuyết tùng và Tiêu thể hiện sự phong độ của một chàng trai năng động, hoạt bát. Nhằm lưu lại cũng như kéo dài nguồn năng lượng tươi mới này, Hổ phách, Nghệ tây, Xạ hương góp phần làm nên một vỏ bọc chắc chắn vừa tăng thời gian lưu giữ cho hương thơm bên trong vừa thúc đẩy sự đặc trưng của những nốt hương còn lại.', 2110000, 2000000, 'sp58.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 12, 1, 'EDP', 'Versace', 1),
(59, 'Versace Pour Homme', 'Nước hoa Versace Pour Homme như một cơn gió mát lạnh, cuốn trôi đi cái nóng của mùa hè, chứa đựng trong mình dòng chất lỏng màu xanh nhạt, trong veo và đậm đà hương Chanh tươi mát, như giúp mọi người bừng tỉnh. Hội tụ trong mình mọi yếu tố của mội người đàn ông nam tính, tràn đầy sự hưng phấn , hoà quyện cùng mùi của Gỗ Tuyết Tùng như làm tăng thêm vẻ lịch lãm , sang trọng vốn có. Sẵn sàng cho mọi cuộc chơi, bền bỉ dù là chốn văn phòng hay trong các buổi tiệc đêm, làm các quý cô phải lưu luyến bằng mùi Hổ Phách cuối ngày. Versace Pour Homme, chàng trai phong trần, lôi cuốn.', 1695000, 1599000, 'sp59.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 12, 1, 'EDP', 'Versace', 1),
(60, 'Versace Eros', 'Xuất hiện hùng vĩ như một vị thần Hy Lạp, Versace Eros với vẻ đẹp cổ kính như một bức tường thành, mát mẻ với màu xanh ngọc bích, mang trong mình hương thơm của Táo Xanh và Bạc hà, thanh mát mà toả hương cả một vùng trời. Quyền lực, kiêu hãnh và đầy định kiến, hấp dẫn các quý cô với sự ngọt ngào của Đậu Tonka và hoa Phong Lữ, một cảm giác kì lạ chưa từng có. Với phong thái của một ông chủ nhưng vẫn ấm áp và ngọt ngào , thoang thoảng mùi cỏ hương bài và vani. Sẵn sàng đấu tranh cho những điều mà anh ấy tin tưởng.', 2000000, 0, 'sp60.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 12, 1, 'EDP', 'Versace', 1),
(61, 'Chanel N°5 EDP ', 'Chanel No.5 - loại nước hoa của bây giờ và mãi mãi - là loại nước hoa nổi tiếng hàng đầu thế giới, No.5 đã vượt xa khỏi phạm vi một mùi hương hoa độc đáo đơn thuần nào đó để trường tồn cùng với sự biến đổi của thế giới qua thời gian. Coco Chanel đã mong muốn tạo ra được một \"loại nước hoa dành cho phụ nữ có mùi thật Đàn bà\". Khi chuyên gia nước hoa Ernest Beaux giới thiệu với bà tác phẩm pha chế thứ 5 của ông, thì dường như ngay tức khắc nó đã được chọn. Và loại nước hoa này đã được gọi bằng cái tên: No.5. Số 5 đồng thời cũng là con số may mắn của bà.', 3400000, 3300000, 'sp61.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 13, 1, 'EDP', 'Chanel', 1),
(62, 'Chanel Gabrielle EDP', 'Nước hoa Gabrielle Chanel được đặt tên và lấy cảm hứng từ người phụ nữ sáng lập nên thương hiệu Chanel nổi tiếng ngày nay. Nếu nước hoa Chanel No5 được Coco Chanel (tên thật là Gabrielle Chanel) chọn là sản phẩm nước hoa mang lại dấu ấn cho bản thân mình, thì phiên bản nước hoa Gabrielle Chanel được chuyên gia nước hoa Olivier Polge lấy cảm hứng từ tính cách của chính quý bà Coco Chanel. Một người phụ nữ đã tạo dựng nên một thương hiệu thời trang lẫy lừng bằng tư duy hiện đại, sự đam mê, tự do, và hơn ai hết đó là luôn mong muốn trở nên khác biệt. Nước hoa Gabrielle Chanel mang trong mình mùi hương mạnh mẽ của người phụ nữ đó, sự tinh khiết của hoa nhài và tươi mới của Cam Madarin. Nhưng ở nơi Gabrielle Chanel vẫn luôn hiện hữu hương gỗ và xạ hương, một sự gần gũi, mộc mạc, giản đơn đến bất ngờ.\r\n', 3700000, 0, 'sp62.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 13, 1, 'EDP', 'Chanel', 1),
(63, ' Chanel Nam Bleu De Chanel ', 'Nước hoa Bleu de Chanel Eau de Parfum là bản nâng cấp của người đàn anh đi trước Bleu de Chanel Eau de Toilette, ra đời vào mùa hè 2014, Jacques Polge đã không làm những fan nước hoa trung thành của nhà Chanel phải thất vọng. \"Nó còn hơn cả sự mong đợi của chúng tôi\" là câu nói hầu hết của những khách hàng may mắn đầu tiên sở hữu Bleu de Chanel Eau de Parfum tại Paris vào ngày ra mắt. So với bản gốc, Bleu de Chanel Eau de Parfum hể hiện sự nam tính một cách nổi bật hơn, với hương Chanh vàng, Ớt hồng, sự từng trải và tinh tế của một người đàn ông dày dạn kinh nghiệm được bộc lộ một cách trực tiếp và rõ ràng hơn bao giờ hết. Kết thúc hương đầu với sự thanh mát của Bạc hà, là mùi của một người đàn ông manly vừa mới bước ra từ phòng tắm mát lạnh. Bleu de Chanel Eau de Parfum khiến nhiều trái tim phải rung động với sự mạnh mẽ của Gừng, nhưng ẩn chứa sự lịch lãm của Hương hoa nhài quyện lẫn với Dưa vàng. Hãy thử tiến lại gần Bleu de Chanel Eau de Parfum để cảm nhận rõ sự nam tính đáng kinh ngạc đó vào cuối những buổi tiệc, khi Gỗ tuyết tùng và Hổ phách đã cám dỗ bạn bằng sự gần gũi và ấm áp đến bất ngờ.', 3500000, 3399000, 'sp63.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 13, 1, 'EDP', 'Chanel', 1);
INSERT INTO `sanpham` (`MA_SP`, `Ten_Sp`, `Mo_Ta`, `Gia`, `Gia_Giam`, `Hinh`, `So_Luong`, `Ngay_Them`, `Ngay_Update`, `Trang_Thai`, `Nhom_SP`, `So_Luoc_Xem`, `Ma_Loai`, `Ma_Thuong_Hieu`, `ID_Admin`) VALUES
(64, 'Chanel Bleu De Chanel Parfum 2018', 'Được ra mắt vào năm 2018, nước hoa Bleu de Chanel Parfum được sáng tạo bởi Olivier Polge với sự mệnh hoàn thiện bộ ba hoàn hảo của dòng Bleu de Chanel của Nhà mốt Chanel. Bleu de Chanel Parfum đại diện cho màu sắc của sự tự do, thể hiện sự mạnh mẽ và tinh tế, với kỳ vọng có thể làm hài lòng những tín đồ nước hoa khó tính của hãng Chanel. Hương gỗ đàn hương và sự tươi mát của vỏ chanh vàng sẽ là mùi hương gây ấn tượng tới khướu giác của bạn khi lần đầu mặc Bleu de Chanel Parfum lên người. Một sự phá cách, mang hướng hiện đại nhưng vẫn giữ lại được những nét cổ điển trong dòng Bleu de Chanel của thương hiệu Chanel. \r\n', 3890000, 3799000, 'sp64.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 13, 1, 'EDP', 'Chanel', 1),
(65, 'Chanel Allure Homme Sport', 'Mùa hè, vào những ngày thời tiết nóng oi bức, khó chịu, càng chàng trai thường nghĩ gì? Được tắm trong dòng nước mát lạnh tại một bãi biển đầy gió, nằm dài và đọc một cuốn sách yêu thích hoặc lướt web bằng chiếc điện thoại của mình trên bãi biển với một dĩa trái cây tươi ướp đá. Kết thúc dưới cái nắng dịu nhẹ của hoàng hôn bằng một que kem vani ngọt ngào, nhiều năng lượng. Những cảm xúc đó được hãng Chanel định nghĩa bởi 1 cái tên, Chanel Allure Homme Sport. Sự mạnh mẽ, tươi mới, tràn đầy sức sống, cuốn hút mọi ánh nhìn bằng sự trẻ trung và nam tính, Chanel Allure Homme Sport sở hữu những note hương của một chàng trai hiện đại, tràn đầy nhiệt huyết và sự tự do của Hương An-đê-hít,  gió biển cùng trái cam tươi. Say đắm mọi ánh nhìn bằng sự \"đàn ông\" của hương Hổ phách xen lẫn Vani ngọt ngào, phóng khoáng.', 2880000, 2800000, 'sp65.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 13, 1, 'EDP', 'Chanel', 1),
(66, 'Gucci Guilty Pour Femme', 'Ra mắt vào năm 2019 với sự đại diện hình ảnh bởi nữ ca sĩ Lana Del Rey, Gucci Guilty Femme đã xuất sắc thể hiện được vẻ đẹp tự do, giải phóng hoàn toàn sự độc lập của người phụ nữ.\r\n\r\nVới tổng thể bao trùm bởi hương hoa, thơm nhẹ mùi phấn, không khó khăn gì để nhận thấy sự xuất hiện của Tử đinh hương, Violet cùng Phong lữ hiện lên rõ nét từ cái lướt nhẹ qua khoang mũi. Nồng nàn và đằm thắm đến thế, Guilty Femme tự tô điểm với chút ngọt thanh đặc trưng từ Cam và Quýt, thêm ít nhiều sâu lắng với Tiêu hồng, gửi gắm chút cay mềm, yêu chiều lấy khứu giác ta.', 3000000, 2890000, 'sp66.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 14, 3, 'EDP', 'Gucci', 1),
(67, 'Gucci Guilty for men', 'Với thiết kế đầy mạnh mẽ và nam tính, Gucci Guilty Pour Homme đã phần nào toát lên nét đẹp vững chãi, lãng du của mình chỉ qua một cái nhìn.\r\n\r\nTông hương đầu của Oải hương cùng Chanh từ tốn mở ra làn gió thoáng mát, sảng khoái cho mùa hè với hương thơm thanh thoát điển hình. Nhanh chóng nhường chỗ cho Hoa cam, Guilty ở tầng hương tiếp theo bộc lộ ngày càng rõ ràng mùi vị nồng nàn đầy lôi cuốn, để rồi kết thúc trong sự hòa quyện của Hoắc hương, Tuyết tùng và Vanilla the mát, ngọt dịu.\r\n\r\nPhóng đãng, tươi mới đầy tài tình, Gucci Guilty Pour Homme như viên nam châm, thu hút tất cả sự chú ý xung quanh về phía mình.', 2200000, 0, 'sp67.jpg', 20, '2021-10-17', '2021-10-17', 'Còn hàng', 14, 1, 'EDP', 'Gucci', 1),
(68, 'Vial Gucci By Gucci EDP for women', 'Thương hiệu Gucci được giới hâm mộ tôn sùng trên toàn thế giới kể từ khi thành lập vào thập niên 20 tại Ý. Nước hoa của hãng rất đa dạng về mùi hương và hãng cũng là một trong những nhà sản xuẩt nước hoa lâu đời nhất. Gucci EDP được ra mắt năm 2007, mang đậm hương thơm của hoa Chypre, mùi hương đầy tinh tế mà nó mang lại chính là sự lựa chọn thích hợp nhất dành cho phái nữ. Sản phẩm này là sự kết hợp mùi hương đầy kỳ lạ giữa ổi, hoa Tahitian Tiare, cây hoắc hương, xạ hương và mật ong.', 3500000, 3400000, 'sp68.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 14, 1, 'EDP', 'Gucci', 1),
(69, 'Gucci Bloom Gucci for women', 'Là một cơn gió mát của mùa xuân, tràn ngập sức sống. Gucci Bloom giống một bông hoa nhỏ bé đang từ từ nở rộ, tràn ngập giữa một vườn hoa trắng muốt đầy trang nhã. Chân thật với hương thơm của lá cây vào buổi sớm mai, chất chứa những giọt sương còn đọng lại vào đêm hôm trước. Gucci Bloom mộc mạc, trần trụi, đem lại cảm giác hồi xuân, mang tôi trở về với quá khứ, vui đùa cùng những cánh hoa trong vườn, nhâm nhi ly nước chanh mát lạnh trong một ngày nắng nóng. Chi ngân, Nhài và Huệ như hoà quyện vào gió, tạo nên một điệu nhảy của cánh hoa , mang đến những khoảnh khắc kì diệu, khác biệt và không hề gây buồn chán. Gỗ đàn hương và Vani hòa quyện với nhau như một cặp đôi đang khiêu vũ, trong veo đầy thơ mộng. Gucci Bloom là một giấc mộng của mùa xuân, mơ màng dưới bóng cây cổ thụ, nhưng biết hé nở và tỏa hương khi cần.', 2030000, 0, 'sp69.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 14, 1, 'EDP', 'Gucci', 1),
(70, 'Gucci Bamboo EDP for women', 'Lấy cảm hứng từ Tre, nhà Gucci đã cho ra mắt cực phẩm Gucci Bamboo với thiết kế nắp chai hình thân tre cùng tông hương dễ chịu đầy tinh tế.\r\n\r\nNgọt mát từ những nốt hương đầu tiên, nhà Cam chanh cùng Lê hòa quyện khéo léo với Hoa cam, cho ra tổng thể không thể nào thanh tao, nhã nhặn hơn. Như đưa ta về vườn hoa bạt ngàn, lớp hương giữa vỡ òa những hoa là hoa dưới sự hoài thai của Hoa huệ, Ngọc lan tây và Hoa nhài, tô điểm thêm ít nhiều miên man, lãng mạn cho cô nàng Gucci Bamboo. Khẽ cựa mình với Đàn hương cùng Vanilla và Xạ hương mềm ấm, sẽ là bất khả để cưỡng lại nét đẹp phương phi dễ mến của cô ấy.', 2790000, 2690000, 'sp70.jpg', 20, '2021-10-17', '2021-10-17', 'Còn hàng', 14, 1, 'EDP', 'Gucci', 1),
(71, 'Dior JOY ', 'Joy by Dior xuất hiện vào cuối tháng 8 năm 2018 với mùi hương đại diện cho những niềm vui của cuộc sống, như cái tên hãng đặt cho cô nàng này \"Joy\". Là một mùi hương chứa năng lượng, sự sống, hạnh phúc và của những \"tâm trạng tốt\", đó là cách hãng giới thiệu Joy by Dior vào ngày ra mắt sản phẩm mới này. Hương thơm của Joy được chiếu sáng bởi nụ cười rực rỡ của Hoa hồng Grasse và Hoa nhài, pha trộn cùng sự ngọt ngào và sống động của Cam Bergamot và Trái quýt. Joy by Dior còn được ưu ái gửi gắm lời thì thầm ngọt ngào của Gỗ tuyết tùng và Xạ hương trắng, biến cô nàng trở nên gợi cảm một cách đầy bất ngờ. Joy by Dior có lẽ là một dòng nước hoa không thể thiếu dành cho những cô nàng nữ tính, gợi cảm và sang trọng, bởi có Joy đồng nghĩa với việc bạn đang có niềm vui, liệu một chàng trai có thể bỏ qua một cô nàng xinh đẹp rạng rỡ và biết cách tỏa sáng mọi lúc hay không? Câu trả lời chắn chắn là không. ', 2750000, 2700000, 'sp71.jpg', 50, '2021-10-17', '2021-11-17', 'Còn hàng', 15, 1, 'EDP', 'Dior', 1),
(72, 'Dior Pure Poison', '“Chào sân” vào năm 2004, nước hoa Dior Pure Poison Eau De Parfum 100ml được coi là một trải nghiệm tinh tế, một mùi hương quyến rũ và độc đáo đến “ngất lịm”. Thuộc top best-seller của Dior, Pure Poison chứng tỏ được sức hút vượt thời gian bằng giá trị biểu tượng của mình.', 2670000, 0, 'sp72.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 15, 1, 'EDP', 'Dior', 1),
(73, 'Dior Sauvage For Men Eau De Toilette Spray', 'Yêu hay ghét, thì với rất nhiều người, Dior Sauvage vẫn luôn được công nhận là một chai nước hoa kinh điển của thế kỷ 21. Nếu bạn so sánh về mức độ phủ sóng của Sauvage và nhìn về năm phát hành của nó, cuối \"năm 2015\" thì bạn chắc chắn sẽ rất ngạc nhiên về sự nổi tiếng nhanh đến đáng sợ của gã đàn ông lắm tài nhiều tật này. Mọi người hay so sánh sự nổi tiếng giữa Sauvage của nhà Dior và Bleu de Chanel của nhà Chanel, xem thử ai là kẻ mạnh hơn, nhưng chung quy lại thì là kẻ 8 lạng người hơn nửa cân. Được đánh giá là đậm chất đàn ông,  Dior Sauvage mang trong mình mùi hương của sự phong lưu, mạnh mẽ và sát gái. Như chính người đại diện cho chai nước hoa này vậy, Johnny Depp, kẻ cướp biển được yêu quý nhất mọi thời đại. Vốn dĩ  Dior Sauvage là vậy, có tật, Bad boy nhưng ai cũng yêu quý và phục tùng. Francois Demachy, người sáng tạo ra  Dior Sauvage đã khéo léo pha trộn giữa Cam Bergamot và hương Ambroxan, tạo nên một khoảng màu xanh tươi mát của bầu trời, cùng sự mạnh mẽ và ấm nồng của tiêu đen và Gỗ tuyết tùng,  Dior Sauvage trở nên lôi cuốn không có điểm dừng. Kết thúc một buổi gặp gỡ với những câu chuyện cười thông minh hòa lẫn không khí sang trọng, lãng mạn của hoa Lavender, mọi ánh mắt sẽ chỉ hướng về gã  Dior Sauvage này mà thôi. ', 2600000, 0, 'sp73.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 15, 1, 'EDP', 'Dior', 1),
(74, 'Dior Homme Intense', 'Chắc hẳn bạn đã từng nghe rất nhiều về những mùi hương nước hoa được miêu tả bằng chữ \"đẹp\" dành cho phái nữ, nhưng từ đẹp rất khi khi được dùng cho nước hoa Nam, hẳn bởi phái mạnh không quen dùng từ ngữ đó. Nhưng với rất nhiều người khi tiếp xúc với Dior Homme Intense, khái niệm mùi hương \"đẹp\" sẽ được dành tặng cho gã đàn ông này một cách thuyết phục. Dior Homme Intense được ví như là một kẻ gây nghiện, gây nghiện với chính người dùng, và lây lan cái \"nghiện\" đó cho cả những người xung quanh. Một ngày mưa gió, lạnh lẽo, tỉnh giấc cùng bầu trời xám xịt đen sì ngoài kia, cách tốt nhất để làm hài lòng bản thân là xịt một shot Dior Homme Intense vào cơ thể và đi ngủ tiếp, như thể nó sẽ mang lại sự thư giãn tuyệt đối, bình yên vô điều kiện cho bất kỳ chàng trai nào. Ở khía cạnh gây ấn tượng với phái nữ, mang trong mình mùi hương Lavender đầy sự cám dỗ, tinh tế cùng Hoa diên vĩ và cây vông vang, Dior Homme Intense thúc dục và dễ dàng tháo gỡ mọi rào cản một cách diệu kỳ, biến những thứ tưởng lạ mà trở thành quen một cách thú vị. Chàng trai nhà Dior này được nhiều người đặt cho cái biệt danh bảnh trai nhưng khá lười biếng, cũng chính vì vậy mà mọi cô gái đều muốn được chăm sóc và ở bên cạnh để hỗ trợ hết mình cho gã đàn ông đào hoa bẩm sinh này. ', 3600000, 3400000, 'sp74.jpg', 35, '2021-10-17', '2021-10-17', 'Còn hàng', 15, 1, 'EDP', 'Dior', 1),
(75, 'Dior Homme Cologne', 'Nước hoa Dior Homme Cologne Eau De Toilette ra mắt năm 2013, đến từ “dòng dõi” Homme đình đám của thương hiệu mỹ phẩm cao cấp Dior. Đây là một mùi hương đơn giản, đem lại những xúc cảm tự nhiên, tinh tế, tạo nên bởi cam Bergamot, hoa bưởi Ý cùng chút gợi cảm từ xạ hương.', 2770000, 2570000, 'sp75.jpg', 20, '2021-10-17', '2021-10-17', 'Còn hàng', 15, 1, 'EDP', 'Dior', 1),
(76, 'Mr. Burberry Eau de Toilette', 'Mr. Burberry, người đàn ông tới từ anh quốc. không sở hữu vẻ đẹp trai theo kiểu ngôn tình, cũng không phải là một chàng trai ăn mặc quá chỉnh chu hay sành điệu, cũng không sở hữu khối tài sản kếch xù. Mr. Burberry là một người đang ông giản dị, mang khí chất của một kẻ phong lưu, lối sống đơn giản, và cuốn hút những cô nàng bằng nụ cười và ánh mắt. Bước tới gần người đàn ông này, bạn sẽ cảm nhận được rõ sự tươi mát của Bưởi và Bạc hà, quyện lẫn sự gần gũi của Bạch đậu khấu. Hẳn bất kỳ ai cũng mong muốn được ngã vào lòng Mr. Burberry bởi sự lôi kéo đầy cám dỗ của gỗ tuyết tùng và Nhục đậu khấu. Một bản nhạc du dương, một ly cocktail mát lạnh, và một người đàn ông mang mùi hương của vùng Tây Âu mở cửa bước vào, hương gỗ ướt át của Guaiac cùng Gỗ đàn hương như tăng thêm sự hưng phấn cho một đêm cần người tâm sự, và hẳn chẳng có cô nàng nào bỏ qua cơ hội quý giá này. ', 2750000, 0, 'sp76.jpg\r\n', 35, '2021-11-12', '2021-11-12', 'Còn hàng', 16, 1, 'EDP', 'Burberry', 1),
(77, 'The Beat by Burberry Eau De Toilette Spray Men', 'Burberry The Beat được phát hành vào tháng 3 năm 2008 bởi chuyên gia nước hoa hàng đầu Dominique Ropion. Nước hoa The Beat được lấy cảm hứng từ âm nhạc, album của Kasabian, mang trong mình sự trong sáng, tươi vui và đầy cảm hứng. Burberry The Beat là một dòng nước hoa đẹp và cũng là một bản nhạc đẹp, mang trong mình sự tinh tế của loài hoa Diên vĩ, tỏa sáng và tươi mới cùng hương quýt và Trà xanh, nhưng đủ sự kiêu kì khó chạm tới của Hồng tiêu pha lẫn sự ấm áp của Gỗ tuyết tùng. Nhiều người nói Burberry The Beat là một cô nàng nữ tính, dễ mến và toát lên vẻ sang trọng, nhưng khi tiếp xúc, Cô nàng này thực sự kín đáo, thận trọng trong mọi hành động và rất khó để làm quen. Nhưng một khi quý cô The Beat thực sự rung cảm trước một ai đó, cô ấy sẽ chủ động và chẳng hề e ngại bất cứ điều gì, như đang phiêu cùng một bản nhạc tuyệt hay vậy, Feel The Beat. ', 2530000, 2230000, 'sp77.jpg', 35, '2021-11-12', '2021-11-12', 'Còn hàng', 16, 1, 'EDP', 'Burberry', 1),
(78, 'Burberry Brit Rhythm for Her', 'Là “nửa còn lại” của Burberry Brit Rhythm For Him, phiên bản For Her được ra đời vào đầu năm 2014, sau khi người bạn đồng hành For Him đã gây nên những thành công vang dội khi được sản xuất một năm trước.\r\n\r\nNếu For Him là nốt cay trầm nam tính thì Brit Rhythm For Her lại là sự cộng hưởng của hương hoa gọi mời cùng vị thơm ngọt điển hình từ các loại trái nhà Cam, Chanh ngay từ những phút đầu tiên.\r\n\r\nFrancis Kurkdjian - cha đẻ của nhiều siêu phẩm nước hoa “must have” đã nhấn mạnh hương hoa cỏ thanh thoát cùng Tử đinh hương, Hoa sen, Linh lan và Nhài ở những tầng hương tiếp theo. Như một vườn hoa nở rộ sau cơn mưa rào, Brit Rhythm For Her còn mang cho mình nét tươi mát sảng khoái cùng một chút ẩm ướt với Ozonic.\r\n\r\nVẫn giữ cho nàng vẻ bí ẩn và lôi cuốn, Hương gỗ và Xạ hương đã được khéo léo thêm vào ở những nốt sau cùng với sự ngọt ngào tan chảy của Caramel.', 1530000, 0, 'sp78.jpg', 35, '2021-11-12', '2021-11-12', 'Còn hàng', 16, 1, 'EDP', 'Burberry', 1),
(79, 'Burberry Brit Rhythm For Men \r\n', 'Lấy cảm hứng từ bối cảnh một buổi nhạc Rock điển hình của nước Anh, Burberry đã cho ra đời Burberry Brit Rhythm for Him vào cuối tháng 9 năm 2013 để lưu lại những ký ức về khung cảnh này.\r\n\r\nĐược ví như một nguồn năng lượng bất tận, Brit Rhythm mở ra với hương thơm hoang dại, cay nhẹ từ Cây xô thơm, Hồ tiêu, được kích thích mạnh mẽ bởi Ngải cứu và Thì là. Các lớp hương sau đấy đã khéo léo làm dịu chính mình bằng các nốt thanh mát từ Húng quế, Bạc hà và nhẹ nhàng của Oải hương.\r\n\r\nNhư đưa người nghe đến tận cuối của một show nhạc rock, Brit Rhythm sau cùng cho ta cảm giác lơ lửng, ngọt nhẹ với Gỗ Guaiac. Nốt hương được tô thêm sự ngọt đậm với Đậu Tonka, Vanilla nhưng êm mượt và sâu thẳm nhờ sự kết hợp của Da thuộc và mạnh mẽ từ gỗ Cashmeran', 1970000, 0, 'sp79.jpg', 20, '2021-11-12', '2021-11-12', 'Còn hàng', 16, 1, 'EDP', 'Burberry', 1),
(80, 'Burberry Hero', 'Theo giấy phép của Coty, hương thơm mới nhất, Burberry Hero, vừa được giới thiệu với toàn thể công chúng. Burberry vui mừng giới thiệu chiến dịch Burberry Hero, nước hoa mới dành cho nam giới, với sự tham gia của nam diễn viên được đề cử giải Oscar, Adam Driver.\r\n\r\n\"Bộ phim chiến dịch của đạo diễn Jonathan Glazer và những hình ảnh do Mario Sorrenti chụp, ghi lại cảnh Adam Driver bí ẩn và phiêu lưu trong vẻ đẹp đầy cảm hứng của thế giới tự nhiên, để tìm kiếm tự do và thay đổi cá nhân, không còn bị kìm hãm bởi những định kiến. Adam thể hiện tinh thần của hương thơm, bao trùm quyền tự do ngôn luận và vẻ đẹp của sự mâu thuẫn \", \r\n\r\nBurberry Hero đại diện cho sự hai mặt giữa sức mạnh và sự nhạy cảm. Một mùi hương đại diện cho sự vượt thời gian của Burberry và đồng thời mang đến cảm giác hiện đại. Một sự pha trộn giữa tính phổ quát và tính độc đáo. Mùi hương thể hiện thú tính bên trong mỗi người đàn ông bên cạnh một con người thực sự. - Aurélien Guichard, Chuyên gia nước hoa', 3250000, 3000000, 'sp80.jpg', 30, '2021-11-12', '2021-11-12', 'Còn hàng', 16, 1, 'EDP', 'Burberry', 1),
(81, 'Black Perfecto By La Petite Robe Noire', 'Nước hoa nữ Black Perfecto by La Petite Robe Noire được cho ra mắt vào năm 2017. Đây là dòng nước hoa Guerlain thuộc nhóm Oriental Floral (Hương hoa cỏ phương đông) hướng đến độ tuổi trên 25 tuổi. Thierry Wasse, Thierry Wasser chính là nhà pha chế ra loại nước hoa này.', 2300000, 0, 'sp81.jpg', 30, '2021-11-12', '2021-11-12', 'Còn hàng', 17, 1, 'EDP', 'Guerlain', 1),
(82, 'Guerlain Shalimar', 'Hương Đầu: Cam Quýt, Cam Bergamot, Quả Chanh, Gỗ Tuyết Tùng và Cam Quýt;\r\nHương Giữa: Hoa Diên Vĩ, Cây Hoắc Hương, Cỏ Vetiver, Hoa nhài và Hoa hồng;\r\nHương Cuối: Hương, Vani, Da Thuộc, Opoponax, Gỗ Đàn Hương, Cầy Hương, Đậu Tonka và Xạ Hương.\r\n\r\nShalimar được Jacques Guerlain tạo ra vào năm 1925, để tưởng nhớ câu chuyện tình huyền thoại giữa Hoàng đế SHAHJAHAN và vợ của ông là Mumtaz Mahal. Trước khi trở thành hoàng đế, tên của ông là Hoàng tử Khurram. Theo truyền thuyết, Hoàng tử Khurram hai mươi tuổi gặp một cô gái trẻ tên là Arjumand Banu tại khu chợ nơi gia đình cô làm việc. Bị mê hoặc bởi vẻ đẹp của cô, sau khi trở thành hoàng đế, anh đã phong cô làm vợ của mình với cái tên Mumtaz Mahal, nghĩa là \"Viên ngọc quý của Cung điện\".\r\n\r\nAi mà tin được chứ? Mùi hương được ra mắt vào năm 1925, nghĩa là cách nhau gần 1 thế kỷ cho tới thời điểm bài viết được ra mắt. Nhìn tổng thể, Guerlain Shalimar Eau de Parfum là một minh chứng lịch sử cho thấy sự thay đổi rõ rệt của nước hoa.\r\n\r\nLớp hương đầu, một làn gió thoang thoảng của nhà Cam, Chanh như một cách tinh tế để đánh vào phần đầu tiên của khứu giác. Mùi hương trong lành như cơn gió mùi xuân đang thổi qua Khải Hoàn Môn mang theo cả một không gian cổ điển cùng mùi gỗ Tuyết Tùng ấm áp.\r\n\r\nTầng hương sau, sự sang trọng của khu vườn Luxembourg đan xen trong cơn gió mùa xuân, mang theo cả bầu trời trong lành, thư thái của những loài Hoa như khiến con người đắm mình trong khung cảnh đầy thi vị, êm ả.\r\n\r\nCuối cùng, mùi hương được cô đọng lại trong 1 khoảnh khắc, ấm áp, cổ điển, ngọt ngào của hỗn hợp Vani, Da Thuộc và Xạ Hương như một cách khiến sự thương nhớ cứ lượn lờ trong tâm khảm của những người hay mơ mộng.', 2450000, 2000000, 'sp82.jpg', 30, '2021-11-12', '2021-11-12', 'Còn hàng', 17, 1, 'EDP', 'Guerlain', 1),
(83, 'Mon Guerlain Florale', 'Là đứa con của mùa xuân, đánh dấu mốc ra đời của hiện tượng mới vào năm 2017. Thierry Wasser tinh giản chọn Mon Guerlain Florale xuất hiện cùng một loạt những loài hoa thơm quý ở trời Tây hoa mộng. Đầu tiên, ông phát đồ lên một khu vườn xuân thì, những tia nắng chiếu bình yên khiến những quả quýt, hồng và chanh căng mọng cùng hương thơm hòa quyện với đất trời.\r\nTheo sau là một loạt những nốt hương cơ bản tưởng chừng như đơn giản, nhưng lại phức tạp hóa bằng cách hòa trộn mỗi thứ một ít như nhài, chi mẫu đơn, , hương hoa cam, hương hoa, Hoa hoàng lan, Linh lan và quả đào. Mỗi thứ một ít đã khiến cho Mon Guerlain Florale trở nên huyền ảo và bay bổng. \r\nCuối cùng, như một thói quen của một khu vườn hoa, không thể thiếu những nốt trầm bổng của gỗ đàn hương như chất cân bằng sau loạt các hương hoa cộng hưởng với chút ngọt ngào của vani và diên vĩ. Khiến Florale như một bản hòa ca giữa mùa xuân với tiếng chim rừng vang dội.', 2780000, 2500000, 'sp83.jpg', 20, '2021-11-12', '2021-11-12', 'Còn hàng', 17, 2, 'EDP', 'Guerlain', 1),
(84, 'Guerlain L’Homme Ideal Cool', 'L’Homme Ideal Cool là một mùi hương nằm trong bộ sưu tập L’Homme của Guerlain, được ra mắt vào năm 2019. L’Homme Ideal Cool được pha chế bởi Thierry Wasser, thuộc nhóm hương hoa cỏ thơm ngát.\r\nTheo quan điểm và kinh nghiệm thu được từ trải nghiệm của cá nhân tôi, những mùi hương thuộc nhóm hương hoa cỏ thơm ngát, hay nhiều người còn gọi là hương dương xỉ thơm ngát, hay Aromatic Fougere, và hương gỗ thơm ngát (Woody Aromatic) là những nhóm hương thích hợp nhất dành cho những người chơi mới tham gia vào thế giới mùi hương, bởi sự dễ dùng, dễ chịu và sự đa năng của những mùi hương thuộc những nhóm này.\r\nNói vậy, L’Homme Ideal Cool là một mùi hương khá dễ mặc, với mở đầu bằng một chút kích thích khứu giác đến từ hoa hồi và sự tươi mát đến từ bạc hà. Có một vài người nói rằng họ đánh hơi được rất nhiều hương hồi hơn bạc hà trong L’Homme Ideal Cool, nhưng tôi cảm thấy bạc hà đã được sử dụng đủ lượng để khiến mùi hương trở nên rất “cool” và khá vui. Tiếp sau, hạnh nhân vẫn ở đó như L’Homme Ideal và L’Homme Ideal EDP nhưng không ngọt bằng, đồng thời còn được hòa trộn với bạc hà và hoa cam, tạo cảm giác tươi mát, đậm đặc, mọng ẩm. Khi “dry-down”, mùi hương dần trở thành sàn diễn của Ambroxan và hương gỗ của cỏ hương bài, tạo ra một khối tươi mát nhưng đầy nam tính của mùi hương.\r\nL’Homme Ideal Cool là một lựa chọn thú vị khi bạn muốn mua một hương thơm đa dụng, có thể sử dụng được trong nhiều dịp khác nhau, hoặc khi bạn bắt đầu mua chai nước hoa đầu tiên cho mình, nhưng không có hứng thú với những mùi hương “blue” phổ biến. Không chỉ vậy, Guerlain là một cái tên uy tín, và lịch sử đã chứng minh những cái tên họ tạo ra đều chất lượng.', 2530000, 0, 'sp84.jpg', 35, '2021-11-12', '2021-11-12', 'Còn hàng', 17, 1, 'EDP', 'Guerlain', 1),
(85, 'Guerlain L\'Homme Ideal L\'Intense Eau de Parfum', 'Ra mắt vào đầu năm 2018, Guerlain L\'Homme Ideal L\'Intense EDP mang đến những làn gió mới đầy ấm áp và dễ chịu từ tiết xuân đầu năm đồng thời được xem là hiện thân của một quý ông hoàn hảo.\r\n\r\nMở đầu bằng cường độ cay đặc trưng từ Ớt kèm chung với hương vị nồng ấm từ những hạt Hạnh nhận và Bạch đậu khấu, tầng hương tựa như phát nổ đầu tiên làm tiêu biến đi những căng thẳng, mệt mỏi hằng ngày.\r\n\r\nThay mới bằng những cảm xúc nhẹ nhàng với hương Hoa hồng và Da thuộc, những làn hương đặc biệt của Labdanum tiếp xúc khiến từng đặc trưng của nốt hương trở nên rõ hơn tạo ra phong phái quý phái, sang trọng mà một quý ông tinh tế mang lại.\r\n\r\nKhông nén mình lại theo bất kỳ nguyên tắc nào, từng làn hương khói dạo quanh trên nền Gỗ đàn hương, Hoắc hương và Đậu tonka đem những phong vị hòa vào cùng sự ngọt ngào của Vanilla lộ ra bản chất ẩn sâu bên trong tâm hồn của quý ông mạnh mẽ, lãng mạn luôn theo đuổi chủ nghĩa tự do trong cuộc đời', 2300000, 0, 'sp85.jpg', 35, '2021-11-12', '2021-11-12', 'Còn hàng', 17, 1, 'EDP', 'Guerlain', 1),
(86, 'Guerlain La Petite Robe Noire Ma Robe Petales Eau Fraiche', 'Tiếp nối xu hướng của những mùi hương hiện đại, Nước Hoa Nữ Guerlain La Petite Robe Noire Ma Robe Petales Eau Fraiche EDT 100ml được các nhà chế tác nước hoa của Guerlain thổi vào đó tinh thần đổi mới, tự tin và đầy nhiệt huyết của những người phụ nữ đương thời: “Họ là những cô gái nữ tính nhưng đầy bản lĩnh giữa cuộc sống mới, đầy khao khát và tự chủ cho cuộc sống của chính mình”.\r\n\r\nLa Petite Robe Noire Ma Robe Petales là chiếc váy mới trong tủ hương với những nốt hương nhẹ nhàng, tươi sáng bằng sự hòa âm độc đáo của hương cam quýt tươi mát kết hợp cùng hương hoa hồng trắng, hoa thủy rồi quyện hòa hương dẻ cười mang đến sự quyến rũ không thể chối từ.', 2000000, 1800000, 'sp86.jpg', 35, '2021-11-12', '2021-11-12', 'Còn hàng', 18, 1, 'EDP', 'Guerlain', 1),
(87, 'Guerlain Fol Arôme 2020', 'Là làn hương lãng đãng trong gió, là cái chạm rất khẽ lên da thịt ta, mùi hương của Fol Arôme Guerlain như phủ lên tâm thức ta một lớp lụa ren mềm mại, khắc khoải gửi gắm lại một nỗi nhung nhớ, thèm thuồng đến cuồng si.\r\n\r\nThế giới của Fol Arôme Guerlain bắt đầu bằng cánh đồng hoa bạt ngàn của Oải hương, lẫn vào đâu đấy chút the the, dịu mát của Bạc hà và Cam bergamot. Nhưng rồi cũng thật đột ngột, càng dấn bước sâu hơn, hương hoa ngày càng ráo riết và trở nên đầy chiếm lĩnh dưới sự hòa quyện của Hoa nhài, Thuỷ tiên và Hoa hồng.\r\n\r\nSau những tầng hương mỹ miều, Fol Arôme Guerlain cuối cùng vẫn chưa chịu biến mất, mà như nấn ná lại với chút hương phấn nhẹ nhàng, khiến cho cả chuyến du ngoạn không chỉ đáng nhớ, mà còn đáng để thử đi thử lại thêm nhiều lần nữa.', 2850000, 0, 'sp87.jpg', 30, '2021-11-12', '2021-11-12', 'Còn hàng', 18, 1, 'EDP', 'Guerlain', 1),
(88, 'Guerlain Mon Guerlain Bloom of Rose Eau de Parfum', 'Người ta nói nước hoa có thể gợi cho bạn nhiều điều, một bóng hình, một nỗi nhớ hay đơn giản chỉ là một góc phố nơi bạn vô tình bắt gặp mùi hương ấy. Nhưng với Mon Guerlain Bloom Of Rose EDP, tôi chỉ cứ vu vơ mãi câu hát “La vie en rose\"...\r\n\r\nCó lẽ một phần vì tông hương hoa xuyên suốt luôn lan tỏa trong không trung, tuy không nồng nàn dày đặc, nhưng bằng một cách kỳ diệu nào đấy vẫn cứ lãng đãng, viễn du mãi thôi không dứt. Hoặc cũng có lẽ là bởi sự trẻ trung, tràn đầy nhựa sống và chất thơ trong mùi hương đã khiến tôi phải nghĩ ngay đến câu hát yêu đời ấy, “La vie en rose\". Nhưng tôi dám cá với bạn, nếu bạn cũng có thể ngửi được cả một vườn hoa thu nhỏ, nào Hồng, nào Nhài, nào Oải hương thì bạn cũng sẽ phải mềm lòng mà ngả mũ trước kiệt tác Mon Guerlain Bloom Of Rose EDP này đấy.\r\n\r\nTôi không có ý định so sánh mùi hương này với bất kỳ hiện tượng nào, hay bất kỳ ai. Bởi làm sao tìm được điều gì sóng sánh, phương phi như mùi hương của Mon Guerlain Bloom Of Rose EDP?', 2850000, 2500000, 'sp88.jpg', 35, '2021-11-12', '2021-11-12', 'Còn hàng', 18, 1, 'EDP', 'Guerlain', 1),
(89, 'Guerlain Idylle', 'Idylle mở đầu bằng một cơn mưa hoa hoài niệm, những cánh đồng hoa bát ngát, hương thơm bao gồm hoa huệ, hoa mẫu đơn, hoa lan nam phi và hoa cà trắng.\r\n\r\nTiếp đến là sự lắng đọng thư thái, giữa cánh rừng hoa tỏa ra một nét dịu dàng đến nao lòng. Hương thơm bay bổng của hoa nhài cùng sự lãng mạn của hoa hồng bulgaria là một nét chấm phá khiến người ta không thể rời mắt khỏi Idylle.\r\n\r\nCuối cùng, mọi thứ lắng xuống, hương thơm của hoắc hương và xạ hương trắng nương mình trên xác thịt khiến cảm xúc trở nên vỡ òa và đeo bám dai dẳng trong tâm thức của những kẻ lãng du.\r\n\r\nĐể tạo ra Idylle, Thierry Wasser- nhà chế tác của đế chế Guerlain, đã lựa chọn cẩn thận những bông hồng Bulgaria tốt nhất, được hái bằng tay trong các thung lũng Bulgaria vào lúc bình minh. Chúng được kết hợp với nhau trong một sự pha trộn để thể hiện một hương thơm trái cây độc đáo với nhiều hương vị của quả mâm xôi và vải thiều.', 2100000, 0, 'sp89.jpg', 35, '2021-11-12', '2021-11-12', 'Còn hàng', 18, 2, 'EDP', 'Guerlain', 1),
(90, 'Guerlain Homme ', 'Nước hoa nam Homme Eau de Parfum (2016) phù hợp với người trên 25 tuổi.Đây là dòng nước hoa Guerlain này có độ lưu hương tạm ổn - 3 giờ đến 6 giờ. và độ tỏa hương thuộc dạng gần - toả hương trong vòng một cánh tay. Perfumista.vn khuyến cáo Homme Eau de Parfum (2016) phù hợp để sử dụng trong cả ngày lẫn đêm vào mùa xuân, hạ.\r\n\r\nĐây là dòng nước hoa Guerlain thuộc nhóm Woody Aromatic (Hương gỗ thơm). Homme Eau de Parfum (2016) được cho ra mắt vào năm 2016. Bên cạnh đó, Cây bạc hà cay và Rượu Rum là hai hương bạn có thể dễ dàng cảm nhận được nhất khi sử dụng nước hoa này.', 1500000, 1400000, 'sp90.jpg', 35, '2021-11-12', '2021-11-12', 'Còn hàng', 18, 1, 'EDP', 'Guerlain', 1),
(91, 'Hermes Eau Des Merveilles', 'Eau des Merveillé xuất hiện với làn hương tuôn chảy dọc khắp hành lang, tràn xuống cầu thang, và cuối cùng đổ ra đại sảnh lớn – nơi bữa tiệc mùa hè chính thức bắt đầu. Những hương thơm mọng nước vỡ ra, bám chặt lên những làn da đang nhịp nhàng chuyển động theo những vũ điệu bất tận của mùa hè.\r\n\r\nKhi chỉ vừa kịp thẩm thấu, thì những hương thơm nồng nàn và ấm áp của hổ phách, tiêu và tiêu hồng tràn về. Chúng tràn vượt lên cả sự hưng phấn cuồng nhiệt trong những giai điệu mùa hè. Sức nhiệt đã đẩy buổi tiệc từ đại sảnh ra tới tận bãi biển rộng lớn. Đó là khi mà những nốt hương cuối được bộc lộ mang tới một không gian của cát, của gió, của cả thiên nhiên đất trời. Cơn gió hong khô tất cả sự ẩm ướt còn sót lại, như một ly citrus cocktail bỗng bốc hơi giữa cái nắng hè.', 2450000, 2200000, 'sp91.jpg', 35, '2021-11-13', '2021-11-13', 'Còn hàng', 19, 1, 'EDP', 'Hermes', 1),
(92, 'HERMES Terre d’Hermes Eau de Toilette', 'Nếu bạn hỏi tôi giữa rất nhiều dòng nước hoa của Hermes, thì chai nước hoa nào xứng đáng làm gương mặt đại diện cho hãng, tôi sẽ không ngại ngần dù chỉ 1 giây để nói ra cái tên kinh điển Terre d\'Hermes. Trong tiếng Pháp, Terre có nghĩa là đất, và chàng trai này được ví như là \"đất của nhà Hermes\". Hermes Terre d\'Hermes có sự tự tin luôn hiện hữu, có sự trưởng thành của một người đàn ông thành công, có sự tinh tế như những đường chỉ may tay trên bất kỳ chiếc vest nào của hãng, nhưng sự \"quyền lực\" mới là thứ khiến chàng trai nay xứng đáng là con ông cháu cha của nhà Hermes. Hương đầu là trái cam và trái bưởi, và hương giữa là tiêu đen làm chủ đạo, nhưng thú thực những thành phần này mix vào với nhau tạo thành một mùi hương không thể nào định nghĩa. Nhiều người ví Hermes Terre d\'Hermes có mùi hương của một một người đàn ông quyền lực đứng ngửa mặt nhìn lên bầu trời, là mùi uy quyền của con người kết hợp cùng gió, nắng và màu xanh bao la của bầu trời, có người lại thấy nó trầm lặng, lạnh lùng, xa hoa của những loài gỗ quý ẩn mình dưới lòng đất. Dù là thế nào, Hermes Terre d\'Hermes cũng thể hiện được sự tinh tế, sang trọng và quyền uy như chính cách nhà Hermes đang thể hiện ở mọi góc độ thời trang, nước hoa cũng như phong cách hoàng gia hãng luôn mang lại cho những fan trung thành của mình. Terre d\'Hermes là \"Đất\" của Hermes, và mặc nó lên người, bạn sẽ trở thành người nhà của Hermes. ', 2800000, 0, 'sp92.jpg', 35, '2021-11-13', '2021-11-13', 'Còn hàng', 19, 1, 'EDP', 'Hermes', 1),
(93, 'Hermes Un Jardin Sur Le Nil', 'Hermes Un Jardin Sur Le Nil được ra mắt vào năm 2005 dưới sự nghiên cứu đầy tâm huyết của chuyên gia nước hoa Jean-Claude Ellena, mong muốn mang lại một khu rừng đầy màu sắc, ngập tràn trái cây và rực rỡ, thơm ngát của các loài hoa bên cạnh con sông Nil tại Assouan xa xôi xinh đẹp. Nhà Hermes đã mang tới cho các tín đồ nước nước một hành trình mùi hương thực sự tuyệt đẹp bằng cảm xúc và trái tim của bà mẹ thiên nhiên. Mở đầu bằng sự phong phú, tươi mát của Cà rốt, Bưởi, cà chua và quả xoài xanh, sự thanh nhẹ cùng mùi hương trái cây bao phủ khắp nơi khi bạn xịt Hermes Un Jardin Sur Le Nil lần đầu tiên, một sự thư giãn tự nhiên và gây nghiện đối với bất kỳ ai vô tình đi ngang qua. Hành trình mùi hương được di chuyển tới các tầng hương khác sau khi lên da một thời gian ngắn, nơi có sự hiện hữu của hoa sen, của Cam và của Hoa mẫu đơn, nếu tinh ý bạn sẽ nhận ra rằng Hermes Un Jardin Sur Le Nil là một mùi hương Unisex, nhưng lại chứa các hương hoa chủ đạo rất nhiều, tựa như nó dành cho phái nữ hoàn toàn vậy. Nhưng khi Hermes Un Jardin Sur Le Nil đi về trạm cuối với Quế, xạ hương và hoa Diên vĩ, sự trung hòa về mặt giới tính đã được thể hiện rõ, để Hermes khẳng định lại một lần nữa với tất cả mọi người rằng Hermes Un Jardin Sur Le Nil chính là 1 trong những mùi hương Unisex đẹp nhất, tươi mát nhất, thiên nhiên nhất, xứng đáng để cho bất kỳ giới tính nào cũng phải dành sự ưu ái một cách tuyệt tối cho kẻ lạ mặt này. ', 2500000, 2300000, 'sp93.jpg', 35, '2021-11-13', '2021-11-13', 'Còn hàng', 19, 1, 'EDP', 'Hermes', 1),
(94, 'Hermes Voyage d\'Hermes Travel Spray', 'Voyage d’Hermes Parfume mở màn với một lát chanh mỏng cắt ngang bề mặt hỗn độn những loại gia vị khác nhau. Khi đó, sự thanh chua bắt đầu len lỏi qua từng nốt vị, từ vị cay, đến vị ngọt, từ nồng nàn ấm áp, đến the mát sảng khoái. Vết cắt đã khuấy động cả một bầu không gian và khiến cho khứu giác tôi phải liên tục cử động. Cử động để ngả mình xuống chiếc ghế lười mềm mại và tràn trề sự vỗ về của hương bạch đậu khấu.\r\n\r\nNgay sau đó, hương trà, hoa hồng và hedione quyện lấy thân thể tôi đầy tinh tế và nhẹ nhàng. Nó kéo tôi nằm lún sâu xuống thêm nữa, cho đến khi mặt tôi ngửa hẳn ra sau đón lấy những giọt hương trong lành và thơ mộng của những bông hoa mới nở.\r\n\r\nHương cay nồng thuở đầu bấy giờ dần dần trầm mình xuống và khiêm nhường hơn. Lúc đó là lúc mà các đợt hương của gỗ, xạ hương và hổ phách mạnh mẽ chiếm ưu thế. Chúng biến bề mặt hỗn độn ban đầu thành một sắc đỏ rực cháy. Giữa cơn bập bùng, tôi vẫn cảm nhận được sự kiên định của lát chanh, nó vững vàng như con chiến hạm giữa đợt sóng lớn. Và nhờ thế mà những đợt hương cay nóng bỏng được trung hoà một cách hoàn hảo.', 1800000, 0, 'sp94.jpg', 35, '2021-11-13', '2021-11-13', 'Còn hàng', 19, 6, 'EDP', 'Hermes', 1),
(95, 'Hermes H24', 'Mùi hương mới của dòng nước hoa nam tính Hermès ra mắt vào tháng 2 năm 2021 với tên gọi Hermès H24. Đây được coi là lần ra mắt lớn đầu tiên thuộc mảng nước hoa nam sau 15 năm, sau Terre d’Hermès, tuyệt tác được tạo ra bởi Jean-Claude Ellena vào năm 2006. Tôi sẽ mô tả đây như một mùi hương thuộc tuýp xanh lục mập mờ và khô ráo - màu xanh lục như trong lá cây và phong rêu, sương mù như trong xạ hương, và chypre như trong khô ráo ấm áp. Những nốt hương đầu tiên vô cùng hấp dẫn, như một bức tranh được phủ bạc với sắc màu của bạch đàn cùng cây xô thơm mịn màng lả lướt. Nốt cây xô thơm hiện diện trong H24 giống như da lộn, sở hữu một độ trong suốt thoáng đãng và hương thảo mộc mềm mượt, tròn trịa, lấp lánh nhưng cũng một chút có hoa lá. Yếu tố hoa đó được làm nổi bật bởi một nốt hoa thủy tiên tinh tế, nhẹ nhàng và trơn tru, nó định hình kết cấu và đặc điểm của mùi hương hơn là hương vị của chính nó, mang lại sự phong phú và nồng nàn sang trọng như bơ, một ít chất sáp và một ít chất trái cây. Và chất trái cây ấy đã mang đến một màn lột xác ngoạn mục của hương xô thơm, đưa cây xô thơm đi xa hơn đến với lãnh địa của mùi hương quả sung hoặc đu đủ.', 3300000, 3099000, 'sp95.jpg', 30, '2021-11-13', '2021-11-13', 'Còn hàng', 19, 1, 'EDP', 'Hermes', 1),
(96, 'HERMES Eau des Merveilles Bleue Eau de Toilette', 'Eau Des Merveilles Bleue được hãng Hermes ra mắt vào năm 2016, dưới sự sáng tạo của chuyên gia nước hoa hàng đầu Christine Nagel. Một thiết kế tuyệt đẹp, lấp lánh và tươi sáng được hãng thời trang hàng đầu thế giới dành cho cô nàng này, sự ưu ái còn được thể hiện rõ khi Hermes Eau Des Merveilles Bleue còn mang trong mình một mùi hương cực kỳ dễ chịu, nhẹ nhàng, thư giãn. Nhiều người ví Eau Des Merveilles Bleue là một buổi tối lãng mạn tại một vùng biển nhiệt đới, cùng trò chuyện với những người bạn thân thiết, uống cocktail và trái cây tươi. Gió mát từ biển lạnh buốt lướt qua khu nghỉ dưỡng bên bờ biển của bạn, cánh cửa gỗ sơn trắng mở hờ cùng tiếng rèm cửa kêu xào xạc. Một hơi thở của biển cả, xen lẫn sự gần gũi, mộc mạc từ những thanh gỗ ẩm ướt lâu ngày của những chiếc thuyền câu trên bãi biển, một đêm của những câu chuyện vui, tiếng cười đùa kèm lời tỏ tình chân thật của một ai đó. Hermes Eau Des Merveilles Bleue gói gọn bằng những cảm xúc bình dị, rất đỗi chân thực, nhưng đủ để khơi gợi những ký ức đẹp của bất kỳ ai yêu thích mùi hương của biển cả, một sự đơn giản tinh tế trong tâm hồn.', 2950000, 0, 'sp96.jpg', 35, '2021-11-13', '2021-11-13', 'Còn hàng', 20, 23, 'EDP', 'Hermes', 1),
(97, 'Hermes Eau de Narcisse Bleu', 'Eau de Narcisse Bleu là một mùi hương nằm trong bộ sưu tập Les Colognes Hermes của Hermes được ra mắt cùng với Eau de Mandarine Ambree vào năm 2013. Bộ sưu tập Les Colognes của Hermes gồm toàn những mùi hương đơn giản, nhẹ nhàng và thanh thoát, hiện đại, không gây ấn tượng với mọi người bằng những mùi hương đậm đà và phức tạp nhưng vẫn để lại những sự chú ý và yêu thích. Eau de Narcisse Bleu cũng như toàn bộ bộ sưu tập Les Colognes Hermes đèu được tung ra thị trường với nồng độ Eau de Cologne.\r\n\r\nVề mùi hương của Eau de Narcisse Bleu, nó gây ấn tượng với tôi rằng đây là một hương hoa nhẹ nhàng mơn mởn được tạo điểm nhấn bằng hương phấn, rất nhiều hương phấn. Mặc dù mùi hương này được Hermes nói rằng nó dành cho cả nam và nữ khi gắn tag unisex cho Eau de Narcisse Bleu nhưng cá nhân tôi đánh giá nó phù hợp hơn với nữ, thậm chí tốt nhất là với các quý cô đứng tuổi, bởi hoa thủy tiên là một mùi hương nữ tính chứa đầy sự trải nghiệm và 1 chút nào đó kiêu kỳ và nhiều quyền lực. Đằng sau một bông hoa thủy tiên đậm phấn, hương gỗ nhẹ nhàng bám lấy da khiến cho mùi hương trầm hơn, có một chút gì đó nam tính hơn nhưng vẫn không thể thuyết phục được tôi thay đổi quan điểm về giới tính phù hợp cho mùi hương này.\r\n\r\nChiếc chai đựng của Eau de Narcisse Bleu cũng nói lên được phần nào phong cách mùi hương này cũng như toàn bộ dòng hương Les Colognes của hãng, đơn giản và thanh lịch.', 2850000, 2500000, 'sp97.jpg', 35, '2021-11-13', '2021-11-13', 'Còn hàng', 20, 2, 'EDP', 'Hermes', 1),
(98, 'Twilly d\'Hermes Eau Ginger', 'Được ra mắt vào năm 2021, Twilly d\'Hermes Eau Ginger được Christine Nagel mô phỏng như hình tượng một người con gái thùy mị, nhẹ nhàng nhưng lại vô cùng hiện đại trước sự thay đổi ồ ạt của thế kỷ 21.\r\n\r\nTầng hương đầu mở ra bằng một sự ngọt dịu của Hoa Mẫu Đơn, nhưng bất ngờ thay, sự cay ấm của Gừng đã đủ mạnh để đan xen vào lần đầu tiên xuất hiện khiến mùi hương trông tràn đầy sức sống và trẻ trung.\r\n\r\nNếu bạn cảm thấy những phiên bản flankers khác của Twilly có phần ngọt hơn những gì bạn mong đợi thì chắc chắn Twilly d\'Hermes Eau Ginger là một người bạn đồng hành tuyệt vời của bạn cho thời tiết oi ả của ngày hè sắp tới.', 3200000, 0, 'sp98.jpg', 35, '2021-11-13', '2021-11-13', 'Còn hàng', 20, 14, 'EDP', 'Hermes', 1),
(99, 'HERMES Twilly d\'Hermes Eau de Parfum', 'Nước hoa Twilly d’Hermes của hãng Hermes được lấy cảm hứng từ những chiếc khăn lụa mềm mại nhiều màu sắc mang tính biểu tượng của những cô gái nữ tính tới từ phương Tây. Được sáng tạo bởi chuyên gia nước hoa Christine Nagel với mong muốn mang tới một mùi hương trẻ trung, táo bạo và sự khó lường của những cô nàng mạnh mẽ với nhiều hoài bão. Hermes Twilly d’Hermes là một mùi hương \"thông minh\" đúng nghĩa, khi Gừng được sử dụng để cung cấp một mùi hương sạch sẽ tới bất ngờ, mà ngay cả khi hoa huệ và hoa cam vẫn luôn hiện hữu ở đó cũng không thể nào đánh bại được sự sạch sẽ tới mức thuần khiết này. Hương cuối với sự pha trộn giữa Gỗ đàn hương và Vani tạo nên một sự cuốn hút đầy đủ cho những cô gái độc lập, tự tin, thông minh và có thừa sự tinh tế trong mọi lời nói. ', 1800000, 1599000, 'sp99.jpg', 35, '2021-11-13', '2021-11-13', 'Còn hàng', 20, 93, 'EDP', 'Hermes', 1),
(100, 'Hermes Un Jardin Sur La Lagune', 'Un Jardin Sur La Lagune được ra mắt vào tháng 3/2019. Chứa đựng bên trong thiết kế chai được minh hoạ bởi nghệ sĩ nổi tiếng người Bosnia Safet Zec và thuộc nhóm nước hoa cỏ phương đông.\r\nUn Jardin Sur La Lagune gây ấn tượng bằng loạt những hương liệu vừa quen thuộc vừa gần gũi. Một vườn hoa mộc lan trắng hồng cả vùng trời lộng gió, nó phả vào gió thứ mùi hương sắc sảo hòa quyện cùng hoa hải đồng, khiến mùi hương trở nên yểu điểu và cởi mở.\r\nBỗng chốc lát, hoa huệ ngào ngạt được nhen nhúm bằng hương biển mang một sắc thái tươi trẻ, gió biển trải vào những dải cát trắng, một bầu trời xanh khiến tâm trạng trở nên bồi hồi, miên man hơn bao giờ hết.\r\nCuối cùng, hương gỗ trở nên trầm bổng, mặc lên người cô gái một lớp hương đầy mạnh mẽ, nhưng vẫn mang trọn vẹn và tròn trĩnh những bản ngã cần bao bọc vốn có.', 3350000, 0, 'sp100.jpg', 35, '2021-11-13', '2021-11-13', 'Còn hàng', 20, 65, 'EDP', 'Hermes', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `Ma_ThuongHieu` varchar(10) NOT NULL,
  `Ten` varchar(500) NOT NULL,
  `Logo` varchar(500) NOT NULL DEFAULT 'logo.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`Ma_ThuongHieu`, `Ten`, `Logo`) VALUES
('Burberry', 'Burberry', 'logo.jpg'),
('Bvlgari', 'Bvlgari', 'logo.jpg'),
('Chanel', 'Chanel', 'logo.jpg'),
('Dior', 'Dior', 'logo.jpg'),
('Gucci', 'Gucci', 'logo.jpg'),
('Guerlain', 'Guerlain', 'logo.jpg'),
('Hermes', 'Hermes', 'logo.jpg'),
('Lancôme', 'Lancôme', 'logo.jpg'),
('LV', 'Louis Vuitton', 'logo.jpg'),
('Narciso', 'Narciso', 'logo.jpg'),
('Tom Ford', 'Tom Ford', 'logo.jpg'),
('Versace', 'Versace', 'logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeuthich`
--

CREATE TABLE `yeuthich` (
  `ID` int(11) NOT NULL,
  `MA_SP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `yeuthich`
--

INSERT INTO `yeuthich` (`ID`, `MA_SP`) VALUES
(4, 5),
(4, 7),
(4, 10),
(5, 100),
(6, 5),
(6, 9),
(6, 11),
(6, 13),
(6, 66),
(6, 96),
(6, 100),
(7, 100);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_Admin`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Ma_Comment`),
  ADD KEY `ID_KhachHang` (`ID_KhachHang`),
  ADD KEY `Ma_SP` (`Ma_SP`);

--
-- Chỉ mục cho bảng `ct_donhang`
--
ALTER TABLE `ct_donhang`
  ADD PRIMARY KEY (`Ma_DonHang`,`MA_SP`),
  ADD KEY `MA_SP` (`MA_SP`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`Ma_DonHang`),
  ADD KEY `ID_KhachHang` (`ID_KhachHang`);

--
-- Chỉ mục cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  ADD PRIMARY KEY (`Ma_DonHang`,`ID_KhachHang`),
  ADD KEY `ID_KhachHang` (`ID_KhachHang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`Ma_Loai`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MA_SP`),
  ADD KEY `ID_Admin` (`ID_Admin`),
  ADD KEY `Ma_Loai` (`Ma_Loai`),
  ADD KEY `Ma_Thuong_Hieu` (`Ma_Thuong_Hieu`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`Ma_ThuongHieu`);

--
-- Chỉ mục cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD PRIMARY KEY (`ID`,`MA_SP`),
  ADD KEY `MA_SP` (`MA_SP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_Admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `Ma_Comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `Ma_DonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MA_SP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`ID_KhachHang`) REFERENCES `khachhang` (`ID`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`Ma_SP`) REFERENCES `sanpham` (`MA_SP`);

--
-- Các ràng buộc cho bảng `ct_donhang`
--
ALTER TABLE `ct_donhang`
  ADD CONSTRAINT `ct_donhang_ibfk_1` FOREIGN KEY (`Ma_DonHang`) REFERENCES `donhang` (`Ma_DonHang`),
  ADD CONSTRAINT `ct_donhang_ibfk_2` FOREIGN KEY (`MA_SP`) REFERENCES `sanpham` (`MA_SP`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`ID_KhachHang`) REFERENCES `khachhang` (`ID`);

--
-- Các ràng buộc cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  ADD CONSTRAINT `giaohang_ibfk_1` FOREIGN KEY (`Ma_DonHang`) REFERENCES `donhang` (`Ma_DonHang`),
  ADD CONSTRAINT `giaohang_ibfk_2` FOREIGN KEY (`ID_KhachHang`) REFERENCES `khachhang` (`ID`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ID_Admin`) REFERENCES `admin` (`ID_Admin`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`Ma_Loai`) REFERENCES `loai` (`Ma_Loai`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`Ma_Thuong_Hieu`) REFERENCES `thuonghieu` (`Ma_ThuongHieu`);

--
-- Các ràng buộc cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD CONSTRAINT `yeuthich_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `khachhang` (`ID`),
  ADD CONSTRAINT `yeuthich_ibfk_2` FOREIGN KEY (`MA_SP`) REFERENCES `sanpham` (`MA_SP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
