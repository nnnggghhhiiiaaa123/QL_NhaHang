USE [master]
GO
/****** Object:  Database [QuanLyNhaHang]    Script Date: 24/12/2021 11:02:39 ******/
CREATE DATABASE [QuanLyNhaHang]

GO
ALTER DATABASE [QuanLyNhaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyNhaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyNhaHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhaHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyNhaHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyNhaHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyNhaHang] SET QUERY_STORE = OFF
GO
USE [QuanLyNhaHang]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](50) NOT NULL,
	[SoGhe] [int] NOT NULL,
	[Vip] [int] NULL,
	[TinhTrang] [int] NULL,
	[MaTang_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHoaDon_id] [int] NOT NULL,
	[MaMonAn_id] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[ThanhTien] [float] NOT NULL,
	[NgayGoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon_id] ASC,
	[MaMonAn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaNguyenLieu_id] [int] NOT NULL,
	[MaPhieuNhap_id] [int] NOT NULL,
	[SoLuongNhap] [float] NULL,
	[GiaNhap] [float] NOT NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK__ChiTietP__B2F61C84B83AC385] PRIMARY KEY CLUSTERED 
(
	[MaNguyenLieu_id] ASC,
	[MaPhieuNhap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[MaMonAn_id] [int] NOT NULL,
	[MaNguyenLieu_id] [int] NOT NULL,
	[SoLuongDung] [float] NOT NULL,
	[Tru] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMonAn_id] ASC,
	[MaNguyenLieu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[SDTKhachHang] [varchar](10) NULL,
	[TongHoaDon] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayThanhToan] [datetime] NULL,
	[GhiChu] [nvarchar](200) NULL,
	[TongTien] [float] NOT NULL,
	[TrangThai] [int] NULL,
	[MaBan_id] [int] NULL,
 CONSTRAINT [PK__HoaDon__835ED13B19FCDE5C] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoanTra]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoanTra](
	[MaHoanTra] [int] IDENTITY(1,1) NOT NULL,
	[NgayHoanTra] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoanTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuGoiMon]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuGoiMon](
	[MaLichSu] [int] IDENTITY(1,1) NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[SoLuongTra] [int] NULL,
	[ThoiGianGoi] [datetime] NULL,
	[ThoiGianTra] [datetime] NULL,
	[MaHoaDon_id] [int] NULL,
	[MaMonAn_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLichSu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiMonAn]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMonAn](
	[MaLMA] [int] IDENTITY(1,1) NOT NULL,
	[TenLMA] [nvarchar](100) NOT NULL,
	[TongSoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNguyenLieu]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNguyenLieu](
	[MaLNL] [int] IDENTITY(1,1) NOT NULL,
	[TenLNL] [nvarchar](100) NOT NULL,
	[TongSoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAn](
	[MaMonAn] [int] IDENTITY(1,1) NOT NULL,
	[TenMonAn] [nvarchar](255) NOT NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[DonGia] [float] NULL,
	[NgayCapNhat] [date] NULL,
	[ThongTin] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[SoLuongDaBan] [int] NULL,
	[MaNMA_id] [int] NULL,
	[MaLMA_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[MaNguyenLieu] [int] IDENTITY(1,1) NOT NULL,
	[TenNguyenLieu] [nvarchar](200) NOT NULL,
	[SoLuongHienCon] [float] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[GiaNhapCuoi] [float] NOT NULL,
	[MaLNL_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguyenLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieuTra]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieuTra](
	[MaHoanTra_id] [int] NOT NULL,
	[MaNguyenLieu_id] [int] NOT NULL,
	[SoLuongTra] [float] NULL,
 CONSTRAINT [PK__NguyenLi__96F744693B5ADF73] PRIMARY KEY CLUSTERED 
(
	[MaHoanTra_id] ASC,
	[MaNguyenLieu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieuXuat]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieuXuat](
	[MaXuatKho_id] [int] NOT NULL,
	[MaNguyenLieu_id] [int] NOT NULL,
	[SoLuongXuat] [float] NULL,
 CONSTRAINT [PK__NguyenLi__AA75F991E3C77BBC] PRIMARY KEY CLUSTERED 
(
	[MaXuatKho_id] ASC,
	[MaNguyenLieu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SoDienThoai] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[TaiKhoanNV] [varchar](50) NOT NULL,
	[MatKhauNV] [varchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [varchar](10) NULL,
	[MaQuyen_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoanNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomMonAn]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomMonAn](
	[MaNMA] [int] IDENTITY(1,1) NOT NULL,
	[TenNMA] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [float] NULL,
	[TaiKhoanNV_id] [varchar](50) NULL,
	[MaNCC_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tang]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tang](
	[MaTang] [int] IDENTITY(1,1) NOT NULL,
	[TenTang] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatKho]    Script Date: 24/12/2021 11:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatKho](
	[MaXuatKho] [int] IDENTITY(1,1) NOT NULL,
	[NgayXuat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXuatKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ban] ON 

INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (1, N'1 VIP', 8, 1, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (2, N'2 VIP', 8, 1, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (3, N'3 VIP', 16, 1, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (4, N'4', 4, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (5, N'5', 4, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (6, N'6', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (7, N'7', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (8, N'8', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (9, N'9', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (10, N'10', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (11, N'11', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (12, N'12', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (13, N'13', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (14, N'14', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (15, N'15', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (16, N'16', 6, 0, 0, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (17, N'17', 6, 0, 0, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (18, N'18', 6, 0, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (19, N'1 VIP', 8, 1, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (20, N'2 VIP', 8, 1, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (21, N'3 VIP', 16, 1, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (22, N'4', 4, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (23, N'5', 4, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (24, N'6', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (25, N'7', 6, 0, 1, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (26, N'8', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (27, N'9', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (28, N'10', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (29, N'11', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (30, N'12', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (31, N'13', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (32, N'14', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (33, N'15', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (34, N'16', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (35, N'17', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (36, N'18', 6, 0, 0, 2)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (37, N'1 VIP', 8, 1, 1, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (38, N'2 VIP', 8, 1, 1, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (39, N'3 VIP', 16, 1, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (40, N'4', 4, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (41, N'5', 4, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (42, N'6', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (43, N'7', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (44, N'8', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (45, N'9', 6, 0, 1, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (46, N'10', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (47, N'11', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (48, N'12', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (49, N'13', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (50, N'14', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (51, N'15', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (52, N'16', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (53, N'17', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (54, N'18', 6, 0, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (56, N'Demo1', 8, 1, 0, 3)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoGhe], [Vip], [TinhTrang], [MaTang_id]) VALUES (57, N'Demo1', 8, 0, 0, 2)
SET IDENTITY_INSERT [dbo].[Ban] OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (36, 1, 2, 10000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (36, 4, 1, 30000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (37, 7, 1, 50000, CAST(N'2021-12-14T14:49:38.487' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (37, 8, 1, 50000, CAST(N'2021-12-15T12:56:29.267' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (37, 12, 1, 80000, CAST(N'2021-12-14T14:49:35.067' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (37, 24, 1, 15000, CAST(N'2021-12-14T14:49:57.500' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (37, 25, 1, 15000, CAST(N'2021-12-14T14:50:06.473' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (37, 26, 1, 30000, CAST(N'2021-12-14T14:49:43.697' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (39, 1, 2, 10000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (39, 4, 1, 30000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (40, 1, 4, 40000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (42, 1, 12, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (43, 1, 16, 160000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (44, 1, 16, 160000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (45, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (46, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (48, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (49, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (50, 1, 8, 80000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (52, 1, 9, 90000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (52, 2, 3, 120000, CAST(N'2021-12-23T22:24:08.257' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (54, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (54, 11, 1, 60000, CAST(N'2021-12-21T21:08:45.943' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (56, 1, 16, 160000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (57, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (58, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (58, 9, 4, 200000, CAST(N'2021-12-20T08:45:22.077' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (59, 1, 8, 80000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (60, 1, 16, 160000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (60, 23, 19, 228000, CAST(N'2021-12-21T10:42:09.210' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (62, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (63, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (63, 26, 10, 300000, CAST(N'2021-12-21T15:19:34.220' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (64, 1, 16, 160000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (64, 2, 1, 40000, CAST(N'2021-12-21T15:27:34.960' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (64, 20, 1, 100000, CAST(N'2021-12-21T15:34:48.570' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (64, 24, 3, 45000, CAST(N'2021-12-21T15:34:02.997' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (64, 27, 5, 75000, CAST(N'2021-12-21T15:34:08.703' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (65, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (66, 1, 7, 70000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (66, 2, 9, 360000, CAST(N'2021-12-21T20:11:50.550' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (66, 13, 10, 1000000, CAST(N'2021-12-21T20:17:25.767' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (67, 1, 16, 160000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (68, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (69, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (70, 1, 4, 40000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (71, 1, 6, 60000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (72, 1, 4, 40000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (73, 1, 6, 60000, CAST(N'2021-12-22T20:48:38.803' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (73, 2, 1, 40000, CAST(N'2021-12-22T20:48:42.523' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (74, 1, 7, 70000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (74, 5, 1, 50000, CAST(N'2021-12-24T07:02:16.500' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (75, 1, 8, 80000, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (75, 8, 1, 50000, CAST(N'2021-12-24T09:12:08.620' AS DateTime))
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon_id], [MaMonAn_id], [SoLuongMua], [ThanhTien], [NgayGoi]) VALUES (76, 1, 6, 60000, NULL)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (1, 4, 10, 12000, 120000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (1, 8, 1, 10000, 10000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (1, 34, -10, -10, 100)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (1, 39, -2, -2, 4)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (1, 42, 6, 10000, 25000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (1, 44, 21, 10000, 100000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (1, 52, 5, 10000, 25000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (4, 2, 1, 20000, 20000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (4, 8, 2, 20000, 40000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (11, 5, 1, 100000, 100000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (13, 1, 10, 12000, 120000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (15, 1, 10, 11000, 110000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (22, 6, 2, 100000, 200000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (23, 52, 5, 5000, 100000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (24, 42, 7, 15000, 105000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (29, 2, 1, 50000, 50000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (58, 4, 12, 13000, 156000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (62, 5, 1, 200000, 200000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (62, 6, 2, 500000, 1000000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaNguyenLieu_id], [MaPhieuNhap_id], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (62, 7, 1, 100000, 100000)
GO
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (1, 1, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (2, 4, 0.4, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (2, 5, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (3, 8, 0.1, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (3, 9, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (3, 10, 0.1, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (4, 11, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (4, 12, 0.01, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (5, 8, 0.003, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (5, 11, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (5, 13, 0.003, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (7, 14, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (7, 15, 0.05, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (7, 16, 0.3, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (8, 17, 0.5, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (8, 18, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (8, 19, 0.3, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (9, 20, 2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (9, 21, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (9, 22, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (9, 23, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (10, 25, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (10, 26, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (10, 27, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (10, 28, 0.3, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (11, 13, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (11, 16, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (11, 19, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (11, 21, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (11, 23, 0.05, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (11, 29, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (12, 11, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (12, 13, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (12, 16, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (12, 23, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (12, 30, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (13, 5, 0.05, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (13, 8, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (13, 21, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (13, 31, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (13, 32, 0.03, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (13, 33, 0.03, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (14, 27, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (14, 29, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (14, 34, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (14, 35, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (14, 36, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (15, 5, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (15, 21, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (15, 34, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (15, 36, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (15, 37, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (15, 38, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (15, 39, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (16, 11, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (16, 13, 0.003, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (16, 16, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (16, 40, 3, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (17, 8, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (17, 23, 0.1, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (17, 40, 3, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (17, 41, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (17, 42, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (18, 8, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (18, 16, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (18, 23, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (18, 43, 0.3, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (19, 5, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (19, 19, 0.5, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (19, 23, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (19, 44, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (20, 14, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (20, 19, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (20, 45, 0.5, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (21, 10, 0.02, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (21, 23, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (21, 31, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (21, 46, 0.5, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (21, 47, 0.5, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (21, 48, 0.2, 0)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (22, 49, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (23, 50, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (24, 51, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (25, 52, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (26, 53, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (27, 54, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (28, 55, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (29, 56, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (30, 57, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (31, 58, 1, 1)
INSERT [dbo].[ChiTietSanPham] ([MaMonAn_id], [MaNguyenLieu_id], [SoLuongDung], [Tru]) VALUES (32, 59, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (36, N'KHACH HANG A', NULL, 1, CAST(N'2021-12-13T10:57:43.870' AS DateTime), CAST(N'2021-12-21T20:01:28.343' AS DateTime), NULL, 40000, 0, 18)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (37, N'Cu biêu', N'0971010281', 14, CAST(N'2021-12-13T11:51:39.773' AS DateTime), NULL, NULL, 0, 1, 10)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (39, N'KHACH HANG A', NULL, 2, CAST(N'2021-12-13T11:52:12.380' AS DateTime), NULL, NULL, 0, 1, 5)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (40, N'KHACH HANG A', NULL, 3, CAST(N'2021-12-13T11:54:27.673' AS DateTime), CAST(N'2021-12-22T20:36:54.910' AS DateTime), NULL, 36000, 0, 4)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (42, N'Cu biêu', N'0971010281', 14, CAST(N'2021-12-13T11:56:10.257' AS DateTime), NULL, NULL, 0, 1, 2)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (43, N'Triệu Hảo', N'0971010281', 2, CAST(N'2021-12-13T12:20:59.670' AS DateTime), CAST(N'2021-12-13T12:21:18.097' AS DateTime), NULL, 161100, 0, 3)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (44, N'Triệu Hảo', N'0971010281', 3, CAST(N'2021-12-13T12:21:31.813' AS DateTime), CAST(N'2021-12-13T12:21:46.843' AS DateTime), NULL, 161100, 0, 3)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (45, N'Thành Tâm', N'0971010281', 4, CAST(N'2021-12-13T12:23:10.567' AS DateTime), CAST(N'2021-12-13T12:23:34.283' AS DateTime), NULL, 60000, 0, 7)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (46, N'Minh Anh', N'0971010281', 5, CAST(N'2021-12-13T12:23:51.527' AS DateTime), CAST(N'2021-12-13T12:24:42.647' AS DateTime), NULL, 60000, 0, 13)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (48, N'KHACH HANG A', N'0123456789', 1, CAST(N'2021-12-13T12:25:15.253' AS DateTime), NULL, NULL, 0, 1, 7)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (49, N'Khách Hàng A', N'0971010281', 6, CAST(N'2021-12-13T12:28:27.870' AS DateTime), NULL, NULL, 0, 1, 8)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (50, N'Cao Anh', N'0971010281', 7, CAST(N'2021-12-13T13:15:40.717' AS DateTime), NULL, NULL, 0, 1, 37)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (52, N'Cu biêu', N'0971010281', 15, CAST(N'2021-12-13T13:21:36.113' AS DateTime), NULL, NULL, 0, 1, 12)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (53, N'', N'0971010281', 8, CAST(N'2021-12-16T20:19:15.320' AS DateTime), NULL, NULL, 0, 1, 38)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (54, N'KHACH HANG A', N'0123456789', 1, CAST(N'2021-12-19T15:52:39.913' AS DateTime), NULL, NULL, 0, 1, 15)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (56, N'KHACH HANG A', N'0123456789', 1, CAST(N'2021-12-19T22:00:59.477' AS DateTime), NULL, NULL, 0, 1, 3)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (57, N'KHACH HANG A', N'0123456789', 1, CAST(N'2021-12-20T08:43:29.710' AS DateTime), NULL, NULL, 0, 1, 6)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (58, N'KHACH HANG A', N'0123456789', 1, CAST(N'2021-12-20T08:45:15.873' AS DateTime), NULL, NULL, 0, 1, 9)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (59, N'KHACH HANG A', N'0123456789', 1, CAST(N'2021-12-21T10:41:15.700' AS DateTime), CAST(N'2021-12-23T22:23:50.227' AS DateTime), NULL, 88000, 0, 20)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (60, N'Phan Định Định', N'0971010281', 10, CAST(N'2021-12-21T10:41:34.483' AS DateTime), CAST(N'2021-12-21T15:25:54.510' AS DateTime), NULL, 268000, 0, 21)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (62, N'Restaurant Triệu Hảo', N'0123456789', 1, CAST(N'2021-12-21T14:47:17.420' AS DateTime), NULL, NULL, 0, 1, 13)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (63, N'Cu biêu', N'0971010281', 13, CAST(N'2021-12-21T15:15:00.243' AS DateTime), NULL, NULL, 0, 1, 11)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (64, N'Hoàng Thị Thương', N'789456123', 1, CAST(N'2021-12-21T15:27:00.987' AS DateTime), CAST(N'2021-12-21T15:35:29.627' AS DateTime), NULL, 400000, 0, 21)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (65, N'Restaurant Triệu Hảo', N'0123456789', 1, CAST(N'2021-12-21T20:01:40.343' AS DateTime), NULL, NULL, 0, 1, 18)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (66, N'Phan C', N'0971010281', 11, CAST(N'2021-12-21T20:05:13.627' AS DateTime), CAST(N'2021-12-21T20:26:53.940' AS DateTime), NULL, 1257000, 0, 53)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (67, N'Restaurant Triệu Hảo', N'0123456789', 1, CAST(N'2021-12-21T20:34:30.270' AS DateTime), CAST(N'2021-12-23T22:21:47.067' AS DateTime), NULL, 176000, 0, 21)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (68, N'Cu biêu', N'0971010281', 12, CAST(N'2021-12-21T20:41:56.923' AS DateTime), NULL, NULL, 0, 1, 45)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (69, N'CCCCCC', N'999999999', 1, CAST(N'2021-12-21T20:47:07.140' AS DateTime), CAST(N'2021-12-21T20:47:44.497' AS DateTime), NULL, 60000, 0, 54)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (70, N'xxxxxxxx', N'777777777', 2, CAST(N'2021-12-21T20:48:10.443' AS DateTime), CAST(N'2021-12-21T20:54:13.260' AS DateTime), NULL, 40000, 0, 41)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (71, N'mmmmm', N'888888888', 1, CAST(N'2021-12-21T20:54:19.377' AS DateTime), NULL, NULL, 0, 1, 14)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (72, N'Restaurant Triệu Hảo', N'0123456789', 1, CAST(N'2021-12-22T20:37:21.393' AS DateTime), NULL, NULL, 0, 1, 4)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (73, N'Cu biêu', N'0971010281', 13, CAST(N'2021-12-22T20:42:31.887' AS DateTime), CAST(N'2021-12-22T20:49:49.327' AS DateTime), NULL, 60000, 0, 28)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (74, N'Restaurant Triệu Hảo', N'0123456789', 1, CAST(N'2021-12-24T06:57:12.823' AS DateTime), NULL, NULL, 0, 1, 25)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (75, N'Cu biêu', N'0971010281', 14, CAST(N'2021-12-24T08:24:59.217' AS DateTime), NULL, NULL, 0, 1, 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKhachHang], [SDTKhachHang], [TongHoaDon], [NgayTao], [NgayThanhToan], [GhiChu], [TongTien], [TrangThai], [MaBan_id]) VALUES (76, N'Restaurant Triệu Hảo', N'0123456789', 1, CAST(N'2021-12-24T09:42:35.957' AS DateTime), CAST(N'2021-12-24T09:45:25.917' AS DateTime), NULL, 60000, 0, 12)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[HoanTra] ON 

INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (2, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (3, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (4, CAST(N'2021-12-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (5, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (6, CAST(N'2021-12-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (7, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (8, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (9, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (10, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (11, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (12, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (13, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (14, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (15, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (16, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (17, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (18, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (19, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (20, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (21, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (22, CAST(N'2021-12-23T08:44:28.883' AS DateTime))
INSERT [dbo].[HoanTra] ([MaHoanTra], [NgayHoanTra]) VALUES (23, CAST(N'2021-12-23T11:05:38.793' AS DateTime))
SET IDENTITY_INSERT [dbo].[HoanTra] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuGoiMon] ON 

INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (134, 8, 0, CAST(N'2021-12-13T11:51:39.837' AS DateTime), NULL, 37, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (138, 4, 0, CAST(N'2021-12-13T11:52:12.397' AS DateTime), NULL, 39, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (139, 0, 3, NULL, CAST(N'2021-12-13T11:52:15.837' AS DateTime), 39, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (140, 4, 0, CAST(N'2021-12-13T11:51:46.403' AS DateTime), NULL, 39, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (141, 0, 3, NULL, CAST(N'2021-12-13T11:51:50.873' AS DateTime), 39, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (142, 1, 0, CAST(N'2021-12-13T11:51:53.830' AS DateTime), NULL, 39, 4)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (143, 4, 0, CAST(N'2021-12-13T11:54:27.683' AS DateTime), NULL, 40, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (145, 6, 0, CAST(N'2021-12-13T11:56:10.267' AS DateTime), NULL, 42, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (146, 6, 0, CAST(N'2021-12-13T11:56:03.967' AS DateTime), NULL, 42, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (147, 16, 0, CAST(N'2021-12-13T12:20:59.730' AS DateTime), NULL, 43, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (148, 16, 0, CAST(N'2021-12-13T12:21:31.833' AS DateTime), NULL, 44, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (149, 6, 0, CAST(N'2021-12-13T12:23:10.630' AS DateTime), NULL, 45, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (150, 6, 0, CAST(N'2021-12-13T12:23:51.543' AS DateTime), NULL, 46, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (152, 6, 0, CAST(N'2021-12-13T12:24:57.867' AS DateTime), NULL, 37, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (153, 6, 0, CAST(N'2021-12-13T12:25:15.263' AS DateTime), NULL, 48, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (154, 6, 0, CAST(N'2021-12-13T12:28:27.887' AS DateTime), NULL, 49, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (155, 8, 0, CAST(N'2021-12-13T13:15:40.760' AS DateTime), NULL, 50, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (158, 8, 0, CAST(N'2021-12-13T13:21:36.130' AS DateTime), NULL, 52, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (159, 0, 14, NULL, CAST(N'2021-12-14T14:45:51.417' AS DateTime), 37, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (160, 8, 0, CAST(N'2021-12-14T14:49:19.350' AS DateTime), NULL, 37, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (161, 1, 0, CAST(N'2021-12-14T14:49:22.230' AS DateTime), NULL, 37, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (162, 1, 0, CAST(N'2021-12-14T14:49:24.697' AS DateTime), NULL, 37, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (163, 1, 0, CAST(N'2021-12-14T14:49:32.643' AS DateTime), NULL, 37, 3)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (164, 1, 0, CAST(N'2021-12-14T14:49:35.067' AS DateTime), NULL, 37, 12)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (165, 1, 0, CAST(N'2021-12-14T14:49:38.490' AS DateTime), NULL, 37, 7)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (166, 1, 0, CAST(N'2021-12-14T14:49:43.697' AS DateTime), NULL, 37, 26)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (167, 1, 0, CAST(N'2021-12-14T14:49:48.740' AS DateTime), NULL, 37, 27)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (168, 1, 0, CAST(N'2021-12-14T14:49:57.503' AS DateTime), NULL, 37, 24)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (169, 1, 0, CAST(N'2021-12-14T14:50:06.480' AS DateTime), NULL, 37, 25)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (170, 1, NULL, CAST(N'2021-12-14T14:50:10.480' AS DateTime), NULL, 37, 27)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (171, 1, 0, CAST(N'2021-12-15T12:56:29.307' AS DateTime), NULL, 37, 8)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (172, 8, 0, CAST(N'2021-12-16T20:19:15.370' AS DateTime), NULL, 53, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (173, 2, 0, CAST(N'2021-12-16T20:19:30.610' AS DateTime), NULL, 53, 4)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (174, 6, 0, CAST(N'2021-12-19T15:52:39.983' AS DateTime), NULL, 54, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (177, 0, 8, NULL, CAST(N'2021-12-19T18:34:46.413' AS DateTime), 53, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (178, 0, 2, NULL, CAST(N'2021-12-19T18:34:47.790' AS DateTime), 53, 4)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (179, 16, 0, CAST(N'2021-12-19T22:00:59.527' AS DateTime), NULL, 56, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (180, 6, 0, CAST(N'2021-12-20T08:43:29.773' AS DateTime), NULL, 57, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (181, 6, 0, CAST(N'2021-12-20T08:45:15.940' AS DateTime), NULL, 58, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (182, 4, 0, CAST(N'2021-12-20T08:45:22.083' AS DateTime), NULL, 58, 9)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (183, 8, 0, CAST(N'2021-12-21T10:41:15.757' AS DateTime), NULL, 59, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (184, 16, 0, CAST(N'2021-12-21T10:41:34.493' AS DateTime), NULL, 60, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (185, 1, 0, CAST(N'2021-12-21T10:42:09.213' AS DateTime), NULL, 60, 23)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (186, 19, NULL, CAST(N'2021-12-21T10:42:22.293' AS DateTime), NULL, 60, 23)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (187, 0, 1, NULL, CAST(N'2021-12-21T10:43:00.130' AS DateTime), 60, 23)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (190, 6, 0, CAST(N'2021-12-21T14:47:17.430' AS DateTime), NULL, 62, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (191, 0, 2, NULL, CAST(N'2021-12-21T15:14:30.763' AS DateTime), 37, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (192, 0, 2, NULL, CAST(N'2021-12-21T15:14:36.333' AS DateTime), 37, 27)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (193, 1, 0, CAST(N'2021-12-21T15:14:41.327' AS DateTime), NULL, 37, 30)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (194, 6, 0, CAST(N'2021-12-21T15:15:00.253' AS DateTime), NULL, 63, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (195, 1, 0, CAST(N'2021-12-21T15:16:17.270' AS DateTime), NULL, 63, 4)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (196, 0, 1, NULL, CAST(N'2021-12-21T15:16:40.893' AS DateTime), 63, 4)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (197, 1, 0, CAST(N'2021-12-21T15:17:06.643' AS DateTime), NULL, 63, 11)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (198, 1, 0, CAST(N'2021-12-21T15:17:10.490' AS DateTime), NULL, 63, 11)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (199, 24, 0, CAST(N'2021-12-21T15:19:34.223' AS DateTime), NULL, 63, 26)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (200, 0, 14, NULL, CAST(N'2021-12-21T15:20:07.953' AS DateTime), 63, 26)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (201, 0, 2, NULL, CAST(N'2021-12-21T15:21:42.777' AS DateTime), 63, 11)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (202, 16, 0, CAST(N'2021-12-21T15:27:01.030' AS DateTime), NULL, 64, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (203, 1, 0, CAST(N'2021-12-21T15:27:34.970' AS DateTime), NULL, 64, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (204, 1, 0, CAST(N'2021-12-21T15:34:03.173' AS DateTime), NULL, 64, 24)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (205, 1, 0, CAST(N'2021-12-21T15:34:08.707' AS DateTime), NULL, 64, 27)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (206, 4, NULL, CAST(N'2021-12-21T15:34:39.687' AS DateTime), NULL, 64, 27)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (207, 2, NULL, CAST(N'2021-12-21T15:34:43.933' AS DateTime), NULL, 64, 24)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (208, 1, 0, CAST(N'2021-12-21T15:34:48.577' AS DateTime), NULL, 64, 20)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (209, 6, 0, CAST(N'2021-12-21T20:01:40.413' AS DateTime), NULL, 65, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (210, 6, 0, CAST(N'2021-12-21T20:05:13.647' AS DateTime), NULL, 66, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (211, 10, 0, CAST(N'2021-12-21T20:11:50.560' AS DateTime), NULL, 66, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (212, 1, NULL, CAST(N'2021-12-21T20:13:04.687' AS DateTime), NULL, 66, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (213, 10, 0, CAST(N'2021-12-21T20:17:26.103' AS DateTime), NULL, 66, 13)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (214, 0, 1, NULL, CAST(N'2021-12-21T20:19:22.240' AS DateTime), 66, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (215, 16, 0, CAST(N'2021-12-21T20:34:30.290' AS DateTime), NULL, 67, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (216, 6, 0, CAST(N'2021-12-21T20:41:56.950' AS DateTime), NULL, 68, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (217, 6, 0, CAST(N'2021-12-21T20:47:07.203' AS DateTime), NULL, 69, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (218, 4, 0, CAST(N'2021-12-21T20:48:10.453' AS DateTime), NULL, 70, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (219, 6, 0, CAST(N'2021-12-21T20:54:19.393' AS DateTime), NULL, 71, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (220, 1, 0, CAST(N'2021-12-21T21:08:45.953' AS DateTime), NULL, 54, 11)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (221, 4, 0, CAST(N'2021-12-22T20:37:21.417' AS DateTime), NULL, 72, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (222, 6, 0, CAST(N'2021-12-22T20:42:31.897' AS DateTime), NULL, 73, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (223, 1, 0, CAST(N'2021-12-22T20:44:00.573' AS DateTime), NULL, 73, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (224, 0, 6, NULL, CAST(N'2021-12-22T20:47:43.130' AS DateTime), 73, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (225, 0, 1, NULL, CAST(N'2021-12-22T20:47:45.257' AS DateTime), 73, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (226, 1, 0, CAST(N'2021-12-22T20:48:38.810' AS DateTime), NULL, 73, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (227, 1, 0, CAST(N'2021-12-22T20:48:42.530' AS DateTime), NULL, 73, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (228, 5, NULL, CAST(N'2021-12-22T20:48:49.570' AS DateTime), NULL, 73, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (229, 0, 1, NULL, CAST(N'2021-12-22T20:51:31.447' AS DateTime), 37, 30)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (230, 0, 8, NULL, CAST(N'2021-12-22T20:51:34.823' AS DateTime), 37, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (231, 0, 1, NULL, CAST(N'2021-12-22T20:51:36.403' AS DateTime), 37, 3)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (232, 1, 0, CAST(N'2021-12-23T22:24:08.293' AS DateTime), NULL, 52, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (233, 1, 0, CAST(N'2021-12-23T22:28:43.247' AS DateTime), NULL, 52, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (234, 1, NULL, CAST(N'2021-12-23T22:29:10.590' AS DateTime), NULL, 52, 2)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (235, 1, NULL, CAST(N'2021-12-23T22:43:33.777' AS DateTime), NULL, 52, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (236, 6, 0, CAST(N'2021-12-24T06:57:12.867' AS DateTime), NULL, 74, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (237, 1, 0, CAST(N'2021-12-24T06:58:51.983' AS DateTime), NULL, 74, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (238, 1, 0, CAST(N'2021-12-24T07:02:16.653' AS DateTime), NULL, 74, 5)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (239, 8, 0, CAST(N'2021-12-24T08:24:59.260' AS DateTime), NULL, 75, 1)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (240, 1, 0, CAST(N'2021-12-24T09:12:08.667' AS DateTime), NULL, 75, 8)
INSERT [dbo].[LichSuGoiMon] ([MaLichSu], [SoLuongMua], [SoLuongTra], [ThoiGianGoi], [ThoiGianTra], [MaHoaDon_id], [MaMonAn_id]) VALUES (241, 6, 0, CAST(N'2021-12-24T09:42:36.007' AS DateTime), NULL, 76, 1)
SET IDENTITY_INSERT [dbo].[LichSuGoiMon] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiMonAn] ON 

INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (1, N'Khai Vị', 7)
INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (2, N'Món Gà', 2)
INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (3, N'Món Heo', 4)
INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (4, N'Shushi', 0)
INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (6, N'Cơm', 0)
INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (7, N'Món Lẩu', 2)
INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (8, N'Món Cháo', 0)
INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (9, N'Trái Cây', 0)
INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (10, N'Thức Uống', 11)
INSERT [dbo].[LoaiMonAn] ([MaLMA], [TenLMA], [TongSoLuong]) VALUES (11, N'Khác', 5)
SET IDENTITY_INSERT [dbo].[LoaiMonAn] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiNguyenLieu] ON 

INSERT [dbo].[LoaiNguyenLieu] ([MaLNL], [TenLNL], [TongSoLuong]) VALUES (1, N'Hải Sản', 11)
INSERT [dbo].[LoaiNguyenLieu] ([MaLNL], [TenLNL], [TongSoLuong]) VALUES (2, N'Rau Củ Quả', 18)
INSERT [dbo].[LoaiNguyenLieu] ([MaLNL], [TenLNL], [TongSoLuong]) VALUES (3, N'Gia Vị', 10)
INSERT [dbo].[LoaiNguyenLieu] ([MaLNL], [TenLNL], [TongSoLuong]) VALUES (4, N'Thức Uống', 11)
INSERT [dbo].[LoaiNguyenLieu] ([MaLNL], [TenLNL], [TongSoLuong]) VALUES (5, N'Khác', 8)
SET IDENTITY_INSERT [dbo].[LoaiNguyenLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[MonAn] ON 

INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (1, N'Khăn Lạnh', N'KhanLanh.jpg', 10000, CAST(N'2021-12-10' AS Date), N'Khăn lau miệng việt tiệp', N'<p>Khăn lau cho mọi người</p>', 98, 5, 11)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (2, N'Cá Lóc Đồng Kho Tộ (Ướp Sẵn)', N'AnhCaLoc.jpeg', 40000, CAST(N'2021-12-10' AS Date), N'Cá lóc kho tộ ngon ngon', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">C&aacute; L&oacute;c Kho Tộ l&agrave; một m&oacute;n ngon v&ocirc; c&ugrave;ng đưa cơm v&agrave; rất quen thuộc với c&aacute;c bữa ăn gia đ&igrave;nh Việt. Từng miếng c&aacute; kho ướm m&agrave;u n&acirc;u v&agrave;ng, b&oacute;ng bẩy đẹp mắt, dai ngon h&ograve;a quyện c&ugrave;ng sốt kho sệt qu&aacute;nh, đậm vị mặn ngọt chua cay của ti&ecirc;u, ớt, d&ugrave;ng c&ugrave;ng cơm trắng n&oacute;ng hổi chắc chắn l&agrave; sự lựa chọn tuyệt vời cho bữa cơm gia đ&igrave;nh.</span></p>', 15, 2, 11)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (3, N'Rau Muống Xào Tỏi', N'raumuong.jpeg', 15000, CAST(N'2021-12-10' AS Date), N'Rồng xanh vượt đại dương, món ăn rất quen thuộc đối với người Việt Nam', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">M&oacute;n ăn Rau muống x&agrave;o tỏi chưa bao giờ lỗi thời bao cả! D&ugrave; bạn c&oacute; thử qua bao nhi&ecirc;u m&oacute;n ăn mới lạ th&igrave; chắc chắn rằng m&oacute;n rau muống x&agrave;o tỏi l&agrave; m&oacute;n ăn th&acirc;n thuộc kh&ocirc;ng thể n&agrave;o thiếu trong m&acirc;m cơm gia đ&igrave;nh Việt. M&oacute;n ăn dễ l&agrave;m, nguy&ecirc;n liệu lại đơn giản th&igrave; ngại g&igrave; kh&ocirc;ng order thử xem nh&eacute;. Cooky d&aacute;m chắc bạn sẽ l&agrave; đầu bếp của h&ocirc;m nay đấy.</span></p>', 0, 2, 1)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (4, N'Ba Rọi Heo Chiên Da Giòn', N'HeoQuay.jpeg', 30000, CAST(N'2021-12-10' AS Date), N'Heo quay', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Da heo chi&ecirc;n v&agrave;ng gi&ograve;n rụm. Thịt heo b&ecirc;n trong mềm mại, mọng nước, thơm một c&aacute;ch ngọt ng&agrave;o, cắn một ph&aacute;t l&agrave; ghiền ngay chỉ c&oacute; thể l&agrave; m&oacute;n Ba Rọi Chi&ecirc;n Da Gi&ograve;n trứ danh. Rất nhiều chị em "ki&ecirc;ng nể" m&oacute;n ăn n&agrave;y v&igrave; sợ dầu văng, thịt b&ecirc;n ngo&agrave;i kh&eacute;t m&agrave; b&ecirc;n trong lại chưa ch&iacute;n hoặc thịt kh&ocirc;ng thấm gia vị,.</span></p>', 0, 2, 3)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (5, N'Ba Rọi Heo Kho Mắm Ruốc', N'HeoKhoRuoc.jpeg', 50000, CAST(N'2021-12-10' AS Date), N'Món kho thịt heo ngon ngon', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Ba rọi kho mắm ruốc l&agrave; sự kết hợp ho&agrave;n hảo giữa thịt ba chỉ b&eacute;o thơm c&ugrave;ng vị mằn mặn của mắm ruốc, vị cay của ớt v&agrave; thơm thơm của sả chắc chắn sẽ l&agrave;m bạn hao kha kh&aacute; cơm đấy. H&atilde;y order ngay g&oacute;i nguy&ecirc;n liệu "Ba rọi heo kho mắm ruốc ướp sẵn" đậm vị đến từ Chef Cooky v&agrave; trổ t&agrave;i cho bữa cơm gia đ&igrave;nh th&ecirc;m đa dạng nh&eacute;!</span></p>', 1, 2, 3)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (7, N'Đùi Gà Chiên Mắm Tỏi', N'DuiGa.jpeg', 50000, CAST(N'2021-12-10' AS Date), N'Đùi gà ta chiên giòn', N'<div class="btn-desc-box" style="box-sizing: border-box; font-family: ''SF UI Text''; display: flex; -webkit-box-pack: center; justify-content: center; margin: 15px 0px; color: #000000; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: pre-line; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;</div>
<div class="content-x" style="box-sizing: border-box; font-family: ''SF UI Text''; color: #000000; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: pre-line; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Bạn đ&atilde; từng rụng rời với m&oacute;n Cơm G&agrave; Mắm Tỏi ở một qu&aacute;n ăn n&agrave;o đ&oacute;? Bạn ước m&igrave;nh c&oacute; thể thực hiện lại m&oacute;n g&agrave; "thần th&aacute;nh" đ&oacute; tại nh&agrave;? Ngại ng&ugrave;ng g&igrave; m&agrave; kh&ocirc;ng thử sức liền tay với m&oacute;n Đ&ugrave;i G&oacute;c Tư G&agrave; Chi&ecirc;n Mắm Tỏi.</div>', 0, 2, 2)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (8, N'Gỏi Xoài Tôm Khô', N'GoiXoai.jpeg', 50000, CAST(N'2021-12-10' AS Date), N'Món gõi xoài chua ngọt rất ngon miệng', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Gỏi xo&agrave;i t&ocirc;m kh&ocirc; với vẻ ngo&agrave;i bắt mắt bởi m&agrave;u sắc c&ugrave;ng vị chua cay mặn ngọt h&agrave;i h&ograve;a, đậm đ&agrave; m&agrave; vừa miệng. T&ocirc;m kh&ocirc; ngọt ngọt, xo&agrave;i ớt chua chua cay cay h&ograve;a với vị đậm đ&agrave; của nước mắm, c&aacute;i gi&ograve;n tan của đậu phộng rang, th&ecirc;m v&agrave;i chiếc b&aacute;nh phồng t&ocirc;m th&igrave; v&ocirc; c&ugrave;ng ho&agrave;n hảo.</span></p>', 1, 2, 1)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (9, N'Ếch Xào Sả Ớt', N'Ech.jpeg', 50000, CAST(N'2021-12-10' AS Date), N'Ếch ta sào sả ớt', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">M&oacute;n ăn quen thuộc cho kh&aacute;ch nhậu</span></p>', 0, 2, 1)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (10, N'Tôm Sú Nướng Sốt/Muối Ớt/Mật Ong', N'TómuNuong.jpeg', 80000, CAST(N'2021-12-10' AS Date), N'Tôm sú nướng than', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">M&oacute;n t&ocirc;m s&uacute; nướng thơm lừng đảm bảo sẽ l&agrave; m&oacute;n h&uacute;t hồn bạn nhất trong bữa tiệc tự tay nấu của bạn v&agrave; gia đ&igrave;nh cho m&agrave; xem, với t&ocirc;m s&uacute; tươi ngon, phủ đẫm sốt tự chọn (sốt sa tế/sốt chao/sốt riềng mẻ/sốt mật ong...) t&ugrave;y v&agrave;o khẩu vị của bạn v&agrave; bạn b&egrave; gia đ&igrave;nh m&agrave; lựa chọn để nướng ra được m&oacute;n hợp vị khẩu nhất, ngon nhất.</span></p>', 0, 2, 11)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (11, N'Mực Xào Chua Ngọt', N'MucLaSao.jpeg', 60000, CAST(N'2021-12-10' AS Date), N'Món mực sào chua ngọt', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Mực x&agrave;o chua ngọt c&oacute; lẽ l&agrave; m&oacute;n ăn đổi vị quen thuộc trong bữa cơm nh&agrave; sau những ng&agrave;y thịt th&agrave; ph&aacute;t ng&aacute;n.Miếng mực tươi h&ograve;a quyện với ch&uacute;t ngọt ngọt chua chua tự nhi&ecirc;n từ thơm, c&agrave; chua, h&agrave;nh t&acirc;y c&ugrave;ng g&oacute;i sốt đậm đ&agrave; độc quyền của Cooky Chefs nhất định sẽ khiến cả nh&agrave; thả "like" kh&ocirc;ng ngừng tay!</span></p>', 1, 2, 11)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (12, N'Cá Kèo Kho Thịt Ba Rọi', N'CaKeo.jpeg', 80000, CAST(N'2021-12-10' AS Date), N'Cá kèo kho kèm với thịt heo', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Để gi&uacute;p cho bạn c&oacute; một thực đơn đa dạng hơn, Cooky m&aacute;ch ri&ecirc;ng cho bạn m&oacute;n ăn d&acirc;n d&atilde; nhưng hao cơm lắm đấy nh&eacute;. C&aacute; k&egrave;o kho tộ ch&iacute;nh l&agrave; một trong những m&oacute;n ăn rất đặc trưng của người Miền Nam n&oacute;i chung v&agrave; người miền T&acirc;y n&oacute;i ri&ecirc;ng.</span></p>', 0, 2, 3)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (13, N'Sườn Non Heo Xào Chua Ngọt', N'SuonHeoChuaNgot.jpeg', 100000, CAST(N'2021-12-10' AS Date), N'Sườn heo non sào kiểu tây chua chua ngọt ngọt', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Bạn m&ecirc; sườn, bạn kh&ocirc;ng thể n&agrave;o sống thiếu sườn, l&agrave;m sao bạn bỏ lỡ m&oacute;n Sườn Non X&agrave;o Chua Ngọt trong cuộc đời m&igrave;nh được? Sự h&ograve;a quyện tinh tế giữa vị chua chua, ngọt ngọt, ch&uacute;t b&ugrave;i b&ugrave;i, thơm thơm sẽ đưa bạn đến "đỉnh cao của vị gi&aacute;c" ngay trong bữa cơm đơn giản hằng ng&agrave;y.</span></p>', 10, 2, 3)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (14, N'Lẩu Thái Hải Sản', N'LauThai.jpeg', 120000, CAST(N'2021-12-10' AS Date), N'Lẩu thái thập cẩm ngon ngon', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Lẩu Th&aacute;i hải sản chua cay l&agrave; m&oacute;n ngon cuối tuần, cho bữa tiệc gia đ&igrave;nh. Lẩu Th&aacute;i hải sản chua cay ngon đ&uacute;ng chuẩn sẽ c&oacute; nước d&ugrave;ng chua ngọt, cay nồng từ sả ớt, k&iacute;ch th&iacute;ch vị gi&aacute;c, gi&uacute;p ăn ngon miệng hơn. Đặc biệt, những ng&agrave;y trời lạnh ngồi qu&acirc;y quần b&ecirc;n nồi lẩu Th&aacute;i chua cay tỏa hương thơm nồng th&igrave; ấm l&ograve;ng hết biết</span></p>', 0, 5, 7)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (15, N'Lẩu Cá Thác Lác Khổ Qua', N'LauCaThacLac.jpeg', 100000, CAST(N'2021-12-10' AS Date), N'Lẩu cá thác lác ăn kèm khổ khoa + rau sống + cá thác lác ', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Đảm bảo nếu một lần được thử qua m&oacute;n Lẩu khổ qua c&aacute; th&aacute;c l&aacute;c bạn sẽ ấn tượng ngay bởi sự kết hợp độc đ&aacute;o giữa ch&uacute;t dai, ngọt tự nhi&ecirc;n của c&aacute; th&aacute;c l&aacute;c v&agrave; vị đắng nhẫn nhẫn của khổ qua tạo n&ecirc;n thứ nước d&ugrave;ng thanh đạm, nhẹ nh&agrave;ng nhưng vẫn kh&ocirc;ng k&eacute;m phần</span></p>', 0, 2, 7)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (16, N'Trứng Chiên Thịt Bằm', N'TrungChien.jpeg', 20000, CAST(N'2021-12-10' AS Date), N'Trứng chiên kèm thịt heo có vị béo, thơm ngon', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">V&agrave;o những ng&agrave;y lười nấu ăn th&igrave; chỉ với c&aacute;c nguy&ecirc;n liệu cực quen thuộc l&agrave; trứng, thịt bằm, h&agrave;nh l&aacute; v&agrave; ti&ecirc;u xay l&agrave; bạn đ&atilde; c&oacute; ngay m&oacute;n trứng chi&ecirc;n thịt bằm vừa dễ ăn m&agrave; lại đơn giản, tiết kiệm thời gian rồi.</span></p>', 0, 3, 1)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (17, N'Trứng Ngâm Tương Hàn Quốc', N'TrungNamTuong.jpeg', 20000, CAST(N'2021-12-10' AS Date), N'Trứng ngâm xì dầu kiểu Nhật Bản', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Trứng ng&acirc;m nước tương H&agrave;n Quốc đ&atilde; kh&ocirc;ng c&ograve;n xa lạ nữa m&agrave; c&ograve;n lại nổi tiếng như cồn khi được h&agrave;ng loạt c&aacute;c hot mom, food blogger v&agrave; c&aacute;c nghệ sĩ nổi tiếng l&agrave;m thử. "Thời đến cản kh&ocirc;ng kịp" l&agrave; c&oacute; thật, m&oacute;n trứng ng&acirc;m n&agrave;y đ&atilde; v&agrave; đang trở th&agrave;nh hiện tượng được nhiều người t&igrave;m hiểu. Nếu bạn cũng c&oacute; &yacute; định l&agrave;m thử m&oacute;n ăn n&agrave;y, nhưng lại ngại phải đi chợ v&agrave; chưa nắm r&otilde; được c&ocirc;ng thức chế biến, m&igrave;nh sẽ gi&uacute;p bạn ngay đ&acirc;y.</span></p>', 0, 3, 1)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (18, N'Cải Thìa Xào Tỏi Chay', N'CaiThiaSaoToi.jpeg', 20000, CAST(N'2021-12-10' AS Date), N'Cải thìa sào tỏi ít cay dành cho người ăn chay hoặc ăn kiêng', N'<div class="btn-desc-box" style="box-sizing: border-box; font-family: ''SF UI Text''; display: flex; -webkit-box-pack: center; justify-content: center; margin: 15px 0px; color: #000000; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: pre-line; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;</div>
<div class="content-x" style="box-sizing: border-box; font-family: ''SF UI Text''; color: #000000; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: pre-line; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Trong bữa cơm gia đ&igrave;nh kh&ocirc;ng thể kh&ocirc;ng c&oacute; m&oacute;n rau x&agrave;o, đ&acirc;y l&agrave; m&oacute;n ăn gi&uacute;p ch&uacute;ng ta cảm thấy ngon miệng hơn lại gi&agrave;u vitamin , l&agrave;m m&aacute;t cơ thể. Cải th&igrave;a x&agrave;o tỏi l&agrave; một trong c&aacute;c m&oacute;n rau ăn k&egrave;m rất ngon v&agrave; v&ocirc; c&ugrave;ng đưa cơm. Vị ngọt của rau cải th&igrave;a quyện với vị thơm của tỏi tạo n&ecirc;n một hương vị thơm ngon kh&oacute; cưỡng. Hơn nữa đ&acirc;y c&ograve;n l&agrave; 1 m&oacute;n ăn d&acirc;n d&atilde; dễ thực hiện d&ugrave; bạn chưa c&oacute; nhiều kinh nghiệm bếp n&uacute;c.</div>', 0, 1, 1)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (19, N'Đậu Hũ Cay Sốt Nấm Chay', N'DauPhu.jpeg', 20000, CAST(N'2021-12-10' AS Date), N'Đậu phụ non ', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Đậu hũ chắc chắn l&agrave; m&oacute;n ăn quen thuộc với mỗi bữa cơm gia đ&igrave;nh. Tuy nhi&ecirc;n, đừng chỉ ăn ho&agrave;i một m&oacute;n đậu hũ chi&ecirc;n, đậu hũ kho. H&atilde;y để Cooky Market giới thiệu cho bạn m&oacute;n Đậu hũ cay sốt nấm hương, chỉ với một thay đổi nhỏ l&agrave; nấm hương v&agrave; sốt cay cũng đủ khiến m&oacute;n ăn th&ecirc;m phần hấp dẫn rồi.</span></p>', 0, 1, 1)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (20, N'Đùi Gà Góc Tư Nấu Nấm Đông Cô', N'GaCongDo.jpeg', 100000, CAST(N'2021-12-10' AS Date), N'Gà được hầm với nấm tạo ra mùi hương quyến rũ, khó quên', N'<p><span style="font-family: ''SF UI Text''; font-size: 15px; text-align: justify; white-space: pre-line;">Cuối tuần n&agrave;y cả nh&agrave; m&igrave;nh đổi vị với m&oacute;n Đ&ugrave;i g&agrave; g&oacute;c tư nấu nấm đ&ocirc;ng c&ocirc; mới lạ xem nh&eacute;! G&agrave; v&agrave; nấm đ&ocirc;ng c&ocirc; l&agrave; hai nguy&ecirc;n liệu quen thuộc, khi kết hợp với nhau lại tạo n&ecirc;n một cảm gi&aacute;c rất kh&oacute; qu&ecirc;n, một sự h&agrave;i h&ograve;a đến kinh ngạc. Thịt g&agrave; săn chắc, nấm đ&ocirc;ng c&ocirc; thơm m&ugrave;i vị đặc trưng, đắm m&igrave;nh trong sốt chứa pate b&eacute;o ngậy.</span></p>', 1, 4, 2)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (21, N'Combo Cơm Nhà Là Nhất', N'ComboComNhaLaNhat.jpeg', 150000, CAST(N'2021-12-10' AS Date), N'Món combo gồm nhiều món khác nhau có hương vị như mâm cơm gia đình', N'<p>Combo gồm 3 m&oacute;n gi&aacute; si&ecirc;u si&ecirc;u tiết kiệm</p>', 0, 2, 11)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (22, N'Rượu Soju Jinro Hương Mận', N'RuouSoJu.jpeg', 60000, CAST(N'2021-12-10' AS Date), N'Rượu Soju Jinro Hương Mận', N'<p>Rượu nhập khẩu H&agrave;n</p>', 0, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (23, N'Bia Tiger', N'BiaTiger.jpeg', 12000, CAST(N'2021-12-10' AS Date), N'Bia tigger được nhập đóng lon tại Việt Nam', N'<p>Loại bia số 1 b&aacute;n chạy Việt nam</p>', 0, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (24, N'Nước Ngọt Có Ga Sprite', N'NuocNgotSprite.jpeg', 15000, CAST(N'2021-12-10' AS Date), N'Nước ngọt có ga không màu, hương vị chanh', N'<p>Loại nước uống sản xuất tại việt nam</p>', 1, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (25, N'Nước Ngọt Có Ga CoCa CoLa', N'CoCa.jpeg', 15000, CAST(N'2021-12-10' AS Date), N'Nước ngọt nhập khẩu', N'<p>Nước ngọt c&oacute; doanh thu b&aacute;n lớn nhất Việt Nam 2021</p>', 0, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (26, N'Bia Heineken', N'BiaHeineken.jpeg', 30000, CAST(N'2021-12-10' AS Date), N'Nước uống có cồn nhập khẩu từ Pháp', N'<p>hương vị l&uacute;a mạch</p>', 0, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (27, N'Nước Tăng Lực Sting Hương Dâu', N'Sting.jpeg', 15000, CAST(N'2021-12-10' AS Date), N'Nước uống có ga vị dâu', N'<p>L&agrave; loại nước uống c&oacute; doanh số b&aacute;n chạy tại Việt Nam</p>', 1, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (28, N'Nước Tăng Lực Redbull', N'BoHuc.jpeg', 20000, CAST(N'2021-12-10' AS Date), N'Nước uống nhập khẩu Thái Lan', N'<p>Nhập khẩu th&aacute;i</p>', 0, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (29, N'Rượu vang Berri', N'VangBerry.jpg', 3000000, CAST(N'2021-12-10' AS Date), N'Rượu vang Berri Estates Cabernet Sauvignon 13% chai 750ml', N'<p>Hạn sử dụng sau 3 năm. Nồng độ cồn 13%</p>', 0, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (30, N'Rượu vang Ramirana', N'VangRamirana.jpg', 6000000, CAST(N'2021-12-10' AS Date), N'Rượu ngoại', N'<h1 class="nameproduct" style="margin: 0px 0px 10px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 22px; line-height: 1.3em; font-family: Helvetica, Arial, sans-serif; color: #4a4a4a; outline: none; -webkit-font-smoothing: antialiased; text-rendering: geometricprecision; overflow: hidden; background-color: #ffffff;">Rượu vang Ramirana Cabernet Sauvignon 12.5% chai 750ml</h1>', 0, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (31, N'Bia Huda', N'Huda.jpg', 15000, CAST(N'2021-12-10' AS Date), N'Bia huda Huế. Đậm tình miền trung', N'<p><span style="color: #333333; font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">Sản phẩm được sản xuất theo quy tr&igrave;nh hiện đại v&agrave; kh&ocirc;ng chứa h&oacute;a chất độc hại mang đến chất lượng ho&agrave;n hảo cho người sử dụng. bia </span><span style="color: #333333; font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">c&oacute; m&agrave;u v&agrave;ng &oacute;ng, m&ugrave;i thơm đặc trưng, hương vị đậm đ&agrave;, hấp dẫn vị gi&aacute;c. Sản phẩm từ thương hiệu Huda </span><span style="color: #333333; font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">chất lượng với c&ocirc;ng nghệ&nbsp; bia </span><span style="color: #333333; font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">Đan Mạch</span></p>', 0, 5, 10)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [HinhAnh], [DonGia], [NgayCapNhat], [ThongTin], [MoTa], [SoLuongDaBan], [MaNMA_id], [MaLMA_id]) VALUES (32, N'Rượu Vodka Men', N'Men.jpg', 80000, CAST(N'2021-12-10' AS Date), N'Rượu Vodka Men 39.5% chai 500ml', N'<p>D&agrave;nh cho người tr&ecirc;n 18 tuổi</p>', 0, 5, 10)
SET IDENTITY_INSERT [dbo].[MonAn] OFF
GO
SET IDENTITY_INSERT [dbo].[NguyenLieu] ON 

INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (1, N'Khăn Lạnh', 14, N'Khăn lạnh dùng để lau miệng', 10000, 5)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (4, N'Cá Lóc', 0.19999999999999663, N'Cá lóc hải sản', 20000, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (5, N'Hành Lá', 48, N'Gia vị hàng lá', 10000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (8, N'Tỏi', 49, N'Tỏi nguyên liệu Việt', 10000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (9, N'Rau Muống', 19, N'Rau muốn trồng tại ao ', 10000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (10, N'Mè', 20, N'Mè trắng', 20000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (11, N'Thịt Heo', 0.5, N'Heo ba rọi (heo tơ)', 80000, 5)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (12, N'Xà lách', 19, N'rau xà lách', 40000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (13, N'Tiêu', 30, N'Hạt tiêu nhập từ DakLak', 30000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (14, N'Gà', NULL, N'Gà kiến việt nam', 180000, 5)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (15, N'Bột Chiên', 30, N'Bột Chiên các món ăn như đùi gà chiên, chả cá chiên...', 60000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (16, N'Dầu Ăn', 20, N'Dầu để chiên', 45000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (17, N'Xoài', 20, N'Xoài bào nhỏ theo sợi để làm gỏi hoặc làm trái cây tráng miệng', 20000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (18, N'Tôm Khô', 16.5, N'Tôm sấy khô sẵn', 60000, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (19, N'Bột Gia Vị', NULL, N'Bột dùng để làm gõi chua ngọt', 35000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (20, N'Sả ', 20, N'Sả để làm nguyên liệu chế biến', 8000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (21, N'Hành Tím', 20, N'Hành tím để làm nguyên liệu chế biến', 12000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (22, N'Ếch', 15, N'Ếch đồng việt nam', 100000, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (23, N'Ớt Trái Đỏ', 23, N'Ớt trái đỏ, loại cay', 5000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (24, N'Ớt Trái Xanh', 24, N'Ớt trái xanh, loại ít cay hoặc không cay', 15000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (25, N'Muối Ớt Xanh', 20, N'Muối ớt nhập từ Mỹ đễ có mùi vị ngon nhất', 30000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (26, N'Sốt Nướng Sa Tế', 17, N'Gia vị để làm màu khi nướng BBQ', 40000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (27, N'Tôm Sú', 17.5, N'Tôm sú nuôi loại to', 200000, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (28, N'Mật Ong', 5, N'Mật ong rừng nguyên chất để làm gia vị', 250000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (29, N'Mực Lá', 6.5, N'Mực lá tươi (con lớn)', 300000, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (30, N'Cá Kèo', 8, N'Cá kèo to', 150000, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (31, N'Sườn Heo', 4.5, N'Sườn heo non thịt ngon', 15000, 5)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (32, N'Đường', 0, N'Đường, gia vị món ăn', 40000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (33, N'Giấm', 10, N'Gia vị món ăn thêm chua, ngon miệng', 40000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (34, N'Rau Sống Các Loại', 5, N'Rau sống được mix đủ các loại như (Giá, sà lách, rau thơi, rau muốn chỉ...) để làm rau sống', 40000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (35, N'Cá Viên', 4.5, N'Cá viên làm cừ cá thác lác, basa, thịt heo', 80000, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (36, N'Nước Cốt Lẩu Chua Cay', 4, N'Nước cố được chế biến sẵn, làm lẩu nhanh', 40000, 5)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (37, N'Cá Thác Lác Nguyên Chất', 5, N'Cá thác lám bằm làm chả nguyên chất, tự nhiên không chất bảo quản', 100000, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (38, N'Khổ Qua', 5, N'Khổ qua đắng trồng và nhập khẩu từ Đà Lạt', 30000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (39, N'Tiêu Xanh', 5, N'Tiêu xanh daklak', 50000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (40, N'Trứng Gà Công Nghiệp', 20, N'trứng gà nuôi công nghiệp nhập khẩu', 3000, 5)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (41, N'Kim Chi', 1, N'Kim chi Hàn Quốc', 32000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (42, N'Tương (Xì Dầu)', 5, N'Nước chấm xì dầu (chay)', 40000, 3)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (43, N'Cải Thìa', 1, N'Cải thìa bẹ to Trung Quốc', 20000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (44, N'Đậu Hũ (Đậu Phụ Thối)', 1, N'Đậu nành lên men nguyên chất', 15000, 5)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (45, N'Nấm Công Đô', 1, N'Nấm công đô Hàn Quốc', 15000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (46, N'Cá Nục', 2, N'Cá nục ướp đá đánh bắt', 60000, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (47, N'Đậu Que', 0, N'Đậu que hay còn gọi là đậu Lave', 70000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (48, N'Cà Chua', 1, N'Cà chua đỏ đà lạt', 45000, 2)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (49, N'Rượu Soju Jinro Hương Mận', 5, N'Rượu nhập khẩu Hàn Quốc', 85000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (50, N'Bia Tiger', 81, N'Bia Tiger nâu lon', 15000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (51, N'Nước Ngọt Có Ga Sprite', 95, N'Nước ngọt có ga lon', 12000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (52, N'Nước Ngọt Có Ga CoCa CoLa', 99, N'Nước ngọt có ga lon coca cola', 12000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (53, N'Bia Heineken', 197, N'Nước uống có cồn', 10000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (54, N'Nước Tăng Lực Sting Hương Dâu', 91, N'Nước uống ga màu đỏ', 10000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (55, N'Nước Tăng Lực Redbull', 100, N'Nước uống không có ga mùi bạc hà, màu vàng', 20000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (56, N'Rượu vang Berri Estates', 4, N'Rượu vang Berri Estates Cabernet Sauvignon 13% chai 750ml', 3000000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (57, N'Rượu vang Ramirana ', 1, N'Rượu vang Ramirana Cabernet Sauvignon 12.5% chai 750ml', 2500000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (58, N'Bia Huda', 100, N'Bia Huda 330ml', 12000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (59, N'Rượu Vodka Men', 2, N'Rượu có cồn cao', 85000, 4)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (61, N'Cá Heo', 3.5, N'Nguyên Liệu dùng món shashimi', 0, 1)
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuongHienCon], [GhiChu], [GiaNhapCuoi], [MaLNL_id]) VALUES (62, N'Thịt Hổ', 3, N'Thịt cho món thịt hổ sào', 0, 5)
SET IDENTITY_INSERT [dbo].[NguyenLieu] OFF
GO
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (2, 1, 3)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (2, 14, 2)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (2, 53, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (5, 53, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (6, 53, 1.5)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (7, 53, 4)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (8, 19, NULL)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (9, 53, 5)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (10, 53, 100)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (11, 53, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (12, 32, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (13, 32, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (14, 14, NULL)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (16, 32, NULL)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (16, 47, NULL)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (17, 53, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (18, 53, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (19, 53, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (20, 50, 2)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (20, 53, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (21, 53, 1)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (21, 61, 3.5)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (22, 58, 10)
INSERT [dbo].[NguyenLieuTra] ([MaHoanTra_id], [MaNguyenLieu_id], [SoLuongTra]) VALUES (23, 53, 1)
GO
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (5, 58, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (11, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (11, 12, 0.01)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (13, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (15, 17, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (15, 18, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (15, 19, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (16, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (16, 12, 0.01)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (17, 20, 2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (17, 21, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (17, 22, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (17, 23, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (18, 14, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (18, 15, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (18, 16, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (19, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (19, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (20, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (21, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (21, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (22, 20, 2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (22, 21, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (22, 22, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (22, 23, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (23, 13, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (23, 16, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (23, 19, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (23, 21, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (23, 23, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (23, 29, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (24, 25, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (24, 26, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (24, 27, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (24, 28, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (25, 13, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (25, 16, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (25, 19, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (25, 21, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (25, 23, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (25, 29, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (26, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (27, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (27, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (28, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (29, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (30, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (30, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (31, 8, 0.1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (31, 9, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (31, 10, 0.1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (32, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (32, 12, 0.01)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (33, 53, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (34, 53, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (35, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (36, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (37, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (38, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (38, 13, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (38, 16, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (38, 23, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (38, 30, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (39, 25, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (39, 26, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (39, 27, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (39, 28, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (40, 8, 0.1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (40, 9, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (40, 10, 0.1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (41, 5, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (41, 8, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (41, 21, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (41, 31, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (41, 32, 0.03)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (41, 33, 0.03)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (42, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (43, 17, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (43, 18, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (43, 19, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (44, 17, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (44, 18, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (44, 19, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (45, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (46, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (46, 12, 0.01)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (47, 17, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (47, 18, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (47, 19, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (48, 13, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (48, 16, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (48, 19, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (48, 21, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (48, 23, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (48, 29, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (49, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (49, 12, 0.01)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (50, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (50, 12, 0.01)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (51, 11, 0.5)
GO
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (51, 12, 0.01)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (52, 8, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (52, 16, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (52, 23, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (52, 43, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (53, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (54, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (54, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (55, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (55, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (56, 8, 0.1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (56, 9, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (56, 10, 0.1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (57, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (57, 13, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (57, 16, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (57, 23, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (57, 30, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (58, 14, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (58, 15, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (58, 16, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (59, 53, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (60, 54, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (61, 51, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (62, 52, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (63, 54, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (64, 17, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (64, 18, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (64, 19, 0.3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (65, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (65, 12, 0.01)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (66, 4, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (66, 14, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (67, 20, 2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (67, 21, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (67, 22, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (67, 23, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (68, 50, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (69, 50, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (70, 57, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (71, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (71, 12, 0.01)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (72, 13, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (72, 16, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (72, 19, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (72, 21, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (72, 23, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (72, 29, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (73, 13, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (73, 16, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (73, 19, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (73, 21, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (73, 23, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (73, 29, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (74, 53, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (75, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (75, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (76, 51, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (77, 54, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (78, 54, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (79, 51, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (83, 4, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (83, 23, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (83, 24, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (84, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (84, 5, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (86, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (86, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (87, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (88, 5, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (88, 8, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (88, 21, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (88, 31, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (88, 32, 0.03)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (88, 33, 0.03)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (89, 13, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (89, 16, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (89, 19, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (89, 21, 0.02)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (89, 23, 0.05)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (89, 29, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (103, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (103, 22, 3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (103, 58, 2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (104, 12, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (104, 23, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (105, 1, 2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (105, 26, 3)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (106, 62, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (107, 53, 2.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (107, 58, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (108, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (108, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (109, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (110, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (110, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (114, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (114, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (115, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (115, 5, 0.2)
GO
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (116, 4, 0.4)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (116, 5, 0.2)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (117, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (118, 1, 1)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (119, 8, 0.003)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (119, 11, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (119, 13, 0.003)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (120, 17, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (120, 18, 0.5)
INSERT [dbo].[NguyenLieuXuat] ([MaXuatKho_id], [MaNguyenLieu_id], [SoLuongXuat]) VALUES (120, 19, 0.3)
GO
SET IDENTITY_INSERT [dbo].[NhaCC] ON 

INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai]) VALUES (1, N'Cung Cấp Hải Sản Tươi Biển Gọi', N'Hà Nội', N'0971024568')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai]) VALUES (2, N'Cung Cấp Rau Sạch DaLatVegatable', N'Đà Lạt', N'0971024568')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai]) VALUES (3, N'Cung Cấp Gia Vị Trường An', N'Hà Nội', N'0971024568')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai]) VALUES (4, N'Cung Cấp Gia Vị Thuận Phát', N'Hà Nội', N'0654251543')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai]) VALUES (5, N'Đại Lý Bia Hà Nội', N'Hà Nội', N'0254587854')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai]) VALUES (6, N'Đại Lý Bia Và Nước Uống Chánh Thắng', N'Hà Nội', N'0123654585')
SET IDENTITY_INSERT [dbo].[NhaCC] OFF
GO
INSERT [dbo].[NhanVien] ([TaiKhoanNV], [MatKhauNV], [TenNhanVien], [NgaySinh], [SoDienThoai], [MaQuyen_id]) VALUES (N'kho', N'abc123', N'Nhân Viên Kho', CAST(N'1998-08-08' AS Date), N'0974542845', 2)
INSERT [dbo].[NhanVien] ([TaiKhoanNV], [MatKhauNV], [TenNhanVien], [NgaySinh], [SoDienThoai], [MaQuyen_id]) VALUES (N'nhanvien', N'abc123', N'Nhân Viên Sau', CAST(N'1998-02-08' AS Date), N'0123654875', 1)
INSERT [dbo].[NhanVien] ([TaiKhoanNV], [MatKhauNV], [TenNhanVien], [NgaySinh], [SoDienThoai], [MaQuyen_id]) VALUES (N'Tra', N'abc123', N'Nhân Viên', CAST(N'1998-02-08' AS Date), N'0123654875', 1)
INSERT [dbo].[NhanVien] ([TaiKhoanNV], [MatKhauNV], [TenNhanVien], [NgaySinh], [SoDienThoai], [MaQuyen_id]) VALUES (N'VanA', N'abc123', N'Nguyễn Văn A', CAST(N'2021-12-24' AS Date), N'0123456789', 1)
GO
SET IDENTITY_INSERT [dbo].[NhomMonAn] ON 

INSERT [dbo].[NhomMonAn] ([MaNMA], [TenNMA]) VALUES (1, N'Món Chay')
INSERT [dbo].[NhomMonAn] ([MaNMA], [TenNMA]) VALUES (2, N'Món Việt')
INSERT [dbo].[NhomMonAn] ([MaNMA], [TenNMA]) VALUES (3, N'Món Nhật')
INSERT [dbo].[NhomMonAn] ([MaNMA], [TenNMA]) VALUES (4, N'Món Âu')
INSERT [dbo].[NhomMonAn] ([MaNMA], [TenNMA]) VALUES (5, N'Món Khác')
SET IDENTITY_INSERT [dbo].[NhomMonAn] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (1, CAST(N'2021-12-13' AS Date), 230000, N'kho', 3)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (2, CAST(N'2021-12-08' AS Date), 70000, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (4, CAST(N'2021-12-22' AS Date), 276000, N'nhanvien', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (5, CAST(N'2021-12-22' AS Date), 300000, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (6, CAST(N'2021-12-22' AS Date), 1200000, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (7, CAST(N'2021-12-22' AS Date), 100000, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (8, CAST(N'2021-12-23' AS Date), 50000, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (9, CAST(N'2021-12-23' AS Date), 0, N'kho', 2)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (10, CAST(N'2021-12-23' AS Date), 0, N'kho', 2)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (11, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (12, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (13, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (14, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (15, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (16, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (17, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (18, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (19, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (20, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (21, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (22, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (23, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (24, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (25, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (26, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (27, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (28, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (29, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (30, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (31, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (32, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (33, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (34, CAST(N'2021-12-23' AS Date), 100, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (35, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (36, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (37, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (38, CAST(N'2021-12-23' AS Date), 0, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (39, CAST(N'2021-12-23' AS Date), 4, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (42, CAST(N'2021-12-23' AS Date), 130000, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (44, CAST(N'2021-12-23' AS Date), 100000, N'kho', 1)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [TongTien], [TaiKhoanNV_id], [MaNCC_id]) VALUES (52, CAST(N'2021-12-23' AS Date), 125000, N'kho', 1)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [GhiChu]) VALUES (1, N'Nhân Viên', N'Nhân viên sử dụng phần mềm để order')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [GhiChu]) VALUES (2, N'Nhân Viên Kho', N'Nhân viên sử dụng phần mềm để quản lý kho')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [GhiChu]) VALUES (3, N'Nhân Viên Admin', N'Nhân viên sử dụng phần mềm để quản lý nhân viên và nhân viên kho')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Tang] ON 

INSERT [dbo].[Tang] ([MaTang], [TenTang]) VALUES (1, N'Tầng 1')
INSERT [dbo].[Tang] ([MaTang], [TenTang]) VALUES (2, N'Tầng 2')
INSERT [dbo].[Tang] ([MaTang], [TenTang]) VALUES (3, N'Tầng 3')
SET IDENTITY_INSERT [dbo].[Tang] OFF
GO
SET IDENTITY_INSERT [dbo].[XuatKho] ON 

INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (5, CAST(N'2021-12-10T12:09:48.660' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (11, CAST(N'2021-12-10T14:45:19.767' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (13, CAST(N'2021-12-10T15:19:25.647' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (15, CAST(N'2021-12-10T16:08:34.757' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (16, CAST(N'2021-12-10T16:09:32.693' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (17, CAST(N'2021-12-10T18:37:06.343' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (18, CAST(N'2021-12-10T19:06:25.360' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (19, CAST(N'2021-12-10T19:21:51.840' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (20, CAST(N'2021-12-10T19:47:03.610' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (21, CAST(N'2021-12-10T19:47:05.590' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (22, CAST(N'2021-12-10T19:47:09.417' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (23, CAST(N'2021-12-10T19:47:16.863' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (24, CAST(N'2021-12-10T19:48:52.897' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (25, CAST(N'2021-12-10T19:48:58.643' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (26, CAST(N'2021-12-10T19:54:01.833' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (27, CAST(N'2021-12-10T19:56:36.923' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (28, CAST(N'2021-12-10T20:13:48.627' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (29, CAST(N'2021-12-10T20:13:55.133' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (30, CAST(N'2021-12-12T16:00:54.423' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (31, CAST(N'2021-12-12T16:02:09.347' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (32, CAST(N'2021-12-12T16:02:57.527' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (33, CAST(N'2021-12-12T17:40:03.567' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (34, CAST(N'2021-12-12T17:43:02.983' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (35, CAST(N'2021-12-12T18:26:43.810' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (36, CAST(N'2021-12-12T18:26:50.433' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (37, CAST(N'2021-12-12T18:32:19.393' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (38, CAST(N'2021-12-12T21:42:35.647' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (39, CAST(N'2021-12-12T22:13:29.820' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (40, CAST(N'2021-12-12T22:13:34.577' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (41, CAST(N'2021-12-12T22:13:37.997' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (42, CAST(N'2021-12-13T07:11:51.907' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (43, CAST(N'2021-12-13T09:03:21.587' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (44, CAST(N'2021-12-13T09:37:06.953' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (45, CAST(N'2021-12-13T09:37:39.933' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (46, CAST(N'2021-12-13T09:57:34.620' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (47, CAST(N'2021-12-13T10:39:49.147' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (48, CAST(N'2021-12-13T10:39:51.877' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (49, CAST(N'2021-12-13T10:49:52.447' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (50, CAST(N'2021-12-13T10:57:08.427' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (51, CAST(N'2021-12-13T11:51:53.843' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (52, CAST(N'2021-12-13T13:16:25.807' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (53, CAST(N'2021-12-14T14:49:19.370' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (54, CAST(N'2021-12-14T14:49:22.233' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (55, CAST(N'2021-12-14T14:49:24.703' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (56, CAST(N'2021-12-14T14:49:32.647' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (57, CAST(N'2021-12-14T14:49:35.077' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (58, CAST(N'2021-12-14T14:49:38.497' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (59, CAST(N'2021-12-14T14:49:43.707' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (60, CAST(N'2021-12-14T14:49:48.743' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (61, CAST(N'2021-12-14T14:49:57.510' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (62, CAST(N'2021-12-14T14:50:06.490' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (63, CAST(N'2021-12-14T14:50:10.490' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (64, CAST(N'2021-12-15T12:56:29.333' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (65, CAST(N'2021-12-16T20:19:30.623' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (66, CAST(N'2021-12-08T00:00:00.000' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (67, CAST(N'2021-12-20T08:45:22.090' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (68, CAST(N'2021-12-21T10:42:09.227' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (69, CAST(N'2021-12-21T10:42:22.303' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (70, CAST(N'2021-12-21T15:14:41.333' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (71, CAST(N'2021-12-21T15:16:17.280' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (72, CAST(N'2021-12-21T15:17:06.657' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (73, CAST(N'2021-12-21T15:17:10.497' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (74, CAST(N'2021-12-21T15:19:34.233' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (75, CAST(N'2021-12-21T15:27:34.980' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (76, CAST(N'2021-12-21T15:34:03.193' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (77, CAST(N'2021-12-21T15:34:08.713' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (78, CAST(N'2021-12-21T15:34:39.697' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (79, CAST(N'2021-12-21T15:34:43.937' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (82, NULL)
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (83, NULL)
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (84, NULL)
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (86, CAST(N'2021-12-21T20:11:50.577' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (87, CAST(N'2021-12-21T20:13:04.703' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (88, CAST(N'2021-12-21T20:17:26.147' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (89, CAST(N'2021-12-21T21:08:45.977' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (103, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (104, CAST(N'2021-12-21T00:00:00.000' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (105, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (106, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (107, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (108, CAST(N'2021-12-22T20:44:00.583' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (109, CAST(N'2021-12-22T20:48:38.823' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (110, CAST(N'2021-12-22T20:48:42.540' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (114, CAST(N'2021-12-23T22:24:08.313' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (115, CAST(N'2021-12-23T22:28:43.260' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (116, CAST(N'2021-12-23T22:29:10.597' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (117, CAST(N'2021-12-23T22:43:33.790' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (118, CAST(N'2021-12-24T06:58:51.993' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (119, CAST(N'2021-12-24T07:02:16.673' AS DateTime))
INSERT [dbo].[XuatKho] ([MaXuatKho], [NgayXuat]) VALUES (120, CAST(N'2021-12-24T09:12:08.690' AS DateTime))
SET IDENTITY_INSERT [dbo].[XuatKho] OFF
GO
ALTER TABLE [dbo].[Ban] ADD  DEFAULT ((4)) FOR [SoGhe]
GO
ALTER TABLE [dbo].[Ban] ADD  DEFAULT ((0)) FOR [Vip]
GO
ALTER TABLE [dbo].[Ban] ADD  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT (getdate()) FOR [NgayGoi]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] ADD  CONSTRAINT [DF__ChiTietPh__SoLuo__4222D4EF]  DEFAULT ((0)) FOR [SoLuongNhap]
GO
ALTER TABLE [dbo].[ChiTietSanPham] ADD  DEFAULT ((0)) FOR [SoLuongDung]
GO
ALTER TABLE [dbo].[ChiTietSanPham] ADD  DEFAULT ((0)) FOR [Tru]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__TenKhach__5441852A]  DEFAULT (N'Khach Hang A') FOR [TenKhachHang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__NgayTao__5535A963]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__TrangTha__5629CD9C]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[HoanTra] ADD  DEFAULT (getdate()) FOR [NgayHoanTra]
GO
ALTER TABLE [dbo].[LichSuGoiMon] ADD  DEFAULT (getdate()) FOR [ThoiGianGoi]
GO
ALTER TABLE [dbo].[LichSuGoiMon] ADD  DEFAULT (getdate()) FOR [ThoiGianTra]
GO
ALTER TABLE [dbo].[MonAn] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[MonAn] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[MonAn] ADD  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[NguyenLieu] ADD  DEFAULT ((0)) FOR [SoLuongHienCon]
GO
ALTER TABLE [dbo].[NguyenLieu] ADD  DEFAULT ((0)) FOR [GiaNhapCuoi]
GO
ALTER TABLE [dbo].[NguyenLieuTra] ADD  CONSTRAINT [DF__NguyenLie__SoLuo__70DDC3D8]  DEFAULT ((0)) FOR [SoLuongTra]
GO
ALTER TABLE [dbo].[NguyenLieuXuat] ADD  CONSTRAINT [DF__NguyenLie__SoLuo__68487DD7]  DEFAULT ((0)) FOR [SoLuongXuat]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  DEFAULT (getdate()) FOR [NgayNhap]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[XuatKho] ADD  DEFAULT (getdate()) FOR [NgayXuat]
GO
ALTER TABLE [dbo].[Ban]  WITH CHECK ADD FOREIGN KEY([MaTang_id])
REFERENCES [dbo].[Tang] ([MaTang])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHo__MaHoa__5AEE82B9] FOREIGN KEY([MaHoaDon_id])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHo__MaHoa__5AEE82B9]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaMonAn_id])
REFERENCES [dbo].[MonAn] ([MaMonAn])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__MaNgu__4316F928] FOREIGN KEY([MaNguyenLieu_id])
REFERENCES [dbo].[NguyenLieu] ([MaNguyenLieu])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK__ChiTietPh__MaNgu__4316F928]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__MaPhi__440B1D61] FOREIGN KEY([MaPhieuNhap_id])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK__ChiTietPh__MaPhi__440B1D61]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([MaMonAn_id])
REFERENCES [dbo].[MonAn] ([MaMonAn])
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([MaNguyenLieu_id])
REFERENCES [dbo].[NguyenLieu] ([MaNguyenLieu])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__MaBan_id__571DF1D5] FOREIGN KEY([MaBan_id])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__MaBan_id__571DF1D5]
GO
ALTER TABLE [dbo].[LichSuGoiMon]  WITH CHECK ADD  CONSTRAINT [FK__LichSuGoi__MaMon__60A75C0F] FOREIGN KEY([MaHoaDon_id])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[LichSuGoiMon] CHECK CONSTRAINT [FK__LichSuGoi__MaMon__60A75C0F]
GO
ALTER TABLE [dbo].[LichSuGoiMon]  WITH CHECK ADD FOREIGN KEY([MaMonAn_id])
REFERENCES [dbo].[MonAn] ([MaMonAn])
GO
ALTER TABLE [dbo].[MonAn]  WITH CHECK ADD FOREIGN KEY([MaLMA_id])
REFERENCES [dbo].[LoaiMonAn] ([MaLMA])
GO
ALTER TABLE [dbo].[MonAn]  WITH CHECK ADD FOREIGN KEY([MaNMA_id])
REFERENCES [dbo].[NhomMonAn] ([MaNMA])
GO
ALTER TABLE [dbo].[NguyenLieu]  WITH CHECK ADD FOREIGN KEY([MaLNL_id])
REFERENCES [dbo].[LoaiNguyenLieu] ([MaLNL])
GO
ALTER TABLE [dbo].[NguyenLieuTra]  WITH CHECK ADD  CONSTRAINT [FK__NguyenLie__MaHoa__71D1E811] FOREIGN KEY([MaHoanTra_id])
REFERENCES [dbo].[HoanTra] ([MaHoanTra])
GO
ALTER TABLE [dbo].[NguyenLieuTra] CHECK CONSTRAINT [FK__NguyenLie__MaHoa__71D1E811]
GO
ALTER TABLE [dbo].[NguyenLieuTra]  WITH CHECK ADD  CONSTRAINT [FK__NguyenLie__MaNgu__72C60C4A] FOREIGN KEY([MaNguyenLieu_id])
REFERENCES [dbo].[NguyenLieu] ([MaNguyenLieu])
GO
ALTER TABLE [dbo].[NguyenLieuTra] CHECK CONSTRAINT [FK__NguyenLie__MaNgu__72C60C4A]
GO
ALTER TABLE [dbo].[NguyenLieuXuat]  WITH CHECK ADD  CONSTRAINT [FK__NguyenLie__MaNgu__6A30C649] FOREIGN KEY([MaNguyenLieu_id])
REFERENCES [dbo].[NguyenLieu] ([MaNguyenLieu])
GO
ALTER TABLE [dbo].[NguyenLieuXuat] CHECK CONSTRAINT [FK__NguyenLie__MaNgu__6A30C649]
GO
ALTER TABLE [dbo].[NguyenLieuXuat]  WITH CHECK ADD  CONSTRAINT [FK__NguyenLie__MaXua__693CA210] FOREIGN KEY([MaXuatKho_id])
REFERENCES [dbo].[XuatKho] ([MaXuatKho])
GO
ALTER TABLE [dbo].[NguyenLieuXuat] CHECK CONSTRAINT [FK__NguyenLie__MaXua__693CA210]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaQuyen_id])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC_id])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([TaiKhoanNV_id])
REFERENCES [dbo].[NhanVien] ([TaiKhoanNV])
GO
USE [master]
GO
ALTER DATABASE [QuanLyNhaHang] SET  READ_WRITE 
GO
