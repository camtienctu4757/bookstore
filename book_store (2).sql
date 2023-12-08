-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 22, 2023 lúc 03:51 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `book_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `id_order`, `id_sanpham`, `soluong`, `gia`) VALUES
(59, 59, 7, 1, 279000),
(60, 59, 19, 1, 151200);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `tendanhmuc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `stt`, `tendanhmuc`) VALUES
(1, 1, 'Ngoại ngữ'),
(2, 2, 'Kinh tế'),
(3, 3, 'Thiếu nhi'),
(4, 4, 'Ngôn tình'),
(5, 5, 'Kỹ năng'),
(6, 6, 'Tâm lý'),
(7, 7, 'Light novel'),
(8, 8, 'Tiểu thuyết');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id_donhang` int(11) NOT NULL,
  `ten_kh` varchar(100) NOT NULL,
  `sodienthoai` varchar(11) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `ghichu` varchar(500) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `ngay_dathang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id_donhang`, `ten_kh`, `sodienthoai`, `diachi`, `ghichu`, `tongtien`, `ngay_dathang`) VALUES
(59, 'Võ Ngọc Anh Thư', '0899501649', 'Ô Môn, Cần Thơ', '', 430200, '2023-04-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(200) NOT NULL,
  `id_danhmuc` int(200) NOT NULL,
  `tensanpham` text DEFAULT NULL,
  `nhacungcap` text DEFAULT NULL,
  `nhaxuatban` text DEFAULT NULL,
  `tacgia` text DEFAULT NULL,
  `hinhthuc` text DEFAULT NULL,
  `giasanpham` bigint(11) NOT NULL,
  `giakhuyenmai` bigint(11) NOT NULL,
  `khuyenmai` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `sanpham_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `id_danhmuc`, `tensanpham`, `nhacungcap`, `nhaxuatban`, `tacgia`, `hinhthuc`, `giasanpham`, `giakhuyenmai`, `khuyenmai`, `soluong`, `sanpham_url`) VALUES
(1, 1, 'GET READY FOR FLYERS: SB WITH DOWNLOADABLE AUDIO: MAXIMIZE CHANCES OF EXAM\r\n', 'Oxford University Press', 'OXFORD UNIVERSITY PRESS', 'Petrina Cliff', 'Bìa Mềm', 345000, 345000, 0, 100, '/imges/ngoaingu/pic10.jpg'),
(2, 1, 'Complete IELTS B1 Students Book with answer with CD-ROM', 'Cambridge University Press', 'Cambridge', 'Mark Harrison', 'Bìa Mềm', 279000, 279000, 0, 100, '/imges/ngoaingu/pic9.jpg'),
(3, 1, 'Cambridge English Flyers 1 for Revised Exam from 2018 Students Book', 'Cambridge University', 'Cambridge University', 'Cambridge University', 'Bìa Mềm', 130000, 130000, 0, 100, '/imges/ngoaingu/pic8.jpg'),
(4, 1, 'English Vocabulary in Use: Advanced Book Fahasa Reprint Edition: Vocabulary Reference and Practice (CD-ROM)', 'Cambridge University', 'Cambridge University', 'Michael McCarthy', 'Bìa mềm', 193000, 193000, 0, 100, '/imges/ngoaingu/pic7.jpg'),
(5, 1, 'The Official Cambridge Guide to IELTS Student Book with Answers with DVD-ROM', 'Cambridge University', 'Cambridge University', 'Pauline Cullen, Amanda French, Vanessa Jakeman', 'Bìa Mềm', 383000, 344700, 10, 100, '/imges/ngoaingu/pic6.jpg'),
(6, 1, 'English Vocabulary in Use: Elementary Book with Answers Fahasa Reprint Edition: Vocabulary Reference and Practice (CD-ROM)', 'Cambridge University', 'Cambridge University', 'Michael McCarthy', 'Bìa Mềm', 130000, 117000, 10, 100, '/imges/ngoaingu/pic5.jpg'),
(7, 1, 'Complete IELTS B2 Student Book with answer & CD-Rom', 'Cambridge University', 'Cambridge University', 'Mark Harrison', 'Bìa Mềm', 279000, 279000, 0, 100, '/imges/ngoaingu/pic4.jpg'),
(8, 1, 'Advanced Grammar in Use Book with Answers Fahasa Reprint Edition: A Self-Study Reference and Practice Book for Advanced Learners of English', 'Cambridge University', 'Cambridge University', 'Martin Hewings', 'Bìa Mềm', 178000, 178000, 0, 100, '/imges/ngoaingu/pic3.jpg'),
(9, 1, 'Essential Grammar in Use Book with Answers Fahasa Reprint Edition: A Self-Study Reference and Practice Book for Elementary Learners of English', 'Cambridge University', 'Cambridge University', 'Raymond Murphy', 'Bìa Mềm', 178000, 160200, 10, 100, '/imges/ngoaingu/pic2.jpg'),
(10, 1, 'English Grammar in Use Book w Ans', 'Cambridge University', 'Cambridge University', 'Raymond Murphy', 'Bìa Mềm', 178000, 160200, 10, 100, '/imges/ngoaingu/pic1.jpg'),
(11, 2, 'Chiến Tranh Tiền Tệ - Phần 1 - Ai Thực Sự Là Người Giàu Nhất Thế Giới? (Tái bản 2022)', 'Bách Việt', 'NXB Lao Động', 'Song Hong Binh', 'Bìa Mềm', 165000, 107250, 35, 100, '/imges/kinhte/pic1.jpg'),
(12, 2, 'Chiến Tranh Tiền Tệ - Phần V (Phần Cuối)', 'Bách Việt', 'NXB Lao Động', 'Song Hong Bing', 'Bìa Mềm', 195000, 136500, 30, 100, '/imges/kinhte/pic2.jpg'),
(13, 2, 'Chiến Tranh Tiền Tệ - Phần 2 - Sự Thống Trị Của Quyền Lực Tài Chính (Tái Bản 2022)', 'Bách Việt', 'NXB Lao Động', 'Song Hong Bing', 'Bìa Mềm', 170000, 110500, 35, 100, '/imges/kinhte/pic3.jpg'),
(14, 2, 'Chiến Tranh Tiền Tệ Phần IV: Siêu Cường Về Tài Chính - Tham Vọng Về Đồng Tiền Chung Châu Á', 'Bách Việt', 'NXB Lao Động', 'Song Hong Bing', 'Bìa Mềm', 185000, 129500, 30, 100, '/imges/kinhte/pic4.jpg'),
(15, 2, 'Chiến Tranh Tiền Tệ - Biên Giới Tiền Tệ - Nhân Tố Bí Ẩn Trong Các Cuộc Chiến Kinh Tế (Phần III)', 'Bách Việt', 'NXB Lao Động', 'Song Hong Binh', 'Bìa Mềm', 175000, 114000, 35, 100, '/imges/kinhte/pic5.jpg'),
(16, 2, 'Thiên Nga Đen (Tái Bản 2020)', 'Alpha Books', 'Thế Giới', 'Nassim Nicholas Taleb', 'Bìa Mềm', 299000, 239000, 20, 100, '/imges/kinhte/pic6.jpg'),
(17, 2, 'Quốc Gia Khởi Nghiệp - Câu Chuyện Về Nền Kinh Tế Thần Kỳ Của Israel (Tái Bản)', 'Alpha Books', 'Thế Giới', 'Dan Senor, Saul Singer', 'Bìa Mềm', 209000, 167200, 20, 100, '/imges/kinhte/pic7.jpg'),
(18, 2, 'Phân Tích Con Số Báo Cáo Chuyên Nghiệp', '1980 Books', 'Thanh Niên', 'Yoshiki Kashiwaki', 'Bìa Mềm', 159000, 127200, 20, 100, '/imges/kinhte/pic8.jpg'),
(19, 2, 'Bóc Phốt Tài Chính - Giàu Chậm Nhưng Chắc (Tái Bản 2022)', '', 'NXB Dân Trí', 'Nguyễn Trọng Nhân', 'Bìa Mềm', 189000, 151200, 20, 100, '/imges/kinhte/pic9.jpg'),
(20, 2, 'Các Cuộc Chiến Tranh Tiền Tệ (Tái Bản 2019)', 'NXB Trẻ', 'NXB Trẻ', 'James Rickards', 'Bìa Mềm', 116000, 145000, 20, 100, '/imges/kinhte/pic10.jpg'),
(21, 3, 'Winnie-the-Pooh', 'Penguin Books', 'Penguin Putnam', 'Ernest H Shepard', 'Bìa Mềm', 140000, 140000, 0, 100, '/imges/thieunhi/pic1.jpg'),
(22, 3, 'I Love My Daddy', 'Macmillan Publishers', 'Campbell Books', 'Campbell Books', 'Bìa Mềm', 142000, 134900, 5, 100, '/imges/thieunhi/pic2.jpg'),
(23, 3, 'Peppa Pig: 1000 First Words Sticker Book', 'Penguin Books', 'Penguin Books', 'Peppa Pig', 'Bìa Mềm', 209000, 198550, 5, 100, '/imges/thieunhi/pic3.jpg'),
(24, 3, 'Peppa Pig: 100 First Words Sticker Books', 'Penguin Books', 'Penguin Books', 'Peppa Pig', 'Bìa Mềm', 230000, 230000, 0, 100, '/imges/thieunhi/pic4.jpg'),
(25, 3, 'Window Stickies Dinosaurs', 'Make Believe Ideas', 'Make Believe Ideas', 'Patrick Bishop, Dawn Machell', 'Bìa Mềm', 115000, 109250, 5, 100, '/imges/thieunhi/pic5.jpg'),
(26, 3, 'Humpty Dumpty', 'North Parade Publishing', 'North Parade Publishing', 'North Parade Publishing', 'Bìa Mềm', 192000, 182400, 5, 100, '/imges/thieunhi/pic6.jpg'),
(27, 3, 'Busy Trucks (Campbell Busy Books 63)', 'Macmillan Publishers', 'Campbell Books', 'Campbell Books', 'Bìa Mềm', 142000, 212000, 5, 100, '/imges/thieunhi/pic7.jpg'),
(28, 3, 'Peppa Pig: Fairy Tale Little Library by Holowaty, Lauren (2010)', 'Penguin Books', 'Ladybird', 'Ladybird', 'Bìa Mềm', 131000, 124450, 5, 100, '/imges/thieunhi/pic8.jpg'),
(29, 3, 'Llama Llama Learns To Swim', 'Penguin Books', 'Penguin Young ', 'Anna Dewdney', 'Bìa Mềm', 87000, 82650, 5, 100, '/imges/thieunhi/pic9.jpg'),
(30, 3, 'Peppa Pig: Fairy Tale Little Library by Holowaty, Lauren (2012)', 'Penguin Books ', 'Ladybird', 'Ladybird', 'Bìa Mềm', 131000, 131000, 0, 100, '/imges/thieunhi/pic10.jpg'),
(31, 4, 'Thất Tịch Không Mưa (Tái Bản 2017)', 'Đinh Tị', 'Phụ Nữ', 'Lâu Vũ Tình', 'Bìa mềm', 86000, 68800, 20, 100, '/imges/ngontinh/pic1.jpg'),
(32, 4, 'Bến Xe (Tái Bản 2020)', 'Đinh Tị', 'Văn Học', 'Thương Thái Vi', 'Bìa mềm', 76000, 76000, 0, 100, '/imges/ngontinh/pic2.jpg'),
(33, 4, 'Tôi Thích Cậu Từ Rất Lâu Rồi - Bản Đặc Biệt - Tặng Kèm Bookmark + Postcard Và Card Nhựa + Móc Khóa', 'AZ Việt Nam', 'Dân Trí', 'Tương Tử Bối', 'Bìa mềm', 198000, 178200, 10, 100, '/imges/ngontinh/pic3.jpg'),
(34, 4, 'Từng Có Người Yêu Tôi Như Sinh Mệnh (Tái Bản 2020)', 'Đinh Tị', 'NXB Văn Học', 'Thư Nghi', 'Bìa mềm', 129000, 96750, 25, 100, '/imges/ngontinh/pic4.jpg'),
(35, 4, 'Hậu Cung Như Ý Truyện - Tập 1 - Tặng Kèm Bookmark Bồi Cứng + Card Nhân Vật', 'AZ Việt Nam', 'Văn Học', 'Lưu Liễm Tử', 'Bìa mềm', 229000, 183200, 20, 100, '/imges/ngontinh/pic5.jpg'),
(36, 4, 'Xuyên Thành Phản Diện Biết Sống Sao Đây? - Tập 8 - Bản Đặc Biệt - Tặng Kèm Bookmark Bo Viền + Card 3D', 'AZ Việt Nam', 'Thế Giới', 'Y Dĩ Dực, Vương Nhất', 'Bìa mềm', 139000, 111200, 20, 100, '/imges/ngontinh/pic6.jpg'),
(37, 4, 'Sự Dịu Dàng Khó Cưỡng (Tái Bản 2019)', 'Đinh Tị', 'NXB Văn Học', 'Diệp Lạc Vô Tâm', 'Bìa mềm', 79000, 63200, 20, 100, '/imges/ngontinh/pic7.jpg'),
(38, 4, 'Ngàn Năm Chờ Đợi (Tái Bản 2023)', 'Đinh Tị', 'Văn Học', 'Diệp Lạc Vô Tâm', 'Bìa mềm', 45000, 36000, 20, 100, '/imges/ngontinh/pic8.jpg'),
(39, 4, 'Xuyên Thành Phản Diện Biết Sống Sao Đây? - Tập 1', 'AZ Việt Nam', 'NXB Thế Giới', 'Y Dĩ Dực, Vương Nhất', 'Bìa mềm', 119000, 95200, 20, 100, '/imges/ngontinh/pic9.jpg'),
(40, 4, 'Xuyên Thành Phản Diện Biết Sống Sao Đây? - Tập 7 - Tặng Kèm Bookmark Bo Viền', 'AZ Việt Nam', 'NXB Thế Giới', 'Y Dĩ Dực, Vương Nhất', 'Bìa mềm', 129000, 103200, 20, 100, '/imges/ngontinh/pic10.jpg'),
(41, 5, 'Thay Đổi Cuộc Sống Với Nhân Số Học\r\n', 'FIRST NEWS', 'NXB Tổng Hợp TPHCM', 'Lê Đỗ Quỳnh Hương', 'Bìa mềm', 248000, 198400, 20, 100, '/imges/kynang/pic1.jpg'),
(42, 5, 'Hiểu Về Trái Tim (Tái Bản 2023)\r\n', 'FIRST NEWS', 'Tổng Hợp TPHCM', 'Minh Niệm', 'Bìa mềm', 158000, 118500, 0, 100, '/imges/kynang/pic2.jpg'),
(43, 5, 'Hành Tinh Của Một Kẻ Nghĩ Nhiều\r\n', 'AZ Việt Nam', 'Thế Giới', 'Amateur Psychology, Nguyễn Đoàn Minh Thư', 'Bìa mềm', 86000, 68800, 20, 100, '/imges/kynang/pic3.jpg'),
(44, 5, 'Khéo Ăn Nói Sẽ Có Được Thiên Hạ (Tái Bản 2022)\r\n', 'Minh Long', 'Văn Học', 'Trác Nhã', 'Bìa mềm', 130000, 78000, 40, 100, '/imges/kynang/pic4.jpg'),
(45, 5, 'Cùng Bạn Trưởng Thành\r\n', 'AZ Việt Nam', 'Dân Trí', 'Ying Shu', 'Bìa mềm', 89000, 71200, 20, 100, '/imges/kynang/pic5.jpg'),
(46, 5, 'Vị Thần Của Những Quyết Định - The Book Of Answers - Bản Bìa Đen\r\n', 'AZ Việt Nam', 'NXB Thế Giới', 'UNIVERSE', 'Bìa mềm', 79000, 59250, 25, 100, '/imges/kynang/pic6.jpg'),
(47, 5, 'Không Phải Sói Nhưng Cũng Đừng Là Cừu\r\n', 'Skybooks', 'NXB Thế Giới', 'Lê Bảo Ngọc', 'Bìa mềm', 128000, 96000, 25, 100, '/imges/kynang/pic7.jpg'),
(48, 5, 'Điềm Tĩnh Và Nóng Giận\r\n', 'AZ Việt Nam', 'NXB Thanh Niên', 'Tạ Quốc Kế', 'Bìa mềm', 96000, 72000, 25, 100, '/imges/kynang/pic8.jpg'),
(49, 5, 'Đời Ngắn Đừng Ngủ Dài (Tái Bản 2018)\r\n', 'NXB Trẻ', 'NXB Trẻ', 'Robin Sharma', 'Bìa mềm', 75000, 56250, 25, 100, '/imges/kynang/pic9.jpg'),
(50, 5, 'Đọc Vị Bất Kỳ Ai (Tái Bản 2022)\r\n', 'Thái Hà', 'Lao Động', 'TS David J Lieberman', 'Bìa mềm', 89000, 71200, 20, 100, '/imges/kynang/pic10.jpg'),
(51, 6, 'Tâm Lý Học Tội Phạm - Phác Họa Chân Dung Kẻ Phạm Tội', 'AZ Việt Nam', 'NXB Thanh Niên', 'Diệp Hồng Vũ', 'Bìa mềm', 145000, 116000, 20, 100, '/imges/tamly/pic1.jpg'),
(52, 6, 'Thuật Thao Túng - Góc Tối Ẩn Sau Mỗi Câu Nói', 'AZ Việt Nam', 'NXB Thế Giới', 'Wladislaw Jachtchenko', 'Bìa mềm', 139000, 104250, 25, 100, '/imges/tamly/pic2.jpg'),
(53, 6, 'Thiên Tài Bên Trái, Kẻ Điên Bên Phải (Tái Bản 2021)', 'AZ Việt Nam', 'NXB Thế Giới', 'Cao Minh ', 'Bìa mềm', 179000, 134250, 25, 100, '/imges/tamly/pic3.jpg'),
(54, 6, 'Định Luật Murphy - Mọi Bí Mật Tâm Lý Thao Túng Cuộc Đời Bạn', 'AZ Việt Nam', 'NXB Thế Giới', 'Từ Thính Phong', 'Bìa mềm', 119000, 95200, 20, 100, '/imges/tamly/pic4.jpg'),
(55, 6, '8 Vụ Án Hoàn Hảo - Vạch Trần Tâm Lý Kẻ Phạm Tội', 'AZ Việt Nam', 'Thanh Niên', 'Peter Swanson', 'Bìa mềm', 145000, 108750, 25, 100, '/imges/tamly/pic5.jpg'),
(56, 6, 'Hồ Sơ Tâm Lý Học Tâm Thần Hay Kẻ Điên', 'AZ Việt Nam', 'Thanh Niên', 'Mục Qua', 'Bìa mềm', 189000, 141750, 25, 100, '/imges/tamly/pic6.jpg'),
(57, 6, 'Kiếp Nào Ta Cũng Tìm Thấy Nhau (Tái Bản 2022)', 'Thái Hà', 'NXB Lao Động', 'Brian L Weiss', 'Bìa mềm', 99000, 74250, 25, 100, '/imges/tamly/pic7.jpg'),
(58, 6, 'Power Vs Force - Trường Năng Lượng Và Những Nhân Tố Quyết Định Hành Vi Của Con Người (Tái Bản)', 'Thái Hà', 'NXB Thế Giới', 'David R Hawkins', 'Bìa mềm', 179000, 134250, 25, 100, '/imges/tamly/pic8.jpg'),
(59, 6, 'Tâm Lý Học Về Tiền', '1980 Books', 'NXB Dân Trí', 'Morgan Housel', 'Bìa mềm', 189000, 141750, 25, 100, '/imges/tamly/pic9.jpg'),
(60, 6, 'Tâm Lý Học Giải Mã Tình Yêu', 'AZ Việt Nam', 'NXB Thế Giới', 'Logan Ury', 'Bìa mềm', 119000, 95200, 20, 100, '/imges/tamly/pic10.jpg'),
(61, 7, 'Vợ Trong Game Của Tôi Là Idol Nổi Tiếng Ngoài Đời - Tập 2 - Tặng Kèm Bookmark Bế In 1 Mặt', 'AZ Việt Nam', 'Dân Trí', 'Abone, Kanda Done', 'Bìa mềm', 126000, 107100, 15, 100, '/imges/lightnovel/pic1.jpg'),
(62, 7, 'Diệt Slime Suốt 300 Năm, Tôi Levelmax Lúc Nào Chẳng Hay - Tập 12 - Bản Đặc Biệt - Tặng Kèm Bookmark + Bìa Hai Mặt + Móc Khóa', 'AZ Việt Nam', 'NSB Thế giới', 'Morita Kisetsu', 'Bìa mềm', 149000, 126000, 15, 100, '/imges/lightnovel/pic2.jpg'),
(63, 7, 'Sword Art Online 24: Unital Ring III - Bản Đặc Biệt - Tặng Kèm Mini-shikishi Keyhollder + Bookmark PVC', 'IPM', 'Hà Nội', 'Reki Kawahara', 'Bìa mềm', 170000, 136000, 20, 100, '/imges/lightnovel/pic3.jpg'),
(64, 7, 'Tanya Chiến Ký 4: Dabit Deus His Quoque Finem', 'Thái Hà', 'Hà Nội', 'Carlo Zen', 'Bìa mềm', 159000, 127000, 20, 100, '/imges/lightnovel/pic4.jpg'),
(65, 7, 'Vợ Trong Game Của Tôi Là Idol Nổi Tiếng Ngoài Đời - Tập 1 - Tặng Kèm Bookmark Bế In 1 Mặt', 'AZ Việt Nam', 'Dân Trí', 'Abone, Kanda Done', 'Bìa mềm', 126000, 100800, 20, 100, '/imges/lightnovel/pic5.jpg'),
(66, 7, 'Thiên Sứ Nhà Bên - Tập 3', 'Nhà Xuất Bản Kim Đồng', 'Nhà Xuất Bản Kim Đồng', 'Saekisan, Hanekoto', 'Bìa mềm', 95000, 76000, 20, 100, '/imges/lightnovel/pic6.jpg'),
(67, 7, '86-EIGHTY SIX- Ep.7 - Bản Sưu Tầm: Tranh Acrylic Có Tem Độc Quyền Của Kadokawa + Postcard Giấy Hai Mặt, Ép Nhũ + Bìa Áo Hai Mặt', 'IPM', 'Hồng Đức', 'ASATO ASATO, SHIRABII', 'Bìa mềm', 290000, 232000, 20, 100, '/imges/lightnovel/pic7.jpg'),
(68, 7, 'Ai Dám Bảo ROM-COM Không Có Ngoài Đời Thực? - Bản Đặc Biệt - Tặng Kèm Postcard + Flyer', 'Thái Hà', 'Hà Nội', 'So Hajikano', 'Bìa mềm', 129000, 96750, 25, 100, '/imges/lightnovel/pic8.jpg'),
(69, 7, 'Tiểu Thuyết Thanh Gươm Diệt Quỷ: Người Dẫn Lối Của Gió - Tặng Kèm Card PVC', 'Nhà Xuất Bản Kim Đồng', 'Nhà Xuất Bản Kim Đồng', 'Koyoharu Gotouge, Aya Yajima', 'Bìa mềm', 50000, 45000, 10, 100, '/imges/lightnovel/pic9.jpg'),
(70, 7, 'Lời Nói Đùa 4: Nghịch Lý Quân Xúc Xắc - Utsurigi Gaisuke Kẻ Hủy Diệt Lời Nói Đùa - Tặng Kèm Bookmark + Postcard Cho Bản In Đầu', 'Nhã Nam', 'Hội Nhà Văn', 'Nisio Isin, Take', 'Bìa mềm', 145000, 116000, 20, 100, '/imges/lightnovel/pic10.jpg'),
(71, 8, 'Nhà Giả Kim (Tái Bản 2020)', 'Nhã Nam', 'Hội Nhà Văn', 'Paulo Coelho', 'Bìa mềm', 79000, 59250, 25, 100, '/imges/tieuthuyet/pic1.jpg'),
(72, 8, 'Cây Cam Ngọt Của Tôi', 'Nhã Nam', 'Hội Nhà Văn', 'José Mauro de Vasconcelos', 'Bìa mềm', 108000, 81000, 25, 100, '/imges/tieuthuyet/pic2.jpg'),
(73, 8, 'Bước Chậm Lại Giữa Thế Gian Vội Vã (Tái Bản 2018)', 'Nhã Nam', 'Hội Nhà Văn', 'Hae Min', 'Bìa mềm', 85000, 68000, 20, 100, '/imges/tieuthuyet/pic3.jpg'),
(74, 8, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ (Bìa Mềm) (Tái Bản 2018)', 'NXB Trẻ', 'NXB Trẻ', 'Nguyễn Nhật Ánh', 'Bìa mềm', 80000, 64000, 20, 100, '/imges/tieuthuyet/pic4.jpg'),
(75, 8, 'Spy X Family Tiểu Thuyết: Bức Chân Dung Gia Đình - Tặng Kèm Standee PVC', 'Nhà Xuất Bản Kim Đồng', 'Nhà Xuất Bản Kim Đồng', 'Tatsuya Endo, Aya Yajima', 'Bìa mềm', 45000, 40000, 10, 100, '/imges/tieuthuyet/pic5.jpg'),
(76, 8, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh (Bản In Mới - 2018)', 'NXB Trẻ', 'NXB Trẻ', 'Nguyễn Nhật Ánh', 'Bìa mềm', 125000, 100000, 25, 100, '/imges/tieuthuyet/pic6.jpg'),
(77, 8, 'Ghi Chép Pháp Y - Những Cái Chết Bí Ẩn', 'AZ Việt Nam', 'Thanh Niên', 'Lưu Hiểu Huy', 'Bìa mềm', 150000, 120000, 20, 100, '/imges/tieuthuyet/pic7.jpg'),
(78, 8, 'Con Chim Xanh Biếc Bay Về - Tặng Kèm 6 Postcard', 'NXB Trẻ', 'NXB Trẻ', 'Nguyễn Nhật Ánh', 'Bìa mềm', 150000, 120000, 20, 100, '/imges/tieuthuyet/pic8.jpg'),
(79, 8, 'Chiến Binh Cầu Vồng (Tái Bản 2020)', 'Nhã Nam', 'Hội Nhà Văn', 'Andrea Hirata', 'Bìa mềm', 109000, 87000, 20, 100, '/imges/tieuthuyet/pic9.jpg'),
(80, 8, 'Rừng Nauy (Tái Bản 2021)', 'Nhã Nam', 'Hội Nhà Văn', 'Haruki Murakami', 'Bìa mềm', 150000, 120000, 20, 100, '/imges/tieuthuyet/pic10.jpg'),
(81, 1, 'Disney Kids Readers Level 5: WALL-EDisney Kids Readers Level 6: Zootopia\n', 'Pearson Education', 'Pearson', 'Marie Crook,Vessela Gasper', 'Bìa Mềm', 135000, 128250, 5, 100, '/imges/ngoaingu/pic11.jpg'),
(82, 1, 'Disney Kids Readers Level 6: Zootopia', 'Pearson Education', 'Pearson', 'Marie Crook, Vessela Gasper', 'Bìa Mềm', 135000, 128250, 5, 100, '/imges/ngoaingu/pic12.jpg'),
(83, 1, 'Disney Kids Readers Level 6: Up', 'Pearson Education', 'Pearson', 'Marie Crook, Vessela Gasper', 'Bìa Mềm', 135000, 128250, 5, 100, '/imges/ngoaingu/pic13.jpg'),
(84, 1, 'Disney Kids Readers Level 3: Coco', 'Pearson Education', 'Pearson ', 'Mo Sanders, Marie Crook, Nicola Schofield, Kathryn Harper, Jacquie Bloese, Rachel Wilson', 'Bìa Mềm', 135000, 128250, 5, 100, '/imges/ngoaingu/pic14.jpg'),
(85, 1, 'Disney Kids Readers Level 3: Frozen 2', 'Pearson Education', 'Pearson', 'Mo Sanders, Marie Crook', 'Bìa Mềm', 135000, 128250, 5, 100, '/imges/ngoaingu/pic15.jpg'),
(86, 1, 'Disney Kids Readers Level 4: Moana', 'Pearson Education', 'Pearson', 'Mo Sanders, Louise Fonceca, Kathryn Harper, Mary Tomalin, Jane Rollason, Rachel Wilson', 'Bìa Mềm', 135000, 128250, 5, 100, '/imges/ngoaingu/pic16.jpg'),
(87, 1, 'Three Billy Goats Gruff 1st', 'Pearson Education', 'Parragon', 'Geraldine Taylor,Judi Abbot', 'Bìa Mềm', 62000, 58900, 5, 100, '/imges/ngoaingu/pic17.jpg'),
(88, 1, 'Penguin Readers Level 5: Far From The Madding Crowd\r\n', 'Penguin Books', 'Penguin Books', 'Thomas Hardy', 'Bìa Mềm', 58900, 58900, 5, 100, '/imges/ngoaingu/pic18.jpg'),
(89, 1, 'Disney Kids Readers Level 3: Tangled', 'Pearson Education', 'Pearson', 'Mo Sanders, Marie Crook', 'Bìa Mềm', 115000, 109250, 5, 100, '/imges/ngoaingu/pic19.jpg'),
(90, 1, 'Disney Kids Readers Level 4: Brave', 'Pearson Education', 'Pearson', 'Mo Sanders, Louise Fonceca', 'Bìa Mềm', 135000, 128250, 5, 100, '/imges/ngoaingu/pic20.jpg'),
(91, 2, 'Người Bán Hàng Vĩ Đại Nhất Thế Giới', 'FIRST NEWS', 'NXB Tổng Hợp TPHCM', 'Og Mandino', 'Bìa Mềm', 148000, 118400, 20, 100, '/imges/kinhte/pic11.jpg'),
(92, 2, 'Trải Nghiệm Khách Hàng Xuất Sắc', 'Saigon Books', 'NXB Thế Giới', 'Nguyễn Dương', 'Bìa Mềm', 250000, 187500, 25, 100, '/imges/kinhte/pic12.jpg'),
(93, 2, 'Bán Hàng Cho Người Giàu', 'NXB Thế Giới', 'NXB Thế Giới', 'Dan S Kennedy', 'Bìa Mềm', 298000, 223500, 25, 100, '/imges/kinhte/pic13.jpg'),
(94, 2, 'Tiktok Marketing', '1980 Books', 'NXB Thanh Niên', 'Markus Rach', 'Bìa Mềm', 139000, 111200, 20, 100, '/imges/kinhte/pic14.jpg'),
(95, 2, '22 Quy Luật Bất Biến Trong Marketing - The 22 Immutable Laws Of Marketing (Tái Bản 2021)', 'FIRST NEWS', 'NXB Tổng Hợp TPHCM', 'Al Ries, Jack Trout', 'Bìa Mềm', 78000, 66300, 15, 100, '/imges/kinhte/pic15.jpg'),
(96, 2, 'Traffic Secrets - Bí Mật Traffic', 'NXB Thế Giới', 'NXB Thế Giới', 'Russell Brunson', 'Bìa Mềm', 268000, 214400, 20, 100, '/imges/kinhte/pic16.jpg'),
(97, 2, 'Nghệ Thuật Bán Hàng Của Người Do Thái (Tái Bản 2020)', 'FIRST NEWS', 'NXB Tổng Hợp TPHCM', 'Yaniv Zaid', 'Bìa Mềm', 88000, 74800, 15, 100, '/imges/kinhte/pic17.jpg'),
(98, 2, 'Content Đúng Là King (Tái Bản 2021)', 'Thái Hà', 'NXB Công Thương', 'Dan Norris', 'Bìa Mềm', 89000, 75650, 15, 100, '/imges/kinhte/pic18.jpg'),
(99, 2, 'Khiêu Vũ Với Ngòi Bút (Tái Bản 2019)', 'Thái Hà', 'NXB Công Thương', 'Joseph Sugarman', 'Bìa Mềm', 145000, 116000, 20, 100, '/imges/kinhte/pic19.jpg'),
(100, 2, '90 - 20 - 30 - 90 Bài Học Vỡ Lòng Về Ý Tưởng Và Câu Chữ (Tái Bản 2021) (Bản Đen Trắng)', 'Rio Book', 'NXB Lao Động', 'Huỳnh Vĩnh Sơn', 'Bìa Mềm', 195000, 165750, 15, 100, '/imges/kinhte/pic20.jpg'),
(101, 3, 'Hoàng Tử Bé (Tái Bản)', 'Nhã Nam', 'Hội Nhà Văn', 'Antoine De Saint-Exupéry', 'Bìa Mềm', 75000, 56250, 25, 100, '/imges/thieunhi/pic11.jpg'),
(102, 3, 'Trong Cái Không Có Gì Không?', 'NXB Kim Đồng', 'NXB Kim Đồng', 'Thích Nhất Hạnh', 'Bìa Mềm', 160000, 120000, 25, 100, '/imges/thieunhi/pic12.jpg'),
(103, 3, 'I Will Be Better - Những Câu Chuyện Truyền Cảm Hứng: Con Sẽ Tự Giác', 'NXB Kim Đồng', 'NXB Kim Đồng', 'Yunan', 'Bìa Mềm', 50000, 42000, 15, 100, '/imges/thieunhi/pic13.jpg'),
(104, 3, 'Tôi Vẽ - Phương Pháp Tự Học Vẽ Truyện Tranh', 'Đông A', 'Đông A', 'Nhiều tác giả', 'Bìa Mềm', 100000, 75000, 25, 100, '/imges/thieunhi/pic14.jpg'),
(105, 3, 'Những Lời Yêu Thương Của Con Trẻ Dành Tặng Các Mẹ - Vì Sao Tớ Yêu Mẹ (Tái Bản 2019)', 'NXB Kim Đồng', 'NXB Kim Đồng', 'Daniel Howarth', 'Bìa Mềm', 25000, 21500, 15, 100, '/imges/thieunhi/pic15.jpg'),
(106, 3, 'Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2019)', 'Nhã Nam', 'Hội Nhà Văn', 'Luis Sepúlveda', 'Bìa Mềm', 49000, 39200, 20, 100, '/imges/thieunhi/pic16.jpg'),
(107, 3, '365 Truyện Kể Trước Giờ Đi Ngủ - Những Câu Chuyện Phát Triển Chỉ Số Tình Cảm EQ', 'Đinh Tị', 'NXB Thế Giới', 'Ngọc Linh', 'Bìa Mềm', 78000, 56940, 27, 100, '/imges/thieunhi/pic17.jpg'),
(108, 3, 'Những Lời Yêu Thương Của Con Trẻ Dành Tặng Các Bố - Vì Sao Tớ Yêu Bố (Tái Bản 2019)', 'NXB Kim Đồng', 'NXB Kim Đồng', 'Daniel Howarth', 'Bìa Mềm', 25000, 21250, 15, 100, '/imges/thieunhi/pic18.jpg'),
(109, 3, 'Bác Hồ Sống Mãi: Những Mẩu Chuyện Hay Về Bác Tập 1', 'NXB Kim Đồng', 'NXB Kim Đồng', 'Công ty Phan Thị', 'Bìa Mềm', 58000, 49300, 15, 100, '/imges/thieunhi/pic19.jpg'),
(110, 3, '10 Vạn Câu Hỏi Vì Sao ', 'Đinh Tị', 'NXB Thanh Niên', 'Tôn Nguyên Vĩ', 'Bìa Mềm', 55000, 40000, 27, 100, '/imges/thieunhi/pic20.jpg'),
(111, 4, 'Order Một Tình Yêu Cao Cấp - Tập 1', 'Đinh Tị', 'NXB Văn Học', 'Ngải Tiểu Đồ', 'Bìa Mềm', 135000, 114750, 15, 100, '/imges/ngontinh/pic11.jpg'),
(112, 4, 'Sợi Khói Mỏng Lạc Giữa Trần Ai', 'Đinh Tị', 'NXB Văn Học', 'Diệp Lạc Vô Tâm', 'Bìa Mềm', 119000, 59500, 50, 100, '/imges/ngontinh/pic12.jpg'),
(113, 4, 'Tình Đầu Chọn Tôi, Tôi Rất Ngọt - Bản Đặc Biệt - Tặng Kèm Bookmark + Postcard (Random Chữ Ký Tay Của Tác Giả) + Standee + Poster', 'AZ Việt Nam', 'Hà Nội', 'Thụy Mang', 'Bìa Mềm', 229000, 229000, 0, 100, '/imges/ngontinh/pic13.jpg'),
(114, 4, 'Mộng Xưa Thành Cũ', 'Đinh Tị', 'NXB Thanh Niên', 'Mặc Mặc An Nhiên', 'Bìa Mềm', 126000, 107100, 15, 100, '/imges/ngontinh/pic14.jpg'),
(115, 4, 'Tháng Ngày Ước Hẹn (Tái Bản 2018)', 'Đinh Tị', 'NXB Văn Học', 'Tân Di Ổ', 'Bìa Mềm', 145000, 123250, 15, 100, '/imges/ngontinh/pic15.jpg'),
(116, 4, 'Order Một Tình Yêu Cao Cấp - Tập 2', 'Đinh Tị', 'NXB Văn Học', 'Ngải Tiểu Đồ', 'Bìa Mềm', 135000, 114750, 15, 100, '/imges/ngontinh/pic16.jpg'),
(117, 4, 'Kiếm Hồn Như Sơ - Tập 2', 'NXB Văn Học', 'NXB Văn Học', 'Hoài Quan', 'Bìa Mềm', 229000, 229000, 0, 100, '/imges/ngontinh/pic17.jpg'),
(118, 4, 'Kiếm Hồn Như Sơ - Tập 1', 'NXB Văn Học', 'NXB Văn Học', 'Hoài Quan', 'Bìa Mềm', 229000, 229000, 0, 100, '/imges/ngontinh/pic18.jpg'),
(119, 4, 'Hồng Hạnh Thổn Thức', 'Bách Việt', 'NXB Văn Học', 'Tào Đình', 'Bìa Mềm', 118000, 64900, 45, 100, '/imges/ngontinh/pic19.jpg'),
(120, 4, 'Tửu Chàng Tiên - Tập 1 - Tặng Kèm Bookmark Bo Góc (5x15 cm)', 'Hội Nhà Văn', 'Hội Nhà Văn', 'Tiêu Đường Đông Qua', 'Bìa Mềm', 149000, 126650, 45, 100, '/imges/ngontinh/pic20.jpg'),
(121, 5, 'Càng Kỷ Luật, Càng Tự Do', 'AZ Việt Nam', 'Thế Giới', 'Ca Tây', 'Bìa Mềm', 109000, 81750, 25, 100, '/imges/kynang/pic11.jpg'),
(122, 5, 'Người Giàu Có Nhất Thành Babylon', 'FIRST NEWS', 'NXB Tổng Hợp TPHCM', 'George S Clason', 'Bìa Mềm', 98000, 73500, 25, 100, '/imges/kynang/pic12.jpg'),
(123, 5, 'Sức Mạnh Tiềm Thức (Tái Bản 2021)', 'FIRST NEWS', 'NXB Tổng Hợp TPHCM', 'Joseph Murphyc', 'Bìa Mềm', 128000, 96000, 25, 100, '/imges/kynang/pic13.jpg'),
(124, 5, 'Gieo Trồng Hạnh Phúc (Tái Bản 2021)', 'Thái Hà', 'NXB Lao Động', 'Thích Nhất Hạnh', 'Bìa Mềm', 89000, 66750, 25, 100, '/imges/kynang/pic14.jpg'),
(125, 5, 'Đừng Lựa Chọn An Nhàn Khi Còn Trẻ (Tái Bản 2021)', 'AZ Việt Nam', 'Thế Giới', 'Cảnh Thiên', 'Bìa Mềm', 99000, 74250, 25, 100, '/imges/kynang/pic15.jpg'),
(126, 5, 'Đắc Nhân Tâm (Khổ Nhỏ) (Tái bản 2022)', 'FIRST NEWS', 'NXB Đại Học Quốc Gia TP.HCM', 'Dale Carnegie', 'Bìa Mềm', 68000, 40800, 40, 100, '/imges/kynang/pic16.jpg'),
(127, 5, 'Càng Bình Tĩnh Càng Hạnh Phúc', 'AZ Việt Nam', 'Thế Giới', 'Vãn Tình', 'Bìa Mềm', 139000, 104250, 25, 100, '/imges/kynang/pic17.jpg'),
(128, 5, 'Tuổi Trẻ Đáng Giá Bao Nhiêu (Tái Bản 2021)', 'Nhã Nam', 'NXB Hội Nhà Văn', 'Rosie Nguyễn', 'Bìa Mềm', 90000, 67500, 25, 100, '/imges/kynang/pic18.jpg'),
(129, 5, 'Rèn Luyện Tư Duy Phản Biện', '1980 Books', 'NXB Phụ Nữ Việt Nam', 'Albert Rutherford', 'Bìa Mềm', 99000, 79200, 20, 100, '/imges/kynang/pic19.jpg'),
(130, 5, 'Cân Bằng Cảm Xúc, Cả Lúc Bão Giông (Tái Bản 2021)', '1980 Books', 'Thế Giới', 'Richard Nicholls', 'Bìa Mềm', 105000, 78750, 25, 100, '/imges/kynang/pic20.jpg'),
(131, 6, 'Tâm Lý Học Về Sự Trì Hoãn', 'AZ Việt Nam', 'Dân Trí', 'Hayden Finch PhD', 'Bìa Mềm', 116000, 98600, 15, 100, '/imges/tamly/pic11.jpg'),
(132, 6, 'Sang Chấn Tâm Lý - Hiểu Để Chữa Lành', 'Saigon Books', 'NXB Thế Giới', 'Bessel Van Der Kolk, M.D', 'Bìa Mềm', 350000, 297000, 15, 100, '/imges/tamly/pic12.jpg'),
(133, 6, 'Hành Trình Tarot - Hiểu Về Quá Khứ, Tin Ở Hiện Tại, Nắm Lấy Tương Lai (Tái Bản 2022)', 'AZ Việt Nam', 'NXB Thế Giới', 'TADA Project', 'Bìa Mềm', 149000, 126000, 15, 100, '/imges/tamly/pic13.jpg'),
(134, 6, 'Chứng Sợ Xã Hội - Bình Thường Hay Bất Thường', 'AZ Việt Nam', 'NXB Thế Giới', 'Lê Thụy Phương', 'Bìa Mềm', 139500, 118500, 15, 100, '/imges/tamly/pic14.jpg'),
(135, 6, 'Sói Đội Lốt Cừu - Kẻ Hiếu Chiến Ngầm Và Các Thủ Thuật Thao Túng Tâm Lí (Tái Bản)', 'Công ty TNHH Ecoblader', 'Kinh tế TP.Hồ Chí Minh', 'Bác sĩ George K Simon', 'Bìa Mềm', 110000, 93500, 15, 100, '/imges/tamly/pic15.jpg'),
(136, 6, 'Tự Chữa Lành Thông Qua Hiểu Biết Về Khoa Học Tâm Thức', 'Thái Hà', 'NXB Thế Giới', 'Dương Thị Quỳnh Châu', 'Bìa Mềm', 119000, 119000, 0, 100, '/imges/tamly/pic16.jpg'),
(137, 6, 'Tâm Lý Học Đàn Ông - Hiểu Tình Rồi Hãy Yêu', 'AZ Việt Nam', 'NXB Thế Giới', 'Dr Goodwill', 'Bìa Mềm', 79000, 67150, 15, 100, '/imges/tamly/pic17.jpg'),
(138, 6, 'Luật Hấp Dẫn - Quy Luật Về Sức Mạnh Tâm Trí Và Phát Huy Năng Lượng Tích Cực Để Làm Chủ Định Mệnh', '1980 Books', '1980 Books', 'Prentice Mulford', 'Bìa Mềm', 139000, 118150, 15, 100, '/imges/tamly/pic18.jpg'),
(139, 6, 'Đại Dương Đen - Những Câu Chuyện Từ Thế Giới Của Trầm Cảm', 'Nhã Nam', 'NXB Hội Nhà Văn', 'Đặng Hoàng Giang', 'Bìa Mềm', 240000, 204000, 0, 100, '/imges/tamly/pic19.jpg'),
(140, 6, 'Tâm Lý Học Mối Quan Hệ', 'AZ Việt Nam', 'Thanh Niên', 'Choi Kwanghyun', 'Bìa Mềm', 98000, 83300, 15, 100, '/imges/tamly/pic20.jpg'),
(141, 7, 'Đứa Con Của Thời Tiết', 'IPM', 'NXB Hà Nội', 'SHINKAI MAKOTO', 'Bìa Mềm', 85000, 68000, 20, 100, '/imges/lightnovel/pic11.jpg'),
(142, 7, 'Khu Vườn Ngôn Từ (Tái Bản 2022)', 'IPM', 'Hồng Đức', 'SHINKAI MAKOTO', 'Bìa Mềm', 120000, 96000, 20, 100, '/imges/lightnovel/pic12.jpg'),
(143, 7, '5 Centimet Trên Giây', 'IPM', 'Hồng Đức', 'SHINKAI MAKOTO', 'Bìa Mềm', 60000, 48000, 20, 100, '/imges/lightnovel/pic13.jpg'),
(144, 7, 'Boxset Your Name - Bộ 3 Tập (Tái Bản)', 'IPM', 'Hồng Đức', 'SHINKAI MAKOTO', 'Bìa Mềm', 150000, 132000, 12, 100, '/imges/lightnovel/pic14.jpg'),
(145, 7, 'Công Cuộc Tái Thiết Vương Quốc Của Anh Hùng Chủ Nghĩa Hiện Thực - Tập 2', 'Skybooks', 'NXB Phụ Nữ Việt Nam', 'Dojyomaru', 'Bìa Mềm', 129000, 109000, 15, 100, '/imges/lightnovel/pic15.jpg'),
(146, 7, 'Công Cuộc Tái Thiết Vương Quốc Của Anh Hùng Chủ Nghĩa Hiện Thực - Tập 3', 'Skybooks', 'NXB Phụ Nữ Việt Nam', 'Dojyomaru', 'Bìa Mềm', 129000, 109000, 15, 100, '/imges/lightnovel/pic16.jpg'),
(147, 7, 'Chào Mừng Đến Lớp Học Đề Cao Thực Lực - Tập 3', 'IPM', 'Hà Nội', 'Kinugasa Syougo', 'Bìa Mềm', 120000, 102000, 15, 100, '/imges/lightnovel/pic17.jpg'),
(148, 7, 'Chào Mừng Đến Lớp Học Đề Cao Thực Lực - Tập 4', 'IPM', 'Hà Nội', 'Kinugasa Syougo', 'Bìa Mềm', 120000, 102000, 15, 100, '/imges/lightnovel/pic18.jpg'),
(149, 7, 'Lũ Ngốc, Bài Thi Và Linh Thú Triệu Hồi - Tập 3.5', 'IPM', 'NXB Văn Học', 'Kenji Inoue, Đức Minh', 'Bìa Mềm', 70000, 59500, 15, 100, '/imges/lightnovel/pic19.jpg'),
(150, 7, 'Thám Tử Ở Tiệm Cafe Eden - Bản Đặc Biệt - Tặng Kèm 1 Thư Tay Có Chữ Ký Tác Giả + 1 Postcard Ivory Chữ Ký Họa Sĩ', 'AZ Việt Nam', 'NXB Phụ Nữ Việt Nam', 'Souji Hanawatari, Kasai', 'Bìa Mềm', 159000, 135150, 15, 100, '/imges/lightnovel/pic20.jpg'),
(151, 8, 'Chưa Kịp Lớn Đã Trưởng Thành (Tái Bản 2023)', 'Dân Trí', 'Dân Trí', 'Tớ Là Mây', 'Bìa Mềm', 79000, 59250, 25, 100, '/imges/tieuthuyet/pic11.jpg'),
(152, 8, 'Người Đua Diều (Tái Bản 2018)', 'Nhã Nam', 'NXB Phụ nữ', 'Khaled Hosseini', 'Bìa Mềm', 109000, 81750, 25, 100, '/imges/tieuthuyet/pic12.jpg'),
(153, 8, 'Có Hai Con Mèo Ngồi Bên Cửa Sổ (Tái Bản 2018)', 'NXB Trẻ', 'NXB Trẻ', 'Nguyễn Nhật Ánh', 'Bìa Mềm', 85000, 68000, 20, 100, '/imges/tieuthuyet/pic13.jpg'),
(154, 8, 'Như Đóa Hoa Sương', 'Văn Học', 'Văn Học', 'Gào', 'Bìa Mềm', 132000, 132000, 0, 100, '/imges/tieuthuyet/pic14.jpg'),
(155, 8, 'Tôi Là Bêtô (Tái Bản 2018)', 'NXB Trẻ', 'NXB Trẻ', 'Nguyễn Nhật Ánh', 'Bìa Mềm', 85000, 63750, 25, 100, '/imges/tieuthuyet/pic15.jpg'),
(156, 8, 'Tiểu Thuyết The Movie Chú Thuật Hồi Chiến Tập 0', 'NXB Kim Đồng', 'NXB Kim Đồng', 'Gege Akutami, Ballad Kitagun', 'Bìa Mềm', 70000, 63000, 10, 100, '/imges/tieuthuyet/pic16.jpg'),
(157, 8, 'Phía Tây Không Có Gì Lạ (Tái Bản 2022)', 'Đông A', 'Văn Học', 'Erich Maria Remarque', 'Bìa Mềm', 80000, 68000, 15, 100, '/imges/tieuthuyet/pic17.jpg'),
(158, 8, 'Lời Tiên Tri Celestine', 'FIRST NEWS', 'Dân Trí', 'Dân Trí', 'Bìa Mềm', 248000, 186000, 25, 100, '/imges/tieuthuyet/pic18.jpg'),
(159, 8, 'Dấu Chân Trên Cát (Tái Bản 2020)', 'FIRST NEWS', 'NXB Tổng Hợp TPHCM', 'NXB Tổng Hợp TPHCM', 'Bìa Mềm', 148000, 111000, 25, 100, '/imges/tieuthuyet/pic19.jpg'),
(160, 8, '999 Lá Thư Gửi Cho Chính Mình - Mong Bạn Trở Thành Phiên Bản Hoàn Hảo Nhất (Tập 1) - Tái Bản 2021', 'AZ Việt Nam', 'NXB Thanh Niên', ':Miêu Công Tử', 'Bìa Mềm', 129000, 109000, 15, 100, '/imges/tieuthuyet/pic20.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `name`, `phone`, `email`, `addr`, `pass`) VALUES
(5, 'Nguyễn Thị Cẩm Tiên', '0899501649', 'camtien4757@gmail.com', 'Vĩnh Long', '1234567'),
(6, 'Nguyễn Thị Cẩm Tiên', '0899501649', 'chuonglam134@gmail.com', 'Ô Môn, Cần Thơ', '15456464'),
(8, 'Chương Hoàng Lâm', '0899', 'chuonglam134@gmail.com', 'Vĩnh Long', '12345678'),
(9, 'Võ Ngọc Anh Thư', '0765361488', 'thub20047377@gmail.com', 'Ninh Kiều, Cần Thơ', '1122334455');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chitiet_donhang` (`id_order`),
  ADD KEY `fk_chitiet_sanphsam` (`id_sanpham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id_donhang`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `lk_danhmuc` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id_donhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD CONSTRAINT `fk_chitiet_donhang` FOREIGN KEY (`id_order`) REFERENCES `don_hang` (`id_donhang`),
  ADD CONSTRAINT `fk_chitiet_sanphsam` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id_sanpham`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
