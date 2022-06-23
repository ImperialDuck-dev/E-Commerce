-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 09:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` decimal(15,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_image_secondary` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_image_secondary`, `item_register`, `status`) VALUES
(1, 'Toyota', 'Corolla Cross GT-S HEV', '1774000.00', './assets/cars/CorollaCross.png', '455567064_hans.jpg', '2022-06-15 13:05:30', 0),
(2, 'Toyota', 'Fortuner 2.8 4x4 LTD AT', '2450000.00', './assets/cars/FORTUNER.png', './assets/cars/2.png', '2022-06-15 13:05:30', 0),
(3, 'Toyota', 'FJ Cruiser 4.0 V6', '2218000.00', './assets/cars/FJCruiser.jpg', './assets/cars/3.png', '2022-06-15 13:05:30', 0),
(4, 'Toyota', 'Fortuner GR-S 4x4 2.8 AT', '2509000.00', './assets/cars/FORTUNERGR5.png', './assets/cars/4.png', '2022-06-15 13:05:30', 0),
(5, 'Toyota', 'Land Cruiser Prado 2.8L Diesel A/T', '4250000.00', './assets/cars/LANDCRUISERPRADO.jpg', './assets/cars/5.png', '2022-06-15 13:05:30', 0),
(6, 'Toyota', 'Land Cruiser ZX', '5687000.00', './assets/cars/LANDCRUISER.jpg', './assets/cars/6.png', '2022-06-15 13:05:30', 0),
(7, 'Toyota', 'Raize 1.0 Turbo CVT', '1031000.00', './assets/cars/RAIZE.png', './assets/cars/7.png', '2022-06-15 13:05:30', 0),
(8, 'Toyota', 'Rav4 HEV 2.5L LTD CVT', '2500000.00', './assets/cars/RAV4HEV.png', './assets/cars/8.png', '2022-06-15 13:05:30', 0),
(9, 'Toyota', 'Rush 1.5 E A/T', '1052000.00', './assets/cars/RUSH.jpg', './assets/cars/9.png', '2022-06-15 13:05:30', 0),
(10, 'Toyota', 'Veloz 1.5V CVT ', '1240000.00', './assets/cars/VELOZ.png', './assets/cars/10.png', '2022-06-15 13:05:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cars_products`
--

CREATE TABLE `cars_products` (
  `item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `mr_price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `item_price` decimal(15,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL,
  `starting_description` mediumtext DEFAULT NULL,
  `long_description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars_products`
--

INSERT INTO `cars_products` (`item_id`, `category_id`, `item_brand`, `item_name`, `mr_price`, `qty`, `item_price`, `item_image`, `item_register`, `starting_description`, `long_description`, `status`) VALUES
(1, 0, 'Toyota', 'Corolla', 2000000, 1, '1774000.00', '852417681_CorollaCross.png', '2022-06-15 13:05:30', 'REINVENTED STUNNING LOOK\r\nToyotas stunner, the Corolla Cross, is set to make a lasting impression with its sleek exterior and slants in all the right places. COMFORTABLE STEERING, AND MORE\r\nIt is all about control: the Corolla Cross is equipped with a large multi-information display so you can view everything about driving your hybrid.', 'Dimension and Weight\r\nOverall Dimensions (mm):4,455 x 1,825 x 1,620\r\nWheelbase (mm)	-\r\nSeating Capacity	-\r\nEngine\r\nEngine Type	16-Valve DOHC, 4-Cylinder, In-line,\r\nEngine Displacement (cc): 1,798\r\nMaximum Output (ps/rpm): 98 / 5,200\r\nMaximum Torque (Nm/Rpm): 3,600\r\nFuel Capacity (L)	-\r\nTransmission\r\nPower Transmission	-\r\nFront Brake/ Rear Brake	Ventilated Discs/Solid Discs\r\nTires: 225/50 R18\r\nWheels (size): 18\" Alloy', 1),
(2, 1, 'Toyota', 'Fortuner 2.8 4x4 LTD AT', 2600000, 1, '2450000.00', './assets/cars/FORTUNER.png', '2022-06-15 13:05:30', 'FORTUNE FAVORS THE BRAVE\r\nThe time is now to take on new journeys and brave the path less taken in the new Toyota Fortuner. PERFORMANCE\r\nPOWER THROUGH ROUGH ROADS AND BEYOND With power that runs deep in the new Fortuners more powerful and more fuel-efficient engine, no journey is a road too rough.', 'Dimension and Weight\r\nOverall Dimensions (mm):4,795 x 1,855 x 1,835\r\nWheelbase (mm): 2,745\r\nSeating Capacity: 7\r\nEngine\r\nEngine Type	4-Cylinder, In-line, 16-Valve DOHC Variable Nozzle Turbo with Air-cooled Intercooler\r\nEngine Displacement (cc): 2,755\r\nMaximum Output (ps/rpm): 204 / 3,400\r\nMaximum Torque (Nm/Rpm): 500 / 1,600-2,800\r\nFuel Capacity (L): 80\r\nTransmission\r\nPower Transmission: 6-speed AT Front Brake/ Rear Brake Ventilated Discs\r\nTires: 265/60 R18 \r\nWheels (size): 18” Alloy Wheel with Machine Cut Finish', 1),
(3, 1, 'Toyota', 'FJ Cruiser 4.0 V6', 2500000, 1, '2218000.00', './assets/cars/FJCruiser.jpg', '2022-06-15 13:05:30', 'Make your adventures\r\nextraordinary\r\nEXTERIOR\r\nDESIGNED FOR ROUGH TERRAIN\r\nBuilt on a truck-based, ladder-frame chassis, the FJ Cruiser is designed especially for off-road travels.\r\n\r\n\r\nINTERIOR\r\nEXTREME DURABILITY\r\nThe FJ Cruiser, is just as tough on the inside as it is on the outside.\r\n\r\n\r\nPERFORMANCE\r\nA POWERFUL AND EFFICIENT DRIVE\r\nThe FJ Cruiser’s V6 engine provides 200kW of power and 380Nm of torque for an impressive on and off road driving experience.', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,670 x 1,905 x 1,830\r\nWheelbase (mm): 2,690\r\nSeating Capacity: 5\r\nEngine\r\nEngine Type	6-cylinders, V-Type, 24-valve DOHC with dual VVT-i\r\nEngine Displacement (cc): 3,956\r\nMaximum Output (ps/rpm): 268 / 5,600\r\nMaximum Torque (Nm/Rpm): 380 / 4,400\r\nFuel Capacity (L)	-\r\nTransmission\r\nPower Transmission: 5-Speed Automatic\r\nFront Brake/ Rear Brake	16\" Disk / 15\" Disk\r\nTires: 265 / 70 R17\r\nWheels (size): 17 x 7.5J', 1),
(4, 1, 'Toyota', 'Fortuner GR-S 4x4 2.8 AT', 2650000, 1, '2509000.00', './assets/cars/FORTUNERGR5.png', '2022-06-15 13:05:30', 'Bolder look,\r\neven bolder drive\r\nExterior\r\nHARNESS THE POWER TO LEAD THE RACE\r\nDriven by the passion to push the limits for better, Gazoo Racing has the fueled determination to create exhilarating driving experiences for everyone.\r\n\r\n\r\nInterior\r\nSTRIKING DESIGN\r\nThe dynamics of its all-round sportier design makes the vehicle stand out along with the suede and leather seats, complemented by the smoke silver metallic and matte carbon trims of the instrument panel and center cluster.\r\n\r\n\r\nPerformance\r\nRACE-LIKE DRIVING\r\nEngineered with a strong 2.8L engine and a 4x4 drivetrain to put you at the top of your game. The upgraded suspension along with a cutting-edge design accentuates a classy and comfortable ride.', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,795 x 1,855 x 1,835\r\nWheelbase (mm): 2,745\r\nSeating Capacity: 7\r\nEngine\r\nEngine Type	4-Cylinder, In-line, 16-Valve DOHC Variable Nozzle Turbo with Air-cooled Intercooler\r\nEngine Displacement (cc): 2,755\r\nMaximum Output (ps/rpm): 204 / 3,400\r\nMaximum Torque (Nm/Rpm): 500 / 1,600 - 2,800\r\nFuel Capacity (L): 80\r\nTransmission\r\nPower Transmission: 6 Speed AT\r\nFront Brake/ Rear Brake	Ventilated Discs + GR Brake Calipers\r\nTires: 265/60\r\nWheels (size): R18 Alloy with Machine Cut Finish (GR Design)', 1),
(5, 1, 'Toyota', 'Land Cruiser Prado 2.8L Diesel A/T', 4500000, 1, '4250000.00', './assets/cars/LANDCRUISERPRADO.jpg', '2022-06-15 13:05:30', 'Legendary Robustness.\r\nRugged Elegance.\r\nEXTERIOR\r\nSTYLE PLUS POWER\r\nThe Land Cruiser Prado is made even smarter and tougher without compromising style, class, and comfort.\r\n\r\n\r\nINTERIOR\r\nCLASS AND CONTROL\r\nA sleek interior design gives you access to everything you need to control the Toyota Prado.\r\n\r\nPERFORMANCE\r\nTURBOCHARGED, MAXIMUM PERFORMANCE\r\nPowered by engine variants that run on gas or diesel, the Land Cruiser Prado is highly performance-minded.', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,840 x 1,885 x 1,890\r\nWheelbase (mm): 2,790\r\nSeating Capacity: 7\r\nEngine\r\nEngine Type	4-Cylinder Inline 16 Valve DOHC Turbocharged Diesel Engine With Intercooler\r\nEngine Displacement (cc): 2,755\r\nMaximum Output (ps/rpm): 204 / 3400\r\nMaximum Torque (Nm/Rpm): 500 / 2800\r\nFuel Capacity (L): 87\r\nTransmission\r\nPower Transmission: 6-Speed Automatic with Sequential Shift\r\nFront Brake/ Rear Brake	Ventilated Discs\r\nTires: 265 / 55\r\nWheels (size): R19 7.5J Alloy', 1),
(6, 1, 'Toyota', 'Land Cruiser ZX', 5800000, 1, '5687000.00', './assets/cars/LANDCRUISER.jpg', '2022-06-15 13:05:30', 'No less than\r\nlegendary\r\nEXTERIOR\r\nNO LESS THAN POWERFUL\r\nThe ultimate expression of luxury and capability, the Land Cruiser is ready to make an impression wherever you go. Sleeker and sturdier than ever, it is the perfect blend of strength and sophistication.\r\n\r\n\r\nPERFORMANCE\r\nNO LESS THAN EXCELLENT\r\nWith power comes confidence. Promising to deliver remarkable performance and efficiency, the Land Cruiser is powered by a 3.3-liter twin-turbo V6 diesel to let you conquer both on-road and the toughest off-road environments. Every aspect of the Land Cruiser is designed, engineered, and built with quality in mind. This is the most powerful and capable Land Cruiser ever made.', 'Dimension and Weight\r\nOverall Dimensions (mm): 5,130 x 1,980 x 1,945\r\nWheelbase (mm): 2,850\r\nSeating Capacity: 7\r\nEngine\r\nEngine Type	V6 Direct Injection, 24-Valve DOHC, Twin Turbo Engine\r\nEngine Displacement (cc): 3,346\r\nMaximum Output (ps/rpm): 306 / 4,000\r\nMaximum Torque (Nm/Rpm): 700 / 1600-2600\r\nFuel Capacity (L)	-\r\nTransmission\r\nPower Transmission: 10-Speed A/T\r\nFront Brake/ Rear Brake	Ventilated Discs/Ventilated Discs\r\nTires: 265\r\nWheels (size): 55 R20 Alloy', 1),
(7, 1, 'Toyota', 'Raize 1.0 Turbo CVT', 1200000, 1, '1031000.00', './assets/cars/RAIZE.png', '2022-06-15 13:05:30', 'Raise the\r\nGame\r\nExterior\r\nSTEER YOUR STYLE\r\nThe bold and colorful architecture coupled with sleek LED headlights are set to turn heads at every corner. Are you ready to raise your vibe?\r\n\r\n\r\nInterior\r\nMAKE ROOM FOR MORE FUN\r\nThe amazingly spacious cabin of the Raize provides comfort on the road, while the ample luggage space complements the needs for every active lifestyle.\r\n\r\n\r\nPerformance\r\nZIP THROUGH THE CITY EFFORTLESSLY\r\nThe powerful CVT engine paired with a new platform enables smooth maneuvering and punchy response to ensure every ride is a thrilling one.', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,030 x 1,710 x 1,605\r\nWheelbase (mm)	-\r\nSeating Capacity: 5\r\nEngine\r\nEngine Type	Turbo Charged, 3 cylinders, Inline. 12-valve DOHC with VVT-i\r\nEngine Displacement (cc): 998\r\nMaximum Output (ps/rpm): 98 / 6,000\r\nMaximum Torque (Nm/Rpm): 140 / 2,400 - 4000\r\nFuel Capacity (L): 36\r\nTransmission\r\nPower Transmission: CVT Front Brake/ Rear Brake	Ventilated Disc / Leading-Trailing Drum\r\nTires: 205/60 R17\r\nWheels (size): 17\" Alloy', 1),
(8, 1, 'Toyota', 'Rav4 HEV 2.5L LTD CVT', 2700000, 1, '2500000.00', './assets/cars/RAV4HEV.png', '2022-06-15 13:05:30', 'EVOLVE\r\nTHE RIDE\r\nEXTERIOR\r\nEVOLVE THE RIDE\r\nThe original crossover has now evolved into a sustainable ride.\r\n\r\nEVOLVE THE RIDE\r\nPERFORMANCE\r\nREVOLUTIONIZED PERFORMANCE\r\nEngineered with the hybrid technology, to turn casual drives into great adventures.\r\n\r\n\r\nINTERIOR\r\nGLEAMING DESIGN\r\nStand out of the urban ordinary and ride a stylish crossover with premium interiors, ensuring class and comfort in every drive.\r\n\r\nSAFETY\r\nPROGRESSIVE SAFETY\r\nDesigned with top-notch safety technology, for added ease, comfort, and security in driving.', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,600 x 1,855 x 1,685\r\nWheelbase (mm): 2,690\r\nSeating Capacity: 5\r\nEngine\r\nEngine Type	16-Valve DOHC, 4-Cylinder, In-line, VVT-iE (Intake), VVT-I (Exhaust)\r\nEngine Displacement (cc): 2,487\r\nMaximum Output (ps/rpm): 178 / 5700\r\nMaximum Torque (Nm/Rpm): 221 / 3600 - 5200\r\nFuel Capacity (L): 55\r\nTransmission\r\nPower Transmission: CVT Front Brake/ Rear Brake	Ventilated Discs / Solid Discs\r\nTires: 225/60 R18\r\nWheels (size): 18\" Alloy Wheels', 1),
(9, 1, 'Toyota', 'Rush 1.5 E A/T', 1250000, 1, '1052000.00', './assets/cars/RUSH.jpg', '2022-06-15 13:05:30', 'Break away\r\nfrom the everyday\r\nEXTERIOR\r\nRUSH INTO ACTION\r\nRush into action with a ride for excitement, inside and out.\r\n\r\n\r\nINTERIOR\r\nMORE SPACE, MORE FLEXIBILITY\r\nA generous interior space for the practical ones.\r\n\r\n\r\nPERFORMANCE\r\nTHE LATEST IN PERFORMANCE\r\nChannels fuel efficiently for maximum power and performance.', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,435 x 1,695 x 1,705\r\nWheelbase (mm): 2,685\r\nSeating Capacity: 7\r\nEngine\r\nEngine Type	4 Cylinder, In-line, 16 Valve DOHC, Chain Drive with Dual VVT-i\r\nEngine Displacement (cc): 1,496\r\nMaximum Output (ps/rpm): 102 / 6000\r\nMaximum Torque (Nm/Rpm): 134 / 4200\r\nFuel Capacity (L): 45\r\nTransmission\r\nPower Transmission: 4-Speed A/T Front Brake/ Rear Brake	Ventilated Discs / Leading-Traling Drums\r\nTires: 215 / 65 R16\r\nWheels (size): 16 x 6-1/2J Alloy', 1),
(10, 1, 'Toyota', 'Veloz 1.5V CVT ', 1240000, 1, '1450000.00', './assets/cars/veloz.png', '2022-06-15 13:05:30', 'Discover the\r\nExtraordinary\r\nEXTERIOR\r\nDISCOVER STYLE\r\nA totally new look announces the arrival of the Toyota Veloz. From its striking body lines to its eye catching grill and headlights, you know it is an unforgettable experience.\r\nINTERIOR\r\nDISCOVER MODERN COMFORT\r\nWhen this level of automotive technology is applied specifically for the driver and his passengers, the ride will be quite a journey. The aesthetics, combined with the ergonomics, give you a mobile adventure you will definitely treasure.\r\n\r\nCONVENIENCE AND TECHNOLOGY\r\nDISCOVER TECHNOLOGY\r\nThe Veloz driving experience is a virtual treat of illuminated information, right at your fingertips. For the one in control, everything is dynamically lit and amazingly responsive.', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,475 x 1,775 x 1,770\r\nWheelbase (mm)	-\r\nSeating Capacity: 7\r\nEngine\r\nEngine Type	4-Cylinder, In-line, 16-Valve DOHC with Dual VVT-i\r\nEngine Displacement (cc): 1,496\r\nMaximum Output (ps/rpm): 106 / 6000\r\nMaximum Torque (Nm/Rpm): 138 / 4200\r\nFuel Capacity (L): 43\r\nTransmission\r\nPower Transmission: CVT Front Brake/ Rear Brake	Ventilated Discs / Discs\r\nTires: 205\r\nWheels (size): 17” Alloy', 1),
(11, 1, 'Toyota', 'Avanza 1.5 G CVT', 1100000, 1, '1039000.00', './assets/cars/avanza.jpg', '2022-06-15 13:05:30', 'FIT FOR\r\nEVERY FAM\r\nEXTERIOR\r\nFIT FOR ANY STYLE\r\nThe sleek look of the all-new Toyota Avanza perfectly matches your familys style.\r\n\r\n\r\nINTERIOR\r\nFIT FOR ANY SIZE\r\nBring more of what your family needs with the all-new Toyota Avanza. This 7-seater car is designed to give the whole fam comfort on the road.\r\n\r\n\r\nPERFORMANCE\r\nFIT FOR ANY TRIP\r\nAvanza’s CVT transmission and All-new front-wheel drive platform ensures smooth trips, so you can create more family memories on the go.', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,395 x 1,730 x 1,700\r\nWheelbase (mm): 2,750\r\nSeating Capacity: 7\r\nEngine\r\nEngine Type	4-Cylinder, In-line, 16-Valve DOHC with Dual VVT-i\r\nEngine Displacement (cc): 1,496\r\nMaximum Output (ps/rpm): 106 / 6000\r\nMaximum Torque (Nm/Rpm): 138 / 4200\r\nFuel Capacity (L): 43\r\nTransmission\r\nPower Transmission: CVT Front Brake/ Rear Brake	Disc / Drum\r\nTires: 195/60 R16 Alloy\r\nWheels (size): 16\" Alloy', 1),
(12, 1, 'Toyota', 'Innova 2.8L V DSL A/T', 1800000, 1, '1774000.00', './assets/cars/innova.jpg', '2022-06-15 13:05:30', 'Share in\r\nthe stories\r\nEXTERIOR\r\nFROM URBAN SCAPES TO GREEN ESCAPES\r\nthe Innova is versatile enough to match each breathtaking view with\r\nits upscaled, refreshed exteriors.\r\n\r\nINTERIOR\r\nGO FROM FAMILY-HOME TO FIVE-STAR FEELS\r\nwith these intuitive features meant to deliver on the understated sophistication, from the moment you step into the Innova.\r\n\r\n\r\nPERFORMANCE\r\nGEARED UP FOR POWER\r\nThe Innova actively supports your activities by efficiently carrying the load, whether that be equipment, groceries, luggage, or your loved ones.', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,735 x 1,830 x 1,795\r\nWheelbase (mm)	-\r\nSeating Capacity: 7\r\nEngine\r\nEngine Type	4-Cylinder, In-Line 16 Valve, Double Overhead Camshaft (Variable Nozzle Turbo Charger w/ Intercooler)\r\nEngine Displacement (cc): 2,755\r\nMaximum Output (ps/rpm): 174 PS / 3,400 Rpm\r\nMaximum Torque (Nm/Rpm): 360 Nm / 1,200-3,400 Rpm\r\nFuel Capacity (L)	-\r\nTransmission\r\nPower Transmission: 6 Speed AT Front Brake/ Rear Brake	Ventilated Discs / Leading- Trailing Drum\r\nTires: 215\r\nWheels (size): 55 R17 Alloy', 1),
(13, 1, 'Toyota', 'Commuter Deluxe 2.8L Diesel', 1750000, 1, '1679000.00', './assets/cars/commuter.jpg', '2022-06-15 13:05:30', 'Navigate Broader\r\nHorizons\r\nExterior\r\nNAVIGATE BROADER HORIZONS\r\nDesigned for performance with its wide exterior and sleek finish.\r\n\r\n\r\nInterior\r\nEXPAND YOUR SENSE OF COMFORT IN TRAVEL\r\nSpread out with Extensive Leg Room and Comfortable Seats.\r\n\r\n\r\nPerformance\r\nSMOOTH DRIVE AND ELEGANCE ALIGNED\r\nTake control and drive effortlessly with a powerful yet subtle engine.', 'Dimension and Weight\r\nOverall Dimensions (mm): 5,265 x 1,950 x 1,990\r\nWheelbase (mm): 3,210\r\nSeating Capacity: 15\r\nEngine\r\nEngine Type	4 Cylinders, In-line Type 16-Valve DOHC\r\nEngine Displacement (cc): 2,755\r\nMaximum Output (ps/rpm): 176 ps / 3,400 rpm\r\nMaximum Torque (Nm/Rpm): 420 Nm / 1,400 -2,600 rpm\r\nFuel Capacity (L): 70\r\nTransmission\r\nPower Transmission: 6-Speed Manual Front Brake/ Rear Brake	Ventilated Discs / Drum\r\nTires: 215 / 70 R16C\r\nWheels (size): 7J X 16\"', 1),
(14, 1, 'Toyota', 'Hiace Cargo', 1200000, 1, '1121000.00', './assets/cars/hiace.jpg', '2022-06-15 13:05:30', 'A partner that\r\ntruly delivers\r\nEXTERIOR\r\nEXUDING SOLIDNESS AND RELIABILITY\r\nThe perfect balance of practicality and contemporary design\r\n\r\n\r\nINTERIOR\r\nSTYLISH YET FUNCTIONAL\r\nEnjoy ease of use from the driver’s seat with operation\r\ncontrols within your reach\r\n\r\n\r\nPERFORMANCE\r\nPOWERFUL AND ECONOMICAL\r\nThe 1KD-FTV engine offers a reliable experience with its\r\nbalance of power and fuel economy', 'Dimension and Weight\r\nOverall Dimensions (mm): 4,695 x 1,695 x 1,980\r\nWheelbase (mm): 2,570\r\nSeating Capacity: 13\r\nEngine\r\nEngine Type	4-Cylinder L Type\r\nEngine Displacement (cc): 2,982\r\nMaximum Output (ps/rpm): 136 ps / 3,400 rpm\r\nMaximum Torque (Nm/Rpm): 300 / 1,200 - 2,400 rpm\r\nFuel Capacity (L): 70\r\nTransmission\r\nPower Transmission: 5-Speed Manual (Dash-Mounted) Front Brake/ Rear Brake	Ventilated Discs / Drums\r\nTires: 195R 15C\r\nWheels (size): 6JJ x 15\"', 1),
(15, 1, 'Toyota', 'Hilux Fleet 2.4 J 4x4 M/T', 1250000, 1, '1148000.00', './assets/cars/hiluxfleet.jpg', '2022-06-15 13:05:30', 'Power and\r\nProductivity\r\nEXTERIOR\r\nMAKE SPACE FOR ADVENTURE\r\nPut everything on the Hilux and go on an adventure. Highly modifiable and expandable, the Hilux is your ticket to adventure, rain or shine.\r\n\r\n\r\nINTERIOR\r\nCOMFORT FOR THE ROAD AHEAD\r\nEvery Hilux is built for the rough road, but inside is an oasis. Experience the comfort of fabric seats and cool air as you go about your day --on or off the road.\r\n\r\n\r\nPERFORMANCE\r\nPOWER, THROUGH AND THROUGH\r\nRise to the challenge of the perilous roads, from within the city and outside, with the unwawering performance of the Hilux engine.', 'Dimension and Weight\r\nOverall Dimensions (mm): 5,285 x 1,800 x 1,815\r\nWheelbase (mm)	-\r\nSeating Capacity: 5\r\nEngine\r\nEngine Type	2.4L Diesel, 4-Cylinder, 16-Valve DOHC Variable Nozzle Turbo with Air-cooled Intercooler\r\nEngine Displacement (cc): 2,393\r\nMaximum Output (ps/rpm): 150 / 3,400\r\nMaximum Torque (Nm/Rpm): 400 / 1,600 ~ 2,000\r\nFuel Capacity (L): 80\r\nTransmission\r\nPower Transmission: 6-Speed M/T Front Brake/ Rear Brake	Ventilated Discs / Drum\r\nTires: 225/70 R17\r\nWheels (size): 17\" Steel', 1),
(16, 1, 'Toyota', 'Corolla Altis 1.8V Hybrid CVT', 1690000, 1, '1610000.00', './assets/cars/corollaaltis.png', '2022-06-15 13:05:30', 'ALL NEW COROLLA ALTIS With its class-leading features, stunning design and efficient performance, the Toyota Corolla Altis is set to give you the ultimate driving satisfaction and fulfillment.', 'Dimension and Weight Engine Overall Dimensions (mm): 4,630 x 1,780 x 1,455 Engine Type VVT-I, 4-Cylinder In-Line DOHC, 16 Valve + Electric Motor Wheelbase (mm): 2,700 Engine Displacement (cc): 1,798 Seating Capacity: 5 Maximum Output (ps/rpm) 97 hp / 5,200 rpm Maximum Torque (Nm/Rpm) 142 Nm / 3,600 rpm Transmission Fuel Capacity (L): 43 Power Transmission: CVT Front Brake/ Rear Brake Ventilated Discs / Solid Discs Tires: 225 / 45R17 Wheels (size): Aluminum Alloy with Machined Finish', 1),
(17, 1, 'Toyota', 'Vios 1.5 G CVT', 1150000, 1, '980000.00', './assets/cars/vios.jpg', '2022-06-15 13:05:30', 'EXPERIENCE THE LASTING POWER AND ELEGANCE OF THE TOYOTA VIOS\r\nFinding the perfect balance of power and charm in a car is difficult. Schedule a test drive today to finally know why the Toyota Vios has stayed a top choice for many years', 'Overall Dimensions (mm): 4,425 x 1,730 x 1,475\r\nWheelbase (mm): 2,550\r\nSeating Capacity: 5\r\nEngine\r\nEngine Type	Dual VVT-I, 4-Cylinder In-Line\r\nDOHC 16V EFI\r\nEngine Displacement (cc): 1,496\r\nMaximum Output (ps/rpm): 107PS/6,000rpm\r\nMaximum Torque (Nm/Rpm):140Nm/4,200rpm\r\nFuel Capacity (L):42\r\nTransmission\r\nPower Transmission: CVT\r\nFront Brake/ Rear Brake	Ventilated Discs / Solid Disc\r\nTires:195/50 R16 Alloy\r\nWheels (size)	-', 1),
(18, 1, 'Toyota', 'Wigo 1.0 TRD S AT', 850000, 1, '700000.00', './assets/cars/wigo.jpg', '2022-06-15 13:05:30', 'Easy Driving,\r\nEverywhere We Go. \r\nEXTERIOR\r\nGO FOR STYLE\r\nA cool and compact exterior thats refreshing to the eyes and easy on the road.\r\nGO FOR VALUE\r\nEnjoy long drives with a fuel-efficient engine that delivers practical performance from under a compact hood.\r\n', 'Overall Dimensions (mm): 3,700 x 1,600 x 1,520\r\nWheelbase (mm)	-\r\nSeating Capacity: 5\r\nEngine\r\nEngine Type	3 Cylinder In-line\r\nEngine Displacement (cc): 998\r\nMaximum Output (ps/rpm): 66 / 6000\r\nMaximum Torque (Nm/Rpm): 89 / 4400\r\nFuel Capacity (L)	-\r\nTransmission\r\nPower Transmission: 4-Speed A/T\r\nFront Brake/ Rear Brake	Ventilated Disc / Drum\r\nTires: 175 / 65R14\r\nWheels (size): 14\" x 5J Alloy (Machine Cut Design)', 1),
(38, 0, 'Test', 'Test', 69, 69, '69.00', '614733749_finn.jpg', '0000-00-00 00:00:00', 'test', 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cars_secondary`
--

CREATE TABLE `cars_secondary` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` decimal(15,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_image_secondary` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars_secondary`
--

INSERT INTO `cars_secondary` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_image_secondary`, `item_register`, `status`) VALUES
(11, 'MPV', 'Avanza 1.5 G CVT', '1039000.00', '377587999_finn.jpg', './assets/cars/11Copy.png', '2022-06-15 13:05:30', 0),
(12, 'MPV', 'Innova 2.8L V DSL A/T', '1774000.00', './assets/cars/12.png', './assets/cars/12Copy.png', '2022-06-15 13:05:30', 0),
(13, 'VANS', 'Commuter Deluxe 2.8L Diesel', '1679000.00', './assets/cars/13.png', './assets/cars/13Copy.png', '2022-06-15 13:05:30', 0),
(14, 'VANS', 'Hiace Cargo', '1121000.00', './assets/cars/14.png', './assets/cars/14Copy.png', '2022-06-15 13:05:30', 0),
(15, 'VANS', 'Hilux Fleet 2.4 J 4x4 M/T', '1148000.00', './assets/cars/15.png', './assets/cars/15Copy.png', '2022-06-15 13:05:30', 0),
(16, 'HATCHBACKS', 'Corolla Altis 1.8V Hybrid CVT', '1610000.00', './assets/cars/16.png', './assets/cars/16Copy.png', '2022-06-15 13:05:30', 0),
(17, 'HATCHBACKS', 'Vios 1.5 G CVT', '980000.00', './assets/cars/17.png', './assets/cars/17Copy.png', '2022-06-15 13:05:30', 0),
(18, 'HATCHBACKS', 'Wigo 1.0 TRD S AT', '700000.00', './assets/cars/18.png', './assets/cars/18Copy.png', '2022-06-15 13:05:30', 0);

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_ID` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_ID`, `categories`, `status`) VALUES
(9, 'Toyota', 1);

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
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `cars_products`
--
ALTER TABLE `cars_products`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cars_products`
--
ALTER TABLE `cars_products`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
