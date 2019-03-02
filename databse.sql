USE [DiemSV]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 03/02/2019 17:14:33 ******/
/****** Object:  Table [dbo].[tblChuyenNganh]    Script Date: 03/02/2019 17:14:33 ******/
SET IDENTITY_INSERT [dbo].[tblChuyenNganh] ON
INSERT [dbo].[tblChuyenNganh] ([id], [tenChuyenNganh], [description]) VALUES (1, N'CNTT', NULL)
INSERT [dbo].[tblChuyenNganh] ([id], [tenChuyenNganh], [description]) VALUES (2, N'Vien Thong', NULL)
INSERT [dbo].[tblChuyenNganh] ([id], [tenChuyenNganh], [description]) VALUES (3, N'Da Phuong Tien', NULL)
INSERT [dbo].[tblChuyenNganh] ([id], [tenChuyenNganh], [description]) VALUES (4, N'Ke Toan', NULL)
SET IDENTITY_INSERT [dbo].[tblChuyenNganh] OFF
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 03/02/2019 17:14:33 ******/
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
/****** Object:  Table [dbo].[tblNienKhoa]    Script Date: 03/02/2019 17:14:33 ******/
SET IDENTITY_INSERT [dbo].[tblNienKhoa] ON
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (1, 1, N'D14', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (2, 2, N'D14', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (3, 3, N'D14', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (5, 1, N'D15', N'')
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (6, 2, N'D15', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (7, 3, N'D15', NULL)
INSERT [dbo].[tblNienKhoa] ([id], [idChuyenNganh], [nienKhoa], [moTa]) VALUES (8, 1, N'D16', NULL)
SET IDENTITY_INSERT [dbo].[tblNienKhoa] OFF
/****** Object:  Table [dbo].[tblMonNganh]    Script Date: 03/02/2019 17:14:33 ******/
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
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 03/02/2019 17:14:33 ******/
SET IDENTITY_INSERT [dbo].[tblSinhVien] ON
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (4, 1, N'Hoan Van An', CAST(0x521E0B00 AS Date), N'Thanh Hoa')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (5, 1, N'Le Tuan Anh', CAST(0x521E0B00 AS Date), N'Nghe An')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (6, 1, N'Nguyen Duc Anh', CAST(0x521E0B00 AS Date), N'Ha Noi')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (8, 1, N'Hoang Viet Anh', CAST(0x521E0B00 AS Date), N'Hai Phong')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (9, 1, N'Nguyen Quy Chi', CAST(0x521E0B00 AS Date), N'Quang Ninh')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (10, 1, N'Dang Bao Chien', CAST(0x521E0B00 AS Date), N'Hai Duong')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (11, 2, N'Nguyen Van Chinh', CAST(0x521E0B00 AS Date), N'Ha Tay')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (12, 2, N'Nguyen Huu Cong', CAST(0x521E0B00 AS Date), N'Ha Tinh')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (13, 2, N'Nguyen Van Dien', CAST(0x521E0B00 AS Date), N'Bac Giang')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (14, 2, N'Nguyen Duy', CAST(0x521E0B00 AS Date), N'Hung Yen')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (15, 2, N'Nguyen Quoc Duy', CAST(0x521E0B00 AS Date), N'Nam Dinh')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (16, 2, N'Ta Anh Duy', CAST(0x521E0B00 AS Date), N'Viet Nam')
INSERT [dbo].[tblSinhVien] ([id], [idKhoaHoc], [tenSV], [ngaySinh], [queQuan]) VALUES (17, 2, N'Do Tien Dat', CAST(0x521E0B00 AS Date), N'Viet Nam')
SET IDENTITY_INSERT [dbo].[tblSinhVien] OFF
/****** Object:  Table [dbo].[tblMonKhoaHoc]    Script Date: 03/02/2019 17:14:33 ******/
SET IDENTITY_INSERT [dbo].[tblMonKhoaHoc] ON
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (2, 3, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (3, 4, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (4, 5, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (5, 6, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (6, 7, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (8, 8, 1)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (9, 9, 2)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (10, 10, 2)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (14, 3, 5)
INSERT [dbo].[tblMonKhoaHoc] ([id], [idMonChuyenNganh], [idNienKhoa]) VALUES (15, 4, 5)
SET IDENTITY_INSERT [dbo].[tblMonKhoaHoc] OFF
/****** Object:  Table [dbo].[tblLopMonHoc]    Script Date: 03/02/2019 17:14:33 ******/
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
/****** Object:  Table [dbo].[tblSVLopMonHoc]    Script Date: 03/02/2019 17:14:33 ******/
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (4, 3, 6, 6, 0, N'nghi 1 buoi')
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (4, 7, 0, 0, 0, N'them vao sau')
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (5, 3, 5, 0, 0, N' ')
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (6, 3, 6, 4, 0, N'di muon')
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (6, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (8, 3, 0, 7, 0, N'di muon')
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (8, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (9, 3, 8, 7, 0, N'di muon')
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (9, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (10, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (11, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (11, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (12, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (13, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (14, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (15, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (16, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblSVLopMonHoc] ([idSv], [idLop], [diemChuyenCan], [diemGiuaKi], [diemThi], [ghiChu]) VALUES (17, 10, NULL, NULL, NULL, NULL)
