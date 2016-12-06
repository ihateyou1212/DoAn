-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2016 lúc 05:51 CH
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbviettel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `MaTaiKhoan` varchar(50) NOT NULL,
  `TenTaiKhoan` text NOT NULL,
  `MatKhau` text NOT NULL,
  `NgaySinh` datetime NOT NULL,
  `GioiTinh` bit(1) NOT NULL,
  `TrangThai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh luan`
--

CREATE TABLE `binh luan` (
  `MaBinhLuan` varchar(50) NOT NULL,
  `NoiDung` text NOT NULL,
  `TenNguoiBinhLuan` text NOT NULL,
  `Email` text NOT NULL,
  `NgayBinhLuan` datetime NOT NULL,
  `GioBinhLuan` time NOT NULL,
  `TrangThai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluanthuoc`
--

CREATE TABLE `binhluanthuoc` (
  `MaBinhLuanThuoc` varchar(50) NOT NULL,
  `MaBinhLuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethdb`
--

CREATE TABLE `chitiethdb` (
  `MaHDB` varchar(50) NOT NULL,
  `MaLoaiSP` varchar(50) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethdn`
--

CREATE TABLE `chitiethdn` (
  `MaHDN` varchar(50) NOT NULL,
  `MaLoaiSP` varchar(50) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienthoai`
--

CREATE TABLE `dienthoai` (
  `MaSP` varchar(50) NOT NULL,
  `TenSP` text CHARACTER SET utf8mb4 NOT NULL,
  `MaLoaiSP` varchar(50) NOT NULL,
  `DacDiamNoiBat` text NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `HangSX` text NOT NULL,
  `DonGia` text NOT NULL,
  `KhuyenMai` text NOT NULL,
  `AnhDaiDien` text NOT NULL,
  `AnhKhac` text NOT NULL,
  `NoiBat` bit(1) NOT NULL,
  `TrangThai` bit(1) NOT NULL,
  `ThoiGian` datetime NOT NULL,
  `ChatLieu` text NOT NULL,
  `ManHinh` text NOT NULL,
  `CPU` text NOT NULL,
  `Ram` text NOT NULL,
  `CameraChinh` text NOT NULL,
  `CameraPhu` text NOT NULL,
  `BoNhoTrong` text NOT NULL,
  `Wifi` text NOT NULL,
  `KichCo` text NOT NULL,
  `Pin` text NOT NULL,
  `LoaiManHinh` text NOT NULL,
  `MauManHinh` text NOT NULL,
  `DoPhanGiai` text NOT NULL,
  `KichThuocManHinh` text NOT NULL,
  `CongNgheCamUng` text NOT NULL,
  `ChipSet` text NOT NULL,
  `SoNhanCPU` text NOT NULL,
  `HeDieuHanh` text NOT NULL,
  `DanhBa` text NOT NULL,
  `BoNhoNgoai` text NOT NULL,
  `LoaiSim` text NOT NULL,
  `2G` text NOT NULL,
  `3G` text NOT NULL,
  `4G` text NOT NULL,
  `GPS` text NOT NULL,
  `BlueTooth` text NOT NULL,
  `KetNoiUSB` text NOT NULL,
  `Xemphim` text NOT NULL,
  `NgheNhac` text NOT NULL,
  `GhiAm` text NOT NULL,
  `ThoiGianBaoHanh` text NOT NULL,
  `DungLuongPin` text NOT NULL,
  `LoaiPin` text NOT NULL,
  `BoViXuLy` text NOT NULL,
  `OCung` text NOT NULL,
  `CardDoHoa` text NOT NULL,
  `WebCam` text NOT NULL,
  `TrongLuong` text NOT NULL,
  `KetNoi` text NOT NULL,
  `ThietKe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dienthoai`
--

INSERT INTO `dienthoai` (`MaSP`, `TenSP`, `MaLoaiSP`, `DacDiamNoiBat`, `SoLuong`, `HangSX`, `DonGia`, `KhuyenMai`, `AnhDaiDien`, `AnhKhac`, `NoiBat`, `TrangThai`, `ThoiGian`, `ChatLieu`, `ManHinh`, `CPU`, `Ram`, `CameraChinh`, `CameraPhu`, `BoNhoTrong`, `Wifi`, `KichCo`, `Pin`, `LoaiManHinh`, `MauManHinh`, `DoPhanGiai`, `KichThuocManHinh`, `CongNgheCamUng`, `ChipSet`, `SoNhanCPU`, `HeDieuHanh`, `DanhBa`, `BoNhoNgoai`, `LoaiSim`, `2G`, `3G`, `4G`, `GPS`, `BlueTooth`, `KetNoiUSB`, `Xemphim`, `NgheNhac`, `GhiAm`, `ThoiGianBaoHanh`, `DungLuongPin`, `LoaiPin`, `BoViXuLy`, `OCung`, `CardDoHoa`, `WebCam`, `TrongLuong`, `KetNoi`, `ThietKe`) VALUES
('DT01', '\r\n\r\niPhone 5S ', '01', ' iPhone 5s là m?t trong nh?ng siêu ph?m c?a Apple. Thi?t k? tinh t? cùng c?u hình m?nh m?, t?c ?? x? lý c?c nhanh, máy ?nh thông minh ??n b?t ng? ??c bi?t  tính n?ng b?o m?t b?ng d?u vân tay ?ã khi?n cho iPhone 5s này tr? nên ??t giá trong m?t ng??i dùng.', 5, 'Apple', '6290000', 'Giá bán: 6.290.000 ??ng ch? dành cho các khách hàng mua Online (Không áp d?ng chung v?i các ch??ng trình khuy?n m?i khác) ', 'null', 'null', b'1', b'1', '2016-10-23 00:00:00', '	Nhôm', '	4\'\', LED-backlit IPS LCD, 640 x 1136 pixels', '	Apple A7, Dual-core 1.3 GHz', '	1 GB', '	8.0 MP', '	1.2 MP', '	16 GB', '	802.11 a/b/g/n', '	123.8 x 58.6 x 7.6 mm', '	Li-Ion, 1560 mAh', '	IPS LCD', '	16 Tri?u màu', '	640 x 1136 pixels', '	4.0\'\'', '	C?m ?ng ?i?n dung ?a ?i?m', '	Apple A7', '1', '	IOS 9.0', '	Không gi?i h?n', '	Không gi?i h?n', '	Nano SIM', '	GSM 850 / 900 / 1800 / 1900', '	HSDPA 850 / 900 / 1700 / 1900 / 2100', '	LTE', '	Có', '	Có, v4.0 with A2DP', '	Lighting', '	MP4, WMV, H.263, H.264(MPEG4-AVC)', '	MP3, WAV, WMA, eAAC+', '	Có', '2016-10-06 00:00:00', '	1560 mAh', '	Li-Ion', '', '', '', '', '', '', ''),
('DT02', '\r\n\r\niPhone 6s ', '01', 'iPhone 6s là siêu ph?m c?a Apple ???c nâng c?p ??c bi?t t? “ng??i ti?n nhi?m” iPhone 6 và l??c b? toàn b? nh?ng ?i?m y?u mà t?t c? iPhone ??i tr??c m?c ph?i. Không ch? m?nh m? v? c?u hình, ?a d?ng v? màu s?c, iPhone 6s v?i công ngh? c?m ?ng l?c thông minh còn t?o nên m?t xu h??ng tìm ki?m bùng n? m?nh m? trên internet trong su?t th?i gian qua.', 10, 'Apple', '15.990.000', 'gi?m thêm 1.000.000 ??ng cho các khách hàng mua Online.(Giá bán Online: 14.990.000 ??ng - Không áp d?ng chung cho các ch??ng trình khuy?n m?i khác)', 'null', 'null', b'0', b'1', '2016-10-23 00:00:00', '	Nhôm', '	4.7\'\', Retina HD with 3D touch, 1334 x 750 pixels', '	Apple A9 64-bit, Dual-core 1.84 GHz (chip ??ng x? lý M9)', '	2 GB', '	12 MP (Live photos)', '	5 MP (Retina Flash)', '	16 GB', '	802.11a/b/g/n/ac with MIMO', '	138.3 x 67.1 x 7.1 mm', '	Li-Ion, 1715 mAh', '	Retina HD with 3D touch', '	16 tri?u màu', '	1334 x 750 pixels', '	4.7\'\'', '	C?m ?ng ?i?n dung ?a ?i?m (c?m ?ng l?c)', '	Apple A9 64-bit (chip ??ng x? lý M9)', '	Dual-core 1.84 GHz', '	iOS 9', '	Không gi?i h?n', '	16 GB', '	Nano SIM', '	GSM 850/900/1800/1900', '	Có', '	LTE', '	GPS and GLONASS', '	Bluetooth 4.2', '	Lighting', '	MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), Xvid, DivX', '	MP3, WAV, WMA, eAAC+, AMR', '	Có', '	12 tháng', '	1715 mAh', '	Li-Ion', '', '', '', '', '', '', ''),
('DT03', '\r\n\r\nSamsung Galaxy J5', '01', 'Samsung Galaxy J5 – Smartphone giá r? dành cho ng??i dùng mê “selfie”\r\n\r\nSamsung Galaxy J5 cùng Galaxy J7 ???c Samsung th? tr??ng phân khúc giá t?m trung. Ngoài c?u hình ?n cùng giá bán h?p lý, ?i?m n?i b?t nh?t trên Galaxy J5 là camera tr??c 5MP cùng m?t ?èn flash LED tr? sáng.', 4, '\r\n\r\nSamsung', '3.990.000', 'Tr? góp 0% v?i Home Credit. Áp d?ng giá bán: 3.990.000 ??ng. Tr? tr??c 30%, tr? góp trong 4 tháng', 'null', 'null', b'1', b'1', '2016-10-23 00:00:00', '	Nh?a', '	5.0", HD Super AMOLED, 720 x 1280 pixels', '	Snapdragon, Quad-core 1.2 GHz', '	1.5 GB', '	13.0 MP', '	5.0 MP', '	8 GB', '	802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot', '	142.1 x 71.8 x 7.9 mm', '	Li-Ion, 2600 mAh', '	Super AMOLED', '	16 tri?u màu', '	720 x 1280 pixels', '	5.0"', 'C?m ?ng ?i?n dung ?a ?i?m', '	Snapdragon', '	Quad-core 1.2 GHz', '	Android 5.1 (Lollipop)', '	Không gi?i h?n', '	8 GB', '	Micro SIM', '	GSM 850/900/1800/1900', '	HSDPA 900/2100', '	Không', '	Có', '	Có', '	Micro USB', '	MP4, M4V, 3GP, 3G2, MKV, WEBM', '	MP3, M4A, 3GA, AAC, OGG, OGA, WAV, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA', '	Có', '	12 tháng', '	2600 mAh', '	Li-Ion', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `MaGioHang` varchar(50) NOT NULL,
  `MaSP` varchar(50) NOT NULL,
  `TenSP` text NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Hinh` text NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhToan` int(11) NOT NULL,
  `TrangThai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `MaHinhAnh` varchar(50) NOT NULL,
  `MaSP` varchar(50) NOT NULL,
  `Hinh1` text NOT NULL,
  `Hinh2` text NOT NULL,
  `Hinh3` text NOT NULL,
  `Hinh4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`MaHinhAnh`, `MaSP`, `Hinh1`, `Hinh2`, `Hinh3`, `Hinh4`) VALUES
('001', 'LT001', 'maytinh\\Laptop Asus F554LA-XX1567D1.jpeg', 'maytinh\\Laptop Asus F554LA-XX1567D2.jpeg', 'maytinh\\Laptop Asus F554LA-XX1567D3.jpeg', 'maytinh\\Laptop Asus F554LA-XX1567D4.jpeg'),
('002', 'LT002', 'maytinh\\Laptop Asus F555LF - XX166D1.jpeg', 'maytinh\\Laptop Asus F555LF - XX166D2.jpeg', 'maytinh\\Laptop Asus F555LF - XX166D3.jpeg', 'maytinh\\Laptop Asus F555LF - XX166D4.jpeg'),
('003', 'LT003', 'maytinh\\Laptop Asus K555LA - XX654D1.jpeg', 'maytinh\\Laptop Asus K555LA - XX654D2.jpeg', 'maytinh\\Laptop Asus K555LA - XX654D3.jpeg', 'maytinh\\Laptop Asus K555LA - XX654D4.jpeg'),
('004', 'LT004', 'maytinh\\Laptop Asus X554LP - XX064D1.jpeg', 'maytinh\\Laptop Asus X554LP - XX064D2.jpeg', 'maytinh\\Laptop Asus X554LP - XX064D3.jpeg', 'maytinh\\Laptop Asus X554LP - XX064D4.jpeg'),
('005', 'LT005', 'maytinh\\Laptop Asus X453SA Celeron1.jpeg', 'maytinh\\Laptop Asus X453SA Celeron2.jpeg', 'maytinh\\Laptop Asus X453SA Celeron3.jpeg', 'maytinh\\Laptop Asus X453SA Celeron4.jpeg'),
('006', 'LT006', 'maytinh\\Laptop Asus X554LA1.jpeg', 'maytinh\\Laptop Asus X554LA2.jpeg', 'maytinh\\Laptop Asus X554LA3.jpeg', 'maytinh\\Laptop Asus X554LA4.jpeg'),
('007', 'LT007', 'maytinh\\Laptop Asus X555UJ_XX064D1.jpeg', 'maytinh\\Laptop Asus X555UJ_XX064D2.jpeg', 'maytinh\\Laptop Asus X555UJ_XX064D3.jpeg', 'maytinh\\Laptop Asus X555UJ_XX064D4.jpeg'),
('008', 'LT008', 'maytinh\\Laptop Asus X540L-XX265D1.jpeg', 'maytinh\\Laptop Asus X540L-XX265D2.jpeg', 'maytinh\\Laptop Asus X540L-XX265D3.jpeg', 'maytinh\\Laptop Asus X540L-XX265D4.jpeg'),
('009', 'LT009', 'maytinh\\Laptop Dell Vostro 3558 - VTI330111.jpeg', 'maytinh\\Laptop Dell Vostro 3558 - VTI330112.jpeg', 'maytinh\\Laptop Dell Vostro 3558 - VTI330113.jpeg', 'maytinh\\Laptop Dell Vostro 3558 - VTI330114.jpeg'),
('010', 'LT010', 'maytinh\\Laptop Dell N3543A- P40F0011.jpeg', 'maytinh\\Laptop Dell N3543A- P40F0012.jpeg', 'maytinh\\Laptop Dell N3543A- P40F0013.jpeg', 'maytinh\\Laptop Dell N3543A- P40F0014.jpeg'),
('011', 'LT011', 'maytinh\\Laptop Dell 5448 - RJNPG1.jpeg', 'maytinh\\Laptop Dell 5448 - RJNPG2.jpeg', 'maytinh\\Laptop Dell 5448 - RJNPG3.jpeg', 'maytinh\\Laptop Dell 5448 - RJNPG4.jpeg'),
('012', 'LT012', 'maytinh\\Laptop Dell N3451A - P60G0021.jpeg', 'maytinh\\Laptop Dell N3451A - P60G0022.jpeg', 'maytinh\\Laptop Dell N3451A - P60G0023.jpeg', 'maytinh\\Laptop Dell N3451A - P60G0024.jpeg'),
('013', 'LT013', 'maytinh\\Laptop Dell INS3558 - 700629721.jpeg', 'maytinh\\Laptop Dell INS3558 - 700629722.jpeg', 'maytinh\\Laptop Dell INS3558 - 700629723.jpeg', 'maytinh\\Laptop Dell INS3558 - 700629724.jpeg'),
('014', 'LT014', 'maytinh\\Laptop Dell Inspiron 3552 - 700720131.jpeg', 'maytinh\\Laptop Dell Inspiron 3552 - 700720132.jpeg', 'maytinh\\Laptop Dell Inspiron 3552 - 700720133.jpeg', 'maytinh\\Laptop Dell Inspiron 3552 - 700720134.jpeg'),
('015', 'LT015', 'maytinh\\MacBook Air (2015) - MJVE21.jpeg', 'maytinh\\MacBook Air (2015) - MJVE22.jpeg', 'maytinh\\MacBook Air (2015) - MJVE23.jpeg', 'maytinh\\MacBook Air (2015) - MJVE24.jpeg'),
('016', 'LT016', 'maytinh\\Macbook Pro 15.4 512GB1.jpeg', 'maytinh\\Macbook Pro 15.4 512GB2.jpeg', 'maytinh\\Macbook Pro 15.4 512GB3.jpeg', 'maytinh\\Macbook Pro 15.4 512GB4.jpeg'),
('017', 'LT017', 'maytinh\\Macbook Pro 13.3 256GB1.jpeg', 'maytinh\\Macbook Pro 13.3 256GB2.jpeg', 'maytinh\\Macbook Pro 13.3 256GB3.jpeg', 'maytinh\\Macbook Pro 13.3 256GB4.jpeg'),
('018', 'LT018', 'maytinh\\Markbook Air 13 MMGF2ZA1/A.jpeg', 'maytinh\\Markbook Air 13 MMGF2ZA2/A.jpeg', 'maytinh\\Markbook Air 13 MMGF2ZA3/A.jpeg', 'maytinh\\Markbook Air 13 MMGF2ZA4/A.jpeg'),
('019', 'LT019', 'maytinh\\Laptop HP 14-R221TU - L0K98PA1.jpeg', 'maytinh\\Laptop HP 14-R221TU - L0K98PA2.jpeg', 'maytinh\\Laptop HP 14-R221TU - L0K98PA3.jpeg', 'maytinh\\Laptop HP 14-R221TU - L0K98PA4.jpeg'),
('020', 'LT020', 'maytinh\\Laptop HP Pavilion AB252TX1.jpeg', 'maytinh\\Laptop HP Pavilion AB252TX2.jpeg', 'maytinh\\Laptop HP Pavilion AB252TX3.jpeg', 'maytinh\\Laptop HP Pavilion AB252TX4.jpeg'),
('021', 'DT001', 'dienthoai\\iPhone 6s Plus 128GB1.jpeg', 'dienthoai\\iPhone 6s Plus 128GB2.jpeg', 'dienthoai\\iPhone 6s Plus 128GB3.jpeg', 'dienthoai\\iPhone 6s Plus 128GB4.jpeg'),
('022', 'DT002', 'dienthoai\\iPhone 5S 16Gb1.jpeg', 'dienthoai\\iPhone 5S 16Gb2.jpeg', 'dienthoai\\iPhone 5S 16Gb3.jpeg', 'dienthoai\\iPhone 5S 16Gb4.jpeg'),
('023', 'DT004', 'dienthoai\\Samsung Galaxy J7 (2016)1.jpeg', 'dienthoai\\Samsung Galaxy J7 (2016)2.jpeg', 'dienthoai\\Samsung Galaxy J7 (2016)3.jpeg', 'dienthoai\\Samsung Galaxy J7 (2016)4.jpeg'),
('024', 'DT005', 'dienthoai\\Samsung Galaxy J71.jpeg', 'dienthoai\\Samsung Galaxy J72.jpeg', 'dienthoai\\Samsung Galaxy J73.jpeg', 'dienthoai\\Samsung Galaxy J74.jpeg'),
('025', 'DT006', 'dienthoai\\Samsung Galaxy J51.jpeg', 'dienthoai\\Samsung Galaxy J52.jpeg', 'dienthoai\\Samsung Galaxy J53.jpeg', 'dienthoai\\Samsung Galaxy J54.jpeg'),
('026', 'DT007', 'dienthoai\\Samsung Galaxy J7 Prim1.jpeg', 'dienthoai\\Samsung Galaxy J7 Prim2.jpeg', 'dienthoai\\Samsung Galaxy J7 Prim3.jpeg', 'dienthoai\\Samsung Galaxy J7 Prim4.jpeg'),
('027', 'DT008', 'dienthoai\\Samsung Galaxy S7 Edge1.jpeg', 'dienthoai\\Samsung Galaxy S7 Edge2.jpeg', 'dienthoai\\Samsung Galaxy S7 Edge3.jpeg', 'dienthoai\\Samsung Galaxy S7 Edge4.jpeg'),
('028', 'DT009', 'dienthoai\\Samsung Galaxy A5 20161.jpeg', 'dienthoai\\Samsung Galaxy A5 20162.jpeg', 'dienthoai\\Samsung Galaxy A5 20163.jpeg', 'dienthoai\\Samsung Galaxy A5 20164.jpeg'),
('029', 'DT010', 'dienthoai\\Samsung Galaxy A9 pro1.jpeg', 'dienthoai\\Samsung Galaxy A9 pro2.jpeg', 'dienthoai\\Samsung Galaxy A9 pro3.jpeg', 'dienthoai\\Samsung Galaxy A9 pro4.jpeg'),
('030', 'DT012', 'dienthoai\\Oppo Neo 71.jpeg', 'dienthoai\\Oppo Neo 72.jpeg', 'dienthoai\\Oppo Neo 73.jpeg', 'dienthoai\\Oppo Neo 74.jpeg'),
('031', 'DT013', 'dienthoai\\Oppo F1S1.jpeg', 'dienthoai\\Oppo F1S2.jpeg', 'dienthoai\\Oppo F1S3.jpeg', 'dienthoai\\Oppo F1S4.jpeg'),
('032', 'DT014', 'dienthoai\\Oppo F11.jpeg', 'dienthoai\\Oppo F12.jpeg', 'dienthoai\\Oppo F13.jpeg', 'dienthoai\\Oppo F14.jpeg'),
('033', 'DT015', 'dienthoai\\Oppo F1 Plus1.jpeg', 'dienthoai\\Oppo F1 Plus2.jpeg', 'dienthoai\\Oppo F1 Plus3.jpeg', 'dienthoai\\Oppo F1 Plus4.jpeg'),
('034', 'DT016', 'dienthoai\\Asus Zenfone 5 A5011.jpeg', 'dienthoai\\Asus Zenfone 5 A5012.jpeg', 'dienthoai\\Asus Zenfone 5 A5013.jpeg', 'dienthoai\\Asus Zenfone 5 A5014.jpeg'),
('035', 'DT017', 'dienthoai\\HTC Desire Eye1.jpeg', 'dienthoai\\HTC Desire Eye2.jpeg', 'dienthoai\\HTC Desire Eye3.jpeg', 'dienthoai\\HTC Desire Eye4.jpeg'),
('036', 'DT018', 'dienthoai\\HTC One E9 Dual Sim1.jpeg', 'dienthoai\\HTC One E9 Dual Sim2.jpeg', 'dienthoai\\HTC One E9 Dual Sim3.jpeg', 'dienthoai\\HTC One E9 Dual Sim4.jpeg'),
('037', 'DT019', 'dienthoai\\HTC One M8 Eye1.jpeg', 'dienthoai\\HTC One M8 Eye2.jpeg', 'dienthoai\\HTC One M8 Eye3.jpeg', 'dienthoai\\HTC One M8 Eye4.jpeg'),
('038', 'DT020', 'dienthoai\\HTC Desire 820G Plus Dual Sim1.jpeg', 'dienthoai\\HTC Desire 820G Plus Dual Sim2.jpeg', 'dienthoai\\HTC Desire 820G Plus Dual Sim3.jpeg', 'dienthoai\\HTC Desire 820G Plus Dual Sim4.jpeg'),
('039', '001', 'phukien\\1.jpeg\r\n', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonban`
--

CREATE TABLE `hoadonban` (
  `MaHDB` varchar(50) NOT NULL,
  `MaKH` varchar(50) NOT NULL,
  `NgayBan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonnap`
--

CREATE TABLE `hoadonnap` (
  `MaHDN` varchar(50) NOT NULL,
  `MaNCC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(50) NOT NULL,
  `TenKH` text NOT NULL,
  `SoDienThoai` int(11) NOT NULL,
  `DiaChi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphukien`
--

CREATE TABLE `loaiphukien` (
  `MaLoaiPhuKien` varchar(50) NOT NULL,
  `TenLoaiPhuKien` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaiphukien`
--

INSERT INTO `loaiphukien` (`MaLoaiPhuKien`, `TenLoaiPhuKien`) VALUES
('01', 'Th? Nh?'),
('02', 'Tai nghe'),
('03', 'Loa'),
('04', 'USB'),
('05', 'Pin D? Phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `MaLoaiSP` varchar(50) NOT NULL,
  `TenLoaiSP` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`MaLoaiSP`, `TenLoaiSP`) VALUES
('01', '?i?n Tho?i');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(50) NOT NULL,
  `TenNCC` text NOT NULL,
  `DiaChi` text NOT NULL,
  `SoDienThoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomtintuc`
--

CREATE TABLE `nhomtintuc` (
  `MaNhomTin` varchar(50) NOT NULL,
  `TenNhomTin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phukien`
--

CREATE TABLE `phukien` (
  `MaPhuKien` varchar(50) NOT NULL,
  `TenPhuKien` text NOT NULL,
  `HinhAnh` text NOT NULL,
  `AnhKhac` text NOT NULL,
  `MoTa` text NOT NULL,
  `ThoiGian` text NOT NULL,
  `TrangThai` bit(1) NOT NULL,
  `MaLoaiPK` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phukien`
--

INSERT INTO `phukien` (`MaPhuKien`, `TenPhuKien`, `HinhAnh`, `AnhKhac`, `MoTa`, `ThoiGian`, `TrangThai`, `MaLoaiPK`) VALUES
('PK01', '\r\n\r\nTh? nh? microSDHC Adata 8GB Class4', 'null', 'null', 'Th? nh? là m?t ph? ki?n quan tr?ng v?i m?t chi?c ?i?n tho?i hay các thi?t b? ?i?n t?, vì v?y vi?c l?a ch?n m?t th? nh? phù h?p v?i thi?t b? là r?t quan tr?ng. Th? nh? Adata MicroSD 8GB class 4 chu?n giao ti?p SD 2.0 v?i t?c ?? ??c - ghi kho?ng 4m/s, s? giúp b?n l?u tr? hàng ngàn d? li?u nh?: âm thanh, hình ?nh, video, t?p tin...', '	12 tháng', b'1', '01'),
('PK02', '\r\n\r\nTai nghe GHP-206 Genius', 'null', 'null', 'null', '	12 tháng', b'1', '02'),
('PK03', '\r\n\r\nLoa Powermax TM01C', 'null', 'null', 'Nh?, g?n, th?i trang, ch?t l??ng âm thanh tu??t h?o. K?t n?i v?i Iphone, Ipad, máy tính b?ng , máy tính... thông qua Bluetooth.', 'null', b'1', '03'),
('PK04', '\r\n\r\nUSB Sandisk 8GB CZ60', 'null', 'null', 'null', '	12 tháng', b'1', '04'),
('Pk05', '\r\n\r\nS?c d? phòng iCore 15.000 mAh', 'null', 'null', 'Dùng cho: iPhone, iPad, Smartphone, Tablet', '	12 tháng', b'1', '05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sysdiagrams`
--

CREATE TABLE `sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int(11) NOT NULL,
  `diagram_id` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `definition` longblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbinhluan`
--

CREATE TABLE `tblbinhluan` (
  `MaBL` varchar(10) NOT NULL,
  `MaBaiViet` varchar(10) NOT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SoLuotThich` int(11) DEFAULT NULL,
  `NoiDung` longtext,
  `ThoiGian` datetime DEFAULT NULL,
  `MaBLCha` varchar(10) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchitiethoadon`
--

CREATE TABLE `tblchitiethoadon` (
  `MaHD` varchar(10) NOT NULL,
  `MaSP` varchar(10) NOT NULL,
  `MaLoaiSP` varchar(10) DEFAULT NULL,
  `DonGia` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `ThanhTien` int(11) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldanhgiasanpham`
--

CREATE TABLE `tbldanhgiasanpham` (
  `DiaChiMAC` varchar(50) NOT NULL,
  `MaSP` varchar(10) NOT NULL,
  `MaLoaiSP` varchar(10) DEFAULT NULL,
  `SoDiem` int(11) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblgiohang`
--

CREATE TABLE `tblgiohang` (
  `DiaChiMAC` varchar(50) NOT NULL,
  `MaSP` varchar(10) NOT NULL,
  `MaLoaiSP` varchar(10) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `ThanhTien` int(11) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhinhminhhoa`
--

CREATE TABLE `tblhinhminhhoa` (
  `MaHinhMinhHoa` varchar(10) NOT NULL,
  `MaSP` varchar(10) DEFAULT NULL,
  `DuongDanHinh` longtext,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhinhquangcao`
--

CREATE TABLE `tblhinhquangcao` (
  `MaHinhQC` varchar(10) NOT NULL,
  `TieuDeHinh` varchar(100) NOT NULL,
  `DuongDanHinh` longtext NOT NULL,
  `LinkChuyenTiep` longtext NOT NULL,
  `TrangThai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhinhslide`
--

CREATE TABLE `tblhinhslide` (
  `MaHinhSlide` varchar(10) NOT NULL,
  `TieuDeHinh` varchar(100) NOT NULL,
  `DuongDanHinh` longtext NOT NULL,
  `LinkChuyenTiep` longtext NOT NULL,
  `TrangThai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhinhthucte`
--

CREATE TABLE `tblhinhthucte` (
  `MaHinh` varchar(10) NOT NULL,
  `MaSP` varchar(10) NOT NULL,
  `DuongDanHinh` longtext NOT NULL,
  `TrangThai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoadon`
--

CREATE TABLE `tblhoadon` (
  `MaHD` varchar(10) NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `NgayGiaoHang` datetime DEFAULT NULL,
  `TenKH` varchar(100) DEFAULT NULL,
  `DiaChi` longtext,
  `SDT` varchar(15) DEFAULT NULL,
  `GhiChu` longtext,
  `ThanhTien` int(11) DEFAULT NULL,
  `TinhTrangThanhToan` tinyint(1) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkhuyenmai`
--

CREATE TABLE `tblkhuyenmai` (
  `MaKM` varchar(10) NOT NULL,
  `TenKM` varchar(200) DEFAULT NULL,
  `TriGiaKM` double DEFAULT NULL,
  `QuaTang` varchar(200) DEFAULT NULL,
  `NgayBatDau` datetime DEFAULT NULL,
  `NgayKetThuc` datetime DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaidienthoai`
--

CREATE TABLE `tblloaidienthoai` (
  `MaLoaiDT` varchar(10) NOT NULL,
  `TenLoaiDT` varchar(100) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblloaidienthoai`
--

INSERT INTO `tblloaidienthoai` (`MaLoaiDT`, `TenLoaiDT`, `TrangThai`) VALUES
('LDT01', 'Smartphone', 1),
('LDT02', 'Cổ điển', 1),
('LDT03', 'Vệ tinh', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaiphukien`
--

CREATE TABLE `tblloaiphukien` (
  `MaLoaiPK` varchar(10) NOT NULL,
  `TenLoaiPK` varchar(100) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblloaiphukien`
--

INSERT INTO `tblloaiphukien` (`MaLoaiPK`, `TenLoaiPK`, `TrangThai`) VALUES
('01', 'Thẻ nhớ', 1),
('02', 'Bao da/Ốp lưng', 0),
('03', 'Pin dự phòng', 1),
('04', 'Tai nghe', 1),
('05', 'Cáp/Sạc', 1),
('06', 'Loa', 1),
('07', 'USB', 0),
('08', 'Chuột', 1),
('09', 'Đế tản nhiệt', 0),
('10', 'Túi đựng laptop', 0),
('11', 'Ổ cứng', 0),
('12', 'Dán Màn Hình', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaisanpham`
--

CREATE TABLE `tblloaisanpham` (
  `MaLoaiSP` varchar(10) NOT NULL,
  `TenLoaiSP` varchar(100) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblloaisanpham`
--

INSERT INTO `tblloaisanpham` (`MaLoaiSP`, `TenLoaiSP`, `TrangThai`) VALUES
('01', 'Điện thoại', 1),
('02', 'Máy tính bảng', 0),
('03', 'Laptop', 1),
('04', 'Phụ kiện', 1),
('05', 'Sim số', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaitintuc`
--

CREATE TABLE `tblloaitintuc` (
  `MaLoaiTinTuc` varchar(10) NOT NULL,
  `TenLoaiTinTuc` varchar(100) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblloaitintuc`
--

INSERT INTO `tblloaitintuc` (`MaLoaiTinTuc`, `TenLoaiTinTuc`, `TrangThai`) VALUES
('00', 'Tất cả', 1),
('01', 'Tin công nghệ', 1),
('02', 'Bệnh viện công ngghệ', 1),
('03', 'Ứng dụng', 1),
('04', 'Tin khuyến mãi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaitk`
--

CREATE TABLE `tblloaitk` (
  `MaLoaiTK` varchar(10) NOT NULL,
  `TenLoaiTK` varchar(100) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblloaitk`
--

INSERT INTO `tblloaitk` (`MaLoaiTK`, `TenLoaiTK`, `TrangThai`) VALUES
('001', 'Admin', 1),
('003', 'Nhân Viên', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmodeldt`
--

CREATE TABLE `tblmodeldt` (
  `MaModel` varchar(10) NOT NULL,
  `TenModel` varchar(100) DEFAULT NULL,
  `ManHinh` varchar(5) DEFAULT NULL,
  `CameraSau` varchar(200) DEFAULT NULL,
  `CameraTruoc` varchar(20) DEFAULT NULL,
  `HeDieuHanh` varchar(100) DEFAULT NULL,
  `CPU` varchar(100) DEFAULT NULL,
  `CardDoHoa` varchar(100) DEFAULT NULL,
  `RAM` double DEFAULT NULL,
  `ROM` double DEFAULT NULL,
  `TheNhoNgoai_DungLuongGB` double DEFAULT NULL,
  `Sim` varchar(100) DEFAULT NULL,
  `KetNoi_3G` varchar(100) DEFAULT NULL,
  `KetNoi_Wifi` varchar(400) DEFAULT NULL,
  `KetNoi_Bluetooth` varchar(200) DEFAULT NULL,
  `KetNoi_JackTaiNghe` varchar(100) DEFAULT NULL,
  `ChatLieu` varchar(100) DEFAULT NULL,
  `KichThuoc` varchar(100) DEFAULT NULL,
  `TrongLuong` varchar(100) DEFAULT NULL,
  `ThietKe` varchar(100) DEFAULT NULL,
  `Pin_DungLuongPin` varchar(100) DEFAULT NULL,
  `MaNSX` varchar(10) NOT NULL,
  `MaLoaiDT` varchar(10) DEFAULT NULL,
  `ThoiGianBaoHanh` int(11) DEFAULT NULL,
  `HinhDaiDien` longtext,
  `MoTaNoiBat` longtext,
  `TieuDeNoiBat` longtext NOT NULL,
  `GiaBan` double DEFAULT NULL,
  `AnhNoiBat` longtext NOT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblmodeldt`
--

INSERT INTO `tblmodeldt` (`MaModel`, `TenModel`, `ManHinh`, `CameraSau`, `CameraTruoc`, `HeDieuHanh`, `CPU`, `CardDoHoa`, `RAM`, `ROM`, `TheNhoNgoai_DungLuongGB`, `Sim`, `KetNoi_3G`, `KetNoi_Wifi`, `KetNoi_Bluetooth`, `KetNoi_JackTaiNghe`, `ChatLieu`, `KichThuoc`, `TrongLuong`, `ThietKe`, `Pin_DungLuongPin`, `MaNSX`, `MaLoaiDT`, `ThoiGianBaoHanh`, `HinhDaiDien`, `MoTaNoiBat`, `TieuDeNoiBat`, `GiaBan`, `AnhNoiBat`, `TrangThai`) VALUES
('DT001', 'iPhone 6s Plus 128GB', '1', '12', '5', 'iOS 9', 'Apple A9 2 nhân 64-bit', 'PowerVR GT7600', 2, 128, 0, 'Nano SIM', 'HSDPA 850/900/1900/2100, LTE', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 'A2DP, V4.1', NULL, 'Hợp kim nhôm', 'Dài 158.2 mm - Ngang 77.9 mm - Dày 7.3 mm', '192 g', 'Nguyên khối', '2750 mAh', 'AP01', 'LDT01', 12, 'dienthoai\\iPhone 6s Plus 128GB.jpeg', 'Ra mắt cùng lúc với iPhone 6s, iPhone 6s Plus được Apple ra mắt vào ngày 10/10 vừa qua là sự nâng cấp đặc biệt từ “người tiền nhiệm” iPhone 6 Plus và lược bỏ toàn bộ những điểm yếu mà tất cả iPhone đời trước mắc phải. Không chỉ là chiếc phablet mạnh mẽ về cấu hình, đa dạng về màu sắc, iPhone 6s Plus với công nghệ cảm ứng lực thông minh còn tạo nên một trải nghiệm mới mẻ trên chiếc smartphone màn hình lớn.', 'iPhone 6s Plus - Nâng cao trải nghiệm với màn hình lớn', 24490000, '', 1),
('DT002', 'iPhone 5S 16Gb', '1', '8', '1,8', 'iOS 9', 'Apple A7 2 nhân 64-bit', 'PowerVR G6430', 1, 16, 0, 'Nano SIM', 'HSDPA 850/900/1700/1900/2100, LTE', 'Wifi 802.11 a/b/g/n, Wi-Fi Direct, Wi-Fi hotspot', 'V4.0', NULL, 'Hợp kim nhôm', 'Dài 123.8 mm - Ngang 58.6 mm - Dày 7.6 mm', '112 g', 'Nguyên khối', '1560 mAh', 'AP01', 'LDT01', 12, 'dienthoai\\iPhone 5S 16Gb.png', '', '', 6290000, '', 1),
('DT004', 'Samsung Galaxy J7 (2016)', '6', '13', '5', 'android', 'Octa-core 1.6 GHz', NULL, 2, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '151.7 x 76.0 x 7.8 mm', '169 g', 'Pin rời', '3300', 'SS01', 'LDT01', 12, 'dienthoai\\Samsung Galaxy J7 (2016).jpeg', NULL, '', 5790000, '', 1),
('DT005', 'Samsung Galaxy J7', '6', '13', '5', 'android', 'Octa-core 1.6 GHz', NULL, 2, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '151.7 x 76.0 x 7.8 mm', '169 g', 'Pin rời', '3300', 'SS01', 'LDT01', 12, 'dienthoai\\Samsung Galaxy J7.jpeg', NULL, '', 4520000, '', 1),
('DT006', 'Samsung Galaxy J5', '5', '13', '5', 'android', 'Octa-core 1.6 GHz', NULL, 2, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '	142.1 x 71.8 x 7.9 mm', '150 g', 'Pin rời', '2600', 'SS01', 'LDT01', 12, 'dienthoai\\Samsung Galaxy J5.jpeg', NULL, '', 3990000, '', 1),
('DT007', 'Samsung Galaxy J7 Prim ', '5', '13', '8', 'android', 'Octa-core 1.6 GHz', NULL, 3, 32, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '	151.5 x 74.9 x 8.1 mm', '150 g', 'Pin rời', '3300', 'SS01', 'LDT01', 12, 'dienthoai\\Samsung Galaxy J7 Prim.jpeg', NULL, '', 6290000, '', 1),
('DT008', 'Samsung Galaxy S7 Edge', '5,5', '12', '5', 'Android', 'Exynos 8890, Octa-Core, Quad-core 2.3 GHz & Quad-core 1.6 GHz', NULL, 4, 32, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Kính + Kim loại', '150.9 x 72.6 x 7.7 mm', '157 g', 'Nguyên khối', NULL, 'SS01', 'LDT01', 12, 'dienthoai\\Samsung Galaxy S7 Edge.jpeg', NULL, '', 18490000, '', 1),
('DT009', 'Samsung Galaxy A5 2016', '5,5', '13', '5', 'Android', 'Exynos 7580, Octa-core 1.6 GHz', NULL, 2, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', '2 mặt kính + viền kim loại', '144.8 x 71.0 x 7.3 mm', '153 g', 'Nguyên khối', '2900 mAh', 'SS01', 'LDT01', 12, 'dienthoai\\Samsung Galaxy A5 2016.jpeg', NULL, '', 7990000, '', 1),
('DT010', 'Samsung Galaxy A9 pro', '6', '16', '8', 'Android', 'Exynos 7580, Octa-core 1.8 GHz', NULL, 4, 32, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Kim loại', '144.8 x 71.0 x 7.3 mm', '153 g', 'Nguyên khối', '5000 mAh', 'SS01', 'LDT01', 12, 'dienthoai\\Samsung Galaxy A9 pro.jpeg', NULL, '', 11990000, '', 1),
('DT012', 'Oppo Neo 7', '5', '8', '5', 'Android', 'MT6582, Quad-core 1.3 GHz', NULL, 1, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhựa', '142.7 x 71.7 x 7.55 mm', '142 g', 'Pin liền', '2420', 'OP', 'LDT01', 12, 'dienthoai\\Oppo Neo 7.jpeg', NULL, '', 3290000, '', 1),
('DT013', 'Oppo F1S', '5,5', '16', '13', 'Android', 'MT6582, Quad-core 1.5 GHz', NULL, 3, 32, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Kim loai', '142.7 x 71.7 x 7.55 mm', '142 g', 'Pin liền', '3075', 'OP', 'LDT01', 12, 'dienthoai\\Oppo F1S.jpeg', NULL, '', 5990000, '', 1),
('DT014', 'Oppo F1', '5', '13', '8', 'Android', 'MT6582, Quad-core 1.5 GHz', NULL, 3, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '142.7 x 71.7 x 7.55 mm', '142 g', 'Pin liền', '2500', 'OP', 'LDT01', 12, 'dienthoai\\Oppo F1.jpeg', NULL, '', 4990000, '', 1),
('DT015', 'Oppo F1 Plus', '5,5', '16', '13', 'Android', 'MT6582, Quad-core 1.2 GHz', NULL, 4, 64, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '142.7 x 71.7 x 7.55 mm', '142 g', 'Nguyên Khối', '2850', 'OP', 'LDT01', 12, 'dienthoai\\Oppo F1 Plus.jpeg', NULL, '', 9990000, '', 1),
('DT016', 'Asus Zenfone 5 A501', '5', '8', '2', 'Android', 'MT6582, Quad-core 1.2 GHz', NULL, 2, 8, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '142.7 x 71.7 x 7.55 mm', '142 g', 'Nguyên Khối', '2850', 'AS01', 'LDT01', 12, 'dienthoai\\Asus Zenfone 5 A501.jpeg', NULL, '', 2690000, '', 1),
('DT017', 'HTC Desire Eye', '5,2', '13', '13', 'Android', 'MT6582, Quad-core 1.2 GHz', NULL, 2, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '142.7 x 71.7 x 7.55 mm', '142 g', 'Nguyên Khối', '2400', 'AS01', 'LDT01', 12, 'dienthoai\\HTC Desire Eye.jpeg', NULL, '', 5990000, '', 1),
('DT018', 'HTC One E9 Dual Sim', '5,5', '13', '4', 'Android', 'MT6582, Quad-core 1.2 GHz', NULL, 2, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '142.7 x 71.7 x 7.55 mm', '142 g', 'Nguyên Khối', '2800', 'HTC', 'LDT01', 12, 'dienthoai\\HTC One E9 Dual Sim.jpeg', NULL, '', 5290000, '', 1),
('DT019', 'HTC One M8 Eye', '5', '13', '5', 'Android', 'Snapdragon™ 801 Quad core 2.3 Ghz ', NULL, 2, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '142.7 x 71.7 x 7.55 mm', '142 g', 'Nguyên Khối', '2600', 'HTC', 'LDT01', 12, 'dienthoai\\HTC One M8 Eye.jpeg', NULL, '', 5290000, '', 1),
('DT020', 'HTC Desire 820G Plus Dual Sim', '5,5', '13', '8', 'Android', 'Snapdragon™ 801 Quad core 1,7 Ghz ', NULL, 1, 16, NULL, 'nano', 'Có', 'Có', 'Có', 'Có', 'Nhôm', '157.7 x 78.74 x 7.74 mm', '154 g', 'Nguyên Khối', '2600', 'HTC', 'LDT01', 12, 'dienthoai\\HTC Desire 820G Plus Dual Sim.jpeg', NULL, '', 3790000, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmodellaptop`
--

CREATE TABLE `tblmodellaptop` (
  `MaModel` varchar(10) NOT NULL,
  `TenModel` varchar(100) DEFAULT NULL,
  `ManHinh` varchar(100) DEFAULT NULL,
  `CPU` varchar(100) DEFAULT NULL,
  `OCung` varchar(50) NOT NULL,
  `RAM` varchar(20) DEFAULT NULL,
  `HeDieuHanh` varchar(100) DEFAULT NULL,
  `VGA` varchar(100) DEFAULT NULL,
  `Wifi` varchar(100) DEFAULT NULL,
  `Webcam` varchar(8) DEFAULT NULL,
  `KichThuoc` varchar(100) DEFAULT NULL,
  `TrongLuong` varchar(100) DEFAULT NULL,
  `ChatLieu` varchar(100) DEFAULT NULL,
  `ThietKe` varchar(100) DEFAULT NULL,
  `Pin` varchar(100) DEFAULT NULL,
  `MaNSX` varchar(10) DEFAULT NULL,
  `ThoiGianBaoHanh` int(11) DEFAULT NULL,
  `HinhDaiDien` longtext,
  `GiaBan` double DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblmodellaptop`
--

INSERT INTO `tblmodellaptop` (`MaModel`, `TenModel`, `ManHinh`, `CPU`, `OCung`, `RAM`, `HeDieuHanh`, `VGA`, `Wifi`, `Webcam`, `KichThuoc`, `TrongLuong`, `ChatLieu`, `ThietKe`, `Pin`, `MaNSX`, `ThoiGianBaoHanh`, `HinhDaiDien`, `GiaBan`, `TrangThai`) VALUES
('LT001', 'Laptop Asus F554LA-XX1567D\r\n', '15.6\'\', HD LED\r\n', 'Intel® Core™ i3 4005U (1.7Ghz - 3MB Cache)\r\n', '500GB', '4', 'Free DOS', 'VGA onboard, Intel HD Graphics\r\n', 'Có', '1', '349 x 205 x 33 mm', '1.7 kg', 'Nhựa', 'Pin rời', 'Li-Ion, 2 cell', 'AS', 12, 'maytinh\\Laptop Asus F554LA-XX1567D.jpeg', 8290000, NULL),
('LT002', 'Laptop Asus F555LF - XX166D', '15.6\'\', HD', 'Intel® Core™ i5 Broadwell-5200U', '500GB', '4', 'Free DOS', 'NVIDIA GT 930M, 2 GB', 'Có', '1', '328 x 256 x 25.8 mm', '2.3 kg', 'Vỏ nhựa vân xước', 'Pin liền', 'Li-Ion, 3 cell', 'AS', 12, 'maytinh\\Laptop Asus F555LF - XX166D.jpeg', 11990000, NULL),
('LT003', 'Laptop Asus K555LA - XX654D', '15.6", HD', 'Intel® Core™ i5-5200U Processor', '500GB', '4GB', 'Free DOS', 'Intel® HD Graphics 5500', 'Có', 'Có', '382 x 256 x 25.8 mm', '2.3 kg', 'Nhựa', 'Pin rời', 'Li-Ion, 4 Cell', 'AS', 12, 'maytinh\\Laptop Asus K555LA - XX654D.jpeg', 11990000, 1),
('LT004', 'Laptop Asus X554LP - XX064D', '15.6\'\', HD LED', 'Intel® Core™ i5-5200U ', '500GB', '4GB', 'Free DOS', 'AMD Radeon R5 M230, 1 GB', 'Có', 'Có', '380 x 251 x 30.9 mm', '2,1 kg', 'Nhựa', 'Pin rời', 'Li-Ion', 'AS', 24, 'maytinh\\Laptop Asus X554LP - XX064D.jpeg', 11990000, 1),
('LT005', 'Laptop Asus X453SA Celeron', '15.6\'\', HD LED', 'Intel® Celeron Braswell, N3050 ', '500GB', '4GB', 'Free DOS', 'AMD Radeon R5 M230, 1 GB', 'Có', 'Có', '380 x 251 x 30.9 mm', '2,1 kg', 'Nhựa', 'Pin rời', 'Li-Ion', 'AS', 24, 'maytinh\\Laptop Asus X453SA Celeron.jpeg', 5790000, 1),
('LT006', 'Laptop Asus X554LA', '15.6\'\' HD LED', 'Intel® Core™ i5-5200U\r\n', '500GB', '4GB', 'Free Doc', 'Intel HD Graphics\r\n', 'IEEE 802.11b/g/n', 'Có', '378 x 253 x 26.2 mm', '2,1kg', 'Vỏ kim loại', 'Pin liền', 'Li-Ion, 4 cell', 'AS', 12, 'maytinh\\Laptop Asus X554LA.jpeg', 10990000, 1),
('LT007', 'Laptop Asus X555UJ_XX064D', '15.6\'\' HD LED', 'Intel Core i5-6200U', '500GB', '4GB', 'Free Doc', 'Intel HD Graphics', 'IEEE 802.11b/g/n', 'Có', '378 x 253 x 26.2 mm', '2,1kg', 'Vỏ kim loại', 'Pin liền', 'Li-Ion, 4 cell', 'AS', 24, 'maytinh\\Laptop Asus X555UJ_XX064D.jpeg', 12690000, 1),
('LT008', 'Laptop Asus X540L-XX265D', '15.6\'\' HD LED', ' Intel Core i3-5005U Processor', '500GB', '4GB', 'Free Doc', 'Intel HD Graphics', 'IEEE 802.11b/g/n', '	0.3MP', '378 x 253 x 26.2 mm', '2,1kg', 'Vỏ kim loại', 'Pin liền', 'Li-Ion, 4 cell', 'AS', 24, 'maytinh\\Laptop Asus X540L-XX265D.jpeg', 8790000, 1),
('LT009', 'Laptop Dell Vostro 3558 - VTI33011', '15.6\'\' HD LED', ' Intel® HD Graphics 4400, Share', '500GB', '4GB', 'Free Doc', 'Intel HD Graphics', 'IEEE 802.11b/g/n', '	0.3MP', '378 x 253 x 26.2 mm', '2,1kg', 'Vỏ kim loại', 'Pin liền', 'Li-Ion, 3 cell', 'DE', 24, 'maytinh\\Laptop Dell Vostro 3558 - VTI33011.jpeg', 9690000, 1),
('LT010', 'Laptop Dell N3543A- P40F001', '15.6\'\' HD LED', ' Intel® Core™ i3-5005U', '500GB', '4GB', 'Free Doc', 'Intel® HD Graphics 5500', 'IEEE 802.11b/g/n', '0.3MP', '381.4 x 267.6 x 25.6 mm', '2,1kg', 'Vỏ kim loại', 'Pin liền', 'Li-Ion, 4 cell', 'DE', 12, 'maytinh\\Laptop Dell N3543A- P40F001.jpeg', 9990000, 1),
('LT011', 'Laptop Dell 5448 - RJNPG1', '14" HD LED', 'Intel® Core™ i5-5200U', '500GB', '4GB', 'Free Doc', 'Intel® HD Graphics 5500', 'IEEE 802.11b/g/n', '0.3MP', '381.4 x 267.6 x 25.6 mm', '2,1kg', 'Vỏ kim loại', 'Pin liền', 'Li-Ion, 4 cell', 'DE', 12, 'maytinh\\Laptop Dell 5448 - RJNPG1.jpeg', 1390000, 1),
('LT012', 'Laptop Dell N3451A - P60G002', '14" HD LED', ' Intel® Celeron N2840 ', '500GB', '2GB', 'Free Doc', 'Intel® HD Graphics', 'IEEE 802.11b/g/n', '1.0MP', '381.4 x 267.6 x 25.6 mm', '2,1kg', 'Nhựa', 'Pin liền', 'Li-Ion, 4 cell', 'DE', 12, 'maytinh\\Laptop Dell N3451A - P60G002.jpeg', 1390000, 1),
('LT013', 'Laptop Dell INS3558 - 70062972', '15.6" HD LED', 'Intel® Broadwell i5-5200U ', '500GB', '4GB', 'Free Doc', 'NVIDIA GeForce 820M', 'IEEE 802.11b/g/n', '1.0MP', '383 x 267.6 x 25 mm', '2kg', 'Nhựa', 'Pin rời', 'Li-Ion, 4 cell', 'DE', 12, 'maytinh\\Laptop Dell INS3558 - 70062972.jpeg', 13490000, 1),
('LT014', 'Laptop Dell Inspiron 3552 - 70072013', '15.6" HD LED', 'Intel® Pentium Processor N3540 ', '500GB', '4GB', '	Windows 10', '	Intel HD Graphics', 'IEEE 802.11b/g/n', '	0.9 MP', '383 x 267.6 x 25 mm', '2.4 kg', 'Nhựa', 'Pin rời', 'Li-Ion, 4 cell', 'DE', 12, 'maytinh\\Laptop Dell Inspiron 3552 - 70072013.jpeg', 7390000, 1),
('LT015', 'MacBook Air (2015) - MJVE2', '13.3\', LED-backlit ', 'Intel® Core™  i5 dual-core ', '500GB', '4GB', '	Windows 10', 'VGA onboard, Intel HD Graphics 6000', 'IEEE 802.11b/g/n', '	0.9 MP', '325 x 227 x (3 - 17) mm', '1,35 kg', 'Nhôm', 'Pin liền', 'Lithium Polymer', 'AP', 12, 'maytinh\\MacBook Air (2015) - MJVE2.jpeg', 22990000, 1),
('LT016', 'Macbook Pro 15.4 512GB', '15,4"', 'Intel® Core™  i7', '500GB', '16 GB, DDR3L ', 'OS X Yosemite', 'Intel Iris Pro Graphics, AMD Radeon R9 M370X, 2 GB', 'Có', 'Có', '358.9 x 247.1 x 18 mm', '2,4 kg', 'Hợp kim', 'Pin liền', '99.5-watt-hour lithium-polymer battery', 'AP', 12, 'maytinh\\Macbook Pro 15.4 512GB.jpeg', 59990000, 1),
('LT017', 'Macbook Pro 13.3 256GB', '13,3"', 'Intel® Core™  i5', '500GB', '8 GB, DDR3L ', 'OS X Yosemite', 'Intel Iris Graphics 6100, AMD Radeon R9 M370X, 2 GB', 'Có', 'Có', '358.9 x 247.1 x 18 mm', '1,58 kg', 'Hợp kim', 'Pin liền', '99.5-watt-hour lithium-polymer battery', 'AP', 12, 'maytinh\\Macbook Pro 13.3 256GB.jpeg', 59990000, 1),
('LT018', 'Markbook Air 13 MMGF2ZA/A', '13"', 'Intel® Core™ i5', '500GB', '8 GB, DDR3L ', 'OS X Yosemite', 'Intel Iris Graphics 6100, AMD Radeon R9 M370X, 2 GB', 'Có', 'Có', '358.9 x 247.1 x 18 mm', '1,58 kg', 'Hợp kim', 'Pin liền', '99.5-watt-hour lithium-polymer battery', 'AP', 12, 'maytinh\\Markbook Air 13 MMGF2ZA/A.jpeg', 23490000, 1),
('LT019', 'Laptop HP 14-R221TU - L0K98PA', '14"', 'Intel® Core™ i3', '500GB', '4 GB ', '	FreeDOS', 'VGA onboard, Intel HD Graphics', 'Có', 'Có', '358.9 x 247.1 x 18 mm', '1,58 kg', 'Hợp kim', 'Pin liền', 'Li-Ion, 4 cell', 'HP', 12, 'maytinh\\Laptop HP 14-R221TU - L0K98PA.jpeg', 8990000, 1),
('LT020', 'Laptop HP Pavilion AB252TX', '15,6"', 'Intel® Core™ i5', '500GB', '4 GB ', '	FreeDOS', 'NVIDIA GF 940M, 2 GB', 'Có', 'Có', '	328 x 256 x 25.8 mm', '2,15 kg', 'Nhựa', 'Pin rời', '	Li-Ion, 4 cell', 'HP', 12, 'maytinh\\Laptop HP Pavilion AB252TX.jpeg', 8990000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmodelphukien`
--

CREATE TABLE `tblmodelphukien` (
  `MaModel` varchar(10) NOT NULL,
  `TenModel` varchar(100) DEFAULT NULL,
  `MaLoaiPK` varchar(10) DEFAULT NULL,
  `ThongSoKiThuat` longtext,
  `ThoiGianBaoHanh` int(11) DEFAULT NULL,
  `HinhDaiDien` longtext,
  `GiaBan` int(30) DEFAULT NULL,
  `GhiChu` longtext,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblmodelphukien`
--

INSERT INTO `tblmodelphukien` (`MaModel`, `TenModel`, `MaLoaiPK`, `ThongSoKiThuat`, `ThoiGianBaoHanh`, `HinhDaiDien`, `GiaBan`, `GhiChu`, `TrangThai`) VALUES
('001', 'Thẻ nhớ microSDHC Adata 8GB Class4', '01', 'Dung lượng: 8 GB\r\nTốc độ kết nối: 4 MB/s', 12, 'phukien\\Thẻ nhớ microSDHC Adata 8GB Class4.jpeg', 130000, NULL, 1),
('002', 'Thẻ nhớ microSDHC Adata 16GB Class10', '01', 'Dung lượng: 16 GB\r\nTốc độ kết nối: 10 MB/s', 12, 'phukien\\Thẻ nhớ microSDHC Adata 16GB Class10.jpeg', 160000, NULL, 1),
('003', 'Tai nghe GHP-206 Genius', '04', '• Chiều dài dây: 1.2 m\r\n• Jack kết nối: jack 3.5 mm\r\n• Hỗ trợ loa và mic\r\n• Dải tần số: 20Hz - 20KHz', 12, 'phukien\\Tai nghe GHP-206 Genius.jpeg', 100000, NULL, 1),
('004', 'Tai nghe Bluetooth Roman X2S', '04', 'Tầm sử dụng: 10 m\r\nChơi nhạc hơn 2 giờ\r\nKích thước: 18.5 x 42 x 22 mm\r\n', 12, 'phukien\\Tai nghe Bluetooth Roman X2S.jpeg', 400000, NULL, 1),
('005', 'Tấm dán cường lực iPhone 5S', '12', 'Bảo hành chính hãng\r\n', 6, 'phukien\\Tấm dán cường lực iPhone 5S.jpeg', 40000, NULL, 1),
('006', 'Chuột quang không dây Genius NX-7000', '08', 'Loại: Chuột quang không dây\r\nTầm sử dụng: 10m\r\nĐộ phân giải: 1200 dpi\r\nBảo hành: 12 tháng\r\n', 6, 'phukien\\Chuột quang không dây Genius NX-7000.jpeg', 150000, NULL, 1),
('007', 'Chuột không dây Prolink PMW6001', '08', 'Loại: Chuột quang không dây\r\nTầm sử dụng: 10m\r\nĐộ phân giải: 1200 dpi\r\nBảo hành: 12 tháng\r\n', 6, 'phukien\\Chuột không dây Prolink PMW6001.jpeg', 220000, NULL, 1),
('008', 'Sạc dự phòng Xphone 5200mAh XPL5', '02', 'Dung lượng: 5200 mAh\r\nXuất xứ: Viettel\r\nLõi: Samsung SDI\r\nKích thước: 94 x 42 x 23 mm\r\nBảo hành: 12 tháng 1 đổi 1', 12, 'phukien\\Sạc dự phòng Xphone 5200mAh XPL5.jpeg', 300000, NULL, 1),
('009', 'Sạc nhanh Samsung Galaxy Note 5', '02', 'Áp dụng công nghệ sạc nhanh\r\nTrọng lượng: 145 g\r\nĐộ dày: 9.8 mm\r\nDung lượng: 5200 mAh\r\nBảo hành: 12 tháng 1 đổi 1', 12, 'phukien\\Sạc nhanh Samsung Galaxy Note 5.jpeg', 1190000, NULL, 1),
('010', 'Pin sạc dự phòng Eloop E9 - 10000 mAh', '02', 'Dung Lượng: 10,000 mAh\r\nCổng giao tiếp: USB\r\nTrọng lượng: 190 g\r\nBảo hành: 12 tháng\r\nKích thước: 116 x 74 x 15.8 mm ', 12, 'phukien\\Sạc nhanh Samsung Galaxy Note 5.jpeg', 420000, NULL, 1),
('011', 'Loa Microlab M108', '06', 'Công suất: 2.5W x 2, 6W RMS \r\nKích thước Loa trầm: 205 x 144 x 198 \r\nKích thước Loa vệ tinh: 96 x 95 x 116 \r\nDải tần: 50Hz - 20KHz \r\nBảo hành: 6 tháng', 12, 'phukien\\Loa Microlab M108', 399000, NULL, 1),
('012', 'Loa Powermax TM01C', '06', 'Công suất: 3W,Kích thước: cao 12cm đường kính 6cm (+- 1,5cm) \r\nDải tần: 50Hz - 20KHz \r\nBảo hành: 6 tháng', 12, 'phukien\\Loa Powermax TM01C', 500000, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhasanxuat`
--

CREATE TABLE `tblnhasanxuat` (
  `MaNSX` varchar(10) NOT NULL,
  `TenNSX` varchar(100) DEFAULT NULL,
  `MaLoaiSP` varchar(10) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblnhasanxuat`
--

INSERT INTO `tblnhasanxuat` (`MaNSX`, `TenNSX`, `MaLoaiSP`, `TrangThai`) VALUES
('SD', 'SAND DISK', '04', 1),
('SDM', 'Soundmax', '04', 1),
('TPL', 'TP Link', '04', 1),
('DL', 'DLink', '04', 1),
('ADT', 'Adata', '04', 1),
('CC', 'Cool Cold', '04', 1),
('HW', 'Huawei', '04', 1),
('GN', 'Genius', '04', 1),
('VT', 'Viettel', '04', 1),
('SSPK', 'Samsung', '04', 1),
('HP', 'HP', '03', 1),
('LNV', 'Lenovo', '03', 0),
('ACE', 'Acer', '03', 0),
('AS', 'Asus', '03', 1),
('DE', 'Dell', '03', 1),
('AP', 'Apple', '03', 1),
('LNV02', 'Lenovo', '02', 1),
('AS02', 'Asus', '02', 1),
('DE02', 'Dell', '02', 1),
('AP02', 'Apple', '02', 1),
('SS02', 'Samsung', '02', 1),
('VT01', 'Viettel', '01', 0),
('LG', 'LG', '01', 0),
('OP', 'OPPO', '01', 1),
('HTC', 'HTC', '01', 1),
('LNV01', 'Lenovo', '01', 0),
('AS01', 'Asus', '01', 1),
('SONY', 'Sony', '01', 0),
('AP01', 'Apple', '01', 1),
('SS01', 'Samsung', '01', 1),
('MCS', 'Microsoft', '04', 1),
('MOBI', 'Mobilefone', '05', 1),
('VT05', 'Viettel', '05', 1),
('VINA', 'Vinaphone', '05', 1),
('VNMB', 'Vietnamobile', '05', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham`
--

CREATE TABLE `tblsanpham` (
  `MaSP` varchar(10) NOT NULL,
  `MaLoaiSP` varchar(10) DEFAULT NULL,
  `MaModel` varchar(10) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `GiaNhap` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MaKM` varchar(10) DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuotMua` int(11) DEFAULT NULL,
  `SoLanXem` int(11) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsim`
--

CREATE TABLE `tblsim` (
  `MaSim` varchar(10) NOT NULL,
  `SDT` varchar(15) NOT NULL,
  `NCCMang` varchar(20) DEFAULT NULL,
  `TKChinh` int(11) DEFAULT NULL,
  `TKKM` int(11) DEFAULT NULL,
  `HSD` datetime DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `GiaNhap` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaikhoan`
--

CREATE TABLE `tbltaikhoan` (
  `TenTaiKhoan` varchar(20) NOT NULL,
  `MatKhau` varchar(50) DEFAULT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `DiaChi` longtext,
  `SDT` varchar(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `HinhDaiDien` longtext,
  `MaLoaiTK` varchar(10) DEFAULT NULL,
  `TrangThaiSuDung` tinyint(1) DEFAULT NULL,
  `TrangThaiKichHoat` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltintuc`
--

CREATE TABLE `tbltintuc` (
  `MaTinTuc` varchar(10) NOT NULL,
  `TieuDe` longtext,
  `ThoiGianDang` datetime DEFAULT NULL,
  `NoiDungNoiBat` longtext,
  `NoiDungChiTiet` longtext,
  `HinhDaiDien` longtext,
  `SoLuotThich` int(11) DEFAULT NULL,
  `SoLuotChiaSe` int(11) DEFAULT NULL,
  `MaLoaiTinTuc` varchar(10) DEFAULT NULL,
  `NguoiDang` varchar(20) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbltintuc`
--

INSERT INTO `tbltintuc` (`MaTinTuc`, `TieuDe`, `ThoiGianDang`, `NoiDungNoiBat`, `NoiDungChiTiet`, `HinhDaiDien`, `SoLuotThich`, `SoLuotChiaSe`, `MaLoaiTinTuc`, `NguoiDang`, `TrangThai`) VALUES
('TT002', 'iPhone 7 có đến 2 phiên bản sở hữu tốc độ khác nhau', '2016-10-23 00:00:00', 'Một sự thật vừa bị hé lộ cho thấy, iPhone 7 phiên bản quốc tế sử dụng chip từ 2 nguồn khác nhau cho tốc độ truy cập dữ liệu chênh lệch rõ ràng.', 'Một sự thật vừa được hé lộ cho thấy, iPhone 7 phiên bản quốc tế sử dụng chip từ 2 nguồn khác nhau cho tốc độ truy cập dữ liệu chênh lệch rõ ràng. Mới đây, một bài test trên mạng cho thấy iPhone 7 phiên bản quốc tế mức dung lượng 32GB có tốc độ lưu thông tin chậm hơn đến 8 lần so với 128GB. Tuy nhiên, còn một bí mật nữa vừa được hé lộ, iPhone 7 còn có 2 phiên bản cho tốc độ truy cập dữ liệu khác nhau.\r\nChip Modem của iPhone 7 được sản xuất và cung cấp bởi 2 đối tác Intel và Qualcomm. Nếu như con chip đến từ Intel được hỗ trợ GSM/WCDMA/LTE thì phiên bản iPhone 7 sử dụng chip modem của Qualcomm hỗ trợ GSM/CDMA/WCDMA/TD-SCDMA/LTE. Qua một bài Test mới đây cho thấy, hiệu năng của 2 con chip này có sự khác nhau đáng kể, cụ thể là chip modem của Qualcomm có tốc độ truy cập dữ liệu cao hơn đáng kể so với con chip đến từ Intel.\r\nTiến hành thử nghiệm đo băng thông truy cập LTE của chip modem Intel (XMM7360 – màu xanh) và Qualcomm (MDM9645M- màu đỏ). Kết quả cho thấy, trong điều kiện sóng mạnh, băng thông của cả 2 đều giữ được ở mức ổn định tối đa. Tuy nhiên, khi ở những nơi có sóng kém hơn, đã thấy khác biệt giữa 2 con chip. Chip modem Intel có mức giảm băng thông mạnh hơn. Chip modem Qualcomm vẫn duy trì được băng thông ở mức tối đa trước khi sụt giảm.\r\nQua thử nghiệm trên có thể thấy, iPhone 7 và iPhone 7 Plus sử dụng con chip đến từ Intel sẽ có hiệu suất kém hơn hẳn, hoặc đơn giản hơn, bạn có thể hiểu là chất lượng bắt sóng di động kém hơn gây ảnh hưởng đến quá trình sử dụng của bạn khi sử dụng ở những nơi sóng không được tốt như tầng hầm hoặc các khu nhà cao tầng. Được biệt, Apple có chính sách bán iPhone 7, iPhone 7 Plus sử dụng chip modem Qualcomm tại các thị trường lớn như Mỹ, Nhật và Trung Quốc. Các thị trường khác sử dụng chip của Intel.\r\nNhư chúng ta đã biết, Intel là một ông lớn trong ngành sản xuất chip máy tính, tuy nhiên lại mới chỉ là “thợ học việc” trong thế giới smartphone. Việc Intel lách qua khe cửa hẹp được hợp tác với Apple trở thành nhà sản xuất chip modem cho iPhone đã là một thành công lớn. Tuy nhiên, vẫn còn một chặng đường gian nan phía trước để đuổi kịp Qualcomm cũng như giành được sự tin tưởng vào những hãng có sản phẩm yêu cầu chất lượng cao như iPhone 7 phiên bản quốc tế.', 'Data\\akali.jpeg', 10, 1, '01', 'xzy', 1),
('TT001', 'Tổng hợp những thông tin rò rì mới nhất về Macbook Pro 2016 sẽ ra mắt ngày 27/10', '2016-10-23 00:00:00', 'Thông tin MacBook Pro 2016 sẽ ra mắt ngày 27/10 đang được người yêu công nghệ tìm kiếm rất nhiều trong những tuần qua khi mà chỉ còn vài ngày nữa Apple sẽ chính thức công bố về sản phẩm này.', 'Thông tin MacBook Pro 2016 sẽ ra mắt ngày 27/10 đang được người yêu công nghệ tìm kiếm rất nhiều trong những tuần qua khi mà chỉ còn vài ngày nữa Apple sẽ chính thức công bố về sản phẩm này.\r\nMặc dù ông lớn "Táo khuyết" chưa đưa ra bất kỳ công bố nào về thông tin MacBook Pro 2016 như: cấu hình, thiết kế, hiệu năng nhưng nửa cuối năm 2016 các tin đồn về chiếc laptop được nhiều người mong chờ nhất của Apple cũng dần dần được hé lộ… Viettel Store xin đưa ra những thông tin rò rỉ mới nhất về sản phẩm này mời các bạn cùng đọc.\r\nMàn hình cảm ứng phụ dưới dãy bàn phím \r\nTin đồn được mong chờ đầu tiên có lẽ là việc cải tiến lớn trên MacBook Pro 2016 khi tích hợp màn hình cảm ứng phụ OLED được gắn liền với bàn phím. Màn hình này có tính năng thay đổi các nội dung hiển thị khi người dùng chọn hoặc tùy chỉnh trước đó. Tiếp đến là hiện thị các thông số như ngày giờ, dung lượng pin, cột sóng hay ô tìm kiếm… Tin đồn rò rỉ này được khẳng định gần như chắc chắn đến 100% và chúng ta chỉ cần ngồi chờ đợi và kiểm chứng. Touch ID giống như iPhone và iPad \r\nNói đến tính năng Touch ID chắc hẳn người dùng không còn xa lạ khi nó đã được tích hợp trên smartphone và tablet của Apple từ vài năm trước. Tuy nhiên, với MacBook thì chưa có và rất có thể MacBook Pro 2016 sẽ là laptop tiên phong của Apple được tích hợp tính năng trên. Đặc biệt hơn nữa là khả năng Touch ID sẽ được đặt ở màn hình phụ dưới dãy bàn phím.', '', 10, 12, '01', 'abc', 1),
('TT003', 'Acer Swift 3 – dòng laptop dành cho doanh nhân với thiết kế ấn tượng', '2016-10-25 04:17:00', 'Laptop dành cho doanh nhân Acer Swift 3 chính thức ra mắt trong thời gian vừa qua được đánh giá ấn tượng khi có nhiều thay đổi về thiết kế hướng riêng đến giới văn phòng hay các doanh nhân.', 'Laptop dành cho doanh nhân Acer Swift 3 chính thức ra mắt trong thời gian vừa qua được đánh giá khá ấn tượng khi có nhiều thay đổi về thiết kế hướng riêng đến giới văn phòng và các doanh nhân. \r\nCó thể thấy, hiện nay các mẫu máy tính xách tay cực kỳ đa dạng với người dùng công nghệ, laptop dành cho doanh nhân cũng được khá nhiều hãng sản xuất giới thiệu ra thị trường. Mới đây nhất là chiếc Acer Swift 3 của Acer được đánh giá khá cao với giá thành cực kỳ cạnh tranh.\r\nThiết kế mềm mại sang trọng\r\nAcer Swift 3 được thiết kế rất tinh tế sang trọng và mềm mại khi máy chỉ dày 17,9mm ở vị trí dày nhất với trọng lượng 1,5 kg. Đây là chiếc laptop nằm trong những chiếc laptop siêu nhẹ và nhỏ gọn tại phân khúc 14 inch có mặt trên thị trường. Điểm nhấn trong thiết kế chính là thân máy được làm bằng kim loại nguyên khối tạo nên vẻ sang trọng và cực kỳ chắc chắn, bền bỉ theo thời gian. \r\nPhong cách hiện đại được hòa trộn tinh tế trong màu vàng gold và trắng bạc của máy khiến Acer Swift 3 càng trở lên long lanh trong mắt người dùng, nhất là dân văn phòng hoặc các doanh nhân nữ trẻ.\r\nCấu hình mạnh mẽ vượt thời gian\r\nAcer Swift 3 được trang bị cấu hình vô cùng mạnh mẽ với tùy chọn cao nhất chính là bộ vi xử lý Core i7, cấu hình không những giúp làm việc trong môi trường với nhiều phần mềm nặng như photoshop… mà còn chơi được các game hạng nặng, game online như Fifa Online 3 mà không hề giật lag, treo đơ máy. Ngoài ra, dòng Acer Swift 3 còn có bản thấp nhất dành cho nhu cầu làm việc thông thường của giới văn phòng ở mức cơ bản đó là sử dụng chip Core i3 6100U, chạy RAM 4GB.\r\nỔ cứng mà Acer Swift 3 sử dụng là dòng SSD với nhiều ưu điểm, như tốc độ nhanh mượt hơn, tối ưu hơn nhiều so với HDD truyền thống đang được sử dụng rộng rãi trên các dòng laptop khác. Với loại ổ cứng SSD thì người dùng sẽ không lo ngại việc di chuyển nhiều khi mang máy bởi khả năng bảo đảm dữ liệu cực tốt của SSD khi có va chạm xảy ra. Với cấu hình mạnh mẽ như vậy, Acer Swift 3 bạn không cần lo về thời lượng sử dụng pin bởi khả năng không cần cắm sạc đến 12 tiếng dùng máy.\r\nĐầu đọc vân tay trên Acer Swift 3 hứa hẹn cạnh tranh tốt với MacBook Pro 2016\r\nChiếc  Acer Swift 3 có một điểm nhấn chính là đầu đọc vân tay được tích hợp trên máy giúp khả năng bảo mật thông tin cao hơn rất nhiều so với nhập liệu mật khẩu. Vừa đỡ tốn thời gian nhập vừa không sợ lộ mật khẩu một cách tốt đa nhất. Việc sử dụng đầu đọc vân tay cũng giống như Touch ID trên iPhone hay iPad, người dùng chỉ cần quét đầu ngón tay vào để bật máy cực nhanh chóng và tiện lợi. \r\nĐiểm nhấn này cũng chính là quân bài giúp Acer Swift 3 có thể cạnh tranh trực tiếp với MacBook Pro 2016 khi các thông tin rò rỉ cho thấy dòng laptop mới của Apple cũng có cảm biến vân tay. Hiện tại mức giá mà Acer bán ra cho sản phẩm Swift 3 (cấu hình thấp nhất) Intel Core i3, RAM 4GB, ổ SSD 128GB, cân nặng 1,5kg là 14.99 triệu đồng.\r\nChỉ với giá thành khoảng 15 triệu đồng, Acer Swift 3 sẽ là laptop có sức cạnh tranh được đánh giá khá lớn trong thời gian tới khi được tung ra các thị trường. Hãy truy cập vào Viettel Store để cập nhật thêm nhiều laptop dành cho doanh nhân và giới văn phòng để có thể lựa chọn được mẫu sản phẩm hợp lý. Gọi 1800 8123 (miễn phí cước cuộc gọi) để được hỗ trợ tốt nhất.', NULL, 19, 5, '01', 'linh', 1),
('TT004', 'Thanh Magic Toolbar sẽ là điểm nhấn hấp dẫn nhất trên Macbook Pro 2016', '2016-10-27 12:12:11', 'Theo nhiều nguồn đáng tin, rất có thể tính năng Macbook Pro 2016 hấp dẫn nhất đó chính là thanh cảm ứng có gắn màn hình OLED mang tên “Magic Toolbar”', 'Theo nhiều nguồn đáng tin, rất có thể tính năng Macbook Pro 2016 hấp dẫn nhất đó chính là thanh cảm ứng có gắn màn hình OLED mang tên “Magic Toolbar”.', 'Magic Toolbar là tính năng Macbook Pro 2016 đang được người dùng mong chờ nhất bên cạnh việc chiếc máy tính này sẽ có bộ khung nhôm mỏng hơn, trackpad Force Touch lớn và hàng loạt các công nghệ mới nhất.\r\nMagic Toolbar là một tính năng Macbook Pro 2016 cực mới lạ và độc đáo\r\nMagic Toolbar là dãy màn hình cảm ứng nhằm thay thế hàng phím chức năng truyền thống và sẽ thay đổi tùy thuộc vào những nhiệm vụ trên hệ thống, chẳng hạn như các nút điều khiển âm lượng hoặc tua nhanh khi đang xem phim trên iTunes.\r\nDãy màn hình cảm ứng OLED cũng có khả năng quét dấu vân tay, giống như cảm biến Touch ID trên iPhone và iPad. Trong khi đó, bộ cảm biến sinh trắc học dự kiến sẽ được tích hợp vào nút nguồn, cho phép người dùng có thể khởi động và xác minh danh tính chỉ với một lần chạm.\r\nApple đã bí mật đăng kí bản quyền Magic Toolbar\r\nMới đây, the Trademark Ninja, trang web nổi tiếng về việc phát hiện ra những vụ đăng ký thương hiệu hàng hóa riêng trên khắp thế giới đã chỉ ra rằng Apple đã đăng ký bảo hộ bản quyền cho một phát minh tương tự như thanh cảm ứng OLED trên vào hồi tháng 2, trong hạng mục phần cứng máy tính của một công ty giả có tên là “Presto Apps America LLC”. Điều thú vị là, vị luật sư đứng tên hồ sơ bản quyền cho Magic Toolbar, cũng chính là người đã từng đăng ký bản quyền AirPods tại Indonesia, Canada và Malaysia.\r\nTrước đây, Apple đã sở hữu bản quyền cho Magic Mouse, Magic Trackpad và Magic Keyboard, vì vậy gần như 99% thanh cảm ứng OLED Magic Toolbar cũng thuộc quyền sở hữu của Apple. \r\nTheo dự kiến, Apple sẽ ra mắt Macbook Pro 2016 tại sự kiện đặc biệt mà hãng sẽ tổ chức vào ngày 27/10 tới đây, nhằm đón đầu dịp mua sắp cuối năm sắp đến. Để biết chính xác hơn về những tính năng Macbook Pro 2016, chúng ta hãy chờ đợi thêm vài ngày nữa nhé!', 43, 23, NULL, '', 1),
('TT005', 'LG G6 tỷ lệ cao sẽ không phải là smartphone có thiết kế mô-đun', '2016-10-18 12:38:00', 'Không nhận được sự hưởng ứng và không thành công với thiết kế mô-đun trên chiếc G5, chiếc smartphone của HTC sắp tới được cho là sẽ không sử dụng thiết kế này nữa.', 'Không nhận được sự hưởng ứng và không thành công với thiết kế mô-đun trên chiếc LG G5, chiếc smartphone của HTC sắp tới được cho là sẽ không sử dụng thiết kế này nữa.\r\nNhư đã đưa tin trước đó, thông tin này trái ngược hẳn với lời một quan chức LG hồi tháng 9. Người này nói rằng LG sẽ gắn bó với thiết kế mô đun trên chiếc smartphone của LG trong năm tới. Tất nhiên đây vẫn chỉ là tin đồn và hoàn toàn có thể thay đổi vào phút chót.\r\nLG G6 có thể quay lại thiết kế nguyên khối phổ biến hiện nay?\r\nNguồn tin này cho biết LG G6 sẽ có một "cấu trúc toàn diện" (có thể suy đoán rằng đó là thiết kế nguyên khối) thay vì sử dụng mô đun. Do đó, thiết bị này có thể trông giống LG V20 nhưng sẽ không có màn hình phụ. ET News cho biết LG G6 sẽ mang đến nhiều khác biệt trong chất liệu, thiết kế lẫn chip âm thanh được tích hợp.\r\nVề màn hình, có nguồn tin cho rằng G6 sẽ được trang bị màn hình 5.5 inch độ phân giải QHD, nhìn vào mẫu thiết kế có thể thấy diện tích sử dụng đã được tối ưu rất tốt, bây giờ chỉ còn biểu tượng mà không còn chữ “LG” nữa.\r\nTheo ET News thì LG G6 sẽ bao gồm "tính năng mới" mà chưa chiếc smartphone nào trên thị trường có được. Chưa có bất kỳ gợi ý nào về tính năng mới này nhưng gần như chắc chắn là LG G6 sẽ được trang bị khả năng chống thấm nước.\r\nCấu hình LG G6 được kỳ vọng với Snapdragon 830\r\nTheo như nguồn tin thì G6 được kỳ vọng trang bị chip Snapdragon 830, RAM 4 GB, camera chính 12 MP, cùng camera phụ 8 MP với khẩu độ f/1.8. Các module lắp ghép cũng không còn được trang bị trên G6.\r\nChiếc smartphone của LG sắp tới nhiều khả năng sẽ được giới thiệu vào đầu năm 2017, tức là khoảng 1 năm sau khi ra mắt LG G5 (MWC 2016).', NULL, 22, 15, '01', 'hehe', 1),
('TT006', '[19/10] Tổng hợp ứng dụng hay cho iOS đang được miễn phí trong thời gian ngắn', '2016-10-19 20:25:00', 'Hiện tại, trên kho ứng dụng App Store có 8 ứng dụng iOS mất phí đang được miễn phí trong thời gian ngắn. Bạn đọc đang sử dụng iPhone, iPad hãy nhanh tay tải về trải nghiệm trước khi chúng hết hạn nhé.', 'Hiện tại, trên kho ứng dụng App Store có 8 ứng dụng iOS mất phí đang được miễn phí trong thời gian ngắn. Bạn đọc đang sử dụng iPhone, iPad hãy nhanh tay tải về trải nghiệm trước khi chúng hết hạn nhé.\r\n\r\n1. Compass Zen Pro - 8,99 USD\r\nCompass Zen Pro là ứng dụng la bàn chuyên nghiệp, được thiết kế giao diện tối giản, dễ tiếp cận trên các thiết bị iOS, với các tính năng nổi bật như đo vận tốc (km/h hoặc mph), đo độ cao bằng GPS (mét hoặc feet), tọa độ (DMS hoặc Decimal), cho phép tuỳ chỉnh hình nền ứng dụng,...\r\n2. Minecraft - 4,99 USD\r\nĐược nhiều người tải về trên App Store, Minecraft là tựa game phiêu lưu từ nhà phát triển Telltale Games. Ngoài ra, nhà phát triển cho biết rằng Minecarft chạy mượt trên iPhone 5, iPad 3 hoặc mới hơn, và yêu cầu các thiết bị tối thiểu phải cài iOS 7. Do đó, bạn đọc nên lưu ý dòng máy mà mình sử dụng khi tải về ứng dụng này để có thể tận hưởng hết sự thú vị của game mà không bị gián đoạn.\r\n3. Timebox Photo Journal - 3,99 USD\r\nTimebox là ứng dụng tự động tạo nhật ký cá nhân từ các bức ảnh, video và lịch của bạn. Ngoài ra nhà phát triển ứng dụng cũng cung cấp nhiều khả năng tuỳ biến cá nhân khác trong ứng dụng như cho phép thêm ký tự và một số tuỳ chỉnh khác.\r\n4. BeautyPlus - 1,99 USD\r\nBeautyPlus là ứng dụng dành cho những bạn nữ thích chụp ảnh selfie, với nhiều hiệu ứng đặc biệt giúp có được bức hình ưng ý chỉ trong vài phút. Để sử dụng bạn cần có iPhone, iPad hoặc iPod Touch cài iOS 8 hoặc mới hơn.\r\n5. CamoGraphy - 1,99 USD\r\nCamoGraphy là ứng dụng hỗ trợ việc chụp ảnh trên iPhone, iPad với nhiều tính năng đặc biệt như HDR, khi bạn điều chỉnh ISO thì tốc độ màn chập sẽ được chỉnh tự động, ngược lại khi bạn điều chỉnh tốc độ màn chập thì ISO sẽ được chỉnh tự động....\r\n6. iMySystem - 0,99 USD\r\niMySystem là ứng dụng cung cấp chi tiết thông tin và tình trạng của các thiết bị iOS. Những bạn đang tìm mua máy cũ hoặc phân vân về tình trạng chiếc iPhone hiện tại, có thể tải về dùng thử.\r\n7. Zombify - 0,99 USD\r\nZombify là ứng dụng vui vẻ dành cho các bạn sử dụng iOS vào những dịp như halloween, sau khi đưa vào hình ảnh của bạn, ứng dụng sẽ áp dụng thuật toán xử lý để biến đổi thành khuôn mặt rùng rợn của zombie.\r\n8. My Parking - 0,99 USD\r\nBạn có công việc bận rộn, thường xuyên phải di chuyển? Ứng dụng ParkIt là ứng dụng ghi nhớ điểm đỗ xe, có khả năng kết nối với Apple Watch để bạn có thể tiết kiệm tối đa thời gian tìm kiếm xe.', NULL, 32, 1, '03', 'zzz', 1),
('TT007', 'Thông báo hoàn tiền 100% cho khách hàng đã mua Samsung Galaxy Note 7 tại Viettel Store', '2016-10-31 17:32:00', 'Theo thông tin cập nhật mới nhất, các khách hàng tham gia chương trình đặt trước và sở hữu Samsung Galaxy Note 7 tại Viettel Store có thể trực tiếp mang sản phẩm Galaxy Note7 đến Trung tâm Chăm sóc Khách hàng Samsung gần nhất để có thể hoàn tiền 100%.', 'Theo thông tin cập nhật mới nhất, các khách hàng tham gia chương trình đặt trước và sở hữu Samsung Galaxy Note 7 tại Viettel Store có thể trực tiếp mang sản phẩm Galaxy Note7 đến Trung tâm Chăm sóc Khách hàng Samsung gần nhất để có thể hoàn tiền 100%.\r\nThời gian áp dụng chương trình: 18/10/2016 đến 18/11/2016\r\nĐịa chỉ 115 trung tâm bảo hành của Samsung trên toàn quốc tại đây.\r\n', NULL, 11, 2, '04', 'kkkkk', 1),
('TT008', 'Bạn có chắc mình đang sạc điện thoại đúng cách?', '2016-10-23 09:26:23', 'Nhiều người trong chúng ta đều có một quan niệm “bất di bất dịch” là khi nào điện thoại sắp hết pin hoặc cạn pin thì mới cần đem sạc, tuy nhiên điều đó không hoàn toàn đúng.', 'Nhiều người trong chúng ta đều có một quan niệm “bất di bất dịch” là khi nào điện thoại sắp hết pin hoặc cạn pin thì mới cần đem sạc, tuy nhiên điều đó không hoàn toàn đúng.\r\nTheo một nghiên cứu từ Battery University về pin Lithium-ion có trên hầu hết những chiếc smartphone ngày nay chỉ ra rằng, những viên pin đều rất nhạy cảm với những tác động và điều này sẽ gây ảnh hưởng tới thời lượng của pin.\r\nDưới đây là những tác động sẽ gây ảnh hưởng tới thời lượng pin mà bạn đang nhầm lẫn.\r\n1. Không nên tiếp tục cắm sạc khi pin đã đầy\r\nTheo Battery University, để điện thoại cắm sạc khi pin đã đầy, như để qua đêm sẽ không tốt cho tuổi thọ của pin.\r\nMột khi điện thoại đã sạc đầy, nó sẽ giữ chế độ "sạc nhỏ giọt" để duy trì pin ở mức 100% khi cắm sạc. Điều này khiến viên pin luôn trong trạng thái nạp và xả năng lượng, lâu dài sẽ gây hao mòn chất điện hóa bên trong.\r\nDo đó, việc tháo sạc sau khi pin đã đầy giống như thả lỏng cơ sau bài tập thể dục, giúp các thành phần hóa học của pin được ổn định và tuổi thọ kéo dài hơn.\r\n2. Cắm sạc cho điện thoại bất cứ khi nào có thể\r\nViệc làm này sẽ tốt hơn là cắm sạc cho điện thoại một lần trong suốt thời gian dài.\r\nTheo Battery University, cách tốt nhất để sạc cho điện thoại là cắm sạc mỗi khi pin giảm 10%. Tuy nhiên, rõ ràng điều này không phù hợp với hầu hết mọi người, do đó hãy cắm sạc mỗi khi có thể, thực hiện nhiều lần trong ngày. Việc làm này không chỉ giúp viên pin của bạn hoạt động bền bỉ, mà còn đảm bảo cho nhu cầu sử dụng mỗi ngày.\r\nBên cạnh đó, hãy tắt những tính năng không cần thiết trên điện thoại, để có thể kéo dài được thời lượng pin hơn.\r\n3. Đừng sạc pin đầy tới 100%\r\nTrên thực tế, pin Li-on không cần sạc đầy, bởi vì khi sạc điện áp sẽ tăng dần từ 3,8 tới 4,2V sau khi sạc đầy, nhưng ở mức điện áp cao lại khiến các chất điện hóa trong pin phản ứng nhanh hơn đẩy nhanh quá trình lão hóa pin. Do đó, người ta cho rằng pin Li-on sẽ có tuổi thọ cao nhất khi duy trì pin ở mức dưới 100%.\r\n4. Giữ cho điện thoại luôn mát\r\nPin điện thoại rất nhạy cảm với nhiệt, do đó hãy tháo ốp lưng ra khi sạc để tỏa nhiệt, nếu đi dưới trời nắng nóng, đảm bảo chiếc điện thoại được che chắn. Điều đó sẽ giúp viên pin luôn trong tình trạng tốt.\r\n\r\nTrên đây là một số chia sẻ nhỏ giúp các bạn có thể hiểu và có được cách sạc cũng như bảo vệ viên pin của mình tốt hơn. Chúc các bạn thành công.', NULL, 54, 32, '02', 'gg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `MaThanhToan` varchar(50) NOT NULL,
  `MaGioHang` varchar(50) NOT NULL,
  `TenNguoiMua` text NOT NULL,
  `GioiTinh` bit(1) NOT NULL,
  `SoDienThoai` int(11) NOT NULL,
  `Email` text NOT NULL,
  `GiaThanhToan` int(11) NOT NULL,
  `HinhThucThanhToan` text NOT NULL,
  `DiaChi` text NOT NULL,
  `TrangThai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `binh luan`
--
ALTER TABLE `binh luan`
  ADD PRIMARY KEY (`MaBinhLuan`);

--
-- Chỉ mục cho bảng `binhluanthuoc`
--
ALTER TABLE `binhluanthuoc`
  ADD PRIMARY KEY (`MaBinhLuanThuoc`);

--
-- Chỉ mục cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`MaSP`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`MaGioHang`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`MaHinhAnh`);

--
-- Chỉ mục cho bảng `hoadonban`
--
ALTER TABLE `hoadonban`
  ADD PRIMARY KEY (`MaHDB`);

--
-- Chỉ mục cho bảng `hoadonnap`
--
ALTER TABLE `hoadonnap`
  ADD PRIMARY KEY (`MaHDN`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `loaiphukien`
--
ALTER TABLE `loaiphukien`
  ADD PRIMARY KEY (`MaLoaiPhuKien`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`MaLoaiSP`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhomtintuc`
--
ALTER TABLE `nhomtintuc`
  ADD PRIMARY KEY (`MaNhomTin`);

--
-- Chỉ mục cho bảng `phukien`
--
ALTER TABLE `phukien`
  ADD PRIMARY KEY (`MaPhuKien`);

--
-- Chỉ mục cho bảng `sysdiagrams`
--
ALTER TABLE `sysdiagrams`
  ADD PRIMARY KEY (`diagram_id`),
  ADD UNIQUE KEY `UK_principal_name` (`principal_id`,`name`);

--
-- Chỉ mục cho bảng `tblbinhluan`
--
ALTER TABLE `tblbinhluan`
  ADD PRIMARY KEY (`MaBL`,`MaBaiViet`),
  ADD KEY `FK_tblBinhLuan_tblSanPham` (`MaBaiViet`);

--
-- Chỉ mục cho bảng `tblchitiethoadon`
--
ALTER TABLE `tblchitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`),
  ADD KEY `FK_tblChiTietHoaDon_tblSanPham` (`MaSP`),
  ADD KEY `FK_tblChiTietHoaDon_tblLoaiSanPham` (`MaLoaiSP`);

--
-- Chỉ mục cho bảng `tbldanhgiasanpham`
--
ALTER TABLE `tbldanhgiasanpham`
  ADD PRIMARY KEY (`DiaChiMAC`,`MaSP`),
  ADD KEY `FK_tblDanhGiaSanPham_tblSanPham` (`MaSP`),
  ADD KEY `FK_tblDanhGiaSanPham_tblLoaiSanPham` (`MaLoaiSP`);

--
-- Chỉ mục cho bảng `tblgiohang`
--
ALTER TABLE `tblgiohang`
  ADD PRIMARY KEY (`DiaChiMAC`,`MaSP`),
  ADD KEY `FK_tblGioHang_tblSim` (`MaSP`),
  ADD KEY `FK_tblGioHang_tblLoaiSanPham` (`MaLoaiSP`);

--
-- Chỉ mục cho bảng `tblhinhminhhoa`
--
ALTER TABLE `tblhinhminhhoa`
  ADD PRIMARY KEY (`MaHinhMinhHoa`),
  ADD KEY `FK_tblHinhMinhHoa_tblSanPham` (`MaSP`);

--
-- Chỉ mục cho bảng `tblhinhquangcao`
--
ALTER TABLE `tblhinhquangcao`
  ADD PRIMARY KEY (`MaHinhQC`);

--
-- Chỉ mục cho bảng `tblhinhslide`
--
ALTER TABLE `tblhinhslide`
  ADD PRIMARY KEY (`MaHinhSlide`);

--
-- Chỉ mục cho bảng `tblhinhthucte`
--
ALTER TABLE `tblhinhthucte`
  ADD PRIMARY KEY (`MaHinh`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `tblkhuyenmai`
--
ALTER TABLE `tblkhuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `tblloaidienthoai`
--
ALTER TABLE `tblloaidienthoai`
  ADD PRIMARY KEY (`MaLoaiDT`);

--
-- Chỉ mục cho bảng `tblloaiphukien`
--
ALTER TABLE `tblloaiphukien`
  ADD PRIMARY KEY (`MaLoaiPK`);

--
-- Chỉ mục cho bảng `tblloaisanpham`
--
ALTER TABLE `tblloaisanpham`
  ADD PRIMARY KEY (`MaLoaiSP`);

--
-- Chỉ mục cho bảng `tblloaitintuc`
--
ALTER TABLE `tblloaitintuc`
  ADD PRIMARY KEY (`MaLoaiTinTuc`);

--
-- Chỉ mục cho bảng `tblloaitk`
--
ALTER TABLE `tblloaitk`
  ADD PRIMARY KEY (`MaLoaiTK`);

--
-- Chỉ mục cho bảng `tblmodeldt`
--
ALTER TABLE `tblmodeldt`
  ADD PRIMARY KEY (`MaModel`),
  ADD KEY `FK_tblModelDT_tblLoaiDienThoai` (`MaLoaiDT`),
  ADD KEY `FK_tblModelDT_tblNhaSanXuat` (`MaNSX`);

--
-- Chỉ mục cho bảng `tblmodellaptop`
--
ALTER TABLE `tblmodellaptop`
  ADD PRIMARY KEY (`MaModel`),
  ADD KEY `FK_tblModelLaptop_tblNhaSanXuat` (`MaNSX`);

--
-- Chỉ mục cho bảng `tblmodelphukien`
--
ALTER TABLE `tblmodelphukien`
  ADD PRIMARY KEY (`MaModel`),
  ADD KEY `FK_tblModelPhuKien_tblLoaiPhuKien` (`MaLoaiPK`);

--
-- Chỉ mục cho bảng `tblnhasanxuat`
--
ALTER TABLE `tblnhasanxuat`
  ADD PRIMARY KEY (`MaNSX`);

--
-- Chỉ mục cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `FK_tblSanPham_tblLoaiSanPham` (`MaLoaiSP`),
  ADD KEY `FK_tblSanPham_tblKhuyenMai` (`MaKM`),
  ADD KEY `FK_tblSanPham_tblModelDT` (`MaModel`);

--
-- Chỉ mục cho bảng `tblsim`
--
ALTER TABLE `tblsim`
  ADD PRIMARY KEY (`MaSim`);

--
-- Chỉ mục cho bảng `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD PRIMARY KEY (`TenTaiKhoan`),
  ADD KEY `FK_tblTaiKhoan_tblLoaiTK` (`MaLoaiTK`);

--
-- Chỉ mục cho bảng `tbltintuc`
--
ALTER TABLE `tbltintuc`
  ADD PRIMARY KEY (`MaTinTuc`),
  ADD KEY `FK_tblTinTuc_tblTaiKhoan` (`NguoiDang`),
  ADD KEY `FK_tblTinTuc_tblLoaiTinTuc` (`MaLoaiTinTuc`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`MaThanhToan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sysdiagrams`
--
ALTER TABLE `sysdiagrams`
  MODIFY `diagram_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
