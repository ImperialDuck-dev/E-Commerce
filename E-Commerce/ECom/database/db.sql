
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `montemayor car dealership`
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
  `item_price` decimal (15,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_image_secondary` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `cars_secondary` (
 `item_id` int(11) NOT NULL,
 `item_brand` varchar(200) NOT NULL,
 `item_name` varchar(255) NOT NULL,
 `item_price` decimal (15,2) NOT NULL,
 `item_image` varchar(255) NOT NULL,
 `item_image_secondary` varchar(255) NOT NULL,
 `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `product`
--

CREATE TABLE `cars_products` (
 `item_id` int(11) NOT NULL,
 `item_brand` varchar(200) NOT NULL,
 `item_name` varchar(255) NOT NULL,
 `item_price` decimal (15,2) NOT NULL,
 `item_image` varchar(255) NOT NULL,

 `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





INSERT INTO `cars` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`,`item_image_secondary`, `item_register`) VALUES
(1, 'Toyota', 'Corolla Cross GT-S HEV', 1774000.00, './assets/cars/CorollaCross.png', './assets/cars/1.png','2022-06-15 13:05:30'), -- NOW()
(2, 'Toyota', 'Fortuner 2.8 4x4 LTD AT', 2450000.00, './assets/cars/FORTUNER.png','./assets/cars/2.png' , '2022-06-15 13:05:30'),
(3, 'Toyota', 'FJ Cruiser 4.0 V6', 2218000.00, './assets/cars/FJCruiser.jpg','./assets/cars/3.png' , '2022-06-15 13:05:30'),
(4, 'Toyota', 'Fortuner GR-S 4x4 2.8 AT', 2509000.00, './assets/cars/FORTUNERGR5.png','./assets/cars/4.png' , '2022-06-15 13:05:30'),
(5, 'Toyota', 'Land Cruiser Prado 2.8L Diesel A/T', 4250000.00, './assets/cars/LANDCRUISERPRADO.jpg','./assets/cars/5.png' , '2022-06-15 13:05:30'),
(6, 'Toyota', 'Land Cruiser ZX', 5687000.00, './assets/cars/LANDCRUISER.jpg','./assets/cars/6.png' , '2022-06-15 13:05:30'),
(7, 'Toyota', 'Raize 1.0 Turbo CVT', 1031000.00, './assets/cars/RAIZE.png','./assets/cars/7.png' , '2022-06-15 13:05:30'),
(8, 'Toyota', 'Rav4 HEV 2.5L LTD CVT', 2500000.00, './assets/cars/RAV4HEV.png','./assets/cars/8.png' , '2022-06-15 13:05:30'),
(9, 'Toyota', 'Rush 1.5 E A/T', 1052000.00, './assets/cars/RUSH.jpg','./assets/cars/9.png' , '2022-06-15 13:05:30'),
(10,'Toyota', 'Veloz 1.5V CVT ',1240000.00, './assets/cars/VELOZ.png','./assets/cars/10.png' , '2022-06-15 13:05:30');





INSERT INTO `cars_secondary` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`,`item_image_secondary`, `item_register`) VALUES
(11, 'MPV','Avanza 1.5 G CVT',1039000.00,'./assets/cars/11.png','./assets/cars/11Copy.png','2022-06-15 13:05:30'),
(12, 'MPV','Innova 2.8L V DSL A/T',1774000.00,'./assets/cars/12.png','./assets/cars/12Copy.png','2022-06-15 13:05:30'),
(13, 'VANS','Commuter Deluxe 2.8L Diesel',1679000.00,'./assets/cars/13.png','./assets/cars/13Copy.png','2022-06-15 13:05:30'),
(14, 'VANS','Hiace Cargo',1121000.00,'./assets/cars/14.png','./assets/cars/14Copy.png','2022-06-15 13:05:30'),
(15, 'VANS','Hilux Fleet 2.4 J 4x4 M/T',1148000.00,'./assets/cars/15.png','./assets/cars/15Copy.png','2022-06-15 13:05:30'),
(16, 'HATCHBACKS','Corolla Altis 1.8V Hybrid CVT',1610000.00,'./assets/cars/16.png','./assets/cars/16Copy.png','2022-06-15 13:05:30'),
(17, 'HATCHBACKS','Vios 1.5 G CVT',980000.00,'./assets/cars/17.png','./assets/cars/17Copy.png','2022-06-15 13:05:30'),
(18, 'HATCHBACKS','Wigo 1.0 TRD S AT',700000.00,'./assets/cars/18.png','./assets/cars/18Copy.png','2022-06-15 13:05:30');


INSERT INTO `cars_products` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
 (1, 'Toyota', 'Corolla Cross GT-S HEV', 1774000.00, './assets/cars/CorollaCross.png','2022-06-15 13:05:30'), -- NOW()
 (2, 'Toyota', 'Fortuner 2.8 4x4 LTD AT', 2450000.00, './assets/cars/FORTUNER.png', '2022-06-15 13:05:30'),
 (3, 'Toyota', 'FJ Cruiser 4.0 V6', 2218000.00, './assets/cars/FJCruiser.jpg', '2022-06-15 13:05:30'),
 (4, 'Toyota', 'Fortuner GR-S 4x4 2.8 AT', 2509000.00, './assets/cars/FORTUNERGR5.png', '2022-06-15 13:05:30'),
 (5, 'Toyota', 'Land Cruiser Prado 2.8L Diesel A/T', 4250000.00, './assets/cars/LANDCRUISERPRADO.jpg','2022-06-15 13:05:30'),
 (6, 'Toyota', 'Land Cruiser ZX', 5687000.00, './assets/cars/LANDCRUISER.jpg','2022-06-15 13:05:30'),
 (7, 'Toyota', 'Raize 1.0 Turbo CVT', 1031000.00, './assets/cars/RAIZE.png','2022-06-15 13:05:30'),
 (8, 'Toyota', 'Rav4 HEV 2.5L LTD CVT', 2500000.00, './assets/cars/RAV4HEV.png','2022-06-15 13:05:30'),
 (9, 'Toyota', 'Rush 1.5 E A/T', 1052000.00, './assets/cars/RUSH.jpg','2022-06-15 13:05:30'),
 (10,'Toyota', 'Veloz 1.5V CVT ',1240000.00, './assets/cars/veloz.png','2022-06-15 13:05:30'),
 (11,'Toyota','Avanza 1.5 G CVT',1039000.00,'./assets/cars/avanza.jpg','2022-06-15 13:05:30'),
 (12,'Toyota','Innova 2.8L V DSL A/T',1774000.00,'./assets/cars/innova.jpg','2022-06-15 13:05:30'),
 (13,'Toyota','Commuter Deluxe 2.8L Diesel',1679000.00,'./assets/cars/commuter.jpg','2022-06-15 13:05:30'),
 (14,'Toyota','Hiace Cargo',1121000.00,'./assets/cars/hiace.jpg','2022-06-15 13:05:30'),
 (15,'Toyota','Hilux Fleet 2.4 J 4x4 M/T',1148000.00,'./assets/cars/hiluxfleet.jpg','2022-06-15 13:05:30'),
 (16,'Toyota','Corolla Altis 1.8V Hybrid CVT',1610000.00,'./assets/cars/corollaaltis.png','2022-06-15 13:05:30'),
 (17,'Toyota','Vios 1.5 G CVT',980000.00,'./assets/cars/vios.jpg','2022-06-15 13:05:30'),
 (18,'Toyota','Wigo 1.0 TRD S AT',700000.00,'./assets/cars/wigo.jpg','2022-06-15 13:05:30');

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
