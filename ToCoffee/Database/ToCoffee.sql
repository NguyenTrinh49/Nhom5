USE [tocoffee]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 12/20/2017 9:00:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masanpham] [int] NOT NULL,
	[mahoadon] [int] NOT NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 12/20/2017 9:00:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mauser] [int] NOT NULL,
	[ngaytao] [smalldatetime] NULL DEFAULT (getdate()),
	[tinhtrang] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 12/20/2017 9:00:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 12/20/2017 9:00:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sanpham](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[loai] [int] NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[mota] [nvarchar](50) NULL,
	[gia] [int] NOT NULL,
	[hinhanh] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 12/20/2017 9:00:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taikhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sdt] [varchar](15) NOT NULL,
	[matkhau] [varchar](100) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[diachi] [nvarchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[ngaytao] [smalldatetime] NULL DEFAULT (getdate()),
	[loaitk] [varchar](10) NOT NULL,
	[hinhanh] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[chitiethoadon] ON 

INSERT [dbo].[chitiethoadon] ([id], [masanpham], [mahoadon], [soluong]) VALUES (36, 2, 10, 1)
INSERT [dbo].[chitiethoadon] ([id], [masanpham], [mahoadon], [soluong]) VALUES (37, 2, 11, 12)
INSERT [dbo].[chitiethoadon] ([id], [masanpham], [mahoadon], [soluong]) VALUES (39, 3, 11, 6)
INSERT [dbo].[chitiethoadon] ([id], [masanpham], [mahoadon], [soluong]) VALUES (49, 4, 12, 3)
INSERT [dbo].[chitiethoadon] ([id], [masanpham], [mahoadon], [soluong]) VALUES (54, 2, 12, 6)
INSERT [dbo].[chitiethoadon] ([id], [masanpham], [mahoadon], [soluong]) VALUES (55, 35, 12, 1)
SET IDENTITY_INSERT [dbo].[chitiethoadon] OFF
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([id], [mauser], [ngaytao], [tinhtrang]) VALUES (10, 1, CAST(N'2016-10-18 13:58:00' AS SmallDateTime), N'Đã thanh toán')
INSERT [dbo].[hoadon] ([id], [mauser], [ngaytao], [tinhtrang]) VALUES (11, 1, CAST(N'2016-10-18 14:50:00' AS SmallDateTime), N'Đã thanh toán')
INSERT [dbo].[hoadon] ([id], [mauser], [ngaytao], [tinhtrang]) VALUES (12, 1, CAST(N'2016-10-19 16:11:00' AS SmallDateTime), N'Chưa thanh toán')
SET IDENTITY_INSERT [dbo].[hoadon] OFF
SET IDENTITY_INSERT [dbo].[loaisanpham] ON 

INSERT [dbo].[loaisanpham] ([ma], [ten]) VALUES (1, N'Cà Phê')
INSERT [dbo].[loaisanpham] ([ma], [ten]) VALUES (2, N'Soda')
INSERT [dbo].[loaisanpham] ([ma], [ten]) VALUES (3, N'Chocolate')
INSERT [dbo].[loaisanpham] ([ma], [ten]) VALUES (4, N'Trà')
INSERT [dbo].[loaisanpham] ([ma], [ten]) VALUES (5, N'Yogurt')
SET IDENTITY_INSERT [dbo].[loaisanpham] OFF
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (1, 1, N'Cà Phê Đá', N'Cà Phê Việt Nam', 17000, N'images/Products/capheda.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (2, 1, N'Cà Phê Sữa', N'Cà Phê Sữa Việt Nam', 19000, N'images/Products/caphesua.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (3, 1, N'Espresso', N'Cà Phê Ý', 23000, N'images/Products/espresso.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (4, 1, N'Americano', N'Cà Phê Mỹ', 23000, N'images/Products/americano.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (5, 1, N'Cà Phê Trứng', N'Cà Phê đánh với trứng', 29000, N'images/Products/caphetrung.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (7, 1, N'Capuchino nóng', N'Cà phê + Chocolate', 27000, N'images/Products/cappuccino.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (31, 2, N'Soda Chanh', N'Soda + chanh', 25000, N'images/Products/sodachanh.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (32, 2, N'Soda Kiwi', N'Soda + Kiwi', 25000, N'images/Products/sodakiwi.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (33, 2, N'Soda Curacao', N'Soda + Curacao', 25000, N'images/Products/sodacuracao.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (34, 2, N'Soda dâu', N'Soda + Dâu', 25000, N'images/Products/sodadau.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (35, 2, N'Soda Chanh Dây', N'Soda + Chanh Dây', 25000, N'images/Products/sodachanhday.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (36, 4, N'Trà Lipton Đá', N'Trà Lipton chanh đá', 21000, N'images/Products/LiptonDa.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (37, 4, N'Trà Đào', N'Trà đào đá', 29000, N'images/Products/TraDao.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (38, 4, N'Yaourt Đá', N'Yaourt + Đá', 21000, N'images/Products/yaourtDa.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (39, 5, N'Yaourt Dâu', N'Yaourt xay với dâu', 31000, N'images/Products/yaourtDau.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (40, 3, N'Cookies', N'Chocolate xay với Bánh', 31000, N'images/Products/Cookie.jpg')
INSERT [dbo].[sanpham] ([ma], [loai], [ten], [mota], [gia], [hinhanh]) VALUES (42, 4, N'Trà Xanh Nhật Bản nóng', N'Trà Xanh', 29000, N'images/Products/traxanhnhatbannong.jpg')
SET IDENTITY_INSERT [dbo].[sanpham] OFF
SET IDENTITY_INSERT [dbo].[taikhoan] ON 

INSERT [dbo].[taikhoan] ([id], [sdt], [matkhau], [ten], [diachi], [email], [ngaytao], [loaitk], [hinhanh]) VALUES (1, N'0938793761', N'e10adc3949ba59abbe56e057f20f883e', N'Rjk Rắc Rối', N'23 Nơ Trang Long, P7, Q. Bình Thạnh', N'phungvannarich@gmail.com', CAST(N'2016-10-16 12:21:00' AS SmallDateTime), N'user', N'images/Users/WP_20150805_20_22_23_Pro__highres.jpg')
INSERT [dbo].[taikhoan] ([id], [sdt], [matkhau], [ten], [diachi], [email], [ngaytao], [loaitk], [hinhanh]) VALUES (3, N'0938992013', N'e10adc3949ba59abbe56e057f20f883e', N'Phùng Văn Na Rích', N'23 Học Lạc, Quận 5', N'richpvnps04271@gmail.com', CAST(N'2016-10-17 08:17:00' AS SmallDateTime), N'admin', NULL)
INSERT [dbo].[taikhoan] ([id], [sdt], [matkhau], [ten], [diachi], [email], [ngaytao], [loaitk], [hinhanh]) VALUES (5, N'0123456789', N'e10adc3949ba59abbe56e057f20f883e', N'Trương Huy', N'Quận 10', N'truonghuy@email.com', CAST(N'2016-10-17 14:51:00' AS SmallDateTime), N'user', NULL)
SET IDENTITY_INSERT [dbo].[taikhoan] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__taikhoan__AB6E6164C0056031]    Script Date: 12/20/2017 9:00:32 PM ******/
ALTER TABLE [dbo].[taikhoan] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiet_hoadon] FOREIGN KEY([mahoadon])
REFERENCES [dbo].[hoadon] ([id])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiet_hoadon]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiet_sanpham] FOREIGN KEY([masanpham])
REFERENCES [dbo].[sanpham] ([ma])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiet_sanpham]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_taikhoan_hoadon] FOREIGN KEY([mauser])
REFERENCES [dbo].[taikhoan] ([id])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_taikhoan_hoadon]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_loai] FOREIGN KEY([loai])
REFERENCES [dbo].[loaisanpham] ([ma])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_loai]
GO
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD CHECK  ((charindex('@',[email],(0))>(0)))
GO
