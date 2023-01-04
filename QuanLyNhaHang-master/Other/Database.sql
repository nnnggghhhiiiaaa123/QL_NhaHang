create database QuanLyNhaHang
go
use QuanLyNhaHang
go
create table Quyen
(
	MaQuyen int identity(1,1) primary key,
	TenQuyen nvarchar(50) not null,
	GhiChu nvarchar(100) null,
)
go
insert into Quyen (TenQuyen, GhiChu) values (N'Nhân Viên', N'Nhân viên sử dụng phần mềm để order');
insert into Quyen (TenQuyen, GhiChu) values (N'Nhân Viên Kho', N'Nhân viên sử dụng phần mềm để quản lý kho');
insert into Quyen (TenQuyen, GhiChu) values (N'Nhân Viên Admin', N'Nhân viên sử dụng phần mềm để quản lý nhân viên và nhân viên kho'); -- quyền cao nhất
go
create table LoaiNguyenLieu
(
	MaLNL int identity(1,1) primary key,
	TenLNL nvarchar(100) not null,
)
go
-- Nguyên liệu tại cửa hàng gồm có: hải sản; Rau củ quả; gia vị khô [lương khô (bột mì, bột sắn... các loại bột), gia vị (đường, muối tiêu, bột ngọt)]; gia vị lỏng (Nước mắm, sì dầu, dầu thơm, tương ớt...); thức Uống.
-- Hải sản: con/kg [bán theo ký và giá thay đổi theo thị trường] (ví dụ: 6 con cá dìa tổng 65kg: Bán ra: 1 con)
-- Rau củ quả
-- Gia vị
-- Thức Uống:  thùng/24chai 5 thùng coca = 5x24
insert into LoaiNguyenLieu(TenLNL) values (N'Hải Sản');
insert into LoaiNguyenLieu(TenLNL) values (N'Rau Củ Quả');
insert into LoaiNguyenLieu(TenLNL) values (N'Gia Vị');
insert into LoaiNguyenLieu(TenLNL) values (N'Thức Uống');
insert into LoaiNguyenLieu(TenLNL) values (N'Khác');
go
create table NhomMonAn
(
	MaNMA int identity(1,1) primary key,
	TenNMA nvarchar(100) not null,
)
go
insert into NhomMonAn (TenNMA) values (N'Món Chay');
insert into NhomMonAn (TenNMA) values (N'Món Việt');
insert into NhomMonAn (TenNMA) values (N'Món Nhật');
insert into NhomMonAn (TenNMA) values (N'Món Âu');
insert into NhomMonAn (TenNMA) values (N'Món Khác'); -- Ngoại lệ
go
create table LoaiMonAn
(
	MaLMA int identity(1,1) primary key,
	TenLMA nvarchar(100) not null,
)
go
insert into LoaiMonAn (TenLMA) values (N'Khai Vị'); -- tráng miệng
insert into LoaiMonAn (TenLMA) values (N'Món Gà');
insert into LoaiMonAn (TenLMA) values (N'Món Heo');
insert into LoaiMonAn (TenLMA) values (N'Shushi');
insert into LoaiMonAn (TenLMA) values (N'Món Soup');
insert into LoaiMonAn (TenLMA) values (N'Cơm');
insert into LoaiMonAn (TenLMA) values (N'Món Lẩu');
insert into LoaiMonAn (TenLMA) values (N'Món Cháo');
insert into LoaiMonAn (TenLMA) values (N'Trái Cây');
insert into LoaiMonAn (TenLMA) values (N'Thức Uống');
insert into LoaiMonAn (TenLMA) values (N'Khác'); -- khăn giấy sẽ thuộc loại này
go
create table NhaCC
(
	MaNCC int identity(1,1) primary key,
	TenNCC nvarchar(100) not null,
	DiaChi nvarchar(200) null,
	SoDienThoai varchar(10) not null,
)
go
insert into NhaCC (TenNCC, DiaChi, SoDienThoai) values (N'Cung Cấp Hải Sản Tươi Biển Gọi', N'Hà Nội', '0971024568');
insert into NhaCC (TenNCC, DiaChi, SoDienThoai) values (N'Cung Cấp Rau Sạch DaLatVegatable', N'Đà Lạt', '0971024568');
insert into NhaCC (TenNCC, DiaChi, SoDienThoai) values (N'Cung Cấp Gia Vị Trường An', N'Hà Nội', '0971024568');
insert into NhaCC (TenNCC, DiaChi, SoDienThoai) values (N'Cung Cấp Gia Vị Thuận Phát', N'Hà Nội', '0654251543');
insert into NhaCC (TenNCC, DiaChi, SoDienThoai) values (N'Đại Lý Bia Hà Nội', N'Hà Nội', '0254587854');
insert into NhaCC (TenNCC, DiaChi, SoDienThoai) values (N'Đại Lý Bia Và Nước Uống Chánh Thắng', N'Hà Nội', '0123654585');
go
create table MonAn
(
	MaMonAn int identity(1,1) primary key,
	TenMonAn nvarchar(255) not null,
	HinhAnh nvarchar(100) null,
	DonGia float default(0),
	NgayCapNhat Date default(getDate()),
	ThongTin nvarchar(max) null,
	MoTa nvarchar(max) null,
	SoLuongDaBan int Default(0),
	MaNMA_id int,
	MaLMA_id int,

	Foreign key(MaNMA_id) references NhomMonAn(MaNMA),
	Foreign key(MaLMA_id) references LoaiMonAn(MaLMA),
)
go
--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Khăn Lạnh', N'KhanLanh.png', 5000, '02/02/2021', N'Khăn lạnh thuận phát', N'Khăn lau miệng không sơ cho khách hàng', 50, 5, 11);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Tôm Rang Trứng Muối Hong Kong', N'TomRangTrungMuoi.jpeg', 40000, '02/02/2021', N'1. Bơ Lạt 20g
--2. Rau Nêm (Lá Húng Quế, Tỏi Lột, Ớt Sừng, Ớt Trái Khô) 28g
--3. Trứng Muối 2 Quả
--4. Tôm Sú (Loại 40-45 Con/Kg) 200g
--5. Bột Gia Vị Rang Hong Kong CookyMADE 10g
--6. Tỏi Phi 10g
--7. Bột Chiên Giòn 75g', N'Món Ăn Âu', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Cá Hồi Áp Chảo Sốt Kem Chanh', N'CaHoi.jpeg', 150000, '02/02/2021', N'1. Bơ Lạt 20g
--2. Rau Củ Steak (Cà Chua Bi, Măng Tây, Bông Cải Xanh) 110g
--3. Thyme Tươi, Rosemary Tươi 2g
--4. Tỏi Nguyên Vỏ 10g
--5. Khoai Tây Đông Lạnh 100g
--6. Cá Hồi Tươi Fillet Na Uy 200-220g
--7. Sốt Kem Chanh CookyMADE 150g', N'Mô tả demo', 12, 2, 3);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Trứng Chiên Thịt Bằm', N'trungchien.jpeg', 20000, '02/02/2021', N'1. Hành Lá, Ngò Rí 30g
--2. Thịt Heo Xay (Thịt Tươi) 100g
--3. Trứng Gà DONA FARM 4 Quả
--4. Bột Gia Vị Trứng Chiên CookyMADE 18g', N'Món Ăn Việt', 12, 2, 4);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Dưa Hấu Không Hạt Mặt Trời Đỏ', N'DuaHau.jpeg', 20000, '02/02/2021', N'1. Dưa Hấu Không Hạt Mặt Trời Đỏ (Cắt Sẵn) 300g', N'Món Tráng Miệng', 12, 4, 2);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Canh Thịt Bằm Nấu Cải Chua', N'CanhThit.jpeg', 15000, '02/02/2021', N'1. Rau Nêm (Ngò Gai, Ngò Om, Ớt Chỉ Thiên Đỏ) 50g
--2. Thịt Heo Xay (Thịt Tươi) 100g
--3. Cải Chua 200g
--4. Bột Gia Vị Canh Nấu Chua CookyMADE 66g
--5. Tỏi Phi 10g', N'Canh', 12, 2, 5);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Rau Muống Xào Tỏi', N'RauMuong.jpeg', 15000, '02/02/2021', N'1. Tỏi Tép Lột Sẵn 20g
--2. Rau Muống Cọng 200g
--3. Bột Gia Vị Xào Tỏi CookyMADE 12g
--4. Tỏi Phi 10g', N'Món Ăn Việt', 12, 3, 2);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Cải Thìa Xào Nấm Đông Cô', N'CaiThia.jpeg', 40000, '02/02/2021', N'1. Hành Tím, Tỏi Tép Lột Sẵn 20g
--2. Cải Thìa VietGAP 300g
--3. Nấm Đông Cô Tươi 100g
--4. Sốt Xào CookyMADE 30g', N'Món Ăn Việt', 12, 2, 2);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Cá Nục Kho Cạn', N'CaNuc.jpeg', 35000, '02/02/2021', N'1. Hành Lá, Ớt Chỉ Thiên Đỏ 30g
--2. Cà Chua 1 Trái
--3. Cá Nục (Nguyên Con) 300g
--4. Sốt Kho Tộ CookyMADE 70g', N'Mô tả demo', 12, 5, 4);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Gà Ta Kho Gừng', N'GaTa.jpeg', 120000, '02/02/2021', N'1. Gà Ta Kho Gừng (Ướp Sẵn) 365g
--2. [Tặng Thêm] Sốt Kho Gừng CookyMADE 20g', N'Món Việt', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Gà Ta Rô Ti', N'GaRoti.jpeg', 150000, '02/02/2021', N'1. Nước Tương Maggi 5g
--2. Hành Tím, Tỏi Tép Lột Sẵn 20g
--3. Gà Ta Bình Định (Chặt Sẵn) 300g
--4. Bột Gia Vị Ướp Gà Rô Ti CookyMADE 26g', N'Món Ăn Âu', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Đậu Hũ Nhồi Thịt Sốt Cà', N'DauHu.jpeg', 60000, '02/02/2021', N'1. Đậu Hũ Trắng Thuận Phong 3 Miếng
--2. Hành Lá, Ớt Chỉ Thiên Đỏ 30g
--3. Hành Tím, Tỏi Tép Lột Sẵn 20g
--4. Thịt Heo Xay (Thịt Tươi) 100g
--5. Giò Sống 50g', N'Món Ăn Việt', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Rau Củ Nấm Kho Chay', N'RauCu.jpeg', 50000, '02/02/2021', N'1. Đậu Hũ Trắng Thuận Phong 3 Miếng
--2. Rau Củ Kho Chay (Đậu Bắp, Cà Rốt, Nấm Đông Cô Tươi, Nấm Linh Chi Trắng, Linh Chi Nâu) 450g
--3. Sả Bào, Ớt Chỉ Thiên Đỏ 60g
--4. Sốt Kho Chay CookyMADE 70g', N'Món Ăn Việt', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Cà Tím Nhồi Đậu Hũ Chay', N'CaTim.jpeg', 35000, '02/02/2021', N'1. Đậu Hũ Trắng Thuận Phong 3 Miếng
--2. Rau Củ Cà Tím Nhồi Đậu (Cà Rốt, Nấm Mèo Khô, Nấm Hương Khô, Hành Baro) 75g
--3. Cà Tím 200g
--4. Sốt Cà Tím Nhồi Đậu Hũ Chay CookyMADE 27g', N'Món Ăn Việt', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Đậu Que Xào Tỏi', N'DauQue.jpeg', 15000, '02/02/2021', N'1. Tỏi Tép Lột Sẵn 20g
--2. Đậu Que 200g
--3. Bột Gia Vị Xào Tỏi CookyMADE 12g
--4. Tỏi Phi 10g', N'Món Ăn Việt', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Đậu Phụ Tẩm Hành', N'DauPhuTamHanh.jpeg', 30000, '02/02/2021', N'1. Đậu Hũ Trắng Thuận Phong 3 Miếng
--2. Hành Lá, Ớt Sừng Đỏ 35g
--3. Sốt Tẩm Hành CookyMADE 27g', N'Món Chay', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Combo Healthy', N'ComboHealthy.jpg', 110000, '02/02/2021', N'Combo Healthy cho 2 người gồm:
--- Canh Sườn Non Heo Đu Đủ
--- Ức Gà Xào Bông Cải Xanh
--- Rau Muống Xào Tỏi
--- Nước Ép Thơm 300Ml', N'Combo', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Lẩu Cá Thác Lác Khổ Qua ', N'LauCaThacLac.jpeg', 140000, '02/02/2021', N'1. Rau Lẩu Cá Thác Lác Khổ Qua (Khổ Qua, Mồng Tơi, Nấm Kim Châm, Hành Tây) 730g
--2. Hành Lá, Ngò Rí 30g
--3. Giò Sống 100g
--4. Cá Thác Lác Nạo (Nguyên Chất) 200g
--5. Nước Cốt Lẩu Ngọt CookyMADE 160g
--6. Tiêu Đen Xay 3g
--7. Hành Phi 30g
--8. (Lựa chọn) Thêm Bún Tươi Sợi Trung Ba Khánh 500g', N'Mô tả demo', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Lẩu Bò Mắm Ruốc', N'LauBoMamRuoc.jpeg', 120000, '02/02/2021', N'1. Rau Lẩu Bò Mắm Ruốc (Cải Thảo, Tần Ô, Rau Muống Cọng, Nấm Kim Châm) 750g
--2. Sả Bào, Ớt Chỉ Thiên, Hành Tím Lột, Tỏi Lột 55g
--3. Bắp Bò Hoa Allana Thái Mỏng 400-450g
--4. Sốt Mắm Ruốc CookyMADE 70g
--5. (Lựa chọn) Thêm Bún Tươi Sợi Trung Ba Khánh 500g', N'Mô tả demo', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Lẩu Bò Sa Tế ', N'BoSaTe.jpeg', 170000, '02/02/2021', N'1. Rau Lẩu Bò Sa Tế (Củ Sen, Nấm Linh Chi Nâu, Nấm Kim Châm, Cải Bẹ Xanh, Cải Thảo...) 845g
--2. Hành Tím, Tỏi Tép Lột Sẵn 20g
--3. Sả Bào 20g
--4. Bắp Bò Hoa Allana Thái Mỏng 400-450g
--5. Nước Cốt Lẩu Sa Tế CookyMADE 160g', N'Mô tả demo', 12, 1, 1);

--insert into MonAn (TenMonAn, HinhAnh, DonGia, NgayCapNhat, ThongTin, MoTa, SoLuongDaBan, MaNMA_id, MaLMA_id)
--values (N'Lẩu Lươn Chua Cay', N'LauLuonCHuaCay.jpeg', 170000, '02/02/2021', N'1. Rau Củ Nấu Nước Dùng Lẩu (Cà chua, Lá chanh, Củ riềng, Hành tím lột, Sả cây, Ớt chỉ thiên...) 260g
--2. Rau Lẩu Chua Cay (Rau Muống Cọng; Cải Thảo, Bạc Hà, Nấm Kim Châm) 750g
--3. Lươn Đồng Làm Sạch 400g', N'Mô tả demo', 12, 1, 1);

go
create table NguyenLieu
(
	MaNguyenLieu int identity(1,1) primary key,
	TenNguyenLieu nvarchar(200) not null,
	SoLuongHienCon float default(0),
	GhiChu nvarchar(255) null,
	GiaNhapCuoi float default(0) not null,
	MaLNL_id int,

	Foreign key(MaLNL_id) references LoaiNguyenLieu(MaLNL),
)
go
---- Hải sản
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Tôm Sú', 3, N'Tôm sú để làm các món ăn về hải sản', 120000, 1);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Mực Ống', 3, N'Làm các món ăn hải sản', 150000, 1);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Mực Lá', 3, N'Hấp hoặc làm lẩu hải sản', 140000, 1);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Cá Chình', 3, N'Làm lẩu hoặc nướng mọi', 200000, 1);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Tôm Đất', 3, N'Làm tôm đất rang muối', 120000, 1);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Cá Dìa', 3, N'Làm lẩu cá dìa', 180000, 1);
---- Rau củ quả
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Rau Muống', 3, N'Xào tỏi/ bò', 10000, 2);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Rau Mồng Tơi', 3, N'Làm lẩu', 20000, 2);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Rau Thơm', 3, N'Rau sống', 10000, 2);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Rau Xà Lách', 3, N'Gõi', 30000, 2);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Giá', 3, N'Lẫu', 15000, 2);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Cà Rốt', 3, N'Xào', 40000, 2);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Củ Cải', 3, N'Xào hoặc làm gỏi', 50000, 2);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Cà Tím', 3, N'Chiên', 40000, 2);
---- Gia vị
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Muối IOT', 4, N'Gia vị cho mọi món ăn', 15000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Hạt Nêm', 4, N'Gia vị cho mọi món ăn', 20000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Tiêu', 4, N'Gia vị cho mọi món ăn', 40000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Ớt Bột', 4, N'Gia vị cho mọi món ăn', 50000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Đường', 4, N'Gia vị cho mọi món ăn', 20000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Bột Năng', 4, N'Gia vị cho mọi món ăn', 40000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Bột Chiên Giòn', 4, N'Gia vị cho mọi món ăn', 30000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Bột Mì', 4, N'Gia vị cho mọi món ăn', 30000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Tương Ớt', 4, N'Gia vị cho mọi món ăn', 20000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Nước Mắm', 4, N'Gia vị cho mọi món ăn', 60000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Dầu Ăn', 4, N'Gia vị cho mọi món ăn', 40000, 3);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Giấm', 4, N'Gia vị cho mọi món ăn', 30000, 3);

---- Thức Uống
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Aquafina', 200, N'Nước uống', 10000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Lavie', 200, N'Nước uống có gas', 10000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Cocacola', 200, N'Nước uống có gas', 15000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Pepsi', 200, N'Nước uống có gas', 15000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Sting', 200, N'Nước uống có gas', 10000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Bò Húc', 200, N'Nước uống tăng lực', 15000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Bia Laru', 200, N'Nước uống có cồn', 12000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Bia 333', 200, N'Nước uống có cồn', 22000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Bia Tigger Nâu', 200, N'Nước uống có cồn', 12000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Bia Tigger Bạc', 200, N'Nước uống có cồn', 12000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Bia Heneken', 200, N'Nước uống có cồn', 35000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Vang Nho', 200, N'Nước uống có cồn', 2000000, 4);
--insert into NguyenLieu (TenNguyenLieu, SoLuongHienCon, GhiChu, GiaNhapCuoi, MaLNL_id) values (N'Men', 200, N'Nước uống có cồn', 80000, 4);
--go
create table NhanVien
(
	TaiKhoanNV varchar(50) primary key,
	MatKhauNV varchar(50) not null,
	TenNhanVien nvarchar(100) not null,
	NgaySinh Date null,
	SoDienThoai varchar(10) null,
	MaQuyen_id int,

	Foreign key(MaQuyen_id) references Quyen(MaQuyen),
)
go
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, SoDienThoai, MaQuyen_id) values ('nhanvien', 'abc123', N'Nhân Viên', '02/08/1998', '0123654875', 1);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, SoDienThoai, MaQuyen_id) values ('kho', 'abc123', N'Nhân Viên Kho', '08/08/1998', '0974542845', 2);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, SoDienThoai, MaQuyen_id) values ('Tra', 'abc123', N'Nhân Viên', '02/08/1998', '0123654875', 1);
insert into NhanVien (TaiKhoanNV, MatKhauNV, TenNhanVien, NgaySinh, SoDienThoai, MaQuyen_id) values ('Thuong', 'abc123', N'Nhân Viên', '02/08/1998', '0123654875', 2);
go
create table PhieuNhap
(
	MaPhieuNhap int identity(1,1) primary key,
	NgayNhap date default(getdate()),
	TongTien float default(0),
	TaiKhoanNV_id varchar(50),
	MaNCC_id int,

	Foreign key(TaiKhoanNV_id) references NhanVien(TaiKhoanNV),
	Foreign key(MaNCC_id) references NhaCC(MaNCC),
)
go
create table ChiTietPhieuNhap
(
	MaNguyenLieu_id int,
	MaPhieuNhap_id int,
	Primary key(MaNguyenLieu_id,MaPhieuNhap_id),
	SoLuongNhap int default(0),
	GiaNhap float not null,
	ThanhTien float null,

	Foreign key(MaNguyenLieu_id) references NguyenLieu(MaNguyenLieu),
	Foreign key(MaPhieuNhap_id) references PhieuNhap(MaPhieuNhap),
)
go
create table ChiTietSanPham
(
	MaMonAn_id int,
	MaNguyenLieu_id int,
	Primary key(MaMonAn_id,MaNguyenLieu_id),
	SoLuongDung float default(0) not null,
	Tru int default(0) null, -- 0: k trừ trong kho. 1: có trừ trongk

	Foreign key(MaMonAn_id) references MonAn(MaMonAn),
	Foreign key(MaNguyenLieu_id) references NguyenLieu(MaNguyenLieu),
)
go
create table Tang
(
	MaTang int identity(1,1) primary key,
	TenTang nvarchar(50) not null,
)
go
insert into Tang (TenTang) values (N'Tầng 1');
insert into Tang (TenTang) values (N'Tầng 2');
insert into Tang (TenTang) values (N'Tầng 3');
go
create table Ban
(
	MaBan int identity(1,1) primary key,
	TenBan nvarchar(50) not null,
	SoGhe int default(4) not null,
	Vip int default(0), -- 0: bàn thường, 1 phòng víp => giá món ăn tăng 5% . Quy ước 1 tầng có 3 phòng VIP
	TinhTrang int default(0), -- 0: bàn trống, 1: bàn đang có người
	MaTang_id int,
	Foreign key(MaTang_id) references Tang(MaTang),
)
go
-- Bàn tầng 1
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'1 VIP', 8, 1, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'2 VIP', 8, 1, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'3 VIP', 16, 1, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'4', 4, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'5', 4, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'6', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'7', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'8', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'9', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'10', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'11', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'12', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'13', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'14', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'15', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'16', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'17', 6, 0, 0, 1);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'18', 6, 0, 0, 1);

-- Bàn tầng 2
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'1 VIP', 8, 1, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'2 VIP', 8, 1, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'3 VIP', 16, 1, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'4', 4, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'5', 4, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'6', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'7', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'8', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'9', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'10', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'11', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'12', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'13', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'14', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'15', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'16', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'17', 6, 0, 0, 2);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'18', 6, 0, 0, 2);

-- Bàn tầng 3
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'1 VIP', 8, 1, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'2 VIP', 8, 1, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'3 VIP', 16, 1, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'4', 4, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'5', 4, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'6', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'7', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'8', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'9', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'10', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'11', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'12', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'13', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'14', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'15', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'16', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'17', 6, 0, 0, 3);
insert into Ban(TenBan, SoGhe, Vip, TinhTrang, MaTang_id) values (N'18', 6, 0, 0, 3);
go
create table HoaDon
(
	MaHoaDon int identity(1,1) primary key,
	TenKhachHang nvarchar(100) default(N'Khach Hang A'),
	NgayTao datetime default(getdate()),
	NgayThanhToan datetime null,
	GhiChu nvarchar(200) null,
	TongTien float not null,
	TrangThai int default(0),
	MaBan_id int,

	Foreign key(MaBan_id) references Ban(MaBan),
)
go
create table ChiTietHoaDon
(
	MaHoaDon_id int,
	MaMonAn_id int,
	Primary key(MaHoaDon_id,MaMonAn_id),
	SoLuongMua int not null,
	ThanhTien float not null,
	NgayGoi datetime null default(getdate()),

	Foreign key(MaHoaDon_id) references HoaDon(MaHoaDon),
	Foreign key(MaMonAn_id) references MonAn(MaMonAn),
)
go
create table LichSuGoiMon
(
	MaLichSu int identity(1,1) primary key,
	SoLuongMua int not null,
	SoLuongTra int null,
	ThoiGianGoi datetime default(getdate()),
	ThoiGianTra datetime default(getdate()),
	MaHoaDon_id int,
	MaMonAn_id int

	Foreign key(MaHoaDon_id) references HoaDon(MaHoaDon),
	Foreign key(MaMonAn_id) references MonAn(MaMonAn),
)
go
create table XuatKho
(
	MaXuatKho int identity(1,1) primary key,
	NgayNhap datetime default(getdate()),
	TongTien float default(0) null,
)
go
create table NguyenLieuXuat
(
	MaXuatKho_id int,
	MaNguyenLieu_id int
	primary key(MaXuatKho_id, MaNguyenLieu_id),
	SoLuongXuat int default(0),
	DonGia float,
	ThanhTien float,

	Foreign key(MaXuatKho_id) references XuatKho(MaXuatKho),
	Foreign key(MaNguyenLieu_id) references NguyenLieu(MaNguyenLieu),
)
go
create table HoanTra
(
	MaHoanTra int identity(1,1) primary key,
	NgayHoanTra datetime default(getdate()),
	TongTien float default(0) null,
)
go
create table NguyenLieuTra
(
	MaHoanTra_id int,
	MaNguyenLieu_id int
	primary key(MaHoanTra_id, MaNguyenLieu_id),
	SoLuongXuat int default(0),
	DonGia float,
	ThanhTien float,

	Foreign key(MaHoanTra_id) references HoanTra(MaHoanTra),
	Foreign key(MaNguyenLieu_id) references NguyenLieu(MaNguyenLieu),
)