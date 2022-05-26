-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 06:53 AM
-- Server version: 10.4.21-MariaDB-log
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `citizenv`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `cccd` varchar(12) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `ngaySinh` date NOT NULL,
  `gioiTinh` varchar(20) NOT NULL,
  `queQuan` varchar(100) NOT NULL,
  `diaChiThuongTru` varchar(100) NOT NULL,
  `diaChiTamTru` varchar(100) NOT NULL,
  `tonGiao` varchar(30) DEFAULT NULL,
  `trinhDoVanHoa` varchar(20) NOT NULL,
  `ngheNghiep` varchar(30) DEFAULT NULL,
  `maDiaChi` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`cccd`, `ten`, `ngaySinh`, `gioiTinh`, `queQuan`, `diaChiThuongTru`, `diaChiTamTru`, `tonGiao`, `trinhDoVanHoa`, `ngheNghiep`, `maDiaChi`) VALUES
('123456780', 'Trần Đức B', '1959-10-12', 'Nam', 'Hải An,Hải Phòng,Việt Nam', '14 An Xá,Phúc Xá,Ba Đình,Hà Nội', '14 An Xá,Phúc Xá,Ba Đình,Hà Nội', 'Đạo Phật', 'Lớp 10/10', 'Hưu trí', '01010101'),
('123456790', 'Lưu Đức B', '1969-10-12', 'Nam', 'Ngô Quyền,Hải Phòng,Việt Nam', '55 An Xá,Phúc Xá,Ba Đình,Hà Nội', '55 An Xá,Phúc Xá,Ba Đình,Hà Nội', 'Đạo Phật', 'Lớp 10/10', 'Hưu trí', '01010101'),
('123654987120', 'Lê Trung Hiếu', '1971-12-12', 'Nữ', 'Đông Cao, Phổ Yên, Thái Nguyên', 'Xóm Dộc, Đông Cao, Phổ Yên, Thái Nguyên', 'Xóm Dộc, Đông Cao, Phổ Yên, Thái Nguyên', 'Không', 'Đại học', 'Thợ mỏ', '12010102'),
('123654987121', 'Lê Trung Thuận', '1971-12-12', 'Nữ', 'Đông Cao, Phổ Yên, Thái Nguyên', 'Xóm Dộc, Đông Cao, Phổ Yên, Thái Nguyên', 'Xóm Dộc, Đông Cao, Phổ Yên, Thái Nguyên', 'Không', 'Đại học', 'Giáo viên', '12010102'),
('123654987122', 'Nguyễn Hoàng Đức', '1971-12-12', 'Nữ', 'Đông Cao, Phổ Yên, Thái Nguyên', 'Xóm Dộc, Đông Cao, Phổ Yên, Thái Nguyên', 'Xóm Dộc, Đông Cao, Phổ Yên, Thái Nguyên', 'Không', 'Đại học', 'Giáo viên', '12010102'),
('123654987123', 'Trần Văn Thìn', '1971-12-12', 'Nam', 'Tân Hương, Phổ Yên, Thái Nguyên', 'Việt Hùng, Tân Hương, Phổ Yên, Thái Nguyên', 'Việt Hùng, Tân Hương, Phổ Yên, Thái Nguyên', 'Không', 'Đại học', 'Giáo viên', '12010201'),
('123654987124', 'Trần Thị Thoa', '1971-12-12', 'Nam', 'Tân Hương, Phổ Yên, Thái Nguyên', 'Việt Hùng, Tân Hương, Phổ Yên, Thái Nguyên', 'Việt Hùng, Tân Hương, Phổ Yên, Thái Nguyên', 'Không', 'Đại học', 'Tự do', '12010201'),
('123654987125', 'Lạ Hương Lan', '1971-12-12', 'Nam', 'Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 1, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 1, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Không', 'Đại học', 'Tự do', '12020101'),
('123654987126', 'Nguyễn Quỳnh Chi', '1971-12-12', 'Nam', 'Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 1, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 1, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Không', 'Đại học', 'Tự do', '12020101'),
('123654987127', 'Đào Thị Hợi', '1971-12-12', 'Nam', 'Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 1, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 1, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Không', 'Đại học', 'Làm ruộng', '12020101'),
('123654987128', 'Đào Vân Anh', '1971-12-12', 'Nam', 'Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 2, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 2, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Không', 'Đại học', 'Làm ruộng', '12020102'),
('123654987129', 'Ngô Thị Mỹ Anh', '1971-12-12', 'Nữ', 'Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 2, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 2, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Không', 'Đại học', 'Làm ruộng', '12020102'),
('123654987130', 'Ngô Thanh Huyền', '1971-12-12', 'Nữ', 'Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 2, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Tổ 2, Phan Đình Phùng, TP. Thái Nguyên, Thái Nguyên', 'Không', 'Đại học', 'Thầy bói', '12020102'),
('123654987134', 'Ngô Tiến Khải', '1971-12-12', 'Nữ', 'Tân Hương, Phổ Yên, Thái Nguyên', 'Việt Hùng, Tân Hương, Phổ Yên, Thái Nguyên', 'Việt Hùng, Tân Hương, Phổ Yên, Thái Nguyên', 'Không', 'Đại học', 'Thầy bói', '12010201'),
('130000001', 'Trần Quốc Thiện', '1959-10-12', 'Nam', 'Hải An,Hải Phòng,Việt Nam', '14 Nguyễn Bình,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', '14 Nguyễn Bình,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', 'Đạo Phật', 'Lớp 10/10', 'Hưu trí', '03010101'),
('130000002', 'Lưu Quốc Thiện', '1969-10-12', 'Nam', 'Ngô Quyền,Hải Phòng,Việt Nam', '55 Nguyễn Bình,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', '55 Nguyễn Bình,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', 'Đạo Phật', 'Lớp 10/10', 'Hưu trí', '03010101'),
('130000003', 'Hồ Hải An', '1969-10-13', 'Nam', 'Đình Bảng, huyện Từ Sơn, tỉnh Bắc Ninh', '44 Văn Cao,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', '44 Văn Cao,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Công nhân', '03010102'),
('130000004', 'Hồ Hoàng An', '1989-10-13', 'Nam', 'Đông Động, Đông Hưng,Thái Bình', '69 Văn Cao,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', '69 Văn Cao,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Công nhân', '03010102'),
('130000005', 'Cao Đình Van', '1969-04-13', 'Nam', 'Đông Động, Đông Hưng,Thái Bình', '11 Ngũ Xá,Lạch Chay,Hải Phòng', '11 Ngũ Xá,Lạch Chay,Hải Phòng', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Công nhân', '03010201'),
('130000006', 'Lê Đình Đông', '1969-04-13', 'Nam', 'Đình Bảng, Từ Sơn, Bắc Ninh', '19 Ngũ Xá,Lạch Chay,Hải Phòng', '19 Ngũ Xá,Lạch Chay,Hải Phòng', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Giáo viên', '03010201'),
('130000007', 'Cao Văn Đức', '1990-04-15', 'Nam', 'Đông Động, Đông Hưng,Thái Bình', '19 Chu Văn An,Lạch Chay,Hải Phòng', '19 Chu Văn An,Lạch Chay,Hải Phòng', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Bác sĩ', '03010202'),
('130000008', 'Trần Thảo Vân', '1990-09-15', 'Nữ', 'Đằng Lâm,Hải An,Hải Phòng', '33 Chu Văn An,Lạch Chay,Hải Phòng', '33 Chu Văn An,Lạch Chay,Hải Phòng', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Bác sĩ', '03010202'),
('130000009', 'Trần Cao Vân', '1991-09-15', 'Nữ', 'Xuân Thủy,Cầu Giấy,Hải Phòng', '58 Văn Cao,Hải An,Hải Phòng', '37 Tô Vũ,Đằng Lâm,Hải An,Hải Phòng', 'Đạo Phật', 'Lớp 12/12', 'Bác sĩ', '03020101'),
('130000010', 'Ngô Thảo Vân', '1990-09-10', 'Nữ', 'Tô Hiệu,Cầu Giấy,Hải Phòng', '51 Văn Cao,Hải An,Hải Phòng', '49 Tô Vũ,Đằng Lâm,Hải An,Hải Phòng', 'Đạo Phật', 'Lớp 12/12', 'Bác sĩ', '03020101'),
('130000011', 'Cao Thảo Vân', '1990-12-10', 'Nữ', 'Tô Hiệu,Cầu Giấy,Hải Phòng', '33 Văn Cao,Hải An,Hải Phòng', '49 Ngô Gia Tự,Đằng Lâm,Hải An,Hải Phòng', 'Đạo Phật', 'Lớp 12/12', 'Y tá', '03020102'),
('130000012', 'Lưu Thảo Nga', '1996-12-10', 'Nữ', 'Láng,Cầu Giấy,Hải Phòng', '343 Tô Hiệu,Hải An,Hải Phòng', '323 Ngô Gia Tự,Đằng Lâm,Hải An,Hải Phòng', 'Đạo Phật', 'Lớp 12/12', 'Y tá', '03020102'),
('130000013', 'Sùng Thảo Nga', '1986-12-10', 'Nữ', 'Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '11 Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '303 Lê Hồng Phong,Trung Lực,Hải An,Hải Phòng', 'Đạo Hồi', 'Lớp 12/12', 'Y tá', '03020201'),
('130000014', 'Sùng Thảo Ngân', '1979-12-10', 'Nữ', 'Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '19 Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '399 Lê Hồng Phong,Trung Lực,Hải An,Hải Phòng', 'Đạo Hồi', 'Lớp 12/12', 'Giáo viên', '03020201'),
('130000015', 'Hồ Quân Hiếu', '1999-12-19', 'Nam', 'Nghi Phan, Thành phố Vinh, Nghệ An 43000, Việt Nam', '99 Phạm Đình Toái, Nghi Phan, Thành phố Vinh, Nghệ An 43000, Việt Nam', '23 Nguyễn Văn Linh,Trung Lực,Hải An,Hải Phòng', 'Đạo Hồi', 'Lớp 12/12', 'Nhạc sĩ', '03020202'),
('130000016', 'Hồ Quân Hải', '1999-12-06', 'Nam', 'Nghĩa Thái, Tân Kỳ, Nghệ An, Việt Nam', '5896+R69, Nghĩa Thái, Tân Kỳ, Nghệ An, Việt Nam', '29 Nguyễn Văn Linh,Trung Lực,Hải An,Hải Phòng', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Nhạc sĩ', '03020202'),
('140000010', 'Ngô Thảo Vân', '1990-09-10', 'Nữ', 'Tô Hiệu,Cầu Giấy,Hải Phòng', '51 Văn Cao,Hải An,Hải Phòng', '37 Tô Vũ,Hoành Sơn, Giao Thủy, Nam Định', 'Đạo Phật', 'Lớp 12/12', 'Bác sĩ', '04020101'),
('162340699', 'Ngô Thị Vân', '1990-09-10', 'Nữ', 'Tô Hiệu,Cầu Giấy,Hà Nội', '51 Văn Cao,Hải An,Hải Phòng', '49 Bảo Linh,Phúc Tân,Hoàn Kiếm,Hà Nội', 'Đạo Phật', 'Lớp 12/12', 'Bác sĩ', '01023701'),
('163345678', 'Hồ Hoàn Kiếm', '1969-10-13', 'Nam', 'Đình Bảng, huyện Từ Sơn, tỉnh Bắc Ninh', '44 Hồng Hà,Phúc Xá,Ba Đình,Hà Nội', '44 Hồng Hà,Phúc Xá,Ba Đình,Hà Nội', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Công nhân', '01010102'),
('175340693', 'Hà Tiến Ho', '1994-02-13', 'Nam', 'Nguyễn Du,Bến Nghé,Thành phố Hồ Chí Minh', '55 Nguyễn Du,Bến Nghé,Thành phố Hồ Chí Minh', '55 Nguyễn Du,Bến Nghé,Thành phố Hồ Chí Minh', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Họa sĩ', '02013402'),
('175340694', 'Lưu Quang Lũy', '2000-02-13', 'Nam', 'Nguyễn Du,Bến Nghé,Thành phố Hồ Chí Minh', '67 Nguyễn Du,Bến Nghé,Thành phố Hồ Chí Minh', '67 Nguyễn Du,Bến Nghé,Thành phố Hồ Chí Minh', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Họa sĩ', '02013402'),
('175340695', 'Lưu Quang Lũy', '2001-02-14', 'Nam', 'Đa Cao,Quận 1,Thành phố Hồ Chí Minh', '67 Điện Biên Phủ,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', '67 Điện Biên Phủ,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', 'Đạo Phật', 'Lớp 12/12', 'Sinh viên', '02013701'),
('175340696', 'Lưu Quang Kiên', '2001-02-05', 'Nam', 'Đa Cao,Quận 1,Thành phố Hồ Chí Minh', '43 Điện Biên Phủ,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', '43 Điện Biên Phủ,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', 'Đạo Phật', 'Lớp 12/12', 'Sinh viên', '02013701'),
('175340697', 'Lê Quang Kiên', '2001-02-08', 'Nam', 'Cây Điệp,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', '99 Cây Điệp,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', '99 Cây Điệp,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', 'Đạo Phật', 'Lớp 12/12', 'Sinh viên', '02013702'),
('175340698', 'Trần Quang Đại', '2001-02-09', 'Nam', 'Cây Điệp,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', '46 Cây Điệp,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', '46 Cây Điệp,Đa Cao,Quận 1,Thành phố Hồ Chí Minh', 'Đạo Phật', 'Lớp 12/12', 'Sinh viên', '02013702'),
('175340699', 'Sùng Thị Ngân', '1979-12-10', 'Nữ', 'Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '19 Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '399 Hàng Khoai,Đồng Xuân,Hoàn Kiếm,Hà Nội', 'Đạo Hồi', 'Lớp 12/12', 'Giáo viên', '01024001'),
('175340799', 'Hồ Quang Đại', '2002-02-09', 'Nam', 'Lê Văn Miến, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', '543 Lê Văn Miến, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', '543 Lê Văn Miến, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', 'Đạo Phật', 'Lớp 12/12', 'Sinh viên', '02028801'),
('400000011', 'Trần Cao Vân', '1991-09-15', 'Nữ', 'Xuân Thủy,Cầu Giấy,Hải Phòng', '58 Văn Cao,Hải An,Hải Phòng', '37 Tô Vũ,Hoành Sơn, Giao Thủy, Nam Định', 'Đạo Phật', 'Lớp 12/12', 'Bác sĩ', '04020101'),
('400000017', 'Cao Văn Đức', '1990-04-15', 'Nam', 'Đông Động, Đông Hưng,Thái Bình', '19 Chu Văn An,Lạch Chay,Hải Phòng', 'Chu Văn An, Minh Thuận, Vụ Bản, Nam Định', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Bác sĩ', '04010202'),
('400000081', 'Trần Thảo Vân', '1990-09-15', 'Nữ', 'Đằng Lâm,Hải An,Hải Phòng', '33 Chu Văn An,Lạch Chay,Hải Phòng', 'Chu Văn An, Minh Thuận, Vụ Bản, Nam Định', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Bác sĩ', '03010202'),
('400000106', 'Lê Đình Đông', '1969-04-13', 'Nam', 'Đình Bảng, Từ Sơn, Bắc Ninh', '19 Ngũ Xá,Lạch Chay,Hải Phòng', 'Đình Đông, Minh Thuận, Vụ Bản, Nam Định', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Giáo viên', '04010201'),
('400000116', 'Hồ Quân Hải', '1999-12-06', 'Nam', 'Nghĩa Thái, Tân Kỳ, Nghệ An, Việt Nam', '5896+R69, Nghĩa Thái, Tân Kỳ, Nghệ An, Việt Nam', '29 Nguyễn Văn Linh,Bình Hòa, Giao Thủy, Nam Định', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Nhạc sĩ', '04020202'),
('400001005', 'Cao Đình Van', '1969-04-13', 'Nam', 'Đông Động, Đông Hưng,Thái Bình', '11 Ngũ Xá,Lạch Chay,Hải Phòng', 'Đình Đông, Minh Thuận, Vụ Bản, Nam Định', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Công nhân', '04010201'),
('400001015', 'Hồ Quân Hiếu', '1999-12-19', 'Nam', 'Nghi Phan, Thành phố Vinh, Nghệ An 43000, Việt Nam', '99 Phạm Đình Toái, Nghi Phan, Thành phố Vinh, Nghệ An 43000, Việt Nam', '23 Nguyễn Văn Linh,Bình Hòa, Giao Thủy, Nam Định', 'Đạo Hồi', 'Lớp 12/12', 'Nhạc sĩ', '04020202'),
('400010004', 'Hồ Hoàng An', '1989-10-13', 'Nam', 'Đông Động, Đông Hưng,Thái Bình', '69 Văn Cao,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', 'Tổ dân phố 1, Thị Trấn Gôi, Vụ Bản, Nam Định', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Công nhân', '04010102'),
('400010014', 'Sùng Thảo Ngân', '1979-12-10', 'Nữ', 'Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '19 Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '303 Lê Hồng Phong, Bình Hòa, Giao Thủy, Nam Định', 'Đạo Hồi', 'Lớp 12/12', 'Giáo viên', '04020201'),
('400100003', 'Hồ Hải An', '1969-10-13', 'Nam', 'Đình Bảng, huyện Từ Sơn, tỉnh Bắc Ninh', '44 Văn Cao,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', 'Tổ dân phố 1, Thị Trấn Gôi, Vụ Bản, Nam Định', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Công nhân', '04010102'),
('400100013', 'Sùng Thảo Nga', '1986-12-10', 'Nữ', 'Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '11 Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '303 Lê Hồng Phong, Bình Hòa, Giao Thủy, Nam Định', 'Đạo Hồi', 'Lớp 12/12', 'Y tá', '04020201'),
('401000002', 'Lưu Quốc Thiện', '1969-10-12', 'Nam', 'Ngô Quyền,Hải Phòng,Việt Nam', '55 Nguyễn Bình,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', 'Lạc Thiện, Thị Trấn Gôi, Vụ Bản, Nam Định', 'Đạo Phật', 'Lớp 10/10', 'Hưu trí', '03010101'),
('401000012', 'Lưu Thảo Nga', '1996-12-10', 'Nữ', 'Láng,Cầu Giấy,Hải Phòng', '343 Tô Hiệu,Hải An,Hải Phòng', '37 Ngô Gia Tự,Hoành Sơn, Giao Thủy, Nam Định', 'Đạo Phật', 'Lớp 12/12', 'Y tá', '04020102'),
('410000001', 'Trần Quốc Thiện', '1959-10-12', 'Nam', 'Hải An,Hải Phòng,Việt Nam', '14 Nguyễn Bình,Đồng Quốc Bình,Ngô Quyền,Hải Phòng', 'Lạc Thiện, Thị Trấn Gôi, Vụ Bản, Nam Định', 'Đạo Phật', 'Lớp 10/10', 'Hưu trí', '04010101'),
('410000011', 'Cao Thảo Vân', '1990-12-10', 'Nữ', 'Tô Hiệu,Cầu Giấy,Hải Phòng', '33 Văn Cao,Hải An,Hải Phòng', '37 Ngô Gia Tự,Hoành Sơn, Giao Thủy, Nam Định', 'Đạo Phật', 'Lớp 12/12', 'Y tá', '04020102'),
('612341698', 'Trần Thị Vân', '1990-09-15', 'Nữ', 'Quan Hoa,Cầu Giấy,Hà Nội', '33 Cửa Bắc,Trúc Bạch,Hà Nội', '33 Cửa Bắc,Trúc Bạch,Hà Nội', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Bác sĩ', '01010402'),
('621345678', 'Cao Đình Van', '1969-04-13', 'Nam', 'Đông Động, Đông Hưng,Thái Bình', '11 Ngũ Xá,Trúc Bạch,Hà Nội', '11 Ngũ Xá,Trúc Bạch,Hà Nội', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Công nhân', '01010401'),
('623145698', 'Lê Đình Đa', '1969-04-13', 'Nam', 'Đình Bảng, Từ Sơn, Bắc Ninh', '19 Ngũ Xá,Trúc Bạch,Hà Nội', '19 Ngũ Xá,Trúc Bạch,Hà Nội', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Giáo viên', '01010401'),
('623406918', 'Cao Văn Rét', '1990-04-15', 'Nam', 'Đông Động, Đông Hưng,Thái Bình', '19 Cửa Bắc,Trúc Bạch,Hà Nội', '19 Cửa Bắc,Trúc Bạch,Hà Nội', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Bác sĩ', '01010402'),
('623915678', 'Hồ Hoàn Kiếm', '1989-10-13', 'Nam', 'Đông Động, Đông Hưng,Thái Bình', '69 Hồng Hà,Phúc Xá,Ba Đình,Hà Nội', '69 Hồng Hà,Phúc Xá,Ba Đình,Hà Nội', 'Đạo Thiên Chúa', 'Lớp 10/10', 'Công nhân', '01010102'),
('624401698', 'Trần Cao Vân', '1991-09-15', 'Nữ', 'Xuân Thủy,Cầu Giấy,Hà Nội', '58 Văn Cao,Hải An,Hải Phòng', '37 Bảo Linh,Phúc Tân,Hoàn Kiếm,Hà Nội', 'Đạo Phật', 'Lớp 12/12', 'Bác sĩ', '01023701'),
('712340699', 'Cao Thị Vân', '1990-12-10', 'Nữ', 'Tô Hiệu,Cầu Giấy,Hà Nội', '33 Văn Cao,Hải An,Hải Phòng', '49 Thanh Yên,Phúc Tân,Hoàn Kiếm,Hà Nội', 'Đạo Phật', 'Lớp 12/12', 'Y tá', '01023702'),
('731340699', 'Lưu Thị Nga', '1996-12-10', 'Nữ', 'Láng,Cầu Giấy,Hà Nội', '343 Tô Hiệu,Hải An,Hải Phòng', '323 Thanh Yên,Phúc Tân,Hoàn Kiếm,Hà Nội', 'Đạo Phật', 'Lớp 12/12', 'Y tá', '01023702'),
('743140690', 'Hồ Quang Hiếu', '1999-12-19', 'Nam', 'Nghi Phan, Thành phố Vinh, Nghệ An 43000, Việt Nam', '99 Phạm Đình Toái, Nghi Phan, Thành phố Vinh, Nghệ An 43000, Việt Nam', '23 Thanh Hà,Đồng Xuân,Hoàn Kiếm,Hà Nội', 'Đạo Hồi', 'Lớp 12/12', 'Nhạc sĩ', '01024001'),
('743401692', 'Hạp Tiến Ho', '1995-02-13', 'Nam', 'Nguyễn Huệ,Bến Nghé,Thành phố Hồ Chí Minh', '29 Nguyễn Huệ,Bến Nghé,Thành phố Hồ Chí Minh', '29 Nguyễn Huệ,Bến Nghé,Thành phố Hồ Chí Minh', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Nhạc sĩ', '02013401'),
('743406913', 'Trần Tiến Ho', '1994-02-13', 'Nam', 'Nguyễn Huệ,Bến Nghé,Thành phố Hồ Chí Minh', '29 Nguyễn Huệ,Bến Nghé,Thành phố Hồ Chí Minh', '55 Nguyễn Huệ,Bến Nghé,Thành phố Hồ Chí Minh', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Họa sĩ', '02013401'),
('743406991', 'Sùng Thị Nga', '1986-12-10', 'Nữ', 'Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '11 Ia Hru, Chư Pưh, Gia Lai, Việt Nam', '303 Hàng Khoai,Đồng Xuân,Hoàn Kiếm,Hà Nội', 'Đạo Hồi', 'Lớp 12/12', 'Y tá', '01024001'),
('743410691', 'Hồ Quang Hải', '1999-12-06', 'Nam', 'Nghĩa Thái, Tân Kỳ, Nghệ An, Việt Nam', '5896+R69, Nghĩa Thái, Tân Kỳ, Nghệ An, Việt Nam', '29 Thanh Hà,Đồng Xuân,Hoàn Kiếm,Hà Nội', 'Đạo Thiên Chúa', 'Lớp 12/12', 'Nhạc sĩ', '01024001'),
('763340699', 'Hồ Văn Đại', '2002-04-09', 'Nam', 'Lê Văn Miến, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', '32 Lê Văn Miến, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', '32 Lê Văn Miến, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', 'Không', 'Lớp 12/12', 'Sinh viên', '02028801'),
('763440699', 'Hồ Văn Đạt', '2002-04-07', 'Nam', 'Đà Nẵng, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', '88 Đà Nẵng, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', '88 Đà Nẵng, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', 'Không', 'Lớp 12/12', 'Sinh viên', '02028802'),
('763540699', 'Trần Văn Việt', '2002-04-19', 'Nam', 'Đà Nẵng, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', '58 Đà Nẵng, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', '58 Đà Nẵng, Thảo Điền,Quận 2,Thành phố Hồ Chí Minh', 'Không', 'Lớp 12/12', 'Sinh viên', '02028802'),
('763640699', 'Trần Thị An', '2002-03-19', 'Nữ', 'Liên Huyện,An Phú,Quận 2,Thành phố Hồ Chí Minh', '69 Liên Huyện,An Phú,Quận 2,Thành phố Hồ Chí Minh', '69 Liên Huyện,An Phú,Quận 2,Thành phố Hồ Chí Minh', 'Không', 'Lớp 12/12', 'Sinh viên', '02029101'),
('763740699', 'Trần Thị Hảo', '2002-03-26', 'Nữ', 'Liên Huyện,An Phú,Quận 2,Thành phố Hồ Chí Minh', '99 Liên Huyện,An Phú,Quận 2,Thành phố Hồ Chí Minh', '99 Liên Huyện,An Phú,Quận 2,Thành phố Hồ Chí Minh', 'Không', 'Lớp 12/12', 'Sinh viên', '02029101'),
('763840699', 'Lê Thị Hảo', '2002-03-27', 'Nữ', 'Chu Văn An,An Phú,Quận 2,Thành phố Hồ Chí Minh', '85 Chu Văn An,An Phú,Quận 2,Thành phố Hồ Chí Minh', '85 Chu Văn An,An Phú,Quận 2,Thành phố Hồ Chí Minh', 'Không', 'Lớp 12/12', 'Sinh viên', '02029102'),
('763940699', 'Hán Thị Hảo', '2002-09-17', 'Nữ', 'Chu Văn An,An Phú,Quận 2,Thành phố Hồ Chí Minh', '43 Chu Văn An,An Phú,Quận 2,Thành phố Hồ Chí Minh', '43 Chu Văn An,An Phú,Quận 2,Thành phố Hồ Chí Minh', 'Không', 'Lớp 12/12', 'Sinh viên', '02029102');

-- --------------------------------------------------------

--
-- Table structure for table `phuong`
--

CREATE TABLE `phuong` (
  `ma` varchar(6) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `maQuan` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phuong`
--

INSERT INTO `phuong` (`ma`, `ten`, `maQuan`) VALUES
('010101', 'Phường Phúc Xá', '0101'),
('010104', 'Phường Trúc Bạch', '0101'),
('010237', 'Phường Phúc Tân', '0102'),
('010240', 'Phường Đồng Xuân', '0102'),
('020134', 'Phường Bến Nghé', '0201'),
('020137', 'Phường Đa Kao', '0201'),
('020288', 'Phường Thảo Điền', '0202'),
('020291', 'Phường An Phú', '0202'),
('030101', 'Phường Đồng Quốc Bình', '0301'),
('030102', 'Phường Lạch Chay', '0301'),
('030201', 'Phường Đằng Lâm', '0302'),
('030202', 'Phường Trung Lực', '0302'),
('040101', 'Thị trấn Gôi', '0401'),
('040102', 'Xã Minh Thuận', '0402'),
('040201', 'Xã Hoành Sơn', '0402'),
('040202', 'Xã Bình Hòa', '0402'),
('120101', 'Xã Đông Cao', '1201'),
('120102', 'Xã Tân Hương', '1201'),
('120103', 'Xã Tân Phú', '1201'),
('120201', 'Phường Phan Đình Phùng', '1202'),
('120202', 'Phường Đội Cấn', '1202');

-- --------------------------------------------------------

--
-- Table structure for table `quan`
--

CREATE TABLE `quan` (
  `ma` varchar(4) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `maThanhPho` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quan`
--

INSERT INTO `quan` (`ma`, `ten`, `maThanhPho`) VALUES
('0101', 'Quận Ba Đình', '01'),
('0102', 'Quận Hoàn Kiếm', '01'),
('0201', 'Quận 1', '02'),
('0202', 'Quận 2', '02'),
('0301', 'Quận Ngô Quyền', '03'),
('0302', 'Quận Hải An', '03'),
('0401', 'Huyện Vụ Bản', '04'),
('0402', 'Huyện Giao Thủy', '04'),
('1201', 'Thị Xã Phổ Yên', '12'),
('1202', 'TP. Thái Nguyên', '12'),
('1203', 'Huyện Đồng Hỷ', '12'),
('1204', 'Huyện Đại Từ', '12');

-- --------------------------------------------------------

--
-- Table structure for table `thanhpho`
--

CREATE TABLE `thanhpho` (
  `ma` varchar(2) NOT NULL,
  `ten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhpho`
--

INSERT INTO `thanhpho` (`ma`, `ten`) VALUES
('01', 'Hà Nội'),
('02', 'Hồ Chí Minh'),
('03', 'Hải Phòng'),
('04', 'Nam Định'),
('05', 'Bắc Giang'),
('06', 'Hà Nam'),
('07', 'Đồng Nai'),
('08', 'Hòa Bình'),
('09', 'Bình Dương'),
('10', 'Đà Nẵng'),
('11', 'Tiền Giang'),
('12', 'Thái Nguyên');

-- --------------------------------------------------------

--
-- Table structure for table `thon`
--

CREATE TABLE `thon` (
  `ma` varchar(8) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `maPhuong` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thon`
--

INSERT INTO `thon` (`ma`, `ten`, `maPhuong`) VALUES
('01010101', 'Thôn An Xá', '010101'),
('01010102', 'Thôn Hồng Hà', '010101'),
('01010401', 'Thôn Ngũ Xã', '010104'),
('01010402', 'Thôn Cửa Bắc', '010104'),
('01023701', 'Thôn Bảo Linh', '010237'),
('01023702', 'Thôn Thanh Yên', '010237'),
('01024001', 'Thôn Hàng Khoai', '010240'),
('01024002', 'Thôn Thanh Hà', '010240'),
('02013401', 'Thôn Nguyễn Hệ', '020134'),
('02013402', 'Thôn Nguyễn Du', '020134'),
('02013701', 'Thôn Điện Biên Phủ', '020137'),
('02013702', 'Thôn Điện Cây Điệp', '020137'),
('02028801', 'Thôn Lê Văn Miến', '020288'),
('02028802', 'Thôn Đà Nẵng', '020288'),
('02029101', 'Thôn Liên Huyện', '020291'),
('02029102', 'Thôn Chu Văn An', '020291'),
('03010101', 'Thôn Nguyễn Bình', '030101'),
('03010102', 'Thôn Văn Cao', '030101'),
('03010201', 'Thôn Đình Đông', '030102'),
('03010202', 'Thôn Chu Văn An', '030102'),
('03020101', 'Thôn Tô Vũ', '030201'),
('03020102', 'Thôn Ngô Gia Tự', '030201'),
('03020201', 'Thôn Lê Hồng Phong', '030202'),
('03020202', 'Thôn Nguyễn Văn Linh', '030202'),
('04010101', 'Thôn Lạc Thiện', '040101'),
('04010102', 'Tổ dân phố 1', '040101'),
('04010201', 'Thôn Đình Đông', '040102'),
('04010202', 'Thôn Chu Văn An', '040102'),
('04020101', 'Thôn Tô Vũ', '040201'),
('04020102', 'Thôn Ngô Gia Tự', '040201'),
('04020201', 'Thôn Lê Hồng Phong', '040202'),
('04020202', 'Thôn Nguyễn Văn Linh', '040202'),
('12010101', 'Xóm Me', '120101'),
('12010102', 'Xóm Dộc', '120101'),
('12010103', 'Xóm Trà Thị', '120101'),
('12010201', 'Xóm Việt Hùng', '120102'),
('12010202', 'Xóm Việt Lâm', '120102'),
('12020101', 'Tổ 1', '120201'),
('12020102', 'Tổ 2', '120201');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `donVi` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT 0,
  `ngayMo` date DEFAULT NULL,
  `ngayDong` date DEFAULT NULL,
  `tienDo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`donVi`, `username`, `password`, `quyen`, `ngayMo`, `ngayDong`, `tienDo`) VALUES
('Hà Nội', '01', '123', 1, '2021-12-24', '2022-01-24', 'Chưa hoàn thành'),
('Quận Ba Đình', '0101', '123', 1, '2021-12-24', '2022-01-24', 'Chưa hoàn thành'),
('Phường Phúc Xá', '010101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn An Xá', '01010101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Hồng Hà', '01010102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Trúc Bạch', '010104', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Ngũ Xã', '01010401', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Cửa Bắc', '01010402', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Quận Hoàn Kiếm', '0102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Phúc Tân', '010237', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Bảo Linh', '01023701', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Thanh Yên', '01023702', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Đồng Xuân', '010240', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Hàng Khoai', '01024001', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Thanh Hà', '01024002', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Hồ Chí Minh', '02', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Quận 1', '0201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Bến Nghé', '020134', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Nguyễn Hệ', '02013401', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Nguyễn Du', '02013402', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Đa Kao', '020137', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Điện Biên Phủ', '02013701', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Điện Cây Điệp', '02013702', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Quận 2', '0202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Thảo Điền', '020288', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Lê Văn Miến', '02028801', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Đà Nẵng', '02028802', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường An Phú', '020291', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Liên Huyện', '02029101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Chu Văn An', '02029102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Hải Phòng', '03', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Quận Ngô Quyền', '0301', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Đồng Quốc Bình', '030101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Nguyễn Bình', '03010101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Văn Cao', '03010102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Lạch Chay', '030102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Đình Đông', '03010201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Chu Văn An', '03010202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Quận Hải An', '0302', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Đằng Lâm', '030201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Tô Vũ', '03020101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Ngô Gia Tự', '03020102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Trung Lực', '030202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Lê Hồng Phong', '03020201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Nguyễn Văn Linh', '03020202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Nam Định', '04', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Huyện Vụ Bản', '0401', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thị trấn Gôi', '040101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Lạc Thiện', '04010101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Tổ dân phố 1', '04010102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xã Minh Thuận', '040102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Đình Đông', '04010201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Chu Văn An', '04010202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Huyện Giao Thủy', '0402', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xã Hoành Sơn', '040201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Tô Vũ', '04020101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Ngô Gia Tự', '04020102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xã Bình Hòa', '040202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Lê Hồng Phong', '04020201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thôn Nguyễn Văn Linh', '04020202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('', '1', '123', 1, '2021-12-24', '2022-01-24', ''),
('Thái Nguyên', '12', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Thị Xã Phổ Yên', '1201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xã Đông Cao', '120101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xóm Me', '12010101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xóm Dộc', '12010102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xóm Trà Thị', '12010103', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xã Tân Hương', '120102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xóm Việt Hùng', '12010201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xóm Việt Lâm', '12010202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Xã Tân Phú', '120103', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('TP. Thái Nguyên', '1202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Phan Đình Phùng', '120201', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Tổ 1', '12020101', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Tổ 2', '12020102', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Phường Đội Cấn', '120202', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Huyện Đồng Hỷ', '1203', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('Huyện Đại Từ', '1204', '123', 1, '2021-12-24', '2022-01-24', 'Hoàn thành'),
('', '2', '123', 1, '2021-12-24', '2022-01-24', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`cccd`),
  ADD KEY `info-thon` (`maDiaChi`);

--
-- Indexes for table `phuong`
--
ALTER TABLE `phuong`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `p-q` (`maQuan`);

--
-- Indexes for table `quan`
--
ALTER TABLE `quan`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `q-tp` (`maThanhPho`);

--
-- Indexes for table `thanhpho`
--
ALTER TABLE `thanhpho`
  ADD PRIMARY KEY (`ma`);

--
-- Indexes for table `thon`
--
ALTER TABLE `thon`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `t-p` (`maPhuong`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
