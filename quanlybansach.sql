Create database [bookstore-manager]
go
USE [bookstore-manager]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoCongNo](
	[MaBaoCaoCongNo] [char](6) NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
 CONSTRAINT [PK_BaoCaoCongNo] PRIMARY KEY CLUSTERED 
(
	[MaBaoCaoCongNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoTon](
	[MaBaoCaoTon] [char](6) NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
 CONSTRAINT [PK_BaoCaoTon] PRIMARY KEY CLUSTERED 
(
	[MaBaoCaoTon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBaoCaoCongNo](
	[MaChiTietBaoCaoCongNo] [char](10) NOT NULL,
	[MaBaoCaoCongNo] [char](6) NULL,
	[MaKhachHang] [char](6) NULL,
	[NoDau] [money] NULL,
	[NoCuoi] [money] NULL,
	[PhatSinh] [money] NULL,
 CONSTRAINT [PK_ChiTietBaoCaoCongNo] PRIMARY KEY CLUSTERED 
(
	[MaChiTietBaoCaoCongNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBaoCaoTon](
	[MaChiTietBaoCaoTon] [char](10) NOT NULL,
	[MaBaoCaoTon] [char](6) NULL,
	[MaSach] [char](6) NULL,
	[TonDau] [int] NULL,
	[TonCuoi] [int] NULL,
	[PhatSinh] [int] NULL,
 CONSTRAINT [PK_ChiTietBaoCaoTon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietBaoCaoTon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaChiTietHoaDon] [char](10) NOT NULL,
	[MaHoaDon] [char](6) NOT NULL,
	[MaSach] [char](6) NOT NULL,
	[SoLuongBan] [int] NOT NULL,
	[DonGiaBan] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhapSach](
	[MaChiTietPhieuNhapSach] [char](10) NOT NULL,
	[MaPhieuNhapSach] [char](6) NOT NULL,
	[MaSach] [char](6) NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
	[DonGiaNhap] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuNhapSach] PRIMARY KEY CLUSTERED 
(
	[MaChiTietPhieuNhapSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [char](6) NOT NULL,
	[MaKhachHang] [char](6) NOT NULL,
	[MaNhanVien] [char](6) NOT NULL,
	[NgayHoaDon] [date] NOT NULL,
	[GiamGia] [money] NOT NULL,
	[TienKhachDaTra] [money] NOT NULL,
	[TienKhachDua] [money] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [char](6) NOT NULL,
	[HoTenKH] [nvarchar](100) NOT NULL,
	[SoDienThoai] [varchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[Email] [nvarchar](50) NULL,
	[SoTienNo] [money] NOT NULL,
	[TongTien] [money] NOT NULL,
	[NgayMuaCuoi] [date] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [char](6) NOT NULL,
	[TenNhanVien] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[ChucVu] [int] NOT NULL,
	[MatKhau] [char](32) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapSach](
	[MaPhieuNhapSach] [char](6) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[MaNhanVien] [char](6) NULL,
 CONSTRAINT [PK_PhieuNhapSach] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhapSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThu](
	[MaPhieuThu] [char](10) NOT NULL,
	[MaKhachHang] [char](6) NOT NULL,
	[MaNhanVien] [char](6) NULL,
	[NgayThu] [date] NOT NULL,
	[SoTienThu] [money] NOT NULL,
	[LyDoThu] [nvarchar](200) NULL,
 CONSTRAINT [PK_PhieuThu] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [char](6) NOT NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[MaTheLoai] [char](5) NOT NULL,
	[TacGia] [nvarchar](200) NULL,
	[SoLuongTon] [int] NOT NULL,
	[DonGia] [money] NULL,
	[NamXuatBan] [int] NULL,
	[NhaXuatBan] [nvarchar](100) NULL,
	[SoTrang] [int] NULL,
	[MoTa] [nvarchar](1000) NULL,
	[AnhBia] [image] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamSo](
	[MaThamSo] [char](5) NOT NULL,
	[TenThamSo] [varchar](100) NULL,
	[GiaTri] [int] NOT NULL,
 CONSTRAINT [PK_ThamSo] PRIMARY KEY CLUSTERED 
(
	[MaThamSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoaiSach](
	[MaTheLoai] [char](5) NOT NULL,
	[TenTheLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TheLoaiSach] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaoCaoCongNo] ([MaBaoCaoCongNo], [Thang], [Nam]) VALUES (N'000001', 6, 2019)
INSERT [dbo].[BaoCaoTon] ([MaBaoCaoTon], [Thang], [Nam]) VALUES (N'000001', 6, 2019)
INSERT [dbo].[ChiTietBaoCaoCongNo] ([MaChiTietBaoCaoCongNo], [MaBaoCaoCongNo], [MaKhachHang], [NoDau], [NoCuoi], [PhatSinh]) VALUES (N'0000010001', N'000001', N'000001', 0.0000, 11500.0000, 11500.0000)
INSERT [dbo].[ChiTietBaoCaoCongNo] ([MaChiTietBaoCaoCongNo], [MaBaoCaoCongNo], [MaKhachHang], [NoDau], [NoCuoi], [PhatSinh]) VALUES (N'0000010002', N'000001', N'000005', 0.0000, 0.0000, 0.0000)
INSERT [dbo].[ChiTietBaoCaoCongNo] ([MaChiTietBaoCaoCongNo], [MaBaoCaoCongNo], [MaKhachHang], [NoDau], [NoCuoi], [PhatSinh]) VALUES (N'0000010003', N'000001', N'000009', 0.0000, 17750.0000, 17750.0000)
INSERT [dbo].[ChiTietBaoCaoTon] ([MaChiTietBaoCaoTon], [MaBaoCaoTon], [MaSach], [TonDau], [TonCuoi], [PhatSinh]) VALUES (N'0000010001', N'000001', N'000001', 0, 488, 488)
INSERT [dbo].[ChiTietBaoCaoTon] ([MaChiTietBaoCaoTon], [MaBaoCaoTon], [MaSach], [TonDau], [TonCuoi], [PhatSinh]) VALUES (N'0000010002', N'000001', N'000002', 0, 500, 500)
INSERT [dbo].[ChiTietBaoCaoTon] ([MaChiTietBaoCaoTon], [MaBaoCaoTon], [MaSach], [TonDau], [TonCuoi], [PhatSinh]) VALUES (N'0000010003', N'000001', N'000003', 0, 499, 499)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHoaDon], [MaHoaDon], [MaSach], [SoLuongBan], [DonGiaBan]) VALUES (N'0000010000', N'000001', N'000001', 1, 31500.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHoaDon], [MaHoaDon], [MaSach], [SoLuongBan], [DonGiaBan]) VALUES (N'0000020000', N'000002', N'000001', 10, 31500.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHoaDon], [MaHoaDon], [MaSach], [SoLuongBan], [DonGiaBan]) VALUES (N'0000030000', N'000003', N'000003', 1, 57750.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHoaDon], [MaHoaDon], [MaSach], [SoLuongBan], [DonGiaBan]) VALUES (N'0000040000', N'000004', N'000001', 1, 31500.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHoaDon], [MaHoaDon], [MaSach], [SoLuongBan], [DonGiaBan]) VALUES (N'0000050000', N'000005', N'000001', 1, 31500.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHoaDon], [MaHoaDon], [MaSach], [SoLuongBan], [DonGiaBan]) VALUES (N'0000060000', N'000006', N'000002', 1, 36750.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHoaDon], [MaHoaDon], [MaSach], [SoLuongBan], [DonGiaBan]) VALUES (N'0000060001', N'000006', N'000003', 2, 57750.0000)
INSERT [dbo].[ChiTietPhieuNhapSach] ([MaChiTietPhieuNhapSach], [MaPhieuNhapSach], [MaSach], [SoLuongNhap], [DonGiaNhap]) VALUES (N'0000010000', N'000001', N'000001', 500, 30000.0000)
INSERT [dbo].[ChiTietPhieuNhapSach] ([MaChiTietPhieuNhapSach], [MaPhieuNhapSach], [MaSach], [SoLuongNhap], [DonGiaNhap]) VALUES (N'0000010001', N'000001', N'000002', 500, 35000.0000)
INSERT [dbo].[ChiTietPhieuNhapSach] ([MaChiTietPhieuNhapSach], [MaPhieuNhapSach], [MaSach], [SoLuongNhap], [DonGiaNhap]) VALUES (N'0000010002', N'000001', N'000003', 500, 55000.0000)
INSERT [dbo].[ChiTietPhieuNhapSach] ([MaChiTietPhieuNhapSach], [MaPhieuNhapSach], [MaSach], [SoLuongNhap], [DonGiaNhap]) VALUES (N'0000020000', N'000002', N'000005', 200, 10000.0000)
INSERT [dbo].[ChiTietPhieuNhapSach] ([MaChiTietPhieuNhapSach], [MaPhieuNhapSach], [MaSach], [SoLuongNhap], [DonGiaNhap]) VALUES (N'0000030000', N'000003', N'000004', 300, 30000.0000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayHoaDon], [GiamGia], [TienKhachDaTra], [TienKhachDua]) VALUES (N'000001', N'000001', N'000001', CAST(N'2019-06-26' AS Date), 0.0000, 20000.0000, 20000.0000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayHoaDon], [GiamGia], [TienKhachDaTra], [TienKhachDua]) VALUES (N'000002', N'000005', N'000001', CAST(N'2019-06-26' AS Date), 0.0000, 315000.0000, 400000.0000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayHoaDon], [GiamGia], [TienKhachDaTra], [TienKhachDua]) VALUES (N'000003', N'000009', N'000001', CAST(N'2019-06-26' AS Date), 0.0000, 20000.0000, 20000.0000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayHoaDon], [GiamGia], [TienKhachDaTra], [TienKhachDua]) VALUES (N'000004', N'000001', N'000001', CAST(N'2019-06-26' AS Date), 0.0000, 31500.0000, 31500.0000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayHoaDon], [GiamGia], [TienKhachDaTra], [TienKhachDua]) VALUES (N'000005', N'000001', N'000001', CAST(N'2020-07-17' AS Date), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayHoaDon], [GiamGia], [TienKhachDaTra], [TienKhachDua]) VALUES (N'000006', N'000002', N'000001', CAST(N'2020-07-17' AS Date), 0.0000, 152250.0000, 152250.0000)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTenKH], [SoDienThoai], [DiaChi], [Email], [SoTienNo], [TongTien], [NgayMuaCuoi]) VALUES (N'000001', N'Nguyễn Văn B ', N'0987887877', N'22-Hai Bà Trưng', N'khongcotest@gmail.com', 43000.0000, 51500.0000, CAST(N'2020-07-17' AS Date))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTenKH], [SoDienThoai], [DiaChi], [Email], [SoTienNo], [TongTien], [NgayMuaCuoi]) VALUES (N'000002', N'Trần Văn Trình', N'0398787475', N'KTX Khu B-Dĩ An', N'                                                  ', 0.0000, 152250.0000, CAST(N'2020-07-17' AS Date))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTenKH], [SoDienThoai], [DiaChi], [Email], [SoTienNo], [TongTien], [NgayMuaCuoi]) VALUES (N'000003', N'Nguyễn Công Phượng', N'0950938998', N'21-Võ Văn Ngân', N'khong@gmail.com', 0.0000, 0.0000, CAST(N'2019-06-05' AS Date))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTenKH], [SoDienThoai], [DiaChi], [Email], [SoTienNo], [TongTien], [NgayMuaCuoi]) VALUES (N'000005', N'Nguyễn Tiến Dũng', N'0398786746', N'KTX Khu B', N'dzungnt@gmail.com', 0.0000, 315000.0000, CAST(N'2019-05-10' AS Date))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTenKH], [SoDienThoai], [DiaChi], [Email], [SoTienNo], [TongTien], [NgayMuaCuoi]) VALUES (N'000006', N'Nguyễn Vĩnh Hải', N'0389878879', N'KTX Khu B', N'haikkk@gmail.com', 0.0000, 0.0000, CAST(N'2019-01-10' AS Date))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTenKH], [SoDienThoai], [DiaChi], [Email], [SoTienNo], [TongTien], [NgayMuaCuoi]) VALUES (N'000007', N'Nguyễn Hồng Khoa', N'0398576875', N'KTX Khu A ', N'khoanguyen@2gmail.com ', 0.0000, 0.0000, CAST(N'2019-06-09' AS Date))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTenKH], [SoDienThoai], [DiaChi], [Email], [SoTienNo], [TongTien], [NgayMuaCuoi]) VALUES (N'000008', N'Phan Phước Đính', N'0998558755', N'UIT', N'dinhphan@gmail.com', 0.0000, 0.0000, CAST(N'2019-05-11' AS Date))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTenKH], [SoDienThoai], [DiaChi], [Email], [SoTienNo], [TongTien], [NgayMuaCuoi]) VALUES (N'000009', N'Trần Trung Hiếu', N'0989895797', N'KTX Khu B', N'hieutran@hotmail.com ', 17750.0000, 20000.0000, CAST(N'2019-06-01' AS Date))
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTenKH], [SoDienThoai], [DiaChi], [Email], [SoTienNo], [TongTien], [NgayMuaCuoi]) VALUES (N'000010', N'Tấn Đào', N'0987521366', N'Lê Văn Việt, Q9', N'daodo99@gmail.com', 0.0000, 0.0000, CAST(N'2020-07-18' AS Date))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'000001', N'Đỗ Minh Thuận', CAST(N'1999-10-11' AS Date), 1, N'abc123                          ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'000002', N'Trần Minh Thiên', CAST(N'1999-08-03' AS Date), 1, N'abc456                          ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'000003', N'Tam', CAST(N'2020-07-15' AS Date), 1, N'123456                          ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'000004', N'Hoàng', CAST(N'2020-07-17' AS Date), 2, N'456789                          ')
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhapSach], [NgayNhap], [MaNhanVien]) VALUES (N'000001', CAST(N'2019-06-26' AS Date), N'000001')
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhapSach], [NgayNhap], [MaNhanVien]) VALUES (N'000002', CAST(N'2020-07-15' AS Date), N'000001')
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhapSach], [NgayNhap], [MaNhanVien]) VALUES (N'000003', CAST(N'2020-07-18' AS Date), N'000001')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaKhachHang], [MaNhanVien], [NgayThu], [SoTienThu], [LyDoThu]) VALUES (N'000001    ', N'000009', N'000001', CAST(N'2019-06-26' AS Date), 20000.0000, N'thu nợ sách')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000001', N'SGK toán 11', N'00001', N'Nguyễn Văn A', 487, 31500.0000, 2014, N'NXBGD', 250, N'Đại số và giải tích 11',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000002', N'Lịch sử thế giới', N'00003', N'Không biết', 499, 36750.0000, 2017, N'Thời đại', 405, N'Lịch sử thế giới',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000003', N'Tin học cơ bản', N'00006', N'Trần Trung Hiếu', 497, 57750.0000, 2016, N'Thanh niên', 200, N'Tin học cơ bản', NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000004', N'Lập trình C#', N'00006', N'Microsoft', 300, 31500.0000, 2018, N'Microsoft', 600, N'Lập trình', NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000005', N'Tập làm văn', N'00007', N'Lê Thị Văn', 200, 10500.0000, 2015, N'Sư phạm', 120, N'Ngữ văn', NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000006', N'Chuyện Con Mèo Dạy Hải Âu Bay', N'00010', N'Luis Sepulveda', 0, 0.0000, 2014, N'Nhà Xuất Bản Hội Nhà Văn', 139, N'Có tồn tại không tình thương yêu giữa mèo và hải âu?', NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000007', N'Tuổi Thơ Dữ Dội', N'00010', N'Phùng Quán', 0, 0.0000, 2013, N'NXB Văn học', 772, N'Tuổi Thơ Dữ Dội - Cuốn truyện xoay quanh cuộc sống chiến đấu và hy sinh của những thiếu niên 13, 14 tuổi trong hàng ngũ Đội thiếu niên trinh sát của trung đoàn Trần Cao Vân. Những Lượm, Mừng, Quỳnh sơn ca, Hòa đen, Bồng da rắn, Vịnh sưa, Tư dát... mỗi người một hoàn cảnh song đều chung quyết tâm, nhiệt huyết và lòng yêu nước, đã tham gia chiến đấu hết mình và hy sinh khi tuổi đời còn rất trẻ',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000008', N'Kính Vạn Hoa', N'00013', N'Nguyễn Nhật Ánh', 0, 0.0000, 2012, N'NXB Kim Đồng', 659, N'"Nguyễn Nhật Ánh được coi là một hiện tượng văn học trong mảng sách cho thiếu nhi và cũng là đặc biệt trong tình hình xuát bản sách hiện này. Vì sao anh được các em yêu mến như vậy ? Vì sao sách sách của anh đạt số lượng cao như vậy ? Đó là câu hỏi dành cho mọi nhà văn, đặc biệt là các nhà văn viết cho thiếu nhi. Đọc Nguyễn Nhật Ánh người ta ngỡ ngàng nhận ra rằng hoá ra các em không chỉ thích truyện phiêu lưu trính thám, không chỉ thích đấm đá và các trì ma quái, các em còn thích được tâm sự, được giãi bày và cao hơn, khẩn thiết hơn hết là các em thích có bạn, càng nhiều bạn càng tốt để tâm sự, để cho và nhận tình cảm của nhau. Có lẽ đó chính là bí quyết thành công của Nguyễn Nhật Ánh."',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000009', N'Nghìn lẻ một đêm', N'00010', N'Antoine Galland', 0, 0.0000, 2010, N'NXB Văn Học', 1164, N'Tác phẩm vĩ đại bậc nhất của nền văn học Ả Rập',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000010', N'Nhà lãnh đạo không chức danh', N'00002', N'Robin Sharma', 0, 0.0000, 2017, N'NXB Trẻ', 270, N'Bất kể bạn làm gì trong tổ chức và cuộc sống hiện tại của bạn như thế nào, một thực tế quan trọng duy nhất là bạn có khả năng thể hiện năng lực lãnh đạo. Cho dù sự nghiệp hiện tại của bạn đang ở đâu, bạn vẫn luôn cần phải thể hiện những khả năng tột đỉnh của mình. Cuốn sách này sẽ hướng dẫn bạn làm thế nào để khai thác tối đa khả năng đó, cũng như thay đổi cuộc sống và thế giới xung quanh bạn.',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000011', N'Qua Pixar là vô cực', N'00002', N'Lawrence Levy', 0, 0.0000, 2017, N'NXB Trẻ', 330, N'Một cuộc gọi đã bắt đầu cho một hợp tác lâu dài trong lương lai: "Xin chào Lawrence. Tôi là Steve Jobs. Một vài năm trước tôi có nhìn thấy ảnh của anh trên tạp chí và tôi đã nghĩ là một ngày nào đó chúng ta sẽ làm việc cùng với nhau."
Sau khi bị buộc nghỉ việc ở Apple, Steve Jobs chuyển mối bận tâm của mình sang Pixar, lúc bấy giờ là một công ty hầu như chưa có tên tuổi trong lĩnh vực đồ họa - nghệ thuật.',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000012', N'Cẩm nang tự học IELTS', N'00004', N'Kiên Trần', 0, 0.0000, 2017, N'NXB Thế Giới', 188, N'Cẩm Nang Tự Học IELTS',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000013', N'Theo dòng lịch sử', N'00003', N'Nguyễn Thế An', 0, 0.0000, 2017, N'NXB Tổng hợp TP.HCM', 367, NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000014', N'Truyện cổ Việt Nam', N'00005', N'Nhiều tác giả', 0, 0.0000, 2016, N'NXB Kim Đồng', 216, N'Truyện cổ Việt Nam là thế giới của những câu chuyện huyền thoại và nhiều phép nhiệm màu. Ở đấy có cha Lạc Long Quân và mẹ Âu Cơ sinh ra bọc trăm trứng, có chàng Sơn Tinh dời non lấp bể, có Thánh Gióng cưỡi ngựa sắt bay về trời sau khi đánh tan giặc ngoại xâm, cô Tấm hiền thảo bước ra từ quả thị... Ở đây, ta cũng gặp chàng Đăm Bri người Mnông với trái tim dũng cảm luôn rực lửa giữa chốn núi rừng, người anh hùng Đam Thí với những chiến công oanh liệt bảo vệ ban làng của người Ê Đê...',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000015', N'Giáo Trình Xác Suất Thống Kê', N'00007', N'Dương Ngọc Hảo', 0, 0.0000, 2010, N'NXB ĐHQG TP.HCM', 327, N'Giáo trình xác suất thống kê.',NULL )
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000016', N'Không Gia Đình', N'00013', N'Hector Malot', 0, 0.0000, 2017, N'NXB Văn Học', 644, N'Không Gia Đình kể chuyện về cuộc đời của cậu bé Reemi. Từ nhỏ, Reemi đã bị bắt cóc, rồi bị bố nuôi bán theo một đoàn xiếc thú. Em đã theo đoàn xiếc ấy đi lưu lạc khắp nước Pháp.

Reemi đã lớn lên trong gian khổ và lao động để mà sống. Lúc đầu em được sự dạy bảo của cụ Vi-ta-li, về sau thì tự lập. Không những lo cho mình, em còn lo việc biểu diễn và kiếm sống cho cả một gánh hát rong...

Nhưng dù ở đâu, trong cảnh ngộ nào, em vẫn noi theo nếp rèn dạy của cụ Vi-ta-li giữ phẩm chất làm người. Đó là lòng yêu lao động, tự trọng, sự ngay thẳng, biết nhớ ơn nghĩa và luôn luôn muốn làm người có ích.',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000017', N'Kẻ Trộm Sách', N'00013', N'Markus Zusak', 0, 0.0000, 2017, N'NXB Hội Nhà Văn', 571, N'Kẻ trộm sách – tác phẩm của nhà văn Úc Markus Zusak xuất bản năm 2005 đã làm mưa làm gió trên bảng xếp hạng những cuốn sách bán chạy nhất của The New York Times hơn 100 tuần liên tiếp, trở thành một tác phẩm kinh điển, một sự lựa chọn của hệ thống các thư viện trường học của Anh và Mỹ. Kẻ trộm sách khi mới ra đời đã lập tức gây ngạc nhiên cho những cây bút phê bình văn học trên thế giới và làm hàng triệu cặp mắt phải nhòa lệ.',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000018', N'Ranh Giới', N'00013', N'Rain8x', 0, 0.0000, 2016, N'NXB Lao Động', 496, N'Đây là một câu chuyện nói về cuộc sống, gia đình, tình yêu, tâm sinh lý con người dưới góc nhìn của một thanh niên thuộc thế hệ nửa đầu 8x. Với những đấu tranh nội tâm gay gắt khi đứng trước ngưỡng cửa của cuộc đời , bước vào mối tình đầu. Giữa tốt đẹp và xấu xa, giữa thiên thần và ác quỷ, đôi khi chỉ cách nhau bằng một "Ranh Giới" thật mong manh. Đó là quy luật buộc lý trí chúng ta phải lựa chọn…',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000019', N'Bố già', N'00013', N'Mario Puzo', 0, 0.0000, 2015, N'NXB Văn Học', 642, N'Bố già là cuốn tiểu thuyết văn học hiện đại Mỹ', NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000020', N'7 Câu Hỏi "Thần Kỳ" Của Mọi Sếp Giỏi', N'00007', N'Michael Bungay Stanier', 0, 0.0000, 2018, N'NXB Thế Giới', 240, N'Làm sao lãnh đạo nhân viên hiệu quả hơn? Tác giả Michael Bungay Stanier đã đặt ra câu hỏi này và tự trả lời bằng 7 câu hỏi “thần kỳ” mà các nhà quản lý nên thường xuyên đặt ra cho nhân viên để thay đổi thói quen lãnh đạo.',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000021', N'Tôi Tài Giỏi - Bạn Cũng Thế', N'00011', N'Adam Khoo', 0, 0.0000, 2010, N'Nhà Xuất Bản Phụ Nữ', 304, N'Khi bạn cầm trên tay quyển sách này, có nghĩa là bạn đã có chiếc chìa khóa đến sự thành công cùng bảng hướng dẫn sử dụng. ',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000022', N'Búp Sen Xanh', N'00010', N'Sơn Tùng', 0, 0.0000, 2019, N'Nhà Xuất Bản Kim Đồng', 364, N'“Búp Sen Xanh” vượt ra ngoài những giới hạn của một tác phẩm thiếu nhi, có thể làm bất kỳ ai rung động đến rơi nước mắt trong đêm chia ly, khi người con từ biệt cha ra đi để tìm một con đường cho chính mình và cho dân tộc. Một phần cuộc đời, trọn vẹn lý tưởng và dấn thâ Búp Sen Xanh không chỉ là câu chuyện về lãnh tụ mà còn là câu chuyện để làm người.',NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTheLoai], [TacGia], [SoLuongTon], [DonGia], [NamXuatBan], [NhaXuatBan], [SoTrang], [MoTa], [AnhBia]) VALUES (N'000023', N'Dế Mèn Phiêu Lưu KýDế Mèn Phiêu Lưu Ký', N'00010', N'Tô Hoài', 0, 0.0000, 2019, N'Nhà Xuất Bản Kim Đồng', 144, N'Trong hơn nửa thế kỉ kể từ ngày ra mắt bạn đọc lần đầu tiên năm 1941, "Dế Mèn phiêu lưu kí" là một trong những sáng tác tâm đắc nhất của nhà văn Tô Hoài. 

Tác phẩm đã được tái bản nhiều lần và được dịch ra hơn 20 thứ tiếng trên thế giới và luôn được các thế hệ độc giả nhỏ tuổi đón nhận.', NULL)
INSERT [dbo].[ThamSo] ([MaThamSo], [TenThamSo], [GiaTri]) VALUES (N'00001', N'NhapToiThieu', 150)
INSERT [dbo].[ThamSo] ([MaThamSo], [TenThamSo], [GiaTri]) VALUES (N'00002', N'TonToiDaChoNhap', 300)
INSERT [dbo].[ThamSo] ([MaThamSo], [TenThamSo], [GiaTri]) VALUES (N'00003', N'TonSauKhiBan', 20)
INSERT [dbo].[ThamSo] ([MaThamSo], [TenThamSo], [GiaTri]) VALUES (N'00004', N'NoToiDa', 20000)
INSERT [dbo].[ThamSo] ([MaThamSo], [TenThamSo], [GiaTri]) VALUES (N'00005', N'ApDungQDBon', 1)
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00000', N'Tất cả')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00001', N'SGK')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00002', N'Kinh tế')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00003', N'Lịch sử')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00004', N'Ngoại ngữ')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00005', N'Văn học')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00006', N'Tin học')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00007', N'Tham khảo')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00008', N'Chính trị-pháp luật')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00009', N'Giáo trình')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00010', N'Sách thiếu nhi')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00011', N'Tâm lý')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00012', N'Khoa học-công nghệ')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00013', N'Truyện, tiểu thuyết')
INSERT [dbo].[TheLoaiSach] ([MaTheLoai], [TenTheLoai]) VALUES (N'00014', N'Khoa học viễn tưởng')
ALTER TABLE [dbo].[ChiTietBaoCaoCongNo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBaoCaoCongNo_BaoCaoCongNo] FOREIGN KEY([MaBaoCaoCongNo])
REFERENCES [dbo].[BaoCaoCongNo] ([MaBaoCaoCongNo])
GO
ALTER TABLE [dbo].[ChiTietBaoCaoCongNo] CHECK CONSTRAINT [FK_ChiTietBaoCaoCongNo_BaoCaoCongNo]
GO
ALTER TABLE [dbo].[ChiTietBaoCaoCongNo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBaoCaoCongNo_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[ChiTietBaoCaoCongNo] CHECK CONSTRAINT [FK_ChiTietBaoCaoCongNo_KhachHang]
GO
ALTER TABLE [dbo].[ChiTietBaoCaoTon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBaoCaoTon_BaoCaoTon] FOREIGN KEY([MaBaoCaoTon])
REFERENCES [dbo].[BaoCaoTon] ([MaBaoCaoTon])
GO
ALTER TABLE [dbo].[ChiTietBaoCaoTon] CHECK CONSTRAINT [FK_ChiTietBaoCaoTon_BaoCaoTon]
GO
ALTER TABLE [dbo].[ChiTietBaoCaoTon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBaoCaoTon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietBaoCaoTon] CHECK CONSTRAINT [FK_ChiTietBaoCaoTon_Sach]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Sach]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapSach]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapSach_PhieuNhapSach] FOREIGN KEY([MaPhieuNhapSach])
REFERENCES [dbo].[PhieuNhapSach] ([MaPhieuNhapSach])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapSach] CHECK CONSTRAINT [FK_ChiTietPhieuNhapSach_PhieuNhapSach]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapSach]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapSach_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapSach] CHECK CONSTRAINT [FK_ChiTietPhieuNhapSach_Sach]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhapSach]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapSach_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhapSach] CHECK CONSTRAINT [FK_PhieuNhapSach_NhanVien]
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_KhachHang]
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_NhanVien]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Sach] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoaiSach] ([MaTheLoai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Sach]
GO
