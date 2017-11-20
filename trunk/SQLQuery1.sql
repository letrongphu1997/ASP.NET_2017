create database QLGIAY
create table SanPham(
maSP nvarchar (50) not null primary key,
tenSP nvarchar (50),
giaSP int ,
maLoai nvarchar (50),
maHinh nvarchar (50),
maSize nvarchar (50),
maSX nvarchar (50)
)
create table KhachHang(
maKH nvarchar (50) not null primary key,
tenKH nvarchar (50),
NS int ,
SDT int
)

create table HoaDon(
maHD nvarchar (50) not null primary key,
tenHD nvarchar (50),
maSP nvarchar (50),
maLoai nvarchar (50),
tongGia int ,
maKH nvarchar(50)
)
create table LoaiSanPham(
maLoai nvarchar(50) not null primary key,
tenLoai nvarchar(50)
)
create table Size(
maSize nvarchar (50) not null primary key,
tenSize nvarchar(50) 
)
create table CapVi(
maCapVi nvarchar (50) not null primary key,
tenCapVi nvarchar(50) 
)

create table DangNhap(
taikhoan nvarchar (50) not null primary key,
pass nvarchar(50) ,
macapvi nvarchar(50)
)
create table Hinh(
maHinh nvarchar (50) not null primary key,
tenHinh nvarchar(100)
)
create table NoiXuatXu(
maXX nvarchar (50) not null primary key,
tenXX nvarchar(100)
)

ALTER TABLE DangNhap  WITH CHECK ADD  CONSTRAINT [FK_DangNhap_CapVi] FOREIGN KEY(maCapVi)
REFERENCES CapVi (maCapVi)
ALTER TABLE HoaDon  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY(maKH)
REFERENCES KhachHang (maKH)
ALTER TABLE HoaDon  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_LoaiSanPham] FOREIGN KEY(maLoai)
REFERENCES LoaiSanPham (maLoai)
ALTER TABLE HoaDon  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_SanPham] FOREIGN KEY(maSP)
REFERENCES SanPham (maSP)
ALTER TABLE SanPham  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY(maLoai)
REFERENCES LoaiSanPham (maLoai)
ALTER TABLE SanPham  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Hinh] FOREIGN KEY(maHinh)
REFERENCES Hinh (maHinh)
ALTER TABLE SanPham  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Size] FOREIGN KEY(maSize)
REFERENCES Size (maSize)
ALTER TABLE SanPham  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NoiXuatXu] FOREIGN KEY(maSX)
REFERENCES NoiXuatXu (maXX)







