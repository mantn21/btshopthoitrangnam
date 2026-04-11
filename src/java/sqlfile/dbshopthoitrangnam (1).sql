-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2026 at 03:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbshopthoitrangnam`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `image`, `descr`, `category`) VALUES
(2, 'Áo nỉ len', 300000, 'images/anh1.jpg', 'Được làm từ vải nỉ (cotton hoặc polyester) kết hợp với sợi len hoặc lớp lót giữ nhiệt. Bề mặt thường mềm, mịn, hơi xù nhẹ tạo cảm giác ấm áp.', 'new'),
(3, 'Quần bò', 150000, 'images/anh2.jpg', 'Quần bò đen nam thiết kế hiện đại, chất liệu denim co giãn nhẹ, form dáng ôm gọn tôn dáng. Dễ dàng phối với nhiều phong cách khác nhau, phù hợp đi học, đi làm và dạo phố.', 'hot'),
(4, 'Áo phông', 400000, 'images/anh1.jpg', 'Áo khoác bomber nam thiết kế hiện đại, form dáng gọn gàng với bo chun cổ tay và gấu áo. Chất liệu cao cấp giúp giữ ấm và chắn gió tốt, dễ dàng phối với nhiều phong cách từ năng động đến cá tính.', 'sale'),
(5, 'Quần jean xám', 500000, 'images/anh4.jpg', 'Quần jean đen nam thiết kế hiện đại, chất liệu denim co giãn nhẹ, form dáng ôm gọn tôn dáng. Dễ phối đồ, phù hợp đi học, đi làm và dạo phố.', 'hot'),
(6, 'Thắt lưng', 150000, 'images/anh5.jpg', 'Thắt lưng nam Torano thiết kế sang trọng, chất liệu da cao cấp bền đẹp, khóa kim loại chắc chắn. Phù hợp phối cùng quần jean hoặc quần tây, tạo phong cách lịch lãm và nam tính.', 'new'),
(7, 'Quần jean xanh', 400000, 'images/anh6.jpg', 'Quần jean xanh Torano thiết kế trẻ trung, chất liệu denim bền đẹp, co giãn nhẹ, form dáng ôm gọn tôn dáng. Dễ phối đồ, phù hợp đi học, đi làm và dạo phố.', 'sale'),
(8, 'Áo phao', 600000, 'images/anh7.jpg', 'Áo phao Torano thiết kế hiện đại, chất liệu chần bông 3 lớp giữ ấm hiệu quả, nhẹ và thoải mái khi mặc. Form dáng trẻ trung, phù hợp thời tiết lạnh và dễ phối đồ.', 'hot'),
(9, 'Áo polo', 300000, 'images/anh8.jpg', 'Áo polo thiết kế trẻ trung, form dáng ôm gọn tôn dáng, chất liệu thoáng mát và co giãn nhẹ. Phù hợp đi học, đi làm và dễ phối nhiều phong cách.', 'new'),
(10, 'Áo sơ mi', 250000, 'images/anh9.jpg', 'Áo sơ mi dài tay nam thiết kế lịch lãm, chất liệu thoáng mát, ít nhăn, form dáng chuẩn tôn dáng. Phù hợp đi học, đi làm và các dịp trang trọng, dễ dàng phối với nhiều phong cách.', 'sale'),
(11, 'Áo khoác gió', 300000, 'images/anh10.jpg', 'Áo khoác gió nam thiết kế năng động, chất liệu nhẹ, chống gió và chống nước nhẹ, giúp giữ ấm hiệu quả. Form dáng gọn gàng, dễ phối đồ, phù hợp đi học, đi làm và hoạt động ngoài trời.', 'hot'),
(12, 'Áo polo vàng', 300000, 'images/anh11.jpg', 'Áo polo vàng nam thiết kế trẻ trung, màu sắc nổi bật, chất liệu thoáng mát co giãn nhẹ, form dáng ôm gọn tôn dáng. Phù hợp đi học, đi làm và dạo phố, dễ phối nhiều phong cách.', 'new'),
(13, 'Áo polo kẻ sọc', 400000, 'images/anh12.jpg', 'Áo polo nam họa tiết sọc thời trang, kiểu dáng gọn gàng, chất liệu co giãn linh hoạt. Dễ dàng phối cùng quần jean hoặc kaki.', 'sale'),
(14, 'Áo polo trắng', 500000, 'images/anh13.jpg', 'Áo polo nam hiện đại với phong cách casual trẻ trung, chất vải thoáng khí, form ôm vừa vặn. Tạo điểm nhấn nổi bật cho trang phục hàng ngày.', 'hot'),
(15, 'Quần jeans', 200000, 'images/anh14.jpg', 'Quần jeans nam thời trang, form dáng vừa vặn, chất liệu co giãn linh hoạt. Phù hợp nhiều hoàn cảnh từ đi học đến dạo phố.', 'new'),
(16, 'Áo phao nâu', 700000, 'images/anh15.jpg', 'Áo khoác nâu nam thiết kế đơn giản, gam màu ấm dễ phối đồ, chất liệu giữ ấm tốt. Phù hợp mặc trong thời tiết se lạnh.', 'sale'),
(17, 'Quần jeans đen', 350000, 'images/anh16.jpg', 'Quần jeans đen nam form chuẩn, chất liệu mềm mại, co giãn linh hoạt giúp tôn dáng và tạo sự thoải mái khi vận động.', 'hot'),
(18, 'Áo polo dài tay', 430000, 'images/anh17.jpg', 'Áo polo dài tay thiết kế đơn giản nhưng tinh tế, mang lại vẻ ngoài lịch lãm và năng động. Phù hợp mặc hằng ngày.', 'new'),
(19, 'Áo phao xám', 570000, 'images/anh18.jpg', 'Áo khoác phao nam thiết kế hiện đại, form dáng gọn gàng giúp tôn dáng và dễ phối đồ. Chất liệu dày dặn, giữ ấm tốt trong thời tiết lạnh, bề mặt chống gió nhẹ mang lại cảm giác thoải mái khi mặc. Phù hợp sử dụng hằng ngày hoặc đi chơi, dễ dàng kết hợp cùng nhiều phong cách khác nhau.', 'sale'),
(20, 'Quần jeans', 450000, 'images/anh19.jpg', 'Quần jean xanh nam với tông màu trẻ trung, form dáng chuẩn giúp tôn lên vẻ ngoài năng động và nam tính. Chất vải denim bền đẹp, co giãn nhẹ tạo cảm giác thoải mái khi vận động. Dễ phối cùng áo thun, sơ mi hay áo khoác, phù hợp cho nhiều hoàn cảnh từ đi học đến đi chơi.', 'hot'),
(21, 'Quần jeans rách', 340000, 'images/anh20.jpg', 'Quần jeans rách nam mang phong cách cá tính, nổi bật với các chi tiết mài rách đầy ấn tượng. Form dáng trẻ trung, ôm vừa phải giúp tôn dáng và tạo vẻ ngoài năng động. Chất liệu denim chắc chắn, mặc thoải mái, dễ phối cùng áo thun hoặc áo khoác để tạo nên outfit đậm chất streetwear.', 'new'),
(22, 'Áo vest', 600000, 'images/anh21.jpg', 'Áo vest nam kiểu dáng lịch lãm, đường may tinh tế tạo form đứng chuẩn chỉnh. Thiết kế tối giản nhưng sang trọng, dễ kết hợp cùng sơ mi hoặc quần tây cho vẻ ngoài chỉn chu. Phù hợp cho môi trường công sở, sự kiện hoặc những dịp cần phong cách chuyên nghiệp.', 'sale'),
(23, 'Áo len', 240000, 'images/anh23.jpg', 'Áo len nam thiết kế ấm áp với chất liệu mềm mại, mang lại cảm giác dễ chịu khi mặc. Form dáng vừa vặn, giữ nhiệt tốt nhưng vẫn đảm bảo sự thoáng nhẹ. Phù hợp mặc trong những ngày se lạnh, dễ phối cùng quần jeans hoặc quần tây để tạo phong cách đơn giản mà tinh tế.', 'hot'),
(24, 'Áo gió', 530000, 'images/anh24.jpg', 'Áo gió nam thiết kế năng động, chất liệu nhẹ giúp cản gió hiệu quả và tạo cảm giác thoải mái khi di chuyển. Form dáng trẻ trung, dễ mặc, phù hợp cho các hoạt động ngoài trời hoặc sử dụng hằng ngày. Dễ dàng phối cùng nhiều loại trang phục, mang lại phong cách khỏe khoắn và hiện đại.', 'new'),
(25, 'Quần jeans bó', 430000, 'images/anh25.jpg', 'Quần jeans bó nam thiết kế ôm gọn theo dáng chân, giúp tôn lên vẻ ngoài gọn gàng và hiện đại. Chất liệu denim co giãn tốt, tạo cảm giác thoải mái khi di chuyển. Phù hợp phối cùng áo thun, áo sơ mi hoặc áo khoác để tạo phong cách trẻ trung và linh hoạt.', 'sale'),
(26, 'Quần vải', 740000, 'images/anh26.jpg', 'Quần vải dài nam thiết kế thanh lịch, form đứng gọn gàng tạo vẻ ngoài chỉn chu và trưởng thành. Chất liệu mềm nhẹ, thoáng mát giúp mặc thoải mái cả ngày. Dễ phối cùng áo sơ mi, áo polo hoặc áo thun, phù hợp đi làm, đi học hay dạo phố.', 'hot'),
(27, 'Quần áo bộ', 340000, 'images/anh27.jpg', 'Bộ quần áo nam thiết kế đồng bộ, mang lại vẻ ngoài gọn gàng và thời trang. Chất liệu thoáng mát, mặc dễ chịu trong nhiều hoạt động hằng ngày. Form dáng trẻ trung, phù hợp mặc ở nhà, đi chơi hoặc vận động nhẹ, tiện lợi mà vẫn đảm bảo phong cách.', 'new'),
(28, 'Quần đùi', 510000, 'images/anh28.jpg', 'Quần đùi nam thiết kế gọn nhẹ, mang lại cảm giác thoải mái và thoáng mát khi mặc. Chất liệu mềm mại, thấm hút tốt, phù hợp cho những ngày thời tiết nóng hoặc hoạt động thường ngày. Dễ phối cùng áo thun, tạo phong cách đơn giản nhưng năng động.', 'sale'),
(29, 'Áo phông', 300000, 'images/anh29.jpg', 'Áo phông nam kiểu dáng basic, dễ mặc với form thoải mái phù hợp nhiều dáng người. Chất liệu mềm mịn, thoáng khí giúp luôn dễ chịu trong suốt ngày dài. Thiết kế đơn giản nhưng trẻ trung, linh hoạt phối cùng nhiều trang phục cho phong cách năng động.', 'hot'),
(30, 'Áo sơ mi đen', 200000, 'images/anh30.jpg', 'Áo sơ mi đen nam mang sắc màu mạnh mẽ, tạo điểm nhấn lịch lãm và cuốn hút. Thiết kế gọn gàng với đường cắt tinh tế giúp tôn dáng người mặc. Chất liệu nhẹ, ít nhăn, phù hợp diện trong môi trường công sở hoặc các buổi gặp gỡ cần sự chỉn chu.', 'hot');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
