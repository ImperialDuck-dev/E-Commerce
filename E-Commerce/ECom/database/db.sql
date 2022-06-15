
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `cars` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double (15,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `cars` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Toyota', 'Corolla Cross GT-S HEV', 1.774, './assets/cars/CorollaCross.png', '2022-06-15 13:05:30'), -- NOW()
(2, 'Toyota', 'FJ Cruiser 4.0 V6', 2.218, './assets/cars/FJCruiser.png', '2022-06-15 13:05:30'),
(3, 'Toyota', 'Fortuner GR-S 4x4 2.8 AT', 2.509, './assets/cars/FORTUNERGR5.png', '2022-06-15 13:05:30'),
(4, 'Toyota', 'Fortuner 2.8 4x4 LTD AT', 2.450, './assets/cars/FORTUNER.png', '2022-06-15 13:05:30'),
(5, 'Toyota', 'Land Cruiser Prado 2.8L Diesel A/T', 4.250, './assets/cars/LANDCRUISERPRADO.png', '2022-06-15 13:05:30'),
(6, 'Toyota', 'Land Cruiser ZX', 5.687, './assets/cars/LANDCRUISER.png', '2022-06-15 13:05:30'),
(7, 'Toyota', 'Raize 1.0 Turbo CVT', 1.031, './assets/cars/RAIZE.png', '2022-06-15 13:05:30'),
(8, 'Toyota', 'RAV4 HEV 2.5L LTD CVT', 2.500, './assets/cars/RAV4HEV.png', '2022-06-15 13:05:30'),
(9, 'Toyota', 'Rush 1.5 E A/T', 1.052, './assets/cars/RUSH.png', '2022-06-15 13:05:30'),
(10, 'Toyota', 'Veloz 1.5V CVT ',1.240, './assets/cars/VELOZ.png', '2022-06-15 13:05:30');
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Hans', 'Bagunu', '2022-06-15 13:05:30'),
(2, 'Finn', 'Muyco', '2022-06-15 13:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `cars`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
