-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2016 lúc 05:41 SA
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
('02', 'Bao da/Ốp lưng', 1),
('03', 'Pin dự phòng', 1),
('04', 'Tai nghe', 1),
('05', 'Cáp/Sạc', 1),
('06', 'Loa', 1),
('07', 'USB', 1),
('08', 'Chuột', 1),
('09', 'Đế tản nhiệt', 1),
('10', 'Túi đựng laptop', 1),
('11', 'Ổ cứng', 1),
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
('02', 'Máy tính bảng', 1),
('03', 'Laptop', 1),
('04', 'Phụ kiện', 1),
('05', 'Sim số', 1);

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
('01', 'Tin công nghệ', 1),
('02', 'Tin tuyển dụng', 1),
('03', 'Bệnh viện công nghệ', 1),
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
('DT002', 'iPhone 5S 16Gb', '1', '8', '1,8', 'iOS 9', 'Apple A7 2 nhân 64-bit', 'PowerVR G6430', 1, 16, 0, 'Nano SIM', 'HSDPA 850/900/1700/1900/2100, LTE', 'Wifi 802.11 a/b/g/n, Wi-Fi Direct, Wi-Fi hotspot', 'V4.0', NULL, 'Hợp kim nhôm', 'Dài 123.8 mm - Ngang 58.6 mm - Dày 7.6 mm', '112 g', 'Nguyên khối', '1560 mAh', 'AP01', 'LDT01', 12, 'dienthoai\\iPhone 5S 16Gb.jpeg', '', '', 6290000, '', 1),
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
('LNV', 'Lenovo', '03', 1),
('ACE', 'Acer', '03', 1),
('AS', 'Asus', '03', 1),
('DE', 'Dell', '03', 1),
('AP', 'Apple', '03', 1),
('LNV02', 'Lenovo', '02', 1),
('AS02', 'Asus', '02', 1),
('DE02', 'Dell', '02', 1),
('AP02', 'Apple', '02', 1),
('SS02', 'Samsung', '02', 1),
('VT01', 'Viettel', '01', 1),
('LG', 'LG', '01', 1),
('OP', 'OPPO', '01', 1),
('HTC', 'HTC', '01', 1),
('LNV01', 'Lenovo', '01', 1),
('AS01', 'Asus', '01', 1),
('SONY', 'Sony', '01', 1),
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
('TT002', 'Google ra mắt ứng dụng “quý như vàng” dành cho dân phượt', '2016-09-20 04:00:00', 'Nhằm bổ sung cho dân Phượt những công cụ mới để làm hành trang cho các chuyến đi, Google đã tung ra Trips, một ứng dụng du lịch giúp người dùng lên lịch và khám phá những địa điểm mới.', '<div>\r\n<center><p><em><img alt="" src="HinhTinTuc\\Google.jpeg"></em></p>\r\n<p><em>Ứng dụng du lịch của Google giúp bạn dễ dàng lên kế hoạch cho chuyến du ngoạn của mình</em></p></center>\r\n<p>Hiện tại, <strong>ứng dụng du lịch</strong> Google Trips hiện đã có mặt trên cả Play Store cho Android và App Store cho iOS để người dùng có thể tải về trải nghiệm.</p>\r\n<p> </p>\r\n<p><strong>Google &ldquo;bao&rdquo; trọn gói mọi kế hoạch du lịch của bạn</strong></p>\r\n<p>Với khả năng cung cấp cho người dùng những thông tin từ lịch trình, danh lam thắng cảnh, món ăn ngon cho tới một số điều hữu ích về địa điểm nơi bạn tới, Google Trip đủ khả năng cạnh tranh với nhiều ứng dụng hỗ trợ du lịch khác.</p>\r\n<center><p><em><img alt="" src="HinhTinTuc\\Google1.jpeg"></em></p>\r\n<p><em>Giao diện chính của ứng dụng khá trực quan và thân thiện</em></p></center>\r\n<p>Một điều không thể thiếu trong mỗi chuyến đi đó là địa điểm thăm quan. Thông thường, nếu như đặt các Tour của công ty Lữ hành, bạn sẽ nhận được hướng dẫn và đưa tới những địa điểm nổi bật tại thành phố bạn tới. Tuy nhiên, nếu đi một mình, chúng ta thường sẽ bối rối trong khoản này và lựa chọn là hỏi bạn bè, những người có kinh nghiệm hay tìm trên Internet. Google Trip giúp mọi thứ dễ dàng hơn.</p>\r\n<p><br>\r\n  <br>\r\n  <strong>Google Trips hoạt động khi cả thiết bị của bạn Offline</strong></p>\r\n<p>Không chỉ giúp bạn tìm hiểu các địa điểm nổi tiếng, tìm kiếm các nhà hàng xung quanh để ăn uốn, Google Trips còn có thể theo dõi các thông tin khác cần thiết cho chuyến đi của bạn, như lịch đặt chỗ, lịch trình tham quan trong các tấm vé bạn đã mua. Bạn có thể truy cập các thông tin này ngay cả khi smartphone ở chế độ offline không có truy cập internet.</p>\r\n<center><p><em><img alt="" src="HinhTinTuc\\Google2.jpeg"></em></p>\r\n<p><em>Ngay cả khi bạn ở chế độ Offline, ứng dụng vẫn có thể hoạt động tốt cùng bạn</em></p></center>\r\n<p>Hiện Trips đang được cung cấp miễn phí cho iOS và Android. Ứng dụng này có thể hỗ trợ đặt vé máy bay, đặt phòng khách sạn, cung cấp hướng dẫn đã được biên tập cho hơn 200 thành phố và gợi ý các địa điểm du lịch cho người dùng một cách cá nhân dựa trên lịch sử Google của người dùng.</p>\r\n</div>', 'HinhTinTuc/Google.jpeg', 1, 1, '01', 'linh', 1),
('TT003', 'TUYỂN DỤNG GẤP NHÂN VIÊN SIÊU THỊ ĐÀ NẴNG', '2016-10-28 04:00:00', 'Tuyển dụng 05 Nhân viên Kinh doanh, Kỹ thuật cho Siêu thị Đà Nẵng ', '<p><br>\r\n  <center><img alt="" src="HinhTinTuc/Tuyendung.jpeg"></p></center>\r\n<p><strong>ĐỊA ĐIỂM LÀM VIỆC, MÃ HỒ SƠ: </strong></p>\r\n<p><strong>1. Địa điểm làm việc:</strong></p>\r\n<p>- Siêu thị Viettel Đà Nẵng.</p>\r\n<p><strong>2. Mã hồ sơ: </strong></p>\r\n<p>Ứng viên soạn hồ sơ theo cấu trúc tiêu đề E-mail như sau: Họ tên_Mã tỉnh </p>\r\n<p>Ví dụ: NguyenVanA_DaNang</p>\r\n<p><strong>VỊ TRÍ ĐĂNG TUYỂN: </strong></p>\r\n<p>- Nhân viên Kinh doanh/Giao dịch: 03 người</p>\r\n<p>- Nhân viên Kỹ thuật: 02 người</p>\r\n<p><strong>YÊU CẦU: </strong></p>\r\n<p>- Nam/nữ, tuổi từ 18-25, tốt nghiệp từ PTTH trở lên. </p>\r\n<p>- Ngoại hình cân đối ưa nhìn, nữ cao từ 1,55m, nam cao từ 1.60m trở lên, không nói ngọng, nói lắp.</p>\r\n<p>- Nhanh nhẹn, hoạt bát, thân thiện, hòa đồng, luôn tươi cười với khách hàng.</p>\r\n<p>- Kỹ năng giao tiếp, kỹ năng chăm sóc khách hàng tốt.</p>\r\n<p>- Ưu tiên ứng viên có đam mê đặc biệt với công việc bán hàng, có kiến thức hiểu biết về sản phẩm Điện thoại/Laptop, hoặc ứng viên đang làm PG tại các hãng…..</p>\r\n<p> </p>\r\n<div><strong>QUYỀN LỢI : </strong></div>\r\n<p><strong>VIETTEL CAM KẾT ĐEM LẠI CHO CÁC BẠN:</strong></p>\r\n<p>- Một môi trường làm việc năng động, chuyên nghiệp, có nhiều cơ hội phát triển.</p>\r\n<p>- Chế độ lương, thưởng, chính sách đãi ngộ công bằng dựa trên năng lực.</p>\r\n<p>- Được đi du lịch hàng năm.</p>\r\n<p><strong>CÁCH THỨC ỨNG TUYỂN:</strong></p>\r\n<p>Ứng viên quan tâm đến các vị trí ứng tuyển theo 02 cách sau:</p>\r\n<p><strong>Cách 1</strong>: Nộp hồ sơ trực tiếp</p>\r\n<p>- Ứng viên nộp hồ sơ trực tiếp tại Văn phòng Trung tâm Bán lẻ - Tầng 7, tòa nhà Việt Á, Duy Tân, Q. Cầu Giấy, Hà Nội.</p>\r\n<p>- Ứng viên tại các tỉnh/Tp trên cả nước nộp hồ sơ trực tiếp tại hệ thống Siêu thị bán lẻ Viettelstore.</p>\r\n<p><strong>Cách 2</strong>: Nộp hồ sơ ứng viên theo mẫu CV đính kèm (tải <a href="http://cdn.viettelstore.vn/Images/UploadFiles/Cv.doc"><strong>tại đây</strong></a>), gửi về Email: <strong>tuyendung@viettelstore.vn</strong>.</p>\r\n<p><br>\r\n  <strong>HẠN NỘP HỒ SƠ: 10/11/2016 (ưu tiên các ứng viên nộp hồ sơ sớm).</strong></p>\r\n<table width="602" height="252">\r\n  <tbody>\r\n    <tr>\r\n      <td colspan="2">THÔNG TIN NHÀ TUYỂN DỤNG<br></td>\r\n    </tr>\r\n    <tr>\r\n      <td> Tên đầy đủ </td>\r\n      <td> Trung tâm Bán lẻ Viettel – Công ty TM &amp; XNK Viettel<br></td>\r\n    </tr>\r\n    <tr>\r\n      <td> Website</td>\r\n      <td> https://viettelstore.vn</td>\r\n    </tr>\r\n    <tr>\r\n      <td> Số nhân viên</td>\r\n      <td> 3000 – 5000 người </td>\r\n    </tr>\r\n    <tr>\r\n      <td> Trụ sở chính</td>\r\n      <td> Tầng 7 – tòa nhà Việt Á – Duy Tân – Q. Cầu Giấy – Hà Nội</td>\r\n    </tr>\r\n    <tr>\r\n      <td> Email tuyển dụng</td>\r\n      <td> tuyendung@viettelstore.vn</td>\r\n    </tr>\r\n    <tr>\r\n      <td> Hotline</td>\r\n      <td> 046.293.5555</td>\r\n    </tr>\r\n    <tr>\r\n      <td> Giới thiệu</td>\r\n      <td> Là Trung tâm lớn nhất thuộc Công ty TM &amp; XNK Viettel ( đơn vị thuộc Tập đoàn Viễn thông Quân đội),  sở hữu gần 300 Siêu thị bán lẻ trên toàn quốc với ngành nghề kinh doanh chính: Bán lẻ ĐTDĐ, Laptop,  Phụ  kiện chính hãng.<br>\r\n        <br></td>\r\n    </tr>\r\n  </tbody>\r\n</table>', 'HinhTinTuc/Tuyendung.jpeg', 100, 12, '02', 'linh', 1),
('TT004', '[THÁI NGUYÊN – PHỔ YÊN] SẮP KHAI TRƯƠNG SIÊU THỊ VIETTELSTORE MỚI', '2016-10-28 06:25:04', 'Tuyển dụng 15 Nhân viên cho Siêu thị mới Thái Nguyên – Phổ Yên', '<p><br>\r\n  <center><img alt="" src="HinhTinTuc/Tuyendungthainguyen.jpeg"></p></center>\r\n<p><strong>ĐỊA ĐIỂM LÀM VIỆC, MÃ HỒ SƠ: </strong></p>\r\n<p><strong>1. Địa điểm làm việc:</strong></p>\r\n<p>- Siêu thị Viettel Thái Nguyên – Phổ Yên.</p>\r\n<p><strong>2. Mã hồ sơ: </strong></p>\r\n<p>Ứng viên soạn hồ sơ theo cấu trúc tiêu đề E-mail như sau: Họ tên_Mã tỉnh </p>\r\n<p>Ví dụ: NguyenVanA_ThaiNguyen</p>\r\n<p><strong>VỊ TRÍ ĐĂNG TUYỂN: </strong></p>\r\n<p>- Nhân viên Kinh doanh/Giao dịch: 10 người</p>\r\n<p>- Nhân viên Kế toán: 02 người</p>\r\n<p>- Nhân viên Kỹ thuật: 03 người</p>\r\n<p><strong>YÊU CẦU: </strong></p>\r\n<p>- Nam/nữ, tuổi từ 18-25, tốt nghiệp từ PTTH trở lên. </p>\r\n<p>- Ngoại hình cân đối ưa nhìn, nữ cao từ 1,55m, nam cao từ 1.60m trở lên, không nói ngọng, nói lắp.</p>\r\n<p>- Nhanh nhẹn, hoạt bát, thân thiện, hòa đồng, luôn tươi cười với khách hàng.</p>\r\n<p>- Kỹ năng giao tiếp, kỹ năng chăm sóc khách hàng tốt.</p>\r\n<p>- Ưu tiên ứng viên có đam mê đặc biệt với công việc bán hàng, có kiến thức hiểu biết về sản phẩm Điện thoại/Laptop, hoặc ứng viên đang làm PG tại các hãng…..</p>\r\n<p> </p>\r\n<div><strong>QUYỀN LỢI : </strong></div>\r\n<p><strong>VIETTEL CAM KẾT ĐEM LẠI CHO CÁC BẠN:</strong></p>\r\n<p>- Một môi trường làm việc năng động, chuyên nghiệp, có nhiều cơ hội phát triển.</p>\r\n<p>- Chế độ lương, thưởng, chính sách đãi ngộ công bằng dựa trên năng lực.</p>\r\n<p>- Được đi du lịch hàng năm.</p>\r\n<p><strong>CÁCH THỨC ỨNG TUYỂN:</strong></p>\r\n<p>Ứng viên quan tâm đến các vị trí ứng tuyển theo 02 cách sau:</p>\r\n<p><strong>Cách 1</strong>: Nộp hồ sơ trực tiếp</p>\r\n<p>- Ứng viên nộp hồ sơ trực tiếp tại Văn phòng Trung tâm Bán lẻ - Tầng 7, tòa nhà Việt Á, Duy Tân, Q. Cầu Giấy, Hà Nội.</p>\r\n<p>- Ứng viên tại các tỉnh/Tp trên cả nước nộp hồ sơ trực tiếp tại hệ thống Siêu thị bán lẻ Viettelstore.</p>\r\n<p><strong>Cách 2</strong>: Nộp hồ sơ ứng viên theo mẫu CV đính kèm (tải <a href="http://cdn.viettelstore.vn/Images/UploadFiles/Cv.doc"><strong>tại đây</strong></a>), gửi về Email: <strong>tuyendung@viettelstore.vn</strong>.</p>\r\n<p><br>\r\n  <strong>HẠN NỘP HỒ SƠ: 10/11/2016 (ưu tiên các ứng viên nộp hồ sơ sớm).</strong></p>\r\n<table width="602" height="252">\r\n  <tbody>\r\n    <tr>\r\n      <td colspan="2">THÔNG TIN NHÀ TUYỂN DỤNG<br></td>\r\n    </tr>\r\n    <tr>\r\n      <td> Tên đầy đủ </td>\r\n      <td> Trung tâm Bán lẻ Viettel – Công ty TM &amp; XNK Viettel<br></td>\r\n    </tr>\r\n    <tr>\r\n      <td> Website</td>\r\n      <td> https://viettelstore.vn</td>\r\n    </tr>\r\n    <tr>\r\n      <td> Số nhân viên</td>\r\n      <td> 3000 – 5000 người </td>\r\n    </tr>\r\n    <tr>\r\n      <td> Trụ sở chính</td>\r\n      <td> Tầng 7 – tòa nhà Việt Á – Duy Tân – Q. Cầu Giấy – Hà Nội</td>\r\n    </tr>\r\n    <tr>\r\n      <td> Email tuyển dụng</td>\r\n      <td> tuyendung@viettelstore.vn</td>\r\n    </tr>\r\n    <tr>\r\n      <td> Hotline</td>\r\n      <td> 046.293.5555</td>\r\n    </tr>\r\n    <tr>\r\n      <td> Giới thiệu</td>\r\n      <td> Là Trung tâm lớn nhất thuộc Công ty TM &amp; XNK Viettel ( đơn vị thuộc Tập đoàn Viễn thông Quân đội),  sở hữu gần 300 Siêu thị bán lẻ trên toàn quốc với ngành nghề kinh doanh chính: Bán lẻ ĐTDĐ, Laptop,  Phụ  kiện chính hãng.<br></td>\r\n    </tr>\r\n  </tbody>\r\n</table>', 'HinhTinTuc/Tuyendungthainguyen.jpeg', 12, 1, '02', 'linh', 1),
('TT005', 'Nắp lưng Galaxy S7 Edge bị vỡ, làm cách nào để thay thế?', '2016-10-28 04:04:00', 'Nếu bạn đang sử dụng điện thoại Galaxy S7 Edge và vô tình đánh rơi nó, bạn sẽ hiểu mặt lưng của chiếc smartphone này dễ vỡ tới mức nào nếu không sử dụng cẩn thận. Bài viết dưới đây sẽ hướng dẫn bạn thay nắp lưng Galaxy S7 Edge một cách đơn giản nhất.', '<p><br>\r\n  <center><img alt="" src="HinhTinTuc/S7.jpeg"></p></center>\r\n<p>Để <strong>thay nắp lưng Galaxy S7 Edge</strong>, bạn cần chuẩn bị một mặt lưng Galaxy S7 Edge có bán tại các cửa hàng sửa chữa điện thoại và một máy sấy hoặc máy khò công suất cao, một vài miếng nhựa mỏng, miếng hút chân không là có thể chủ động thực hiện. </p>\r\n<p> </p>\r\n<p><strong>Hướng dẫn thay nắp lưng Galaxy S7 Edge bằng hình ảnh</strong></p>\r\n<center><p><em><img alt="" src="HinhTinTuc/S71.jpeg"></em></p>\r\n<p>Để thực hiện được việc thay mặt lưng Galaxy S7 Edge, bạn phải tắt nguồn...</p>\r\n<p><em><img alt="" src="HinhTinTuc/S72.jpeg"></em></p>\r\n<p><em>... sau đó </em><em>tháo sim </em></p>\r\n<p><em><img alt="" src="HinhTinTuc/S73.jpeg"></em></p>\r\n<p><em> ...<em>và chuẩn bị một máy sấy công suất cao sấy xung quanh viền phía sau của chiếc Galaxy S7 Edge</em></em></p>\r\n<p><em><img alt="" src="HinhTinTuc/S74.jpeg"></em></p>\r\n<p><em>Sau đó bạn sử dụng miếng nhựa mỏng hoặc dao lam để tách dần lớp keo mặt sau</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/S75.jpeg"></em></p>\r\n<p><em>Tiếp theo bạn tiến hành sử dụng các vật dụng mỏng để đánh dấu các vị trí đã tách</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/S76.jpeg"></em></p>\r\n<p><em>Bạn phải tách dần băng keo tại 4 cạnh của chiếc smartphone này để có thể tháo rời chiếc nắp lưng</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/S77.jpeg"></em></p>\r\n<p><em>Sau khi đã tách rời được nắp lưng bạn tiến hành vệ sinh băng keo trên khung máy, bổ sung băng keo 2 mặt và chuẩn bị một nắp lưng mới đã mua ngoài cửa hàng</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/S78.jpeg"></em></p>\r\n<p><em>Bước cuối cùng khá quan trọng, bạn cẩn thận đặt nắp lưng mới vào vị trí ban đầu và cố định nó trong vòng 30 phút trước khi có thể sử dụng bình thường</em></p></center>\r\n<p><strong>Lưu ý:</strong> Việc <strong>thay nắp lưng Galaxy S7 Edge</strong> sẽ khiến bạn không còn được bảo hành thiết bị, hơn nữa khả năng chống nước tỷ lệ cao sẽ không còn tác dụng, nên bạn đọc hãy suy nghĩ kĩ trước khi tự thay nắp lưng "dế" của mình nhé!</p>\r\n', 'HinhTinTuc/S7.jpeg', 3, 3, '03', 'linh', 1),
('TT006', 'Hướng dẫn tự thay mặt lưng Galaxy Note 5 tại nhà đơn giản', '2016-09-13 08:14:16', 'Hầu hết người dùng smartphone không ít lần bất cẩn đánh rơi "chú dế" yêu quý của mình. Hơn nữa, không phải ai cũng sử dụng các biện pháp bảo vệ như dán kính cường lực cả 2 mặt hoặc sử dụng ốp điện thoại. Nếu bạn đang sử dụng điện thoại Galaxy Note 5, bạn sẽ hiểu, mặt lưng của chiếc smartphone này dễ vỡ tới mức nào nếu không sử dụng cẩn thận.', '<p>Bài viết dưới đây sẽ hướng dẫn bạn <strong>thay mặt lưng Galaxy Note 5</strong> một cách đơn giản nhất.</p>\r\n<p>Để <strong>thay mặt lưng Galaxy Note 5</strong> khá đơn giản, bạn cần chuẩn bị một mặt lưng Galaxy Note 5 có bán tại các cửa hàng sửa chữa điện thoại và một máy sấy hoặc máy khò công suất cao, một vài miếng nhựa mỏng, miếng hút chân không là có thể chủ động thực hiện.</p>\r\n<p> </p>\r\n<center><p><strong>Hướng dẫn tự thay nắp lưng Galaxy Note 5 tại nhà</strong></p>\r\n<p><em><img alt="" src="HinhTinTuc/note5.jpeg"></em></p>\r\n<p>Để thực hiện được việc thay mặt lưng Galaxy Note 5, bạn phải tắt nguồn, tháo sim và chuẩn bị một máy sấy công suất cao</p>\r\n<p><em><img alt="" src="HinhTinTuc/note51.jpeg"></em></p>\r\n<p><em>Tiếp theo bạn sử dụng máy sấy hơ nóng các vị trí cạnh viền phía mặt lưng Galaxy Note 5. Sau đó bạn sử dụng 2 miếng hút chân không và tiến hành tách dần mặt lưng Galaxy Note 5 ra khỏi khung máy</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/note52.jpeg"></em></p>\r\n<p><em>Bạn sử dụng các miếng nhựa mỏng để đánh dấu các vị trí đã tách</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/note53.jpeg"></em></p>\r\n<p><em>Tiếp tục hơ nóng các vị trí để làm mềm lớp keo phía trong</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/note54.jpeg"></em></p>\r\n<p><em>Bạn dần dần mở rộng các vị trí để tách rời mặt lưng khỏi khung máy</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/note55.jpeg"></em></p>\r\n<p><em>Mở rộng và tách rời lớp keo cố định mặt lưng và khung máy...</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/note56.jpeg"></em></p>\r\n<p><em>...sau đó bạn tiến hành nhấc nắp lưng cũ đi</em></p>\r\n<p><em><img alt="" src="HinhTinTuc/note57.jpeg"></em></p></center>\r\n<p><em>Và chuẩn bị một nắp lưng mới đã mua ở ngoài hàng và tiếp tục sử dụng băng keo 2 mặt dán vào các vị trí tiếp xúc với khung máy làm tăng thêm độ bám</em></p>\r\n<strong>Lưu ý</strong>: Bạn nên tìm địa điểm mua mặt lưng Galaxy Note 5. Trên thị trường hiện tại có khá nhiều loại mặt lưng cho Galaxy Note 5 khác nhau để bạn lựa chọn. Chúc các bạn <strong>thay nắp lưng Galaxy Note 5</strong> thành công!\r\n', 'HinhTinTuc/note5.jpeg', 21, 21, '03', 'linh', 1),
('TT007', 'Tặng bộ quà tới 2,5 triệu khi mua S7/ S7 edge', '2016-10-31 14:06:24', 'Mặc dù ra mắt đã gần 1 năm nhưng Galaxy S7 và S7 Edge vẫn đang là một trong những sản phẩm đáng mua nhất ở thời điểm hiện tại, giúp tôn lên được vẻ ngoài đẳng cấp và phong cách của người sử dụng.', '<p>Mang tới ưu đãi chưa từng có cho những khách hàng muốn sở hữu siêu phẩm này Viettel Store triển khai chương trình: <strong>&ldquo;Mua S7/ S7 edge nhận quà cực đỉnh&rdquo;</strong><br>\r\n  Theo đó Viettel Store tài trợ <strong>trả góp lãi suất 0%</strong> hoặc <strong>PMH phụ kiện 700.000đ </strong>khi khách hàng mua <strong>Galaxy S7/ S7 edge</strong>.</p>\r\n<center><p><img alt="" src="HinhTinTuc/S7edge.jpeg"><br>\r\n</p></center>\r\n<p><br>\r\n  Đặc biệt thay cho lời tri ân những khách hàng đã ủng hộ, Viettel Store cùng Samsung sẽ dành <strong>tặng bộ quà tặng đặc biệt trị giá 2,5 triệu đồng</strong> bao gồm: 1 tai nghe Bluetooth Level Active và 1 bao da S-View cho những khách hàng muốn &ldquo;lên đời&rdquo; lên S7/ S7 edge  đang sử dụng một trong các dòng sản phẩm sau của Samsung: <br>\r\n  1) Dòng A: A9 Pro (A900), A8 (A800), A7 2016 (A710), A7 (A700), A5 2016 (A510), A5 (A500), A3 2016 (A310), A3 (A300)<br>\r\n  2) Dòng J: J7 2016 (J710), J7 (J700), J5 2016 (J510), J5 (J500), J3 2016 (J320), J2 (J200), J1 2016 (J120), J1 (J100), J1 mini (J105)<br>\r\n  3) Dòng Tab: Tab S2 (T819, T815, T719, T715), Tab S (T805, T705), Tab A 10.1 (T585), Tab A 9.7&rdquo; (P555), Tab A 8&rdquo; (T355, P355), Tab A6 7&rdquo; (T285), Tab E (T561), Tab 4 7&rdquo; (T231), Tab 3V T116</p>\r\n<p><strong>Thời gian áp dụng</strong>: ngày 30/11/2016<br>\r\n  <strong>Cách thức lấy mã ưu đãi nhận bộ quà 2.5 triệu:</strong><br>\r\n  <strong>Bước 1</strong>: Khách hàng tải và cài đặt ứng dụng <a href="https://play.google.com/store/apps/details?id=com.samsungvietnam.quatanggalaxy"><strong>Quà Tặng Galaxy</strong></a> trên thiết bị Samsung thuộc chương trình mà khách hàng đang sở hữu<br>\r\n  <strong>Bước 2</strong>: Click vào chương trình &ldquo;Tri ân khách hàng Samsung. Tặng bộ quà tặng đặc biệt trị giá 2.580.000 VNĐ khi mua Samsung Galaxy S7/S7edge&rdquo;<br>\r\n  <strong>Bước 3</strong>: Click vào &ldquo;Lấy mã ưu đãi&rdquo; trên ứng dụng quà tặng Galaxy để lấy mã ưu đãi chương trình<br>\r\n  (*) Mã ưu đãi có thể sử dụng ngay trong lần giao dịch (chỉ có giá trị sử dụng 1 lần). Thời hạn sử dụng mã ưu đãi trong vòng 3 giờ.<br>\r\n  (*) Khách hàng có thể lấy nhiều mã ưu đãi trên 1 thiết bị, nhưng mỗi thiết bị chỉ được tham gia chương trình 1 lần.<br>\r\n  (*) Khách hàng mang thiết bị Samsung có mã ưu đãi của chương trình đến các cửa hàng Viettel toàn quốc để mua sản phẩm <strong>Samsung Galaxy S7</strong> hoặc <strong>Galaxy S7 edge</strong> và được tặng bộ quà tặng như trên</p>\r\n<p>Để biết thêm thông tin về chương trình và sản phẩm, quý khách hàng liên hệ 18008123 hoặc <a href="https://viettelstore.vn/sieu-thi-gan-nhat.html">siêu thị gần nhất</a></p>\r\n', 'HinhTinTuc/S7edge.jpeg', 12, 32, '04', 'linh', 1),
('TT008', 'Galaxy J7 Prime chính thức lên kệ tại Viettel Store', '2016-09-20 06:28:13', 'Ngày 23/9 tới đây “kẻ hủy diệt” J7 Prime sẽ chính thức xuất hiện tại hệ thống Viettel Store trên toàn quốc. Chào mừng sự kiện này Viettel Store sẽ tổ chức chương trình ca nhạc sôi động cùng nhiều phần quà hấp dẫn cho khách hàng tham gia tại Hà Nội và Hồ Chí Minh.', '<p><br>\r\n  <center><img alt="" src="HinhTinTuc/J7Prime.jpeg"> </p></center>\r\n<p><br>\r\n  Theo đó từ <strong>9h ngày 23/9</strong> quý khách hàng sẽ được hòa mình vào không khí âm nhạc tới từ các DJ nổi tiếng cùng sự xuất hiện của những ca sỹ hàng đầu,<strong> hoàng tử Isaac (365)</strong> tại <strong>Viettel Store 20 đường 3/2, P12, Quận 10, HCM</strong> và nữ <strong>ca sỹ xinh đẹp Văn Mai Hương</strong> tại<strong>Viettel Store số 145 Thái Hà , Đống Đa, Hà Nội</strong>.</p>\r\n<p><br>\r\n  Bên cạnh đó, khi tham gia chương trình quý khách hàng còn có cơ hội nhận cặp vé xem phim tại cụm rạp CGV trên toàn quốc và được tận tay trải nghiệm kẻ hủy diệt J7 Prime đẹp kiệt xuất đậm khí chất.</p>\r\n<p><br>\r\n  Đừng bỏ lỡ cơ hội được giao lưu cùng những thần tượng âm nhạc hàng đầu và nhận phần quà hấp dẫn từ chương trình tại Viettel Storesố 20 đường 3/2, P12, Quận 10, HCM và 145 Thái Hà , Đống Đa, Hà Nội.</p>', 'HinhTinTuc/J7Prime.jpeg', 21, 12, '04', 'linh', 1),
('TT001', 'HTC chính thức giới thiệu cặp đôi smartphone hướng tới phân khúc tầm trung', '2016-09-20 08:00:00', 'Cặp đôi smartphone của HTC đã được hãng này chính thức trình làng, tập trung mạnh mẽ vào phân khúc tầm trung trên thị trường.', '<div>\r\n  <center><p><em><img alt="" src="HinhTinTuc/HTC.jpeg"></em></p>\r\n  <p><em>HTC Desire 10 Lifestyle mang bản sắc vốn có của dòng Desire nhưng sở hữu thêm nhiều đường nét nét phá cách độc đáo</em></p></center>\r\n  <p>Sau chiếc flagship HTC 10, HTC đã chính thức ra mắt hai sản phẩm thuộc phân khúc tầm trung là Desire 10 và Desire 10 Lifestyle. Cặp đôi <strong>smartphone của HTC</strong> được cho là là "sự cải tiến lớn nhất kể từ thế hệ Desire đầu tiên".</p>\r\n  <p> </p>\r\n  <p><strong>HTC tập trung cải tiến dòng Desire với nhiều nâng cấp</strong></p>\r\n  <p>Cặp đôi smartphone có thiết kế với mặt lưng làm bằng nhựa nhám và khung viền làm bằng kim loại. Ở mặt trước, ba phím cảm ứng vật lý truyền thống ở mặt trước cũng xuất hiện, còn cảm biến vân tay của Desire 10 Pro được chuyển ra mặt sau. </p>\r\n  <center><p><em><img alt="" src="HinhTinTuc/HTC1.jpeg"></em></p>\r\n  <p><em>HTC Desire 10 sở hữu thiết kế đẹp và cấu hình khá cao cấp</em></p></center>\r\n  <p>Ngoài ra, máy sở hữu nhiều màu sắc như đen, trắng, vàng, xanh navy và một màu xanh nhạt được HTC gọi là "Valentine Lux". Tuy nhiên ở tất cả các phiên bản, phần viền anten và logo sẽ đều được mạ một lớp màu vàng, tạo điểm nhấn trong thiết kế của máy.</p>\r\n  <p>Đối với HTC Desire 10 Lifestyle, máy nhận được chứng chỉ Hi-res audio và Dolby Audio, cho phép phát nhạc có chuẩn chất lượng cao và hỗ trợ âm thanh vòm. Hệ thống loa kép BoomSound cũng xuất hiện trên phiên bản Lifestyle, trong khi phiên bản Pro chỉ là loa mono.</p>\r\n  <p> </p>\r\n  <p><strong>Cấu hình cặp đôi smartphone mới ra mắt</strong></p>\r\n  <p>HTC Desire 10 Pro dùng camera trước 13 megapixel, 2 tùy chọn cấu hình gồm bản RAM 3 GB dung lượng 32 GB và bản 64 GB, RAM 4 GB . Máy có pin 3.000 mAh (không thể tháo rời) và hệ điều hành Android 6.0 Marshmallow.</p>\r\n  <p>Còn đối với Desire 10 Lifestyle, máy có thể giúp giải quyết vấn đề này. Về mặt lý thuyết, đây là model cấu hình vừa phải với màn hình 5,5 inch HD (720 x 1.280 pixel), chip xử lý Qualcomm Snapdragon 400. Máy cũng có 2 phiên bản gồm RAM 2 GB dung lượng 16 GB và RAM 3 GB dung lượng 32 GB.</p>\r\n  <center><p><em><img alt="" src="HinhTinTuc/HTC2.jpeg"></em></p>\r\n  <p><em>Cấu hình cặp đôi smartphone của HTC mới ra mắt</em></p></center>\r\n  <p>Theo các chuyên gia công nghệ, cặp đôi <strong>smartphone của HTC</strong> là tham vọng của hãng điện tử Đài Loan nhằm chiếm lĩnh phân khúc tầm trung trên thị trường.</p>', 'HinhTinTuc/HTC.jpeg', 1, 1, '01', 'linh', 1);

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
