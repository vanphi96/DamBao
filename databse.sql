USE [master]
GO
/****** Object:  Database [DiemSV]    Script Date: 02/24/2019 14:24:04 ******/
CREATE DATABASE [DiemSV] ON  PRIMARY 
( NAME = N'DiemSV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DiemSV.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DiemSV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DiemSV_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DiemSV] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DiemSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DiemSV] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DiemSV] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DiemSV] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DiemSV] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DiemSV] SET ARITHABORT OFF
GO
ALTER DATABASE [DiemSV] SET AUTO_CLOSE ON
GO
ALTER DATABASE [DiemSV] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DiemSV] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DiemSV] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DiemSV] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DiemSV] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DiemSV] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DiemSV] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DiemSV] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DiemSV] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DiemSV] SET  ENABLE_BROKER
GO
ALTER DATABASE [DiemSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DiemSV] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DiemSV] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DiemSV] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DiemSV] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DiemSV] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DiemSV] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DiemSV] SET  READ_WRITE
GO
ALTER DATABASE [DiemSV] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DiemSV] SET  MULTI_USER
GO
ALTER DATABASE [DiemSV] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DiemSV] SET DB_CHAINING OFF
GO
USE [DiemSV]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 02/24/2019 14:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[user_name] [nvarchar](255) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChuyenNganh]    Script Date: 02/24/2019 14:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChuyenNganh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenChuyenNganh] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblChuyenNganh] ON
INSERT [dbo].[tblChuyenNganh] ([id], [tenChuyenNganh], [description]) VALUES (1, N'CNTT', NULL)
INSERT [dbo].[tblChuyenNganh] ([id], [tenChuyenNganh], [description]) VALUES (2, N'Vien Thong', NULL)
INSERT [dbo].[tblChuyenNganh] ([id], [tenChuyenNganh], [description]) VALUES (3, N'Da Phuong Tien', NULL)
INSERT [dbo].[tblChuyenNganh] ([id], [tenChuyenNganh], [description]) VALUES (4, N'Ke Toan', NULL)
SET IDENTITY_INSERT [dbo].[tblChuyenNganh] OFF
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 02/24/2019 14:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenMonHoc] [nvarchar](255) NOT NULL,
	[soTinChi] [int] NOT NULL,
	[moTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblMonHoc] ON
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (208, N'Đại số', 3, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (209, N'Toán rời rạc', 3, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (210, N'Thể chất 1', 2, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (211, N'Thể chất 2', 2, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (212, N'Tiếng anh 1', 7, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (213, N'Tiến anh 2', 7, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (214, N'Tiếng anh 3', 7, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (215, N'Xác suất thống kê', 3, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (216, N'Tin 1', 2, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (217, N'Tin 2', 2, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (218, N'Lập trình hướng đối tượng', 3, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (219, N'Kỹ thuật đồ họa', 3, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (220, N'Toán rời rạc 1', 3, NULL)
INSERT [dbo].[tblMonHoc] ([id], [tenMonHoc], [soTinChi], [moTa]) VALUES (221, N'Toán rời rạc 2', 3, NULL)
SET IDENTITY_INSERT [dbo].[tblMonHoc] OFF
/****** Object:  Table [dbo].[tblNienKhoa]    Script Date: 02/24/2019 14:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNienKhoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idChuyenNganh] [int] NOT NULL,
	[nienKhoa] [nvarchar](20) NOT NULL,
	[moTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblNienKhoa] ON
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (1, 1, N'D14', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (2, 2, N'D14', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (3, 3, N'D14', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (5, 1, N'D15', N'')
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (6, 2, N'D15', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (7, 3, N'D15', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (8, 1, N'D16', NULL)
SET IDENTITY_INSERT [dbo].[tblNienKhoa] OFF
/****** Object:  Table [dbo].[tblMonNganh]    Script Date: 02/24/2019 14:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonNganh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idMon] [int] NOT NULL,
	[idChuyenNganh] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblMonNganh] ON
INSERT [dbo].[tblMonNganh] ([id], [idMon], [idChuyenNganh]) VALUES (3, 208, 1)
INSERT [dbo].[tblMonNganh] ([id], [idMon], [idChuyenNganh]) VALUES (4, 209, 1)
INSERT [dbo].[tblMonNganh] ([id], [idMon], [idChuyenNganh]) VALUES (5, 210, 1)
INSERT [dbo].[tblMonNganh] ([id], [idMon], [idChuyenNganh]) VALUES (6, 211, 1)
INSERT [dbo].[tblMonNganh] ([id], [idMon], [idChuyenNganh]) VALUES (7, 212, 1)
INSERT [dbo].[tblMonNganh] ([id], [idMon], [idChuyenNganh]) VALUES (8, 213, 2)
INSERT [dbo].[tblMonNganh] ([id], [idMon], [idChuyenNganh]) VALUES (9, 214, 2)
INSERT [dbo].[tblMonNganh] ([id], [idMon], [idChuyenNganh]) VALUES (10, 215, 2)
SET IDENTITY_INSERT [dbo].[tblMonNganh] OFF
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 02/24/2019 14:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idKhoaHoc] [int] NOT NULL,
	[tenSV] [nvarchar](255) NOT NULL,
	[ngaySinh] [date] NULL,
	[queQuan] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblSinhVien] ON
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (4, 1, N'Hoan Van An', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (5, 1, N'Le Tuan Anh', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (6, 1, N'Nguyen Duc Anh', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (8, 1, N'Hoang Viet Anh', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (9, 1, N'Nguyen Quy Chi', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (10, 1, N'Dang Bao Chien', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (11, 2, N'Nguyen Van Chinh', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (12, 2, N'Nguyen Huu Cong', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (13, 2, N'Nguyen Van Dien', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (14, 2, N'Nguyen Duy', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (15, 2, N'Nguyen Quoc Duy', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (16, 2, N'Ta Anh Duy', NULL, NULL)
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (17, 2, N'Do Tien Dat', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblSinhVien] OFF
/****** Object:  Table [dbo].[tblMonKhoaHoc]    Script Date: 02/24/2019 14:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonKhoaHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idMonChuyenNganh] [int] NOT NULL,
	[idNienKhoa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblMonKhoaHoc] ON
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (2, 3, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (3, 4, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (4, 5, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (5, 6, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (6, 7, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (8, 8, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (9, 9, 2)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (10, 10, 2)
SET IDENTITY_INSERT [dbo].[tblMonKhoaHoc] OFF
/****** Object:  Table [dbo].[tblLopMonHoc]    Script Date: 02/24/2019 14:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLopMonHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idMonKhoaHoc] [int] NOT NULL,
	[soLuong] [int] NOT NULL,
	[phongHoc] [nvarchar](20) NULL,
	[tenLop] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblLopMonHoc] ON
INSERT [dbo].[tblLopMonHoc] ([id], [idMonKhoaHoc], [soLuong], [phongHoc], [tenLop]) VALUES (3, 2, 60, N'101', N'D14-011')
INSERT [dbo].[tblLopMonHoc] ([id], [idMonKhoaHoc], [soLuong], [phongHoc], [tenLop]) VALUES (4, 2, 60, N'102', N'D14-012')
INSERT [dbo].[tblLopMonHoc] ([id], [idMonKhoaHoc], [soLuong], [phongHoc], [tenLop]) VALUES (5, 3, 50, N'201', N'D14-013')
INSERT [dbo].[tblLopMonHoc] ([id], [idMonKhoaHoc], [soLuong], [phongHoc], [tenLop]) VALUES (6, 3, 50, N'201', N'D14-015')
INSERT [dbo].[tblLopMonHoc] ([id], [idMonKhoaHoc], [soLuong], [phongHoc], [tenLop]) VALUES (7, 9, 60, N'301', N'D15-011')
INSERT [dbo].[tblLopMonHoc] ([id], [idMonKhoaHoc], [soLuong], [phongHoc], [tenLop]) VALUES (8, 9, 60, N'301', N'D15-012')
INSERT [dbo].[tblLopMonHoc] ([id], [idMonKhoaHoc], [soLuong], [phongHoc], [tenLop]) VALUES (9, 10, 55, N'401', N'D15-013')
INSERT [dbo].[tblLopMonHoc] ([id], [idMonKhoaHoc], [soLuong], [phongHoc], [tenLop]) VALUES (10, 10, 55, N'402', N'D15-014')
SET IDENTITY_INSERT [dbo].[tblLopMonHoc] OFF
/****** Object:  Table [dbo].[tblSVLopMonHoc]    Script Date: 02/24/2019 14:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSVLopMonHoc](
	[idSv] [int] NOT NULL,
	[idLop] [int] NOT NULL,
	[diemChuyenCan] [float] NULL,
	[diemGiuaKi] [float] NULL,
	[diemThi] [float] NULL,
 CONSTRAINT [lopMonHoc_PK] PRIMARY KEY CLUSTERED 
(
	[idSv] ASC,
	[idLop] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (4, 3, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (5, 3, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (6, 4, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (8, 4, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (9, 4, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (10, 5, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (11, 7, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (12, 7, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (13, 8, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (14, 8, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (15, 9, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (16, 10, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi]) VALUES (17, 10, NULL, NULL, NULL)
/****** Object:  ForeignKey [FK__tblNienKh__idChu__07C12930]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblNienKhoa]  WITH CHECK ADD FOREIGN KEY([idChuyenNganh])
REFERENCES [dbo].[tblChuyenNganh] ([id])
GO
/****** Object:  ForeignKey [FK__tblNienKh__idChu__18EBB532]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblNienKhoa]  WITH CHECK ADD FOREIGN KEY([idChuyenNganh])
REFERENCES [dbo].[tblChuyenNganh] ([id])
GO
/****** Object:  ForeignKey [FK__tblNienKh__idChu__4AB81AF0]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblNienKhoa]  WITH CHECK ADD FOREIGN KEY([idChuyenNganh])
REFERENCES [dbo].[tblChuyenNganh] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonNga__idChu__08B54D69]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonNganh]  WITH CHECK ADD FOREIGN KEY([idChuyenNganh])
REFERENCES [dbo].[tblChuyenNganh] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonNga__idChu__19DFD96B]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonNganh]  WITH CHECK ADD FOREIGN KEY([idChuyenNganh])
REFERENCES [dbo].[tblChuyenNganh] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonNga__idChu__6383C8BA]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonNganh]  WITH CHECK ADD FOREIGN KEY([idChuyenNganh])
REFERENCES [dbo].[tblChuyenNganh] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonNga__idMon__09A971A2]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonNganh]  WITH CHECK ADD FOREIGN KEY([idMon])
REFERENCES [dbo].[tblMonHoc] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonNga__idMon__1AD3FDA4]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonNganh]  WITH CHECK ADD FOREIGN KEY([idMon])
REFERENCES [dbo].[tblMonHoc] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonNga__idMon__628FA481]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonNganh]  WITH CHECK ADD FOREIGN KEY([idMon])
REFERENCES [dbo].[tblMonHoc] ([id])
GO
/****** Object:  ForeignKey [FK__tblSinhVi__idKho__0A9D95DB]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD FOREIGN KEY([idKhoaHoc])
REFERENCES [dbo].[tblNienKhoa] ([id])
GO
/****** Object:  ForeignKey [FK__tblSinhVi__idKho__1BC821DD]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD FOREIGN KEY([idKhoaHoc])
REFERENCES [dbo].[tblNienKhoa] ([id])
GO
/****** Object:  ForeignKey [FK__tblSinhVi__idKho__534D60F1]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD FOREIGN KEY([idKhoaHoc])
REFERENCES [dbo].[tblNienKhoa] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonKho__idMon__0B91BA14]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonKhoaHoc]  WITH CHECK ADD FOREIGN KEY([idMonChuyenNganh])
REFERENCES [dbo].[tblMonNganh] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonKho__idMon__1CBC4616]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonKhoaHoc]  WITH CHECK ADD FOREIGN KEY([idMonChuyenNganh])
REFERENCES [dbo].[tblMonNganh] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonKho__idMon__68487DD7]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonKhoaHoc]  WITH CHECK ADD FOREIGN KEY([idMonChuyenNganh])
REFERENCES [dbo].[tblMonNganh] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonKho__idNie__0C85DE4D]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonKhoaHoc]  WITH CHECK ADD FOREIGN KEY([idNienKhoa])
REFERENCES [dbo].[tblNienKhoa] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonKho__idNie__1DB06A4F]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonKhoaHoc]  WITH CHECK ADD FOREIGN KEY([idNienKhoa])
REFERENCES [dbo].[tblNienKhoa] ([id])
GO
/****** Object:  ForeignKey [FK__tblMonKho__idNie__693CA210]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblMonKhoaHoc]  WITH CHECK ADD FOREIGN KEY([idNienKhoa])
REFERENCES [dbo].[tblNienKhoa] ([id])
GO
/****** Object:  ForeignKey [FK__tblLopMon__idMon__0D7A0286]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblLopMonHoc]  WITH CHECK ADD FOREIGN KEY([idMonKhoaHoc])
REFERENCES [dbo].[tblMonKhoaHoc] ([id])
GO
/****** Object:  ForeignKey [FK__tblLopMon__idMon__1EA48E88]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblLopMonHoc]  WITH CHECK ADD FOREIGN KEY([idMonKhoaHoc])
REFERENCES [dbo].[tblMonKhoaHoc] ([id])
GO
/****** Object:  ForeignKey [FK__tblLopMon__idMon__6E01572D]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblLopMonHoc]  WITH CHECK ADD FOREIGN KEY([idMonKhoaHoc])
REFERENCES [dbo].[tblMonKhoaHoc] ([id])
GO
/****** Object:  ForeignKey [FK__tblSVLopM__idLop__0E6E26BF]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblSVLopMonHoc]  WITH CHECK ADD FOREIGN KEY([idLop])
REFERENCES [dbo].[tblLopMonHoc] ([id])
GO
/****** Object:  ForeignKey [FK__tblSVLopM__idLop__1F98B2C1]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblSVLopMonHoc]  WITH CHECK ADD FOREIGN KEY([idLop])
REFERENCES [dbo].[tblLopMonHoc] ([id])
GO
/****** Object:  ForeignKey [FK__tblSVLopM__idLop__70DDC3D8]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblSVLopMonHoc]  WITH CHECK ADD FOREIGN KEY([idLop])
REFERENCES [dbo].[tblLopMonHoc] ([id])
GO
/****** Object:  ForeignKey [FK__tblSVLopMo__idSv__0F624AF8]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblSVLopMonHoc]  WITH CHECK ADD FOREIGN KEY([idSv])
REFERENCES [dbo].[tblSinhVien] ([id])
GO
/****** Object:  ForeignKey [FK__tblSVLopMo__idSv__208CD6FA]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblSVLopMonHoc]  WITH CHECK ADD FOREIGN KEY([idSv])
REFERENCES [dbo].[tblSinhVien] ([id])
GO
/****** Object:  ForeignKey [FK__tblSVLopMo__idSv__6FE99F9F]    Script Date: 02/24/2019 14:24:04 ******/
ALTER TABLE [dbo].[tblSVLopMonHoc]  WITH CHECK ADD FOREIGN KEY([idSv])
REFERENCES [dbo].[tblSinhVien] ([id])
GO
