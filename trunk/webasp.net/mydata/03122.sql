
/****** Object:  Table [dbo].[tbl_Producer]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create database doan
CREATE TABLE [dbo].[tbl_Producer](
	[Producer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Producer_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Producer] PRIMARY KEY CLUSTERED 
(
	[Producer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Payment]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Payment](
	[Pay_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pay_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Payment] PRIMARY KEY CLUSTERED 
(
	[Pay_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[User] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[User] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Account]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Account](
	[Account] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Power] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Account] PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Type]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Type](
	[Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Type_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Type] PRIMARY KEY CLUSTERED 
(
	[Type_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Transport]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Transport](
	[Transport_ID] [int] IDENTITY(1,1) NOT NULL,
	[Transport_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Transport] PRIMARY KEY CLUSTERED 
(
	[Transport_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Supplier]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Supplier](
	[Supplier_ID] [int] IDENTITY(1,1) NOT NULL,
	[Supplier_Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [int] NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Supplier] PRIMARY KEY CLUSTERED 
(
	[Supplier_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Style]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Style](
	[Style_ID] [int] IDENTITY(1,1) NOT NULL,
	[Style_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Style] PRIMARY KEY CLUSTERED 
(
	[Style_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Quyen]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Quyen](
	[Account] [varchar](50) NULL,
	[Taotaikhoan] [int] NULL,
	[Doimatkhau] [int] NULL,
	[Nhaphang] [int] NULL,
	[Chitietnhap] [int] NULL,
	[CapnhatSP] [int] NULL,
	[CapnhatLoai] [int] NULL,
	[CapnhatPC] [int] NULL,
	[CapnhatHSX] [int] NULL,
	[CapnhatNCC] [int] NULL,
	[CapnhatHTVC] [int] NULL,
	[CapnhatHTTT] [int] NULL,
	[DanhsachHD] [int] NULL,
	[ChitietHD] [int] NULL,
	[TimkiemSP] [int] NULL,
	[TimkiemNCC] [int] NULL,
	[ThongkeSP] [int] NULL,
	[ThongkeHDN] [int] NULL,
	[ThongkeDoanhthu] [int] NULL,
	[ThongkeSPbanchay] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](50) NOT NULL,
	[Type_ID] [int] NOT NULL,
	[Style_ID] [int] NOT NULL,
	[Producer_ID] [int] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NULL,
	[Material] [nvarchar](50) NULL,
	[Size] [nchar](10) NULL,
	[Price_Import] [float] NULL,
	[Price_Export] [float] NOT NULL,
	[Amount] [int] NULL,
	[Weight] [float] NOT NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Import]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Import](
	[Import_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Money] [float] NULL,
	[Supplier_ID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Import] PRIMARY KEY CLUSTERED 
(
	[Import_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[Order_ID] [nchar](10) NOT NULL,
	[Account] [varchar](20) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Pay_ID] [int] NOT NULL,
	[Transport_ID] [int] NOT NULL,
	[Name_Received] [nvarchar](50) NOT NULL,
	[Address_Received] [nvarchar](50) NOT NULL,
	[Phone_Received] [int] NULL,
	[Name_Pay] [nvarchar](50) NOT NULL,
	[Address_Pay] [nvarchar](50) NOT NULL,
	[Phone_Pay] [int] NULL,
	[Mesage] [nvarchar](max) NULL,
	[VAT_Gift] [float] NULL,
	[SumWeight] [float] NULL,
	[VAT_Transport] [float] NULL,
	[SumMoney] [float] NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Order] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ImportDetail]    Script Date: 12/03/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ImportDetail](
	[Import_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Price_Import] [float] NULL,
	[Amount] [int] NULL,
	[Money] [float] NULL,
 CONSTRAINT [PK_tbl_ImportDetail] PRIMARY KEY CLUSTERED 
(
	[Import_ID] ASC,
	[Product_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/****** Object:  StoredProcedure [dbo].[DanhsachHD]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DanhsachHD]
AS
	select Order_ID as[Mã hoá đơn],Date as [Ngày bán],Name_Received as[Người nhận],
	Address_Received as[Địa chỉ],Phone_Received as [SĐT],
	Name_Pay as[Người thanh toán],Address_Pay as[Địa chỉ TT],
	Phone_Pay as [SĐT TT],SumMoney as[Tổng tiền]
	  from tbl_Order
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[ThongkeSP]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongkeSP]
	@loaisp nvarchar(50)
AS 
    select p.Product_ID, p.Product_Name, t.Type_Name, st.Style_Name, s.Supplier_Name, pro.Producer_Name, p.Price_Import, p.Price_Export, p.Amount 
    from tbl_Product p,tbl_Type t,tbl_Supplier s,tbl_Producer pro,tbl_Style st
    where p.Type_ID = t.Type_ID and p.Supplier_ID = s.Supplier_ID and p.Style_ID = st.Style_ID and p.Producer_ID = pro.Producer_ID and t.Type_Name = @loaisp
	RETURN
GO
/****** Object:  Table [dbo].[tbl_OrderDetial]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OrderDetial](
	[Order_ID] [nchar](10) NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Price_Export] [float] NULL,
	[Amount] [int] NULL,
	[Money] [float] NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_OrderDetial] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC,
	[Order_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[tongSL]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tongSL]
	@loaisp int
AS
	select Product_ID as[Mã sản phẩm],Product_Name as[Tên sản phẩm],Type_Name as[Loại sản phẩm],
	Supplier_Name as[Nhà cung cấp],Price_Import as [Giá nhập],Price_Export as [Giá xuất] ,
	Amount as [Số lượng] from tbl_Product p,tbl_Type t,tbl_Supplier s 
	where Type_Name = @loaisp and p.Type_ID = t.Type_ID and p.Supplier_ID = s.Supplier_ID
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[TKSPbanchaytheoTG]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TKSPbanchaytheoTG]
@tungay datetime,@denngay datetime
AS
	select o.Date as[Ngày],od.Product_ID as[Mã sản phẩm],od.Price_Export as[Giá xuất],od.Amount as[Số lượng],od.Money as[Thành tiền]
	from tbl_Order o, tbl_OrderDetial od
	where o.Order_ID = od.Order_ID and o.Date >= @tungay and o.Date <= @denngay
	order by od.Amount desc
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[TKSPbanchaytheongay]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TKSPbanchaytheongay]
@ngay datetime
AS
	select o.Date as[Ngày],od.Product_ID as[Mã sản phẩm],od.Price_Export as[Giá xuất],od.Amount as[Số lượng],od.Money as[Thành tiền]
	from tbl_Order o, tbl_OrderDetial od
	where o.Order_ID = od.Order_ID and o.Date = @ngay
	order by od.Amount desc
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[TKSPbanchaytheonam]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TKSPbanchaytheonam]
@nam int
AS
	
select od.Product_ID as[Mã sản phẩm],od.Price_Export as[Giá xuất],sum(od.Amount) as[Số lượng],sum(od.Money) as[Thành tiền]
	from tbl_Order o, tbl_OrderDetial od
	where o.Order_ID = od.Order_ID and Year(o.Date) = @nam
	group by od.Product_ID,od.Price_Export
	order by od.Product_ID,od.Price_Export
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[TKHDNTheoTG]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TKHDNTheoTG]
@tungay datetime,
@denngay datetime
AS
       select i.Date as[Ngày nhập],im.Import_ID as[Mã sản phẩm],i.Supplier_ID as[Nhà cung cấp],sum(im.Money) as [Thành tiền]
       from tbl_Import i,tbl_ImportDetail im
       where i.Import_ID = im.Import_ID and i.Date >= @tungay and i.Date<=@denngay
       group by  i.Date,im.Import_ID,i.Supplier_ID

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[TKHDNTheoNgay]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TKHDNTheoNgay]
@ngay datetime
AS
       select i.Date as[Ngày nhập],im.Import_ID as[Mã sản phẩm],i.Supplier_ID as[Nhà cung cấp],sum(im.Money) as [Thành tiền]
       from tbl_Import i,tbl_ImportDetail im
       where i.Import_ID = im.Import_ID and i.Date = @ngay
       group by  i.Date,im.Import_ID,i.Supplier_ID

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[TKHDNTheoNam]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TKHDNTheoNam]
@nam int
AS
       select i.Date as[Ngày nhập],im.Import_ID as[Mã sản phẩm],i.Supplier_ID as[Nhà cung cấp],sum(im.Money) as [Thành tiền]
       from tbl_Import i,tbl_ImportDetail im
       where i.Import_ID = im.Import_ID and Year(i.Date) = @nam
       group by  i.Date,im.Import_ID,i.Supplier_ID

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[TkDoanhthutheoTG]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TkDoanhthutheoTG]
@tungay datetime,
@denngay datetime
AS
	select o.Date as[Ngày bán], od.Product_ID as[Mã sản phẩm],p.Price_Import as[Giá nhập],
	p.Price_Export as[Giá xuất],sum(od.Amount) as[Số lượng],
	((p.Price_Export - p.Price_Import)* sum( od.Amount))as[Thành tiền]
	from tbl_Order o,tbl_OrderDetial od,tbl_Product p
	where o.Order_ID = od.Order_ID and od.Product_ID = p.Product_ID and o.Date >= @tungay and o.Date <= @denngay
	group by od.Product_ID,p.Price_Import,p.Price_Export,o.Date 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[TkDoanhthutheongay]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TkDoanhthutheongay]
@ngay datetime
AS
	select o.Date as[Ngày bán], od.Product_ID as[Mã sản phẩm],p.Price_Import as[Giá nhập],
	p.Price_Export as[Giá xuất],sum(od.Amount) as[Số lượng],
	((p.Price_Export - p.Price_Import)* sum( od.Amount))as[Thành tiền]
	from tbl_Order o,tbl_OrderDetial od,tbl_Product p
	where o.Order_ID = od.Order_ID and od.Product_ID = p.Product_ID and o.Date = @ngay
	group by od.Product_ID,p.Price_Import,p.Price_Export,o.Date 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[TkDoanhthutheonam]    Script Date: 12/03/2017 09:51:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TkDoanhthutheonam]
@nam int
AS
	select  od.Product_ID as[Mã sản phẩm],p.Price_Import as[Giá nhập],
	p.Price_Export as[Giá xuất],sum(od.Amount) as[Số lượng],
	((p.Price_Export - p.Price_Import)* sum( od.Amount))as[Thành tiền]
	from tbl_Order o,tbl_OrderDetial od,tbl_Product p
	where o.Order_ID = od.Order_ID and od.Product_ID = p.Product_ID and Year(o.Date)=@nam
	group by od.Product_ID,p.Price_Import,p.Price_Export
	RETURN
GO
/****** Object:  ForeignKey [FK_tbl_Product_tbl_Producer]    Script Date: 12/03/2017 09:50:49 ******/
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_Producer] FOREIGN KEY([Producer_ID])
REFERENCES [dbo].[tbl_Producer] ([Producer_ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_Producer]
GO
/****** Object:  ForeignKey [FK_tbl_Product_tbl_Style]    Script Date: 12/03/2017 09:50:49 ******/
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_Style] FOREIGN KEY([Style_ID])
REFERENCES [dbo].[tbl_Style] ([Style_ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_Style]
GO
/****** Object:  ForeignKey [FK_tbl_Product_tbl_Supplier]    Script Date: 12/03/2017 09:50:49 ******/
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[tbl_Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_Supplier]
GO
/****** Object:  ForeignKey [FK_tbl_Product_tbl_Type]    Script Date: 12/03/2017 09:50:49 ******/
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_Type] FOREIGN KEY([Type_ID])
REFERENCES [dbo].[tbl_Type] ([Type_ID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_Type]
GO
/****** Object:  ForeignKey [FK_tbl_Import_tbl_Supplier]    Script Date: 12/03/2017 09:50:49 ******/
ALTER TABLE [dbo].[tbl_Import]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Import_tbl_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[tbl_Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[tbl_Import] CHECK CONSTRAINT [FK_tbl_Import_tbl_Supplier]
GO
/****** Object:  ForeignKey [FK_tbl_Order_tbl_Customer]    Script Date: 12/03/2017 09:50:49 ******/
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Customer] FOREIGN KEY([Account])
REFERENCES [dbo].[tbl_Customer] ([User])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Customer]
GO
/****** Object:  ForeignKey [FK_tbl_Order_tbl_Payment]    Script Date: 12/03/2017 09:50:49 ******/
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Payment] FOREIGN KEY([Pay_ID])
REFERENCES [dbo].[tbl_Payment] ([Pay_ID])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Payment]
GO
/****** Object:  ForeignKey [FK_tbl_Order_tbl_Transport]    Script Date: 12/03/2017 09:50:49 ******/
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Transport] FOREIGN KEY([Transport_ID])
REFERENCES [dbo].[tbl_Transport] ([Transport_ID])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Transport]
GO
/****** Object:  ForeignKey [FK_tbl_ImportDetail_tbl_Product]    Script Date: 12/03/2017 09:50:49 ******/
ALTER TABLE [dbo].[tbl_ImportDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ImportDetail_tbl_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[tbl_Product] ([Product_ID])
GO
ALTER TABLE [dbo].[tbl_ImportDetail] CHECK CONSTRAINT [FK_tbl_ImportDetail_tbl_Product]
GO
/****** Object:  ForeignKey [FK_tbl_OrderDetial_tbl_Order]    Script Date: 12/03/2017 09:51:04 ******/
ALTER TABLE [dbo].[tbl_OrderDetial]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OrderDetial_tbl_Order] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[tbl_Order] ([Order_ID])
GO
ALTER TABLE [dbo].[tbl_OrderDetial] CHECK CONSTRAINT [FK_tbl_OrderDetial_tbl_Order]
GO
/****** Object:  ForeignKey [FK_tbl_OrderDetial_tbl_Product]    Script Date: 12/03/2017 09:51:04 ******/
ALTER TABLE [dbo].[tbl_OrderDetial]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OrderDetial_tbl_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[tbl_Product] ([Product_ID])
GO
ALTER TABLE [dbo].[tbl_OrderDetial] CHECK CONSTRAINT [FK_tbl_OrderDetial_tbl_Product]
GO
