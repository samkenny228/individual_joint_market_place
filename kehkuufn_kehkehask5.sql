-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2024 at 04:33 AM
-- Server version: 10.6.20-MariaDB-cll-lve
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kehkuufn_kehkehask`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_go_places`
--

CREATE TABLE `brand_go_places` (
  `go_place_id` int(11) NOT NULL,
  `go_place` varchar(255) NOT NULL,
  `go_place_price` int(255) NOT NULL,
  `unique_go_place_id` varchar(255) NOT NULL,
  `brand_unique_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_go_places`
--

INSERT INTO `brand_go_places` (`go_place_id`, `go_place`, `go_place_price`, `unique_go_place_id`, `brand_unique_id`) VALUES
(186, 'Boluwadoro street ', 6000, 'GoP_1866446', 'Keeny_40348_Brand'),
(189, 'Liki 1', 7000, 'GoP_1898793', '970923'),
(190, 'Leilani', 5500, 'GoP_1908456', '970923'),
(191, 'Abete r', 4000, 'GoP_1912669', '970923'),
(192, 'Banana high land ', 4000, 'GoP_1925419', '970923'),
(193, 'Surulare', 40000, 'GoP_1935063', '970923'),
(195, 'Leki phase 6', 10000, 'GoP_1955445', 'KehkehAsk_17674_Brand'),
(196, 'Ile odo 303', 50000, 'GoP_1962902', 'KehkehAsk_17674_Brand'),
(197, 'Ikere ', 4000, 'GoP_1977508', 'Keeny_40348_Brand');

-- --------------------------------------------------------

--
-- Table structure for table `brand_register`
--

CREATE TABLE `brand_register` (
  `brand_id` int(11) NOT NULL,
  `b_unique_id` varchar(255) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `bank_account_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_account_number` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `Other_product` varchar(255) NOT NULL,
  `Gadgets` varchar(255) NOT NULL,
  `Mobile_phones` varchar(255) NOT NULL,
  `Phone_accessories` varchar(255) NOT NULL,
  `Computers` varchar(255) NOT NULL,
  `Computer_accessories` varchar(255) NOT NULL,
  `Clothing_and_Fashion` varchar(255) NOT NULL,
  `Perfume_and_cologne` varchar(255) NOT NULL,
  `Furniture` varchar(255) NOT NULL,
  `Art_and_crafting_material` varchar(255) NOT NULL,
  `Skin_care` varchar(255) NOT NULL,
  `Poster_and_art_work` varchar(255) NOT NULL,
  `Interior_decoration` varchar(255) NOT NULL,
  `Electron_appliances` varchar(255) NOT NULL,
  `Kitchen_utensils` varchar(255) NOT NULL,
  `Wine_merchant` varchar(255) NOT NULL,
  `premium` varchar(255) NOT NULL,
  `premium_expire` varchar(255) NOT NULL,
  `instagramlink` varchar(255) NOT NULL,
  `facebooklink` varchar(255) NOT NULL,
  `whatsapplink` varchar(255) NOT NULL,
  `Car_dealer` varchar(255) NOT NULL,
  `Home_appliances` varchar(255) NOT NULL,
  `Dry_cleaner` varchar(255) NOT NULL,
  `Mechanic` varchar(255) NOT NULL,
  `Rewire` varchar(255) NOT NULL,
  `Furniture_work` varchar(255) NOT NULL,
  `Generator_repairer` varchar(255) NOT NULL,
  `Phone_repairer` varchar(255) NOT NULL,
  `Gadget_repairer` varchar(255) NOT NULL,
  `Computer_repairer` varchar(255) NOT NULL,
  `Plumber` varchar(255) NOT NULL,
  `Tailor` varchar(255) NOT NULL,
  `Other_service` varchar(255) NOT NULL,
  `Pharmacy` varchar(255) NOT NULL,
  `Food_vendor` varchar(255) NOT NULL,
  `bio` varchar(500) NOT NULL,
  `location` varchar(255) NOT NULL,
  `rateus` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `new_chat` varchar(255) NOT NULL,
  `member` varchar(255) NOT NULL,
  `background_color` varchar(255) NOT NULL,
  `brand_logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_register`
--

INSERT INTO `brand_register` (`brand_id`, `b_unique_id`, `brand_name`, `email`, `password`, `state`, `bank_account_name`, `bank_name`, `bank_account_number`, `phone_number`, `currency`, `Other_product`, `Gadgets`, `Mobile_phones`, `Phone_accessories`, `Computers`, `Computer_accessories`, `Clothing_and_Fashion`, `Perfume_and_cologne`, `Furniture`, `Art_and_crafting_material`, `Skin_care`, `Poster_and_art_work`, `Interior_decoration`, `Electron_appliances`, `Kitchen_utensils`, `Wine_merchant`, `premium`, `premium_expire`, `instagramlink`, `facebooklink`, `whatsapplink`, `Car_dealer`, `Home_appliances`, `Dry_cleaner`, `Mechanic`, `Rewire`, `Furniture_work`, `Generator_repairer`, `Phone_repairer`, `Gadget_repairer`, `Computer_repairer`, `Plumber`, `Tailor`, `Other_service`, `Pharmacy`, `Food_vendor`, `bio`, `location`, `rateus`, `status`, `new_chat`, `member`, `background_color`, `brand_logo`) VALUES
(4, 'KehkehAsk_17674_Brand', 'KehkehAsk', 'kehkehask@gmail.com', 'kehkehask', 'Ekiti', 'Kehkeh Ask ', 'Wema ', '0934244844', '08103226226', 'naira', '', '', '', '', '', '', 'Clothing_and_Fashion', '', '', '', '', '', '', '', 'Kitchen_utensils', '', '1', '1727308800', '..', '..', '..', 'Car_dealer', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Hello ', 'https://maps.app.goo.gl/ZAPt9pqp35oyywP28?g_st=com.google.maps.preview.copy', 9, 'active_now', '', '', '', ''),
(5, 'Luno_82435_Brand', 'Luno', 'luno@gmail.com', 'luno', 'Ekiti', 'Luno ', 'Opay', '09104332668', '08103226435', 'naira', '', '', '', '', '', '', 'Clothing_and_Fashion', '', '', '', '', '', '', '', 'Kitchen_utensils', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(6, 'Bukolami_58536_Brand', 'Bukolami', 'holuwabukola406@gmail.com', 'bukola2004', 'Ekiti state', 'Oluwabukola Owolabi ', 'Wema', '0279181060', '09061231154', 'naira', '', '', '', '', '', '', 'Clothing_and_Fashion', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(7, 'Nexaura_41877_Brand', 'Nexaura', 'nexaura@gmail.com', 'bukola2004', 'Ekiti state', 'Oluwabukola Owolabi ', 'Wema', '0279181060', '09061231154', 'naira', '', '', '', '', '', '', 'Clothing_and_Fashion', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(8, 'Keeny_40348_Brand', 'Kenny', 'akindelekehinde03@gmail.com', 'kenny228', 'Ekiti', 'Akindele kehinde', 'Opay', '0243988699', '0810336226', 'naira', 'Other_product', '', 'Mobile_phones', 'Phone_accessories', 'Computers', '', 'Clothing_and_Fashion', 'Perfume_and_cologne', '', 'Art_and_crafting_material', '', '', 'Interior_decoration', '', 'Kitchen_utensils', 'Wine_merchant', '', '', '...', '...', '...', '', '', '', 'Mechanic', '', '', '', '', '', '', '', '', '', '', 'Food_vendor', 'Hello this is Kenny brand we are available for any kind of delivery ', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d506211.8475841615!2d5.219942399999997!3d7.5988992000000035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sng!4v1726777397464!5m2!1sen!2sng', 7, 'active_now', '', '', '#fdebd0', '17337356952363IMG_5594.png'),
(9, 'K.Tech _50329_Brand', 'K.Tech ', 'ogbonnajoshua83@gmail.com', 'Kency1212', 'Ado ', 'Ogbonna joshua ', 'OPay ', '7033783647', '07033783647', 'naira', '', '', '', 'Phone_accessories', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(10, 'Temmy accessories_745510_Brand', 'Temmy accessories', 'olajideesther2004@gmail.com', 'Olajide2#', 'Ekiti state', 'Opay', 'Olajide Esther Aanuoluwapo', '7039295246', '07039295246', 'naira', 'Other_product', '', '', '', '', '', 'Clothing_and_Fashion', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(11, 'Egbetaxs_502711_Brand', 'Egbetaxs', 'aegbetakin@gmail.com', 'Egbetakin1', 'Iyin ekiti ', 'Olajide toyin esther ', 'OPay ', '7049594963', '07049594963', 'naira', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Phone_repairer', '', '', '', 'Tailor', '', '', '', '', '', 0, '', '', '', '', ''),
(12, 'Ewaade perfumery _517812_Brand', 'Ewaade perfumery ', 'adeleyemary94@gmail.com', 'Iremide123', 'Ibadan', 'Taiwo Mary Adeleye ', 'Opay', '8137725831', '08137725831', 'naira', '', '', '', '', '', '', '', 'Perfume_and_cologne', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(13, 'Kehkeh ask_618713_Brand', 'Kehkeh ask', 'kehkekask@gmail.com', 'kehkehask', 'Ekiti', 'Opay', 'Kehkehask ', '8103226225', '08103226226', 'naira', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Food_vendor', '', '', 0, '', '', '', '', ''),
(14, '731014', 'Bolanle', 'bolanle@gmail.com', 'bolanle', 'Ekiti', 'Bolanle', 'Gtb', '0976436843', '09067543354', 'naira', '', '', 'Mobile_phones', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1727827200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pharmacy', '', '', '', 0, '', '', '', '', ''),
(15, '104215', 'Shopskill collections ', 'shopskill.com@gmail.com', 'olanipekun1', 'Oyo', 'Owolabi Elizabeth Ayobami', 'Moniepoint', '9038130759', '07034418433', 'naira', '', '', '', '', '', '', 'Clothing_and_Fashion', '', '', '', '', '', '', '', '', '', '', '1727913600', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(16, '109816', 'AW_SECCESS STATION GLOBAL ', 'adeyemiadewale551@gmail.com', 'Adewale080@', 'Ekiti', 'Access bank ', 'Adeyemi Sodiq Adewale ', '1238773300', '08062108021', 'naira', '', '', 'Mobile_phones', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1728000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(17, '768317', 'Papa', 'oluwajomilojuodeyemi@gmail.com', 'Tosimi23', 'Ekiti State', 'Odeyemi Ebenzer Sunday', 'GTB', '0138620319', '08063187444', 'naira', '', 'Gadgets', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1728000000', '..', '..', 'wa.me/+2348063187444', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(18, '481318', 'Bammy Vicky ', 'babatundebamise2@gmail.com', 'Prin2023', 'Ekiti ', 'Babatunde Oluwabamise Victoria ', 'Wema bank ', '0254677906', '09067517253', 'naira', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1728172800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Food_vendor', '', '', 0, '', '', '', '', ''),
(19, '485319', 'Aritobaby yummies ', 'ritaoluwabunmi70@gmail.com', '23456', 'Ekiti ', 'Opay', 'Akpan Rita Oluwabunmi ', '9036380361', '09036380361', 'naira', 'Other_product', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1728259200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Food_vendor', '', '', 0, '', '', '', '', ''),
(20, '625120', 'Goody logs ', 'goodnewsoyebanji27@gmail.com', 'GOODnews090', 'Kwara state', 'Goodnews oyebanji', 'OPAY', '9065973154', '09056310491', 'naira', 'Other_product', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1728777600', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'I GIVE YOU MY 100% BOSS \n\nAND NOTE: TO CHANGE ALL LOGS IMMEDIATELY IT BEEN DELIVERED THANKS âœ…ðŸ”¥', '', 0, '', '', '', '', ''),
(21, '731421', 'AHMEDINO COMUNICATION ', 'Ahmedoyelola21@gmail.com', 'Ahmedino1994', 'Ado Ekiti ', 'AHMEDINO COMUNICATION ', 'Monipoint ', '6403816456', '08160376892', 'naira', '', '', 'Mobile_phones', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1729900800', 'https://www.instagram.com/ahmedoyelola?igsh=bGFkZHBqNjFlbHRv&amp;utm_source=qr', 'https://www.facebook.com/profile.php?id=61566501118209&amp;mibextid=LQQJ4d', 'wa.me/2348160376892', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(22, '575222', 'Davis Technology ', 'talk2medavis@gmail.com', 'letuseat', 'Ekiti', 'Alofe Kehinde David ', 'Opay', '8039268013', '08039268013', 'naira', '', '', '', '', 'Computers', '', '', '', '', '', '', '', '', '', '', '', '', '1729900800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(23, '970923', 'Sammylary', 'Sammylary@gmail.com', 'Sammylary', 'Ekiti', 'Akindele kehinde ', 'Wema', '0929292929', '08103226226', 'naira', '', '', '', '', 'Computers', '', '', '', '', '', '', '', '', '', '', '', '', '1729987200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other_service', '', '', 'My name is Mr Samuel ', 'https://maps.apple.com/?ll=7.491464,5.170482&q=My%20Location&t=h', 4, '', '', '', '', ''),
(24, '120924', 'DON WILLIE TECHNICAL ', 'ogbuehiwilliams122@gmail.com', 'Willy@112', 'Imo State ', 'Ogbuehi Williams ifeanyi ', 'Opay ', '8136923439', '08136923439', 'naira', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other_service', '', '', '', '', 0, '', '', '', '', ''),
(25, '131725', 'Aka', 'aka@gmail.com', 'aka', 'Ekiti', 'Aka', 'Opay', '09037377373', '090827373727', 'naira', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Dry_cleaner', '', '', '', '', '', '', '', '', '', 'Other_service', '', '', '', '', 1, '', '', '', '', ''),
(26, '573826', 'KennyB', 'jojo@gmail.com', 'jojo', 'Ekiti', 'Jojo', 'Wema', '7838783882', '09027474728', 'naira', 'Other_product', '', 'Mobile_phones', '', 'Computers', '', '', '', '', '', '', '', '', '', '', '', '', '1732060800', '&hellip;', '&hellip;', '&hellip;', '', '', '', 'Mechanic', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, 'active_now', '1', 'FY_001_MEM', '', ''),
(27, '342527', 'Englake', 'Englake@gmail.com', 'lake', 'Ekiti', 'Lake', 'Wema', '0926277277', '08103226226', 'naira', 'Other_product', '', 'Mobile_phones', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1732060800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'active_now', '', 'FY_001_MEM', '', ''),
(28, '805728', 'Maya', 'mayaluna10102020@gmail.com', 'maya', 'Ekiti', 'Maya Luna ', 'Wema ', '0243988699', '08103226226', 'naira', 'Other_product', '', 'Mobile_phones', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1732147200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'active_now', '', 'FY_001_MEM', '', ''),
(29, '130829', 'KennyA', 'dj0391112@gmail.com', 'kennya', 'Ekiti', 'Akindele kehinde samuel ', 'Opay', '8103226226', '8103226226', 'naira', 'Other_product', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1732406400', '', '', '', 'Car_dealer', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, '', '', '', '', ''),
(30, '606630', 'Kenny', 'liamj0871@gmail.com', 'jacksonliam228', 'Ekiti', 'Akindele kehinde Samuel', 'Opay', '8103226226', '08103226226', 'naira', 'Other_product', '', 'Mobile_phones', '', 'Computers', '', '', '', '', '', '', '', '', '', '', '', '', '1732406400', '..', '..', 'wa.me/2348103226226', '', '', 'Dry_cleaner', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 7, 'offline', '', 'FY_001_MEM', '#ffeaa3', '17333045807638IMG_5594.png'),
(31, '314431', 'Bobo', 'bobo@gmail.com', 'bobo', 'Ekiti', 'Bobo', 'Opay', '08103226226', '08103226226', 'naira', 'Other_product', '', 'Mobile_phones', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1732752000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'active_now', '1', 'FY_001_MEM', '', ''),
(32, '661132', 'TLD', 'ynotposi@gmail.com', 'ameN4all', 'Ekiti', 'Engineer Ayomide', 'Wema ', '0234772807', '08068880682', 'naira', 'Other_product', '', '', '', 'Computers', 'Computer_accessories', '', '', '', '', '', '', '', '', '', '', '', '1732924800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'active_now', '1', 'FY_001_MEM', '', ''),
(33, '25633', 'ConvoSpace ', 'faithabayomi18@gmail.com', 'f1vouroluw11972', 'Ekiti', 'Faith Ayodeji', 'Opay', '8141314384', '08141314384', 'naira', '', '', '', 'Phone_accessories', '', '', '', '', '', '', '', '', '', '', '', '', '', '1733011200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `p_unique_id` varchar(255) NOT NULL,
  `user_order_id` varchar(255) NOT NULL,
  `brand_unique_id` varchar(255) NOT NULL,
  `cart_unique_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_unique_id`, `user_order_id`, `brand_unique_id`, `cart_unique_id`) VALUES
(7, 'Louis Vuitton shoe_32712395', '1724830135Bukolami_58536_Brand693210', 'Bukolami_58536_Brand', 'Bukolami_58536_Brand_7414113'),
(8, 'Gucci shoe_3676065', '1724839936Luno_82435_Brand514370', 'Luno_82435_Brand', 'Luno_82435_Brand_8370482'),
(10, 'Chanel Black Luxury Brand_35203395', '1724839936Luno_82435_Brand514370', 'Luno_82435_Brand', 'Luno_82435_Brand_10780164'),
(13, 'Cloth 1_38443346', '1724853426Keeny_40348_Brand82529', 'Keeny_40348_Brand', 'Keeny_40348_Brand_13271010'),
(18, '11 iPhone pouch _108568583', '1724878598K.Tech _50329_Brand871356', 'K.Tech _50329_Brand', 'K.Tech _50329_Brand_18584156'),
(19, 'Kit 1_109299580', '1724882356Keeny_40348_Brand9484', 'Keeny_40348_Brand', 'Keeny_40348_Brand_1964525'),
(24, 'Wrist watch and bracelets_105156427', '1724888391Keeny_40348_Brand244939', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_24732555'),
(25, 'Necklace_63729969', '1724888391Keeny_40348_Brand244939', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_251855'),
(26, 'Tt_137857223', '1724888391Keeny_40348_Brand244939', 'Keeny_40348_Brand', 'Keeny_40348_Brand_2696795'),
(45, 'Kit 1_30288309', '1724890244Luno_82435_Brand45808', 'Luno_82435_Brand', 'Luno_82435_Brand_45578578'),
(47, 'Bracelet_76695171', '1724894554Temmy accessories_745510_Brand683235', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_47528907'),
(48, 'Necklace_85160928', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_48346019'),
(49, 'Necklace_85160928', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_49962404'),
(50, 'Classic Hand bead _42721944', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_50701744'),
(51, 'Classic Hand bead _42721944', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_51137742'),
(52, 'Classic Hand bead _42721944', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_5296946'),
(53, 'Classic Hand bead _42721944', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_53100895'),
(54, 'Classic Hand bead _42721944', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_54647001'),
(55, 'Classic Hand bead _42721944', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_55494539'),
(56, 'Classic Hand bead _42721944', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_56138771'),
(57, 'Classic Hand bead _42721944', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_57485375'),
(58, 'Wrist watch and bracelets_105156427', '1724913863Temmy accessories_745510_Brand601620', 'Temmy accessories_745510_Brand', 'Temmy accessories_745510_Brand_58124896'),
(61, 'Louis Vuitton shoe_32712395', '1724966157Bukolami_58536_Brand192644', 'Bukolami_58536_Brand', 'Bukolami_58536_Brand_61191989'),
(62, 'Louis Vuitton shoe_162343636', '1724966157Bukolami_58536_Brand192644', 'Bukolami_58536_Brand', 'Bukolami_58536_Brand_62941393'),
(63, 'Louis Vuitton shoe_161186060', '1724966157Bukolami_58536_Brand192644', 'Bukolami_58536_Brand', 'Bukolami_58536_Brand_63926189'),
(67, 'G TRACK SUIT_154610047', '1725005308Keeny_40348_Brand354893', 'Keeny_40348_Brand', 'Keeny_40348_Brand_67306212'),
(68, 'BLUE L-V KIDS SNEAKERS_149252243', '1725005308Keeny_40348_Brand354893', 'Keeny_40348_Brand', 'Keeny_40348_Brand_68237416'),
(69, 'IPhone 13 Pro max_148396260', '1725021019Keeny_40348_Brand432481', 'Keeny_40348_Brand', 'Keeny_40348_Brand_69152387'),
(71, 'Riggs perfume_165693909', '1725038577Ewaade perfumery _517812_Brand552178', 'Ewaade perfumery _517812_Brand', 'Ewaade perfumery _517812_Brand_71316100'),
(73, 'Eng 1_110799644', '1725058271Keeny_40348_Brand258703', 'Keeny_40348_Brand', 'Keeny_40348_Brand_73382779'),
(74, 'BUTTERFLY BAG_152779029', '1725059161Keeny_40348_Brand833609', 'Keeny_40348_Brand', 'Keeny_40348_Brand_74123713'),
(75, 'THE P COAT_153312085', '1725059161Keeny_40348_Brand833609', 'Keeny_40348_Brand', 'Keeny_40348_Brand_75396940'),
(76, 'G TRACK SUIT_154610047', '1725059161Keeny_40348_Brand833609', 'Keeny_40348_Brand', 'Keeny_40348_Brand_76532798'),
(77, 'BLUE L-V KIDS SNEAKERS_149252243', '1725062115Keeny_40348_Brand633958', 'Keeny_40348_Brand', 'Keeny_40348_Brand_77780825'),
(78, 'SCARF CHAIN BAG_151731775', '1725062563Keeny_40348_Brand189400', 'Keeny_40348_Brand', 'Keeny_40348_Brand_78124191'),
(79, 'THE P COAT_153312085', '1725062563Keeny_40348_Brand189400', 'Keeny_40348_Brand', 'Keeny_40348_Brand_79950134'),
(80, 'BLUE L-V KIDS SNEAKERS_149252243', '1725062675Keeny_40348_Brand791505', 'Keeny_40348_Brand', 'Keeny_40348_Brand_80507462'),
(81, 'G TRACK SUIT_154610047', '1725062818Keeny_40348_Brand198296', 'Keeny_40348_Brand', 'Keeny_40348_Brand_81342264'),
(83, 'G TRACK SUIT_154610047', '1725070251Keeny_40348_Brand321345', 'Keeny_40348_Brand', 'Keeny_40348_Brand_83543561'),
(84, 'BLUE L-V KIDS SNEAKERS_149252243', '1725070251Keeny_40348_Brand321345', 'Keeny_40348_Brand', 'Keeny_40348_Brand_84844080'),
(85, 'IPhone 13 Pro max_148396260', '1725088808Keeny_40348_Brand567825', 'Keeny_40348_Brand', 'Keeny_40348_Brand_85983292'),
(86, 'Iphone 14 pro max_142476633', '1725088808Keeny_40348_Brand567825', 'Keeny_40348_Brand', 'Keeny_40348_Brand_86897001'),
(87, 'BLUE L-V KIDS SNEAKERS_149252243', '1725116972Keeny_40348_Brand676304', 'Keeny_40348_Brand', 'Keeny_40348_Brand_87526339'),
(88, 'Louis Vuitton shoe_170292458', '1725169684Keeny_40348_Brand976981', 'Nexaura_41877_Brand', 'Nexaura_41877_Brand_88488479'),
(90, 'Louis Vuitton shoe_169583967', '1725169684Keeny_40348_Brand976981', 'Nexaura_41877_Brand', 'Nexaura_41877_Brand_90605537'),
(91, 'Louis Vuitton shoe_37537785', '1725169684Keeny_40348_Brand976981', 'Nexaura_41877_Brand', 'Nexaura_41877_Brand_91783061'),
(92, 'SNEAKERS_150545604', '1725180899Keeny_40348_Brand152035', 'Keeny_40348_Brand', 'Keeny_40348_Brand_92839468'),
(93, 'G TRACK SUIT_154610047', '1725180899Keeny_40348_Brand152035', 'Keeny_40348_Brand', 'Keeny_40348_Brand_93218344'),
(95, 'Jollof rice_172695778', '1725293008Kehkeh ask_618713_Brand170075', 'Kehkeh ask_618713_Brand', 'Kehkeh ask_618713_Brand_9517319'),
(97, 'IPhone 13 Pro max_148396260', '1725439950Keeny_40348_Brand128641', 'Keeny_40348_Brand', 'Keeny_40348_Brand_97748061'),
(99, 'Kit 2_2617636', '1725440744KehkehAsk_17674_Brand271032', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_99604577'),
(100, 'IPhone 13 pro_147649112', '1725444592Keeny_40348_Brand837173', 'Keeny_40348_Brand', 'Keeny_40348_Brand_100741434'),
(101, 'Kit 4_28207599', '1725450109KehkehAsk_17674_Brand753525', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_101690404'),
(102, 'Kit 4_28207599', '1725450352KehkehAsk_17674_Brand693548', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_102654703'),
(103, 'THE P COAT_153312085', '1725455321Keeny_40348_Brand889487', 'Keeny_40348_Brand', 'Keeny_40348_Brand_103839811'),
(104, 'BLUE L-V KIDS SNEAKERS_149252243', '1725455321Keeny_40348_Brand889487', 'Keeny_40348_Brand', 'Keeny_40348_Brand_104942458'),
(105, 'New age powerbank _176890626', '1725457753768317954372', '768317', '768317_105711892'),
(106, 'IPhone 13_146249167', '1725476817Keeny_40348_Brand734154', 'Keeny_40348_Brand', 'Keeny_40348_Brand_106181274'),
(110, 'Kit 5_29833424', '1725541824KehkehAsk_17674_Brand682219', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_110938047'),
(111, 'THE P COAT_153312085', '1725576876Keeny_40348_Brand479669', 'Keeny_40348_Brand', 'Keeny_40348_Brand_111305527'),
(112, 'IPhone 13 Pro max_148396260', '1725578262Keeny_40348_Brand486410', 'Keeny_40348_Brand', 'Keeny_40348_Brand_112376332'),
(113, 'IPhone 14_145878877', '1725649318Keeny_40348_Brand861873', 'Keeny_40348_Brand', 'Keeny_40348_Brand_113286805'),
(115, 'SNEAKERS_150545604', '1725651339Keeny_40348_Brand275550', 'Keeny_40348_Brand', 'Keeny_40348_Brand_115553812'),
(116, 'THE P COAT_153312085', '1725657039Keeny_40348_Brand520720', 'Keeny_40348_Brand', 'Keeny_40348_Brand_11693160'),
(117, 'Gas Cooker (5b) Wood_160914530', '1725655224Keeny_40348_Brand436155', 'Keeny_40348_Brand', 'Keeny_40348_Brand_117670391'),
(120, 'BLUE L-V KIDS SNEAKERS_149252243', '1725724540Keeny_40348_Brand248426', 'Keeny_40348_Brand', 'Keeny_40348_Brand_120665346'),
(122, 'Milky doughnut _18585503', '1725798302481318236698', '481318', '481318_122334656'),
(123, 'Peanut _186349124', '1725798302481318236698', '481318', '481318_123657654'),
(124, 'Peanut _18756793', '1725798302481318236698', '481318', '481318_124445702'),
(125, 'Peanut _18756793', '1725798302481318236698', '481318', '481318_125236562'),
(126, 'Peanut _18756793', '1725798302481318236698', '481318', '481318_126901402'),
(129, 'IPhone 15_171223908', '1726357610Keeny_40348_Brand932606', 'Keeny_40348_Brand', 'Keeny_40348_Brand_129789570'),
(131, 'IPhone 12 pro_168825241', '1726426224Keeny_40348_Brand960156', 'Keeny_40348_Brand', 'Keeny_40348_Brand_131677531'),
(132, 'IPhone 13_146249167', '1726426224Keeny_40348_Brand960156', 'Keeny_40348_Brand', 'Keeny_40348_Brand_132733565'),
(133, 'IPhone 13 Pro max_148396260', '1726426224Keeny_40348_Brand960156', 'Keeny_40348_Brand', 'Keeny_40348_Brand_13372627'),
(134, 'IPhone 15_171223908', '1726426224Keeny_40348_Brand960156', 'Keeny_40348_Brand', 'Keeny_40348_Brand_134547445'),
(139, 'SNEAKERS_150545604', '1726511130Keeny_40348_Brand770932', 'Keeny_40348_Brand', 'Keeny_40348_Brand_139809370'),
(140, 'G TRACK SUIT_154610047', '1726511130Keeny_40348_Brand770932', 'Keeny_40348_Brand', 'Keeny_40348_Brand_140238091'),
(143, 'IPhone 13 pro_147649112', '1726661950Keeny_40348_Brand84520', 'Keeny_40348_Brand', 'Keeny_40348_Brand_14311481'),
(145, 'BLUE L-V KIDS SNEAKERS_149252243', '1726783980Keeny_40348_Brand341682', 'Keeny_40348_Brand', 'Keeny_40348_Brand_14579586'),
(146, 'G TRACK SUIT_154610047', '1726784049Keeny_40348_Brand952140', 'Keeny_40348_Brand', 'Keeny_40348_Brand_146540786'),
(147, 'THE P COAT_153312085', '1726784287Keeny_40348_Brand510090', 'Keeny_40348_Brand', 'Keeny_40348_Brand_147622738'),
(152, 'Multi-Use Programmable Pressure Cooker_179792151', '1727041742KehkehAsk_17674_Brand88450', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_152217375'),
(157, 'BLUE L-V KIDS SNEAKERS_149252243', '1727134531Keeny_40348_Brand641304', 'Keeny_40348_Brand', 'Keeny_40348_Brand_157727466'),
(158, 'THE P COAT_153312085', '1727135659Keeny_40348_Brand208411', 'Keeny_40348_Brand', 'Keeny_40348_Brand_158126999'),
(162, 'Kit 4_28207599', '1727255948KehkehAsk_17674_Brand213045', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_162608488'),
(163, 'Multi-Use Programmable Pressure Cooker_179792151', '1727256101KehkehAsk_17674_Brand11988', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_163300829'),
(164, 'Kit 4_28207599', '1727257893KehkehAsk_17674_Brand441761', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_16444780'),
(168, 'DELL Latitude 3310_191344571', '1727306094Keeny_40348_Brand930029', 'Keeny_40348_Brand', 'Keeny_40348_Brand_168198742'),
(169, 'Hp ProBook 11_193842350', '1727336956Keeny_40348_Brand941030', 'Keeny_40348_Brand', 'Keeny_40348_Brand_169672728'),
(170, 'Kit 5_29833424', '1727336956Keeny_40348_Brand941030', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_170269002'),
(172, 'DELL Latitude 3310_191344571', '1727341891Keeny_40348_Brand288133', 'Keeny_40348_Brand', 'Keeny_40348_Brand_172425361'),
(173, 'Hp Stream 11_190506581', '1727341891Keeny_40348_Brand288133', 'Keeny_40348_Brand', 'Keeny_40348_Brand_173213373'),
(174, 'XIEDE X059 DDR4 Laptop RAM_19252958', '1727341891Keeny_40348_Brand288133', 'Keeny_40348_Brand', 'Keeny_40348_Brand_174821403'),
(179, 'Hp ProBook 11_193842350', '1727345588Keeny_40348_Brand562254', 'Keeny_40348_Brand', 'Keeny_40348_Brand_179129570'),
(185, 'Blender 8500W_180942716', '1727476041KehkehAsk_17674_Brand974960', 'KehkehAsk_17674_Brand', 'KehkehAsk_17674_Brand_185323970'),
(193, 'Hg_197365372', '1727481550970923888184', '970923', '970923_193221030'),
(194, 'Hg_197365372', '1727486351970923581887', '970923', '970923_194267773'),
(200, 'Hp Stream 11_190506581', '1727721448Keeny_40348_Brand426408', 'Keeny_40348_Brand', 'Keeny_40348_Brand_200106087'),
(201, 'DELL Latitude 3310_191344571', '1727734764Keeny_40348_Brand103989', 'Keeny_40348_Brand', 'Keeny_40348_Brand_201147512'),
(202, 'Hp stream 11_196847812', '1727788507970923614510', '970923', '970923_202701625'),
(203, 'Hp stream 11_196847812', '1727788507970923614510', '970923', '970923_203391810'),
(204, 'Hp stream 11_196847812', '1727788507970923614510', '970923', '970923_204249949'),
(212, 'Hp Stream 11_190506581', '1727789477Keeny_40348_Brand838052', 'Keeny_40348_Brand', 'Keeny_40348_Brand_212619138'),
(214, 'Hp stream 11_196847812', '1727797680970923367425', '970923', '970923_214603995'),
(215, 'Hp stream 11_196847812', '1727797680970923367425', '970923', '970923_215866912'),
(216, 'Hp stream 11_196847812', '1727797680970923367425', '970923', '970923_216647284'),
(220, 'XIEDE X059 DDR4 Laptop RAM_19252958', '1728147995Keeny_40348_Brand82936', 'Keeny_40348_Brand', 'Keeny_40348_Brand_220767214'),
(221, 'Hp Stream 11_190506581', '1728147995Keeny_40348_Brand82936', 'Keeny_40348_Brand', 'Keeny_40348_Brand_22190664'),
(227, 'Hp stream 11_196847812', '1729206521970923467428', '970923', '970923_227263744'),
(228, 'IPhone 13_201376851', '1729472452573826151330', '573826', '573826_228362832'),
(229, 'IPhone 13_201376851', '1729472452573826151330', '573826', '573826_229612387'),
(230, 'IPhone 13_201376851', '1729472452573826151330', '573826', '573826_230202859'),
(231, 'IPhone 13_202156902', '1729473774573826416454', '573826', '573826_231232560'),
(232, 'IPhone 13_203839551', '1729514322342527129641', '342527', '342527_232215042'),
(233, 'IPhone 13_202156902', '1729514660573826584120', '573826', '573826_233448721'),
(243, 'Lenovo Ideapad _208878780', '1729524003573826396467', '573826', '573826_243895362'),
(244, 'Dell Latitude E5470_204289665', '1729527482573826599888', '573826', '573826_244913645'),
(245, 'Apple MacBook Pro_209280200', '1729532889573826662700', '573826', '573826_245407859'),
(246, 'Apple MacBook Pro_209280200', '1729532889573826662700', '573826', '573826_246905833'),
(247, 'Apple MacBook Pro_209280200', '1729532889573826662700', '573826', '573826_247840448'),
(248, 'Hp 15 VICTUS_207947174', '1729532889573826662700', '573826', '573826_248348458'),
(249, 'Hp 15 VICTUS_207947174', '1729536642573826763965', '573826', '573826_249737055'),
(250, 'Lenovo Ideapad _208878780', '1729536642573826763965', '573826', '573826_250612365'),
(251, 'Apple MacBook Pro_209280200', '1729538683573826342773', '573826', '573826_251819433'),
(252, 'Dell Latitude E5470_204289665', '1729538683573826342773', '573826', '573826_25232572'),
(254, 'Lenovo Ideapad _208878780', '1729545483573826644466', '573826', '573826_254267136'),
(255, 'Lenovo Ideapad _208878780', '1729545009573826547626', '573826', '573826_255352789'),
(257, 'IPhone 13_211854304', '1729596432805728839476', '805728', '805728_257337371'),
(259, 'Hp 15 VICTUS_207947174', '1729597678573826338267', '573826', '573826_259483000'),
(260, 'Hp EliteBook_205293619', '1729670027573826732769', '573826', '573826_260170492'),
(261, 'Lenovo Ideapad _208878780', '1729671466573826102175', '573826', '573826_26126997'),
(262, 'DELL ALIENWARE_21058151', '1729675178573826727609', '573826', '573826_262289351'),
(263, 'Hp 15 VICTUS_207947174', '1729726447573826155871', '573826', '573826_26376620'),
(264, 'Eng 2 _212804717', '172972785057382631386', '573826', '573826_264203500'),
(265, 'IPhone 14_145878877', '1729728490Keeny_40348_Brand449919', 'Keeny_40348_Brand', 'Keeny_40348_Brand_265347666'),
(266, 'IPhone 13 pro_147649112', '1729729237Keeny_40348_Brand12827', 'Keeny_40348_Brand', 'Keeny_40348_Brand_266539444'),
(267, 'IPhone 13_146249167', '1729733776Keeny_40348_Brand265888', 'Keeny_40348_Brand', 'Keeny_40348_Brand_267912021'),
(270, 'IPhone 16_213824847', '1729770168573826726481', '573826', '573826_270519047'),
(272, 'IPhone 16_213824847', '1729794452573826839003', '573826', '573826_272282902'),
(273, 'IPhone 13_202156902', '1729794452573826839003', '573826', '573826_273733108'),
(274, 'IPhone 13_146249167', '1729852016Keeny_40348_Brand284537', 'Keeny_40348_Brand', 'Keeny_40348_Brand_274876096'),
(278, 'IPhone 16_216229949', '1729857798606630904917', '606630', '606630_278545992'),
(279, 'IPhone XS max_226932957', '1729875388606630286577', '606630', '606630_279397879'),
(280, 'Hp EliteBook 840 G5_227269372', '172994857360663050142', '606630', '606630_280283217'),
(281, 'DELL ALIENWARE_235378516', '172994857360663050142', '606630', '606630_281817217'),
(283, 'IPhone 14 _218313299', '1730202642606630808031', '606630', '606630_283669351'),
(284, 'IPhone 13_243383576', '1730236914Keeny_40348_Brand104160', '314431', '314431_284577634'),
(285, 'IPhone 13_243383576', '1730237111314431447646', '314431', '314431_285164093'),
(288, 'IPhone 16_216229949', '1730291223606630358464', '606630', '606630_288902725'),
(289, 'IPhone 15_217856962', '1730315449606630955481', '606630', '606630_289604459'),
(292, 'SSD _245224746', '1730366111661132201605', '661132', '661132_292524579'),
(297, 'DELL Latitude 7490 _231647912', '173038864860663045013', '606630', '606630_297282454'),
(298, 'IPhone XR _225488562', '1730395795606630571654', '606630', '606630_298131278'),
(299, 'IPhone 11 _223286351', '1730396106606630423846', '606630', '606630_29967258'),
(300, 'Dry cleaning _241404449', '1730395795606630571654', '606630', '606630_300939599'),
(301, 'IPhone XS max_226932957', '1730398394606630377153', '606630', '606630_301934254'),
(302, 'Dry cleaning _241404449', '173039868760663017528', '606630', '606630_302829952'),
(303, 'Dry cleaning _241404449', '173039911360663083944', '606630', '606630_303809251'),
(305, 'IPhone 16_216229949', '1730399600606630937043', '606630', '606630_305611741'),
(308, 'IPhone 13_219549721', '1730462653606630455197', '606630', '606630_308136369'),
(309, 'IPhone 13_219549721', '1730462653606630455197', '606630', '606630_309399986'),
(311, 'IPhone 11 _223286351', '1730464348606630709702', '606630', '606630_31178437'),
(318, 'IPhone 12_221547440', '1730476488606630793705', '606630', '606630_318593543'),
(319, 'IPhone 13 pro_147649112', '1730501196Keeny_40348_Brand7816', 'Keeny_40348_Brand', 'Keeny_40348_Brand_319560418'),
(320, 'IPhone 15_171223908', '1730503429Keeny_40348_Brand126866', 'Keeny_40348_Brand', 'Keeny_40348_Brand_320337312'),
(321, 'IPhone 12 pro_168825241', '1730503778Keeny_40348_Brand769157', 'Keeny_40348_Brand', 'Keeny_40348_Brand_321873042'),
(322, 'IPhone 13_146249167', '1730507886Keeny_40348_Brand751682', 'Keeny_40348_Brand', 'Keeny_40348_Brand_322491864'),
(323, 'IPhone 13_146249167', '1730507886Keeny_40348_Brand751682', 'Keeny_40348_Brand', 'Keeny_40348_Brand_323828521'),
(324, 'Eng 1_110799644', '1730682826Keeny_40348_Brand437030', 'Keeny_40348_Brand', 'Keeny_40348_Brand_324649522'),
(325, 'IPhone 16_216229949', '1730689443606630347260', '606630', '606630_325391114'),
(326, 'Dry cleaning _241404449', '1730728245606630847156', '606630', '606630_326645609'),
(327, 'Hp Stream 11_190506581', '1730825195Keeny_40348_Brand567660', 'Keeny_40348_Brand', 'Keeny_40348_Brand_327771843'),
(328, 'Hp EliteBook 840 G5_227269372', '1730938590606630516368', '606630', '606630_328368171'),
(329, 'MacBook Air_230102616', '1730942705606630529137', '606630', '606630_329283148'),
(330, 'MacBook Pro_229888258', '173094509060663027800', '606630', '606630_330635027'),
(332, 'IPhone XR _225488562', '1731053784606630881668', '606630', '606630_332275829'),
(333, 'IPhone 11 _223286351', '173105721860663030535', '606630', '606630_333931539'),
(334, 'IPhone 12 pro_168825241', '173105721860663030535', 'Keeny_40348_Brand', 'Keeny_40348_Brand_334597725'),
(336, 'IPhone XS max_226932957', '1731058667606630528950', '606630', '606630_336536985'),
(337, 'IPhone 11 _223286351', '1731058667606630528950', '606630', '606630_337668243'),
(338, 'IPhone 14_145878877', '1731139684Keeny_40348_Brand97845', 'Keeny_40348_Brand', 'Keeny_40348_Brand_338970184'),
(339, 'IPhone 15_171223908', '1731140186Keeny_40348_Brand280650', 'Keeny_40348_Brand', 'Keeny_40348_Brand_339978685'),
(340, 'IPhone 13 pro_147649112', '1731140207Keeny_40348_Brand336609', 'Keeny_40348_Brand', 'Keeny_40348_Brand_340813300'),
(341, 'IPhone 13 Pro max_148396260', '1731140283Keeny_40348_Brand925115', 'Keeny_40348_Brand', 'Keeny_40348_Brand_341817257'),
(342, 'SCARF CHAIN BAG_151731775', '1731140692Keeny_40348_Brand75259', 'Keeny_40348_Brand', 'Keeny_40348_Brand_342500580'),
(343, 'BUTTERFLY BAG_152779029', '1731171698Keeny_40348_Brand814376', 'Keeny_40348_Brand', 'Keeny_40348_Brand_343733471'),
(344, 'IPhone XS max_226932957', '1731172039606630400', '606630', '606630_344322437'),
(345, 'THE P COAT_153312085', '1731232662Keeny_40348_Brand799653', 'Keeny_40348_Brand', 'Keeny_40348_Brand_345827088'),
(346, 'Apple MacBook Pro_209280200', '1731232662Keeny_40348_Brand799653', '573826', '573826_346257304'),
(347, 'THE P COAT_153312085', '1731232662Keeny_40348_Brand799653', 'Keeny_40348_Brand', 'Keeny_40348_Brand_347337165'),
(348, 'SSD _245224746', '1731232662Keeny_40348_Brand799653', '661132', '661132_348931297'),
(349, 'Hp 15 VICTUS_207947174', '1731271100573826161492', '573826', '573826_34967925'),
(352, 'Eng 1_110799644', '1731424191Keeny_40348_Brand720501', 'Keeny_40348_Brand', 'Keeny_40348_Brand_352761449'),
(353, 'IPhone 13_146249167', '1731424191Keeny_40348_Brand720501', 'Keeny_40348_Brand', 'Keeny_40348_Brand_353239543'),
(354, 'DELL Latitude 3310_191344571', '1731424786Keeny_40348_Brand443203', 'Keeny_40348_Brand', 'Keeny_40348_Brand_354358397'),
(355, 'DELL Latitude 3310_191344571', '1731424845606630960785', 'Keeny_40348_Brand', 'Keeny_40348_Brand_355491581'),
(356, 'G TRACK SUIT_154610047', '1731496680Keeny_40348_Brand275848', 'Keeny_40348_Brand', 'Keeny_40348_Brand_356667675'),
(357, 'G TRACK SUIT_154610047', '1731496680Keeny_40348_Brand275848', 'Keeny_40348_Brand', 'Keeny_40348_Brand_357469124'),
(358, 'BLUE L-V KIDS SNEAKERS_149252243', '1731591328Keeny_40348_Brand509757', 'Keeny_40348_Brand', 'Keeny_40348_Brand_358770111'),
(367, 'IPhone 13_146249167', '1731842945Keeny_40348_Brand814945', 'Keeny_40348_Brand', 'Keeny_40348_Brand_367220567'),
(368, 'BLUE L-V KIDS SNEAKERS_149252243', '1731844782Keeny_40348_Brand343427', 'Keeny_40348_Brand', 'Keeny_40348_Brand_368727092'),
(369, 'IPhone 16_216229949', '1731847096Keeny_40348_Brand922356', '606630', '606630_369672064'),
(370, 'Eng 1_110799644', '1731848928Keeny_40348_Brand489149', 'Keeny_40348_Brand', 'Keeny_40348_Brand_370929042'),
(371, 'IPhone 14 _218313299', '1731891607606630372353', '606630', '606630_371592127'),
(372, 'IPhone 15_217856962', '1731893923606630598511', '606630', '606630_372310540'),
(373, 'IPhone XR _225488562', '173192585060663053636', '606630', '606630_373266285'),
(374, 'IPhone XR _225488562', '173192585060663053636', '606630', '606630_374707891'),
(378, 'DELL Latitude 3310_191344571', '1732017452Keeny_40348_Brand98693', 'Keeny_40348_Brand', 'Keeny_40348_Brand_37845180'),
(379, 'Eng 1_110799644', '1732017452Keeny_40348_Brand98693', 'Keeny_40348_Brand', 'Keeny_40348_Brand_379790852'),
(380, 'IPhone 13_219549721', '1732023551606630175216', '606630', '606630_380112638'),
(382, 'IPhone 14 _218313299', '1732146197606630723628', '606630', '606630_382723849'),
(383, 'IPhone 16_216229949', '1732191319606630459529', '606630', '606630_383195934'),
(384, 'IPhone 11 _223286351', '1732442073606630544281', '606630', '606630_384576247'),
(385, 'BUTTERFLY BAG_152779029', '1732443941Keeny_40348_Brand447970', 'Keeny_40348_Brand', 'Keeny_40348_Brand_385905365'),
(390, 'IPhone 16_216229949', '1732704985606630588467', '606630', '606630_390806140'),
(391, 'IPhone 13_219549721', '1732705681606630155486', '606630', '606630_391501291'),
(393, 'IPhone 13_219549721', '1733063000606630714351', '606630', '606630_393537129'),
(394, 'IPhone 11 _223286351', '1733064050606630482102', '606630', '606630_394310008'),
(395, 'IPhone XS max_226932957', '1733070978606630451852', '606630', '606630_395663331'),
(396, 'IPhone XS max_226932957', '1733077020606630432955', '606630', '606630_396121109'),
(397, 'IPhone XS max_226932957', '1733077020606630432955', '606630', '606630_397583682'),
(398, 'IPhone XS max_226932957', '1733077020606630432955', '606630', '606630_398687616'),
(402, 'IPhone 13 pro_147649112', '1733151332Keeny_40348_Brand685952', 'Keeny_40348_Brand', 'Keeny_40348_Brand_402984637'),
(403, 'IPhone 13 Pro max_148396260', '1733151663Keeny_40348_Brand789156', 'Keeny_40348_Brand', 'Keeny_40348_Brand_403599970'),
(412, 'Fufu_253131425', '1733169921Keeny_40348_Brand423893', 'Keeny_40348_Brand', 'Keeny_40348_Brand_412392819'),
(413, 'IPhone 13 pro_147649112', '1733226217Keeny_40348_Brand247207', 'Keeny_40348_Brand', 'Keeny_40348_Brand_413626966'),
(414, 'Gold necklace _255975935', '1733307765Keeny_40348_Brand724332', 'Keeny_40348_Brand', 'Keeny_40348_Brand_414627'),
(415, 'Hoodie_256952084', '1733307765Keeny_40348_Brand724332', 'Keeny_40348_Brand', 'Keeny_40348_Brand_415910497');

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

CREATE TABLE `forget_password` (
  `code_id` int(11) NOT NULL,
  `code_unique_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `time_expired` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forget_password`
--

INSERT INTO `forget_password` (`code_id`, `code_unique_id`, `address`, `code`, `time_expired`) VALUES
(8, 'akindelekehinde03@gmail.com_60138', 'akindelekehinde03@gmail.com', '9295', '2024-08-28 13:53:42'),
(9, 'akindelekehinde03@gmail.com_22469', 'akindelekehinde03@gmail.com', '3035', '2024-08-31 00:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `fy_member`
--

CREATE TABLE `fy_member` (
  `member_id` int(11) NOT NULL,
  `fy_unique_id` varchar(255) NOT NULL,
  `last_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fy_member`
--

INSERT INTO `fy_member` (`member_id`, `fy_unique_id`, `last_code`) VALUES
(1, 'fy_37416_mem', 'FY-2368-MEM');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_id` varchar(200) NOT NULL,
  `outgoing_id` varchar(200) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `new_msg` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_id`, `outgoing_id`, `msg`, `new_msg`) VALUES
(295, '573826', '550773', 'Hello ', ''),
(296, '550773', '573826', 'Hi ', ''),
(297, '550773', '573826', 'What are you buying from us ', ''),
(298, '573826', '550773', 'I want to buy iPhone 13', ''),
(299, '550773', '573826', 'Okay you can place your order now ', ''),
(300, '550773', '573826', 'Hello ', ''),
(301, '550773', '573826', 'Are you there? ', ''),
(302, '550773', '573826', '??', ''),
(303, '550773', '573826', 'ðŸ¥¹', ''),
(304, '573826', '429574', 'Hello ', ''),
(305, '573826', '429574', 'What to buy your iPhone 13 ', ''),
(306, '573826', '429574', 'How many do you have left', ''),
(307, '573826', '429574', 'Hello are you ready to sell', ''),
(308, '429574', '573826', 'Hello ', ''),
(309, '429574', '573826', 'Thanks for the text ', ''),
(310, '429574', '573826', 'How many iPhone 13 do you need? ', ''),
(311, '429574', '573826', '??', ''),
(312, '573826', '429574', 'More than 10 ', ''),
(313, '429574', '573826', 'We donâ€™t have up to 10 now ', ''),
(314, '573826', '429574', 'How many can you sell now ', ''),
(315, '429574', '573826', 'We have 5 available now ', ''),
(316, '573826', '429574', 'Okay am buying the 5 ', ''),
(317, '573826', '429574', 'How much is one? ', ''),
(318, '429574', '573826', '800k is our normal price', ''),
(319, '573826', '429574', 'Wonâ€™t you reduce the price for me ', ''),
(320, '573826', '429574', 'Am buying 5 ', ''),
(321, '429574', '573826', 'Because you are buying am reducing it to 790k', ''),
(322, '429574', '573826', '5**', ''),
(323, '573826', '429574', 'Okay thatâ€™s better ', ''),
(324, '573826', '429574', 'Thanks ', ''),
(325, '573826', '429574', 'Deal is done ', ''),
(326, '573826', '429574', 'âœ”ï¸ ', ''),
(327, '429574', '573826', 'Okay you can place your order now', ''),
(328, '573826', '429574', 'Yes i will ', ''),
(329, '429574', '573826', 'Okay ', ''),
(330, '429574', '573826', ' ', ''),
(331, '429574', '573826', 'Mistake ', ''),
(332, '573826', '429574', 'Okay ', ''),
(333, '573826', '429574', 'ðŸ‘ ', ''),
(334, '342527', '537275', 'Hello ', ''),
(335, '537275', '342527', 'Hello ', ''),
(336, '537275', '342527', 'What are you buying from us ', ''),
(337, '537275', '342527', '? ', ''),
(338, '573826', '703076', 'Hello ', ''),
(339, '573826', '703076', 'Are you available to sell now ', ''),
(340, '573826', '703076', '? ', ''),
(341, '703076', '573826', 'Hello ', ''),
(342, '703076', '573826', 'Thanks for the message ', ''),
(343, '703076', '573826', 'Yes we are available to sell ', ''),
(344, '703076', '573826', 'What are you buying? ', ''),
(345, '573826', '703076', 'I want to buy iPhone 13 Pro Max ', ''),
(346, '573826', '703076', 'But you only have 13 on your profile ', ''),
(347, '703076', '573826', 'Yes I have 13 pro max ', ''),
(348, '573826', '876477', 'Hello ', ''),
(349, '876477', '573826', 'Hello ', ''),
(350, '876477', '573826', 'What are you buying from us? ', ''),
(351, '573826', '876477', 'Nothing just texting your website out', ''),
(352, '876477', '573826', 'Okay ', ''),
(353, '876477', '573826', 'Thanks for the message Yes', ''),
(354, '573826', '876477', 'I will use your website now to sell my products thanks ', ''),
(355, '876477', '573826', 'Alright ðŸ¥°', ''),
(356, '429574', '573826', 'ðŸ¥°', ''),
(357, '573826', '876477', 'Hello ', ''),
(358, '876477', '573826', 'Hello ', ''),
(359, '876477', '573826', 'Do you want to buy from us? ', ''),
(360, '429574', '573826', 'Let keep it one love ', ''),
(361, '550773', '573826', 'Hope to get text from you again soon', ''),
(362, '573826', '558178', 'Hello', ''),
(363, '573826', '558178', 'Are u here', ''),
(364, '558178', '573826', 'Hello sir ', ''),
(365, '558178', '573826', 'Yes sir ', ''),
(366, '573826', '558178', 'It\'s working', ''),
(367, '558178', '573826', 'Yes sir ', ''),
(368, '558178', '573826', 'Do you like it sir? ', ''),
(369, '573826', '558178', 'U can even interigrate this to another level o', ''),
(370, '558178', '573826', 'What level sir ', ''),
(371, '573826', '558178', 'Leta focus on this for now', ''),
(372, '558178', '573826', 'Yes sir ', ''),
(373, '558178', '573826', 'I will keep working on it sir ', ''),
(374, '573826', '558178', 'I will take more tome to check it wen I get home', ''),
(375, '573826', '558178', 'I will take more tome to check it wen I get home', ''),
(376, '558178', '573826', 'Okay sir ', ''),
(377, '558178', '573826', 'Yes sir ', ''),
(378, '573826', '962879', 'Boss', ''),
(379, '573826', '962879', 'I want to place some orders', ''),
(380, '962879', '573826', 'Hello ', ''),
(381, '962879', '573826', 'Boss', ''),
(382, '962879', '573826', 'Are you there? ', ''),
(383, '573826', '962879', 'I\'m here ', ''),
(384, '962879', '573826', 'What are you buying form us ', ''),
(385, '573826', '962879', 'I\'ve forgotten oo', ''),
(386, '962879', '573826', 'lol ðŸ˜', ''),
(387, '962879', '573826', 'My WiFi will die now ', ''),
(388, '573826', '962879', 'Ehn nah ', ''),
(389, '962879', '573826', 'I donâ€™t have light ', ''),
(390, '573826', '962879', 'Ahhh', ''),
(391, '573826', '962879', 'Why will your wifi die now', ''),
(392, '573826', '962879', 'If person wan order true true', ''),
(393, '962879', '573826', 'Screenshot this page send it to me ', ''),
(394, '573826', '962879', 'Shey nah like this you go tell your customer say your wifi wan die', ''),
(395, '962879', '573826', 'I will ask him to order and ', ''),
(396, '962879', '573826', 'And send his number ', ''),
(397, '573826', '962879', 'Ohhhh', ''),
(398, '573826', '962879', 'Okay', ''),
(399, '962879', '573826', 'Yes ', ''),
(400, '573826', '962879', 'I like this chat box oo', ''),
(401, '962879', '573826', 'Okay', ''),
(402, '573826', '962879', 'If I scroll up,it scrolls down itself', ''),
(403, '573826', '962879', 'Why', ''),
(404, '573826', '962879', 'I tell you say I like the chat box you tell me okay', ''),
(405, '573826', '962879', 'Issokay oo', ''),
(406, '573826', '570380', 'Hello Kenny', ''),
(407, '573826', '570380', 'Are you available now? ', ''),
(408, '573826', '363181', 'Yoo', ''),
(409, '573826', '363181', 'Whatsup', ''),
(410, '573826', '363181', 'I want to place some orders ', ''),
(411, '573826', '363181', 'Can you tell me more about your products', ''),
(412, '573826', '570380', 'Hello are you there? ', ''),
(413, '573826', '570380', '??', ''),
(414, '573826', '570380', 'Are you available??', ''),
(415, '573826', '570380', 'Hello??', ''),
(416, '573826', '570380', 'Can we talk now ', ''),
(417, '363181', '573826', 'Hello ', ''),
(418, '363181', '573826', 'Am here now ', ''),
(419, '363181', '573826', 'What are you buying form us ', ''),
(420, '363181', '573826', '!?', ''),
(421, '363181', '573826', 'We are available now? ', ''),
(422, '363181', '573826', 'Are you still there. ', ''),
(423, '363181', '573826', '??', ''),
(424, '570380', '573826', 'Hello ', ''),
(425, '570380', '573826', 'This Is in second chat why ', ''),
(426, '805728', '464484', 'Hello are you there? ', ''),
(427, '464484', '805728', 'Yes am here? ', ''),
(428, '805728', '464484', 'Yes am here ', ''),
(429, '805728', '464484', 'Are you available for delivery? ', ''),
(430, '805728', '464484', '??', ''),
(431, '464484', '805728', 'Yes we are available for delivery ', ''),
(432, '464484', '805728', 'What are you buying from us ', ''),
(433, '464484', '805728', '??', ''),
(434, '805728', '464484', 'Am not buying anything ', ''),
(435, '464484', '805728', 'Why ', ''),
(436, '464484', '805728', '??', ''),
(437, '805728', '464484', 'You donâ€™t have the phone i want to buy', ''),
(438, '805728', '464484', 'Hello are there?', ''),
(439, '573826', '737685', 'Hello ', ''),
(440, '962879', '573826', 'Alright ', ''),
(441, '737685', '573826', 'Hi what are you buying from us ', ''),
(442, '573826', '148586', 'Ok', ''),
(443, '573826', '148586', 'Hello are you available for sales now ', ''),
(444, '573826', '457587', 'Hello ðŸ‘‹', ''),
(445, '573826', '457587', 'Hello ðŸ‘‹', ''),
(446, '457587', '573826', 'Hello ', ''),
(447, '606630', '742488', 'Hello', ''),
(448, '742488', '606630', 'Hello ', ''),
(449, '742488', '606630', 'Thanks for the message ', ''),
(450, '742488', '606630', 'What are you buying from us', ''),
(451, '606630', '742488', ' iPhone 16', ''),
(452, '606630', '742488', 'How is it last ', ''),
(453, '742488', '606630', 'Thatâ€™s the last price there sir ', ''),
(454, '606630', '742488', 'â‚¦2,599,000', ''),
(455, '606630', '742488', 'Is the last price? ', ''),
(456, '742488', '606630', 'Yes ', ''),
(457, '742488', '606630', 'Thatâ€™s the last price ', ''),
(458, '606630', '742488', 'Is too much ', ''),
(459, '606630', '742488', 'How much last?', ''),
(460, '742488', '606630', 'How much do you have ', ''),
(461, '606630', '742488', 'Have place order now ', ''),
(462, '606630', '742488', 'Can you deliver now ', ''),
(463, '606630', '742488', 'Can you deliver now ', ''),
(464, '606630', '742488', 'Can you deliver now ', ''),
(465, '742488', '606630', 'Yes I can ', ''),
(466, '606630', '742488', 'Okay ', ''),
(467, '606630', '742488', 'Wait for your order now ', ''),
(468, '606630', '742488', 'Am waiting for the my order please be fast ', ''),
(469, '742488', '606630', 'Okay sending your order now', ''),
(470, '742488', '606630', 'The delivery fees is 5k ', ''),
(471, '606630', '742488', 'Okay sending now ', ''),
(472, '606630', '742488', 'Have you seen it? ', ''),
(473, '742488', '606630', 'Yes ', ''),
(474, '742488', '606630', 'Call this number this the bike man number ', ''),
(475, '606630', '742488', 'Okay ', ''),
(476, '606630', '742488', 'Have speak with the bike man ', ''),
(477, '606630', '703889', 'Hello ', ''),
(478, '606630', '703889', 'Hi ', ''),
(479, '606630', '703889', 'Are you available for delivery ', ''),
(480, '703889', '606630', 'Yes am available for delivery ', ''),
(481, '606630', '703889', 'Okay ', ''),
(482, '606630', '728190', 'Hello there? ', ''),
(483, '728190', '606630', 'Hello ', ''),
(484, '728190', '606630', 'What are you buying from us ', ''),
(485, '606630', '728190', 'IPhone 14', ''),
(486, '606630', '728190', 'How much is your last price ', ''),
(487, '314431', '228291', 'Hello ', ''),
(488, '314431', '638592', 'Hello ', ''),
(489, '314431', '638592', 'Hello ', ''),
(490, '314431', '638592', 'How are you doing ', ''),
(491, '314431', '228291', 'Are you ', ''),
(492, '314431', '228291', 'Available?', ''),
(493, '314431', '228291', 'For delivery? ', ''),
(494, '228291', '314431', 'Yes am available for delivery ', ''),
(495, '228291', '314431', 'What are you buying from us? ', ''),
(496, '314431', '228291', 'I want to buy iPhone 13', ''),
(497, '314431', '228291', 'How much last? ', ''),
(498, '314431', '228291', '?', ''),
(499, '228291', '314431', 'That the last price friend ', ''),
(500, '314431', '228291', 'Okay not buying thanks ', ''),
(501, '728190', '606630', 'That the last price friend', ''),
(502, '728190', '606630', 'Thanks ', ''),
(503, '661132', '68193', 'Hello sir ', ''),
(504, '728190', '606630', 'hello', ''),
(505, 'Keeny_40348_Brand', '10894', 'hello', ''),
(506, '10894', 'Keeny_40348_Brand', 'hello', ''),
(507, '10894', 'Keeny_40348_Brand', 'what are you buying from us', ''),
(508, 'Keeny_40348_Brand', '10894', 'iphone 12 ', ''),
(509, 'Keeny_40348_Brand', '10894', 'do you have the iphone 12 pro max', ''),
(510, '10894', 'Keeny_40348_Brand', 'yes it also there in our product link', ''),
(511, 'Keeny_40348_Brand', '10894', 'okay', ''),
(512, '10894', 'Keeny_40348_Brand', 'you can order now', ''),
(513, 'Keeny_40348_Brand', '2595', 'hello', ''),
(514, '2595', 'Keeny_40348_Brand', 'hello ', ''),
(515, '2595', 'Keeny_40348_Brand', 'what are you buying from us', ''),
(516, '742488', '606630', 'Hi ðŸ‘‹', ''),
(517, '742488', '606630', 'Hi ðŸ‘‹', ''),
(518, '10894', 'Keeny_40348_Brand', '??', ''),
(519, 'Keeny_40348_Brand', '828196', 'hello', ''),
(520, '828196', 'Keeny_40348_Brand', 'hi', ''),
(521, '828196', 'Keeny_40348_Brand', 'what are you buying from us?', ''),
(522, '828196', 'Keeny_40348_Brand', '?', ''),
(523, 'Keeny_40348_Brand', '828196', 'my car is spoil on the road can you help me out', ''),
(524, 'Keeny_40348_Brand', '828196', 'are you available?', ''),
(525, '828196', 'Keeny_40348_Brand', 'yes', ''),
(526, '828196', 'Keeny_40348_Brand', 'where is your location', ''),
(527, '606630', '521197', 'hello', ''),
(528, '606630', '597100', 'Hello ', ''),
(529, '597100', '606630', 'Hi', ''),
(530, '606630', '1077101', 'Hello ', ''),
(531, '606630', '1077101', 'Are you available for delivery ', ''),
(532, 'Keeny_40348_Brand', '2208102', 'Hello ', ''),
(533, 'Keeny_40348_Brand', '2208102', 'Hello ', ''),
(534, 'Keeny_40348_Brand', '2208102', 'Are you available for delivery ', ''),
(535, '2208102', 'Keeny_40348_Brand', 'Yes am available for delivery ', ''),
(536, '573826', '6136103', 'Hello ', ''),
(537, 'Keeny_40348_Brand', '8583104', 'Hello ', ''),
(538, '8583104', 'Keeny_40348_Brand', 'Hello ', ''),
(539, '8583104', 'Keeny_40348_Brand', 'What are you buying from us', ''),
(540, 'Keeny_40348_Brand', '8583104', 'What to buy iPhone 16 pro max ', ''),
(541, 'Keeny_40348_Brand', '8583104', 'What to buy iPhone 16 pro max ', ''),
(542, 'Keeny_40348_Brand', '2178105', 'Hello there ', ''),
(543, 'Keeny_40348_Brand', '2178105', 'Are you available for delivery ', ''),
(544, '2178105', 'Keeny_40348_Brand', 'Yes ', ''),
(545, 'Keeny_40348_Brand', '2178105', 'Okay ', ''),
(546, 'Keeny_40348_Brand', '5146106', 'Hello ', ''),
(547, 'Keeny_40348_Brand', '5146106', 'I want to buy sneakers', ''),
(548, 'Keeny_40348_Brand', '5146106', 'The blue one ', ''),
(549, 'Keeny_40348_Brand', '5146106', 'Are you there? ', ''),
(550, '5146106', 'Keeny_40348_Brand', 'Hello am ', ''),
(551, '5146106', 'Keeny_40348_Brand', 'Please your order and you will have your goods delivered to your door step right away ', ''),
(552, 'Keeny_40348_Brand', '5146106', 'Okay no problem ', ''),
(553, '5146106', 'Keeny_40348_Brand', 'Waiting ', ''),
(554, 'Keeny_40348_Brand', '5146106', 'Okay ', ''),
(555, 'Keeny_40348_Brand', '5146106', 'Placing my order now ', ''),
(556, '5146106', 'Keeny_40348_Brand', 'Yes you can place your order ', ''),
(557, '606630', '9824107', 'Hello', ''),
(558, '606630', '9824107', 'Are you available?', ''),
(559, '606630', '7479108', 'Hello ', ''),
(560, 'Keeny_40348_Brand', '2033109', 'Hello there ', ''),
(561, 'Keeny_40348_Brand', '2033109', 'Are you available for delivery? ', ''),
(562, 'Keeny_40348_Brand', '2033109', '??', ''),
(563, 'Keeny_40348_Brand', '2033109', 'Can i place my order now ', ''),
(564, '2033109', 'Keeny_40348_Brand', 'Yes am available for delivery ', ''),
(565, '2033109', 'Keeny_40348_Brand', 'Thanks for the message ', ''),
(566, '2033109', 'Keeny_40348_Brand', 'You can please your order now', ''),
(567, 'Keeny_40348_Brand', '2033109', 'Okay ', ''),
(568, 'Keeny_40348_Brand', '2033109', 'Placing my order now ', ''),
(569, 'Keeny_40348_Brand', '2033109', 'What time should I be expecting my product? ', ''),
(570, '606630', '4841110', 'Hello ', ''),
(571, '606630', '4841110', 'Are you available for delivery? ', ''),
(572, '606630', '4841110', '??', ''),
(573, '4841110', '606630', 'Hello ', ''),
(574, '4841110', '606630', 'Hello ', ''),
(575, '4841110', '606630', ' for the message ', ''),
(576, '4841110', '606630', 'What are you buying ', ''),
(577, '606630', '3971111', 'Hello ', ''),
(578, '606630', '3971111', 'Are you available for delivery ', ''),
(579, '606630', '3971111', 'Are you available for delivery ', ''),
(580, '3971111', '606630', 'Yes am available for delivery ', ''),
(581, 'Keeny_40348_Brand', '8205112', 'Hello ', ''),
(582, '8205112', 'Keeny_40348_Brand', 'Hello ', ''),
(583, '8205112', 'Keeny_40348_Brand', 'Sending your order now ', ''),
(584, '8205112', 'Keeny_40348_Brand', 'Kindly check the address correctly ', ''),
(585, 'Keeny_40348_Brand', '2922114', 'Hello ', ''),
(586, 'Keeny_40348_Brand', '2922114', 'Are you available for delivery? ', ''),
(587, '2922114', 'Keeny_40348_Brand', 'Hello ', ''),
(588, '2922114', 'Keeny_40348_Brand', 'Thanks for the message ', ''),
(589, '2922114', 'Keeny_40348_Brand', 'Yes am available for delivery ', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `or_id` int(11) NOT NULL,
  `who_or_name` varchar(255) NOT NULL,
  `who_or_address` varchar(255) NOT NULL,
  `who_or_phone_num` varchar(255) NOT NULL,
  `brand_unique_id` varchar(255) NOT NULL,
  `user_or_id` varchar(255) NOT NULL,
  `total_or_items` varchar(5000) NOT NULL,
  `total_or_price` varchar(255) NOT NULL,
  `delivery_or_carryout` varchar(255) NOT NULL,
  `or_id_unique_id` varchar(255) NOT NULL,
  `or_view_or_not` varchar(255) NOT NULL,
  `or_status` varchar(255) NOT NULL,
  `goplace_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`or_id`, `who_or_name`, `who_or_address`, `who_or_phone_num`, `brand_unique_id`, `user_or_id`, `total_or_items`, `total_or_price`, `delivery_or_carryout`, `or_id_unique_id`, `or_view_or_not`, `or_status`, `goplace_price`) VALUES
(3, 'Ojo oluwa', 'Olaoluwa street ado num 23', '09103832736', 'KehkehAsk_17674_Brand', '1724795551KehkehAsk_17674_Brand795380', '&lt;img src=&quot;phpfile/reg_p_img/17247882532392IMG_4326.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Kit 4&lt;br&gt; PRICE: â‚¦300,000&lt;br&gt; DICRIPTION: Kit 4&lt;br&gt;&lt;hr&gt;', '300000', 'delivery', 'delivery_174631724795598', '1', '1', ''),
(4, 'Hannah', 'Iworoko ', '09061231154', 'Bukolami_58536_Brand', '1724830135Bukolami_58536_Brand693210', '&lt;img src=&quot;phpfile/reg_p_img/17248299992119Screenshot_20240517-194026_1.png&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Louis Vuitton shoe&lt;br&gt; PRICE: â‚¦42,000&lt;br&gt; DICRIPTION: Black loafers-2 pieces&lt;br&gt;&lt;hr&gt;', '42000', 'delivery', 'delivery_227041724830165', '1', '1', ''),
(5, 'Aka', 'Aka', '086321', 'Luno_82435_Brand', '1724852155Luno_82435_Brand662433', '&lt;img src=&quot;phpfile/reg_p_img/1724839706795IMG_4366.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Gucci shoe&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Gucci shoe&lt;br&gt;&lt;hr&gt;', '35000', 'delivery', 'delivery_980051724852178', '1', '', ''),
(6, 'Aka', 'Olu', '0905363728', 'Luno_82435_Brand', '1724853206Luno_82435_Brand668871', '&lt;img src=&quot;phpfile/reg_p_img/17248392785244IMG_4362.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Nike Benassi Slides &lt;br&gt; PRICE: â‚¦15,000&lt;br&gt; DICRIPTION: Nike Shoes | Wmns Nike Benassi Slides\nJust Do It Jdi Lavenders | Color: Purple/\nSilver | Size: Various&lt;br&gt;&lt;hr&gt;', '15000', 'carryout', 'carryout_92261724853235', '1', '', ''),
(7, 'Aka', 'Omelet street', '09012373475', 'Keeny_40348_Brand', '1724853426Keeny_40348_Brand82529', '&lt;img src=&quot;phpfile/reg_p_img/17248534009143IMG_4364.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Cloth 1&lt;br&gt; PRICE: â‚¦50,000&lt;br&gt; DICRIPTION: Cloth 2&lt;br&gt;&lt;hr&gt;', '50000', 'delivery', 'delivery_544671724853471', '1', '', ''),
(8, 'Ogbon', 'Santos', '7033783647', 'K.Tech _50329_Brand', '1724878598K.Tech _50329_Brand871356', '&lt;img src=&quot;phpfile/reg_p_img/17248785418849IMG_2288.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: 11 iPhone pouch &lt;br&gt; PRICE: â‚¦3,000&lt;br&gt; DICRIPTION: IPhone 11 pouch &lt;br&gt;&lt;hr&gt;', '3000', 'delivery', 'delivery_337181724878643', '', '', ''),
(9, 'Developer', 'Developer did order testing for you', '08103226226', 'Temmy accessories_745510_Brand', '1724885458Temmy accessories_745510_Brand739768', '&lt;img src=&quot;phpfile/reg_p_img/17248777099708IMG-20240823-WA0111.jpg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Wrist watch and bracelets&lt;br&gt; PRICE: â‚¦4,000&lt;br&gt; DICRIPTION: Available&lt;br&gt;&lt;hr&gt;', '4000', 'delivery', 'delivery_904091724886475', '1', '1', ''),
(10, 'Hello', 'Iyin', '08087434567', 'Keeny_40348_Brand', '1724889412Keeny_40348_Brand918520', '&lt;img src=&quot;phpfile/reg_p_img/17248888921841IMG_4365.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Tt&lt;br&gt; PRICE: â‚¦45,000&lt;br&gt; DICRIPTION: Tt&lt;br&gt;&lt;hr&gt;', '45000', 'delivery', 'delivery_2762101724889523', '1', '', ''),
(11, 'Order from Kenny page ', 'Hello 1', '09087867655', 'Keeny_40348_Brand', '1724889624Luno_82435_Brand648857', '&lt;img src=&quot;phpfile/reg_p_img/17248025829307IMG_4330.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Kit 1&lt;br&gt; PRICE: â‚¦26,000&lt;br&gt; DICRIPTION: Kit 1&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17248887445092IMG_4365.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Hello&lt;br&gt; PRICE: â‚¦54,000&lt;br&gt; DICRIPTION: Hello&lt;br&gt;&lt;hr&gt;', '80000', 'carryout', 'carryout_1174111724889730', '1', '', ''),
(12, 'Yoto', 'Yotor', '802827730', 'Luno_82435_Brand', '1724890244Luno_82435_Brand45808', '&lt;img src=&quot;phpfile/reg_p_img/17248888921841IMG_4365.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Tt&lt;br&gt; PRICE: â‚¦45,000&lt;br&gt; DICRIPTION: Tt&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17248025829307IMG_4330.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Kit 1&lt;br&gt; PRICE: â‚¦26,000&lt;br&gt; DICRIPTION: Kit 1&lt;br&gt;&lt;hr&gt;', '71000', 'delivery', 'delivery_7658121724891668', '1', '', ''),
(13, 'Order for kenny2', 'Hello ', '08102338337', 'Keeny_40348_Brand', '1724890244Luno_82435_Brand45808', '&lt;img src=&quot;phpfile/reg_p_img/17248888921841IMG_4365.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Tt&lt;br&gt; PRICE: â‚¦45,000&lt;br&gt; DICRIPTION: Tt&lt;br&gt;&lt;hr&gt;', '45000', 'delivery', 'delivery_1128131724892045', '1', '1', ''),
(14, 'Order form luno', 'Hi', '09273737373838', 'Luno_82435_Brand', '1724890244Luno_82435_Brand45808', '&lt;img src=&quot;phpfile/reg_p_img/17248025829307IMG_4330.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Kit 1&lt;br&gt; PRICE: â‚¦26,000&lt;br&gt; DICRIPTION: Kit 1&lt;br&gt;&lt;hr&gt;', '26000', 'delivery', 'delivery_3003141724892097', '1', '', ''),
(15, 'Olaoluwa ', 'Ikeileri street num 24', '09026483756', 'Keeny_40348_Brand', '1725005308Keeny_40348_Brand354893', '&lt;img src=&quot;phpfile/reg_p_img/17249412541050IMG_4389.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: G TRACK SUIT&lt;br&gt; PRICE: â‚¦80,000&lt;br&gt; DICRIPTION: G TRACK SUIT&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17249404669075IMG_4384.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: BLUE L-V KIDS SNEAKERS&lt;br&gt; PRICE: â‚¦44,000&lt;br&gt; DICRIPTION: BLUE L-V KIDS SNEAKERS PREORDER&lt;br&gt;&lt;hr&gt;', '124000', 'delivery', 'delivery_9587151725005506', '1', '', ''),
(16, 'Kehinde', 'Apuabi street ', '08103226226', 'Ewaade perfumery _517812_Brand', '1725038577Ewaade perfumery _517812_Brand552178', '&lt;img src=&quot;phpfile/reg_p_img/17250375776630IMG-20240830-WA0046.jpg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Riggs perfume&lt;br&gt; PRICE: â‚¦5,500&lt;br&gt; DICRIPTION: 30ml \nIs a nice perfume that last long&lt;br&gt;&lt;hr&gt;', '5500', 'delivery', 'delivery_8273161725038875', '1', '', ''),
(17, 'sammy', '1600 Fake Street\nApartment 1', '6019521325', 'Keeny_40348_Brand', '1725059161Keeny_40348_Brand833609', '&lt;img src=&quot;phpfile/reg_p_img/17249409327374IMG_4387.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: BUTTERFLY BAG&lt;br&gt; PRICE: â‚¦16,000&lt;br&gt; DICRIPTION: BUTTERFLY BAG&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17249411409800IMG_4388.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: THE P COAT&lt;br&gt; PRICE: â‚¦30,000&lt;br&gt; DICRIPTION: THE P COAT&lt;br&gt;&lt;hr&gt;', '46000', 'delivery', 'delivery_2771171725059621', '1', '', ''),
(18, 'Gg', 'Hh', '8854', 'Keeny_40348_Brand', '1725062563Keeny_40348_Brand189400', '&lt;img src=&quot;phpfile/reg_p_img/1724940853444IMG_4386.png&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: SCARF CHAIN BAG&lt;br&gt; PRICE: â‚¦10,500&lt;br&gt; DICRIPTION: SCARF CHAIN BAG &lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17249411409800IMG_4388.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: THE P COAT&lt;br&gt; PRICE: â‚¦30,000&lt;br&gt; DICRIPTION: THE P COAT&lt;br&gt;&lt;hr&gt;', '40500', 'delivery', 'delivery_4637181725062578', '1', '', ''),
(19, 'Akindele Kehinde Samuel', 'Apuabistreet', '08103226226', 'Keeny_40348_Brand', '1725070251Keeny_40348_Brand321345', '&lt;img src=&quot;phpfile/reg_p_img/17249412541050IMG_4389.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: G TRACK SUIT&lt;br&gt; PRICE: â‚¦80,000&lt;br&gt; DICRIPTION: G TRACK SUIT&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17249404669075IMG_4384.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: BLUE L-V KIDS SNEAKERS&lt;br&gt; PRICE: â‚¦44,000&lt;br&gt; DICRIPTION: BLUE L-V KIDS SNEAKERS PREORDER&lt;br&gt;&lt;hr&gt;', '124000', 'delivery', 'delivery_2820191725070291', '1', '', ''),
(20, 'Hannah', 'Ekiti state', '08125362536', 'Keeny_40348_Brand', '1725088808Keeny_40348_Brand567825', '&lt;img src=&quot;phpfile/reg_p_img/17249402049738IMG_4383.png&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: IPhone 13 Pro max&lt;br&gt; PRICE: â‚¦1,100,000&lt;br&gt; DICRIPTION: IPhone 13 Pro Max  new 128gb&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17249394129164IMG_4378.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: Iphone 14 pro max&lt;br&gt; PRICE: â‚¦1,550,000&lt;br&gt; DICRIPTION: Iphone 14 pro max New &lt;br&gt;&lt;hr&gt;', '2650000', 'delivery', 'delivery_88201725088982', '1', '1', ''),
(21, 'Sammy ', 'Ikeja num 34 house painted blue white ', '0912236654', 'Keeny_40348_Brand', '1725116972Keeny_40348_Brand676304', '&lt;img src=&quot;phpfile/reg_p_img/17249404669075IMG_4384.jpeg&quot; class=&quot;or_image&quot;&gt;&lt;br&gt; PRODUCT: BLUE L-V KIDS SNEAKERS&lt;br&gt; PRICE: â‚¦44,000&lt;br&gt; DICRIPTION: BLUE L-V KIDS SNEAKERS PREORDER&lt;br&gt;&lt;hr&gt;', '44000', 'delivery', 'delivery_3795211725117086', '1', '', ''),
(22, 'Olawale temitope', 'Ileileri street ado eikiti ', '08103227865', 'Keeny_40348_Brand', '1725180899Keeny_40348_Brand152035', '&lt;img src=&quot;phpfile/reg_p_img/17249405546298IMG_4385.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: SNEAKERS&lt;br&gt; PRICE: â‚¦37,000&lt;br&gt; DICRIPTION: PINK G SNEAKERS&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17249412541050IMG_4389.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: G TRACK SUIT&lt;br&gt; PRICE: â‚¦80,000&lt;br&gt; DICRIPTION: G TRACK SUIT&lt;br&gt;&lt;hr&gt;', '117000', 'delivery', 'delivery_5976221725181055', '1', '1', ''),
(23, 'Olu sammy', 'Ikeja road 8 house 4', '09013654378', 'Kehkeh ask_618713_Brand', '1725293008Kehkeh ask_618713_Brand170075', '&lt;img src=&quot;phpfile/reg_p_img/17252929223272IMG_4562.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Jollof rice&lt;br&gt; PRICE: â‚¦5,700&lt;br&gt; DICRIPTION: One take away of jollof rice with chicken&lt;br&gt;&lt;hr&gt;', '5700', 'delivery', 'delivery_4056231725293105', '1', '1', ''),
(24, 'Ojo Samuel ', 'Ikeja oluwole street num 36', '09071638373', 'Kehkeh ask_618713_Brand', '1725293008Kehkeh ask_618713_Brand170075', '&lt;img src=&quot;phpfile/reg_p_img/17252929223272IMG_4562.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Jollof rice&lt;br&gt; PRICE: â‚¦5,700&lt;br&gt; DICRIPTION: One take away of jollof rice with chicken&lt;br&gt;&lt;hr&gt;', '5700', 'delivery', 'delivery_6296241725295229', '1', '', ''),
(25, 'Akindele kehinde ', 'Fayose ', '080736372827', 'Keeny_40348_Brand', '1725439950Keeny_40348_Brand128641', '&lt;img src=&quot;phpfile/reg_p_img/17249402049738IMG_4383.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 13 Pro max&lt;br&gt; PRICE: â‚¦1,100,000&lt;br&gt; DICRIPTION: IPhone 13 Pro Max  new 128gb&lt;br&gt;&lt;hr&gt;', '1100000', 'delivery', 'delivery_2557251725440016', '1', '1', ''),
(26, 'Akindele kehinde ', 'Fayose', '08063728282', 'KehkehAsk_17674_Brand', '1725440744KehkehAsk_17674_Brand271032', '&lt;img src=&quot;phpfile/reg_p_img/17247882532392IMG_4326.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 4&lt;br&gt; PRICE: â‚¦300,000&lt;br&gt; DICRIPTION: Kit 4&lt;br&gt;&lt;hr&gt;', '300000', 'delivery', 'delivery_4632261725440830', '1', '', ''),
(27, 'Vellis', 'Ndjdn', '082827272', 'Keeny_40348_Brand', '1725444592Keeny_40348_Brand837173', '&lt;img src=&quot;phpfile/reg_p_img/17249401251612IMG_4382.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 13 pro&lt;br&gt; PRICE: â‚¦830,000&lt;br&gt; DICRIPTION: IPhone 13 Pro new 128gb&lt;br&gt;&lt;hr&gt;', '830000', 'delivery', 'delivery_7626271725444646', '1', '1', ''),
(28, 'Ala', 'Bsbsb', '9828282827373', 'Keeny_40348_Brand', '1725455321Keeny_40348_Brand889487', '&lt;img src=&quot;phpfile/reg_p_img/17249411409800IMG_4388.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: THE P COAT&lt;br&gt; PRICE: â‚¦30,000&lt;br&gt; DICRIPTION: THE P COAT&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17249404669075IMG_4384.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: BLUE L-V KIDS SNEAKERS&lt;br&gt; PRICE: â‚¦44,000&lt;br&gt; DICRIPTION: BLUE L-V KIDS SNEAKERS PREORDER&lt;br&gt;&lt;hr&gt;', '74000', 'delivery', 'delivery_1961281725455467', '1', '1', ''),
(29, 'Monkey', 'London', '09125036476', '768317', '1725457753768317954372', '&lt;img src=&quot;phpfile/reg_p_img/1725457392930117254577859222843959462226278900.jpg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: New age powerbank &lt;br&gt; PRICE: â‚¦55,000&lt;br&gt; DICRIPTION:  New age powerbank\r\n50000 mah&lt;br&gt;&lt;hr&gt;', '55000', 'carryout', 'carryout_5938291725457860', '1', '', ''),
(30, 'Akindele kenny', 'Abete', '08103226226', '485319', '172570730348531988408', '&lt;img src=&quot;phpfile/reg_p_img/17257072446329b712e344-f825-4513-8ae5-26ecf00bc98b.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Cake and fruit parfait &lt;br&gt; PRICE: â‚¦2,000&lt;br&gt; DICRIPTION: Cake and fruit parfait:SM&lt;br&gt;&lt;hr&gt;', '2000', 'carryout', 'carryout_7012301725707362', '1', '', ''),
(31, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08103226226', 'Keeny_40348_Brand', '1725738311Keeny_40348_Brand589433', '&lt;img src=&quot;phpfile/reg_p_img/17249397606404IMG_4380.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 14&lt;br&gt; PRICE: â‚¦850,000&lt;br&gt; DICRIPTION: IPhone 14 new&lt;br&gt;&lt;hr&gt;', '850000', 'carryout', 'carryout_3031311725738350', '1', '1', ''),
(32, 'Goodness ', 'From uk', '09065973154', '625120', '1726240774625120625444', '&lt;img src=&quot;phpfile/reg_p_img/17262392987157IMG_1938.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IG&lt;br&gt; PRICE: â‚¦5,000&lt;br&gt; DICRIPTION: 5years ups ðŸ‡ºðŸ‡¸ &lt;br&gt;&lt;hr&gt;', '5000', 'delivery', 'delivery_3145321726240834', '1', '1', ''),
(33, 'Gggg', 'Hhsh', '09065434334', '625120', '1726240774625120625444', '&lt;img src=&quot;phpfile/reg_p_img/17262392987157IMG_1938.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IG&lt;br&gt; PRICE: â‚¦5,000&lt;br&gt; DICRIPTION: 5years ups ðŸ‡ºðŸ‡¸ &lt;br&gt;&lt;hr&gt;', '5000', 'delivery', 'delivery_374331726241009', '1', '1', ''),
(34, 'Ola Samuel ', 'Ileileri street Lagos num 27', '09174837463', 'Keeny_40348_Brand', '1726511130Keeny_40348_Brand770932', '&lt;img src=&quot;phpfile/reg_p_img/17249405546298IMG_4385.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: SNEAKERS&lt;br&gt; PRICE: â‚¦37,000&lt;br&gt; DICRIPTION: PINK G SNEAKERS&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17249412541050IMG_4389.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: G TRACK SUIT&lt;br&gt; PRICE: â‚¦80,000&lt;br&gt; DICRIPTION: G TRACK SUIT&lt;br&gt;&lt;hr&gt;', '117000', 'delivery', 'delivery_4092341726511286', '1', '', ''),
(35, 'Juan Francisco Garc&iacute;a Flores', 'C. Falsa 445\r\nPiso 2, Apartamento 1\r\nEntre calle Volc&aacute;n y calle Montes Blancos, cerca de la estaci&oacute;n de metro', '5553428400', 'Keeny_40348_Brand', '1726615942Keeny_40348_Brand988780', '&lt;img src=&quot;phpfile/reg_p_img/17249405546298IMG_4385.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: SNEAKERS&lt;br&gt; PRICE: â‚¦37,000&lt;br&gt; DICRIPTION: PINK G SNEAKERS&lt;br&gt;&lt;hr&gt;', '37000', 'delivery', 'delivery_9856351726616018', '1', '', ''),
(36, 'asds', 'nsknzn', '98762781089', 'Keeny_40348_Brand', '1726683746Keeny_40348_Brand679282', '&lt;img src=&quot;phpfile/reg_p_img/1724940853444IMG_4386.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: SCARF CHAIN BAG&lt;br&gt; PRICE: â‚¦10,500&lt;br&gt; DICRIPTION: SCARF CHAIN BAG &lt;br&gt;&lt;hr&gt;', '10500', 'delivery', 'delivery_2902361726683795', '1', '', ''),
(37, 'jjjjj', 'jjhgfgh', '56754323456', 'Keeny_40348_Brand', '1726783980Keeny_40348_Brand341682', '&lt;img src=&quot;phpfile/reg_p_img/17249404669075IMG_4384.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: BLUE L-V KIDS SNEAKERS&lt;br&gt; PRICE: â‚¦44,000&lt;br&gt; DICRIPTION: BLUE L-V KIDS SNEAKERS PREORDER&lt;br&gt;&lt;hr&gt;', '44000', 'delivery', 'delivery_9218371726784016', '1', '', ''),
(38, 'mm,mmm', 'hghjj hj knm ,mn m,n mn,', '767566454234', 'Keeny_40348_Brand', '1726784049Keeny_40348_Brand952140', '&lt;img src=&quot;phpfile/reg_p_img/17249412541050IMG_4389.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: G TRACK SUIT&lt;br&gt; PRICE: â‚¦80,000&lt;br&gt; DICRIPTION: G TRACK SUIT&lt;br&gt;&lt;hr&gt;', '80000', 'delivery', 'delivery_6770381726784087', '1', '', ''),
(39, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '090737381', 'KehkehAsk_17674_Brand', '1727041677KehkehAsk_17674_Brand232915', '&lt;img src=&quot;phpfile/reg_p_img/17255412443751IMG_4627.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Blender 8500W&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Silver Crest 2 Litres German Industrial Blender 8500W&lt;br&gt;&lt;hr&gt;', '35000', 'delivery', 'delivery_4210391727041704', '1', '', ''),
(40, 'Omisele', 'Ileoluwa 53', '08103226226', 'KehkehAsk_17674_Brand', '1727041742KehkehAsk_17674_Brand88450', '&lt;img src=&quot;phpfile/reg_p_img/17247881304939IMG_4328.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 2&lt;br&gt; PRICE: â‚¦150,000&lt;br&gt; DICRIPTION: Kit 2&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17247882532392IMG_4326.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 4&lt;br&gt; PRICE: â‚¦300,000&lt;br&gt; DICRIPTION: Kit 4&lt;br&gt;&lt;hr&gt;', '450000', 'carryout', 'carryout_5222401727041780', '1', '', ''),
(41, 'Kenny', 'Hi bdb', '08103226226', 'KehkehAsk_17674_Brand', '1727041742KehkehAsk_17674_Brand88450', '&lt;img src=&quot;phpfile/reg_p_img/17247881304939IMG_4328.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 2&lt;br&gt; PRICE: â‚¦150,000&lt;br&gt; DICRIPTION: Kit 2&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17247882532392IMG_4326.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 4&lt;br&gt; PRICE: â‚¦300,000&lt;br&gt; DICRIPTION: Kit 4&lt;br&gt;&lt;hr&gt;', '450000', 'delivery', 'delivery_4345411727041816', '1', '', ''),
(42, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '0917373882', 'KehkehAsk_17674_Brand', '1727112635KehkehAsk_17674_Brand885806', '&lt;img src=&quot;phpfile/reg_p_img/17247882532392IMG_4326.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 4&lt;br&gt; PRICE: â‚¦300,000&lt;br&gt; DICRIPTION: Kit 4&lt;br&gt;&lt;hr&gt;', '300000', 'delivery', 'delivery_7297421727112673', '1', '', ''),
(43, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08167985446', 'KehkehAsk_17674_Brand', '1727112635KehkehAsk_17674_Brand885806', '&lt;img src=&quot;phpfile/reg_p_img/17247880869053IMG_4330.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 1&lt;br&gt; PRICE: â‚¦200,000&lt;br&gt; DICRIPTION: Kit 1&lt;br&gt;&lt;hr&gt;', '200000', 'delivery', 'delivery_1322431727112724', '1', '', ''),
(44, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08966633444', 'KehkehAsk_17674_Brand', '1727165370KehkehAsk_17674_Brand684468', '&lt;img src=&quot;phpfile/reg_p_img/17255412443751IMG_4627.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Blender 8500W&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Silver Crest 2 Litres German Industrial Blender 8500W&lt;br&gt;&lt;hr&gt;', '35000', 'carryout', 'carryout_179441727165392', '1', '', ''),
(45, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '0906457844', 'Keeny_40348_Brand', '1727165370KehkehAsk_17674_Brand684468', '&lt;img src=&quot;phpfile/reg_p_img/17249412541050IMG_4389.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: G TRACK SUIT&lt;br&gt; PRICE: â‚¦80,000&lt;br&gt; DICRIPTION: G TRACK SUIT&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17249409327374IMG_4387.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: BUTTERFLY BAG&lt;br&gt; PRICE: â‚¦16,000&lt;br&gt; DICRIPTION: BUTTERFLY BAG&lt;br&gt;&lt;hr&gt;', '96000', 'delivery', 'delivery_8687451727165596', '1', '', ''),
(46, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '0908376883', 'KehkehAsk_17674_Brand', '1727255948KehkehAsk_17674_Brand213045', '&lt;img src=&quot;phpfile/reg_p_img/17247882532392IMG_4326.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 4&lt;br&gt; PRICE: â‚¦300,000&lt;br&gt; DICRIPTION: Kit 4&lt;br&gt;&lt;hr&gt;', '300000', 'delivery', 'delivery_7800461727255964', '1', '', ''),
(47, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '300', 'KehkehAsk_17674_Brand', '1727257893KehkehAsk_17674_Brand441761', '&lt;img src=&quot;phpfile/reg_p_img/17247882532392IMG_4326.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 4&lt;br&gt; PRICE: â‚¦300,000&lt;br&gt; DICRIPTION: Kit 4&lt;br&gt;&lt;hr&gt;', 'item_plus_goplace', 'delivery', 'delivery_8792471727258441', '1', '', ''),
(48, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08644433', 'KehkehAsk_17674_Brand', '1727258872KehkehAsk_17674_Brand972172', '&lt;img src=&quot;phpfile/reg_p_img/17255410833051IMG_4625.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Multi-Use Programmable Pressure Cooker&lt;br&gt; PRICE: â‚¦195,000&lt;br&gt; DICRIPTION: 6-in-1 Multi-Use Programmable Pressure Cooker, Slow Cooker, Rice Cooker, Steamer, Saut&eacute;, &amp; Food Warmer, 6 Qt, Stainless Steel&lt;br&gt;&lt;hr&gt;', '195000', 'delivery', 'delivery_8797481727258891', '1', '', ''),
(49, 'Kenny', 'Hi hu', '3000', 'KehkehAsk_17674_Brand', '1727260437KehkehAsk_17674_Brand563049', '&lt;img src=&quot;phpfile/reg_p_img/17255412443751IMG_4627.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Blender 8500W&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Silver Crest 2 Litres German Industrial Blender 8500W&lt;br&gt;&lt;hr&gt;', '40000', 'delivery', 'delivery_7905491727260458', '1', '', 'Banana high land // Price: 5000'),
(50, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09046266365', 'Keeny_40348_Brand', '1727266721KehkehAsk_17674_Brand271327', '&lt;img src=&quot;phpfile/reg_p_img/17249411409800IMG_4388.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: THE P COAT&lt;br&gt; PRICE: â‚¦30,000&lt;br&gt; DICRIPTION: THE P COAT&lt;br&gt;&lt;hr&gt;', '33000', 'delivery', 'delivery_9993501727267129', '1', '', 'Adebayo ileoluwa roads 9 // Price: 3000'),
(51, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09073738281', 'KehkehAsk_17674_Brand', '1727336956Keeny_40348_Brand941030', '&lt;img src=&quot;phpfile/reg_p_img/17247883245416IMG_4325.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Kit 5&lt;br&gt; PRICE: â‚¦340,080&lt;br&gt; DICRIPTION: Kit 5&lt;br&gt;&lt;hr&gt;', '344080', 'carryout', 'carryout_9181511727337801', '1', '', 'Lekki phase 1 // Price: 4000'),
(52, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09064343256', 'Keeny_40348_Brand', '1727341891Keeny_40348_Brand288133', '&lt;img src=&quot;phpfile/reg_p_img/17273050991859IMG_5015.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: DELL Latitude 3310&lt;br&gt; PRICE: â‚¦870,000&lt;br&gt; DICRIPTION: DELL Latitude 3310 Intel&reg;ï¸ Core&trade;ï¸ I5-Quad Core 256GB SSD 16GB RAM 13.3&quot;WIN10 Pro&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/1727304848701IMG_5013.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hp Stream 11&lt;br&gt; PRICE: â‚¦170,000&lt;br&gt; DICRIPTION: Hp Stream 11 Intel Celeron 2GB RAM- 32GB HDD WIN 10&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17273052709989IMG_5017.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: XIEDE X059 DDR4 Laptop RAM&lt;br&gt; PRICE: â‚¦98,000&lt;br&gt; DICRIPTION: XIEDE X059 DDR4 Laptop RAM, Memory Capacity: 16GB 2133MHz 16GB Fully&lt;br&gt;&lt;hr&gt;', '1141000', 'delivery', 'delivery_4512521727342059', '1', '', 'Adebayo ileoluwa roads 9 // Price: 3000'),
(53, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09064343256', 'Keeny_40348_Brand', '1727341891Keeny_40348_Brand288133', '&lt;img src=&quot;phpfile/reg_p_img/17273050991859IMG_5015.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: DELL Latitude 3310&lt;br&gt; PRICE: â‚¦870,000&lt;br&gt; DICRIPTION: DELL Latitude 3310 Intel&reg;ï¸ Core&trade;ï¸ I5-Quad Core 256GB SSD 16GB RAM 13.3&quot;WIN10 Pro&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/1727304848701IMG_5013.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hp Stream 11&lt;br&gt; PRICE: â‚¦170,000&lt;br&gt; DICRIPTION: Hp Stream 11 Intel Celeron 2GB RAM- 32GB HDD WIN 10&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17273052709989IMG_5017.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: XIEDE X059 DDR4 Laptop RAM&lt;br&gt; PRICE: â‚¦98,000&lt;br&gt; DICRIPTION: XIEDE X059 DDR4 Laptop RAM, Memory Capacity: 16GB 2133MHz 16GB Fully&lt;br&gt;&lt;hr&gt;', '1141000', 'delivery', 'delivery_4080531727342062', '1', '1', 'Adebayo ileoluwa roads 9 // Price: 3000'),
(54, 'Aka', 'Ikere ekiti', '09074246777', '731421', '1727345930731421817822', '&lt;img src=&quot;phpfile/reg_p_img/17273458746153IMG_0508.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: 12promax&lt;br&gt; PRICE: â‚¦700,000&lt;br&gt; DICRIPTION: 12pro max \r\n128gb&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17273458746153IMG_0508.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: 12promax&lt;br&gt; PRICE: â‚¦700,000&lt;br&gt; DICRIPTION: 12pro max \r\n128gb&lt;br&gt;&lt;hr&gt;', '1400000', 'delivery', 'delivery_6026541727346060', '1', '', ''),
(55, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '090872737261', 'Keeny_40348_Brand', '1727345588Keeny_40348_Brand562254', '&lt;img src=&quot;phpfile/reg_p_img/17273052709989IMG_5017.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: XIEDE X059 DDR4 Laptop RAM&lt;br&gt; PRICE: â‚¦98,000&lt;br&gt; DICRIPTION: XIEDE X059 DDR4 Laptop RAM, Memory Capacity: 16GB 2133MHz 16GB Fully&lt;br&gt;&lt;hr&gt;', '104000', 'delivery', 'delivery_4827551727347415', '1', '', 'Boluwadoro street  // Price: 6000'),
(56, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09065335433', 'Keeny_40348_Brand', '1727345588Keeny_40348_Brand562254', '&lt;img src=&quot;phpfile/reg_p_img/17273054326278IMG_5018.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hp ProBook 11&lt;br&gt; PRICE: â‚¦390,000&lt;br&gt; DICRIPTION: Hp ProBook 11 X360- TOUCH Intel Celeron 256GB 4GB RAM WIN10 Pro+ USB LIGHT FOR KEYBOARD&lt;br&gt;&lt;hr&gt;', '393000', 'delivery', 'delivery_2210561727348036', '1', '', 'Adebayo ileoluwa roads 9 // Price: 3000'),
(57, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09087545664', 'KehkehAsk_17674_Brand', '1727478601Keeny_40348_Brand537335', '&lt;img src=&quot;phpfile/reg_p_img/17255408208328IMG_4624.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: The 910 Pressure Cooker&lt;br&gt; PRICE: â‚¦65,000&lt;br&gt; DICRIPTION: The 910 Pressure Cooker\r\n10.5 qt Cooker/Canner&lt;br&gt;&lt;hr&gt;', '65000', 'delivery', 'delivery_7519571727478681', '1', '', ''),
(58, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '575688', 'KehkehAsk_17674_Brand', '1727478601Keeny_40348_Brand537335', '&lt;img src=&quot;phpfile/reg_p_img/17255412443751IMG_4627.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Blender 8500W&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Silver Crest 2 Litres German Industrial Blender 8500W&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17255412443751IMG_4627.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Blender 8500W&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Silver Crest 2 Litres German Industrial Blender 8500W&lt;br&gt;&lt;hr&gt;', '70000', 'delivery', 'delivery_1179581727479144', '1', '', ''),
(59, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '7536897556', 'KehkehAsk_17674_Brand', '1727478601Keeny_40348_Brand537335', '&lt;img src=&quot;phpfile/reg_p_img/17255412443751IMG_4627.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Blender 8500W&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Silver Crest 2 Litres German Industrial Blender 8500W&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17255412443751IMG_4627.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Blender 8500W&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Silver Crest 2 Litres German Industrial Blender 8500W&lt;br&gt;&lt;hr&gt;', '70000', 'delivery', 'delivery_757591727479176', '1', '', ''),
(60, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '4', 'KehkehAsk_17674_Brand', '1727478601Keeny_40348_Brand537335', '&lt;img src=&quot;phpfile/reg_p_img/17255412443751IMG_4627.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Blender 8500W&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Silver Crest 2 Litres German Industrial Blender 8500W&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;phpfile/reg_p_img/17255412443751IMG_4627.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Blender 8500W&lt;br&gt; PRICE: â‚¦35,000&lt;br&gt; DICRIPTION: Silver Crest 2 Litres German Industrial Blender 8500W&lt;br&gt;&lt;hr&gt;', '70000', 'delivery', 'delivery_6221601727479264', '1', '', ''),
(61, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '684335689', 'KehkehAsk_17674_Brand', '1727479288KehkehAsk_17674_Brand937511', '&lt;img src=&quot;phpfile/reg_p_img/17255408208328IMG_4624.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: The 910 Pressure Cooker&lt;br&gt; PRICE: â‚¦65,000&lt;br&gt; DICRIPTION: The 910 Pressure Cooker\r\n10.5 qt Cooker/Canner&lt;br&gt;&lt;hr&gt;', '65000', 'delivery', 'delivery_6418611727479308', '1', '1', ''),
(62, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '444555777888', '970923', '1727480460Keeny_40348_Brand940157', '&lt;img src=&quot;phpfile/reg_p_img/17274801186336IMG_5013.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hp stream 11&lt;br&gt; PRICE: â‚¦170,000&lt;br&gt; DICRIPTION: Hp stream &lt;br&gt;&lt;hr&gt;', '170000', 'delivery', 'delivery_2509621727480585', '1', '', ''),
(63, 'Aka', 'Ile', '5655', '970923', '1727519034970923458573', '&lt;img src=&quot;phpfile/reg_p_img/17274810045433BAC53136-DD9F-4D4B-9F93-1EDB21083820.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hg&lt;br&gt; PRICE: â‚¦45,000&lt;br&gt; DICRIPTION: Gh&lt;br&gt;&lt;hr&gt;', '45000', 'delivery', 'delivery_1746631727519615', '1', '1', ''),
(64, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '453223', '970923', '1727519034970923458573', '&lt;img src=&quot;phpfile/reg_p_img/17274810045433BAC53136-DD9F-4D4B-9F93-1EDB21083820.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hg&lt;br&gt; PRICE: â‚¦45,000&lt;br&gt; DICRIPTION: Gh&lt;br&gt;&lt;hr&gt;', '45000', 'delivery', 'delivery_2524641727519711', '1', '', ''),
(65, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '67', '970923', '1727519034970923458573', '&lt;img src=&quot;phpfile/reg_p_img/17274810045433BAC53136-DD9F-4D4B-9F93-1EDB21083820.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hg&lt;br&gt; PRICE: â‚¦45,000&lt;br&gt; DICRIPTION: Gh&lt;br&gt;&lt;hr&gt;', '45000', 'delivery', 'delivery_9507651727520020', '1', '', ''),
(66, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '666', '970923', '1727519034970923458573', '&lt;img src=&quot;phpfile/reg_p_img/17274810045433BAC53136-DD9F-4D4B-9F93-1EDB21083820.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hg&lt;br&gt; PRICE: â‚¦45,000&lt;br&gt; DICRIPTION: Gh&lt;br&gt;&lt;hr&gt;', '45000', 'delivery', 'delivery_467661727520044', '1', '', ''),
(67, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '6543', '970923', '1727520146970923701121', '&lt;img src=&quot;phpfile/reg_p_img/17274810045433BAC53136-DD9F-4D4B-9F93-1EDB21083820.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hg&lt;br&gt; PRICE: â‚¦45,000&lt;br&gt; DICRIPTION: Gh&lt;br&gt;&lt;hr&gt;', '45000', 'delivery', 'delivery_8747671727520162', '1', '', ''),
(68, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '67876', '970923', '1727520146970923701121', '&lt;img src=&quot;phpfile/reg_p_img/17274810045433BAC53136-DD9F-4D4B-9F93-1EDB21083820.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hg&lt;br&gt; PRICE: â‚¦45,000&lt;br&gt; DICRIPTION: Gh&lt;br&gt;&lt;hr&gt;', '45000', 'delivery', 'delivery_7695681727520246', '1', '1', ''),
(69, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '6786323456', '970923', '1727944345970923159741', '&lt;img src=&quot;phpfile/reg_p_img/17274801186336IMG_5013.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hp stream 11&lt;br&gt; PRICE: â‚¦170,000&lt;br&gt; DICRIPTION: Hp stream &lt;br&gt;&lt;hr&gt;', '174000', 'delivery', 'delivery_6297691727944923', '1', '1', 'Banana high land  // Price: 4000'),
(70, 'Kenny', 'Sammy', '090837377727', 'KehkehAsk_17674_Brand', '1728315410KehkehAsk_17674_Brand155096', '&lt;img src=&quot;phpfile/reg_p_img/17255410833051IMG_4625.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Multi-Use Programmable Pressure Cooker&lt;br&gt; PRICE: â‚¦195,000&lt;br&gt; DICRIPTION: 6-in-1 Multi-Use Programmable Pressure Cooker, Slow Cooker, Rice Cooker, Steamer, Saut&eacute;, &amp; Food Warmer, 6 Qt, Stainless Steel&lt;br&gt;&lt;hr&gt;', '205000', 'delivery', 'delivery_7966701728315541', '1', '1', 'Leki phase 6 // Price: 10000'),
(71, 'Kenny', 'House', '090653322456', '131725', '1728333205131725971469', '&lt;img src=&quot;phpfile/reg_p_img/17283331337707IMG_5258.jpeg&quot; class=&quot;or_image&quot; alt=&quot;service order&quot;&gt;&lt;br&gt; PRODUCT: Aka&lt;br&gt; PRICE: â‚¦400,000&lt;br&gt; DICRIPTION: Aka&lt;br&gt;&lt;hr&gt;', '400000', 'delivery', 'delivery_3828711728333243', '1', '', ''),
(72, 'Akindele', 'Iyin', '09045332344', 'Keeny_40348_Brand', '1729166424Keeny_40348_Brand336780', '&lt;img src=&quot;phpfile/reg_p_img/17249401251612IMG_4382.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 13 pro&lt;br&gt; PRICE: â‚¦830,000&lt;br&gt; DICRIPTION: IPhone 13 Pro new 128gb&lt;br&gt;&lt;hr&gt;', '836000', 'delivery', 'delivery_68721729166475', '1', '1', 'Boluwadoro street  // Price: 6000'),
(73, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '0987654322', '970923', '1729206521970923467428', '&lt;img src=&quot;phpfile/reg_p_img/17274801186336IMG_5013.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hp stream 11&lt;br&gt; PRICE: â‚¦170,000&lt;br&gt; DICRIPTION: Hp stream &lt;br&gt;&lt;hr&gt;', '174000', 'delivery', 'delivery_6598731729206558', '', '', 'Abete r // Price: 4000'),
(74, 'Ayodele', 'Engr', '08068880682', '573826', '1729524829573826412463', '&lt;img src=&quot;phpfile/reg_p_img/17295230582952IMG_5409.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hp 15 VICTUS&lt;br&gt; PRICE: â‚¦1,400,000&lt;br&gt; DICRIPTION: Hp 15 VICTUS GAMING, 12TH GEN INTEL CORE I5, 16GB RAM, 512GB SSD,4GB NVIDIA RTX 2050 WINS 11&lt;br&gt;&lt;hr&gt;', '1400000', 'delivery', 'delivery_9528741729524994', '1', '', ''),
(75, 'Akindele ', 'Ileileri', '09018363672', '573826', '172959307257382618655', '&lt;img src=&quot;phpfile/reg_p_img/17295234856853IMG_5411.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Apple MacBook Pro&lt;br&gt; PRICE: â‚¦4,800,000&lt;br&gt; DICRIPTION: Apple MacBook Pro 16.2&quot; - M3 Pro/12C/18C GPU/ 36GB/512GB - BLACK&lt;br&gt;&lt;hr&gt;', '4800000', 'delivery', 'delivery_8797751729593121', '1', '', ''),
(76, 'Akindele Kehinde Samuel ', 'Iyin', '09014653234', '805728', '1729596493805728823879', '&lt;img src=&quot;phpfile/reg_p_img/17295964062369IMG_5396.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 13&lt;br&gt; PRICE: â‚¦800,000&lt;br&gt; DICRIPTION: IPhone 13&lt;br&gt;&lt;hr&gt;', '800000', 'delivery', 'delivery_7037761729596558', '1', '', ''),
(77, 'Olu', 'Ikeja', '09014291494', '573826', '172973530057382624067', '&lt;img src=&quot;../../reg_img/17295236576468IMG_5412.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: DELL ALIENWARE&lt;br&gt; PRICE: â‚¦3,850,000&lt;br&gt; DICRIPTION: DELL ALIENWARE M18 R1, I9-13thGEN, 1TB/32GB, 4080&lt;br&gt;&lt;hr&gt;', '3850000', 'delivery', 'delivery_6091771729736270', '1', '', ''),
(78, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09075432367', '573826', '1729767258573826654378', '&lt;img src=&quot;../../reg_img/17295233616743IMG_5410.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Lenovo Ideapad &lt;br&gt; PRICE: â‚¦400,000&lt;br&gt; DICRIPTION: Lenovo Ideapad Intel Celeron,4GB 256GB SSD Wins 11+Free Mouse&lt;br&gt;&lt;hr&gt;', '400000', 'delivery', 'delivery_8438781729767408', '1', '1', ''),
(79, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08103226226', '130829', '172985287013082982539', '&lt;img src=&quot;../reg_img/17298528524765IMG_5450.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Land Rover&lt;br&gt; PRICE: â‚¦380,000,000&lt;br&gt; DICRIPTION: Land Rover Range Rover Vogue 2023 Black&lt;br&gt;&lt;hr&gt;', '380000000', 'delivery', 'delivery_2218791729852902', '1', '', ''),
(80, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08103226226', '130829', '1729855802130829936833', '&lt;img src=&quot;../reg_img/17298528524765IMG_5450.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Land Rover&lt;br&gt; PRICE: â‚¦480,000,000&lt;br&gt; DICRIPTION: Land Rover Range Rover Vogue 2023 Black&lt;br&gt;&lt;hr&gt;', '480000000', 'delivery', 'delivery_7539801729855862', '1', '1', ''),
(81, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '8103226226', '606630', '1729857798606630904917', '&lt;img src=&quot;../../reg_img/17298572326390IMG_5456.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 16&lt;br&gt; PRICE: â‚¦2,599,000&lt;br&gt; DICRIPTION: IPhone 16 512GB&lt;br&gt;&lt;hr&gt;', '2599000', 'delivery', 'delivery_4756811729858840', '1', '1', ''),
(82, 'Samuel Kenny ', 'Iyin Apuabi Street No 29\r\n2 Flat', '08103226226', '606630', '1730093006606630180084', '&lt;img src=&quot;../../reg_img/17298737352581IMG_5457.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 15&lt;br&gt; PRICE: â‚¦1,100,000&lt;br&gt; DICRIPTION: Apple iPhone 15 128 GB Pink&lt;br&gt;&lt;hr&gt;', '1100000', 'delivery', 'delivery_561821730093050', '1', '1', ''),
(83, 'Akindele Samuel Kehinde', 'Kenny Testing sir ', '08103226226', '661132', '1730374094606630475053', '&lt;img src=&quot;../../reg_img/173036569532IMG_5538.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: SSD &lt;br&gt; PRICE: â‚¦30,000&lt;br&gt; DICRIPTION: SSD 256GB&lt;br&gt;&lt;hr&gt;', '30000', 'delivery', 'delivery_4572831730374498', '', '', ''),
(84, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08103226226', '606630', '1730446842606630314300', '&lt;img src=&quot;../../reg_img/17298765011933IMG_5464.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone XS max&lt;br&gt; PRICE: â‚¦350,000&lt;br&gt; DICRIPTION: IPhone XS Max 64 GB uk used &lt;br&gt;&lt;hr&gt;&lt;img src=&quot;../../reg_img/17298741789330IMG_5460.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 13&lt;br&gt; PRICE: â‚¦735,000&lt;br&gt; DICRIPTION: Apple iPhone 13 138 GB&lt;br&gt;&lt;hr&gt;', '1085000', 'delivery', 'delivery_4341841730447514', '1', '', ''),
(85, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08104336557', 'Keeny_40348_Brand', '1731370841Keeny_40348_Brand269358', '&lt;img src=&quot;../reg_img/17273054326278IMG_5018.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hp ProBook 11&lt;br&gt; PRICE: â‚¦390,000&lt;br&gt; DICRIPTION: Hp ProBook 11 X360- TOUCH Intel Celeron 256GB 4GB RAM WIN10 Pro+ USB LIGHT FOR KEYBOARD&lt;br&gt;&lt;hr&gt;', '394000', 'delivery', 'delivery_339851731370888', '1', '1', 'Ikere  // Price: 4000'),
(86, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09067546444', '606630', '1731370841Keeny_40348_Brand269358', '&lt;img src=&quot;../../reg_img/17298765011933IMG_5464.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone XS max&lt;br&gt; PRICE: â‚¦350,000&lt;br&gt; DICRIPTION: IPhone XS Max 64 GB uk used &lt;br&gt;&lt;hr&gt;', '350000', 'delivery', 'delivery_2575861731371047', '1', '', ''),
(87, 'a', 'a', '34', '606630', '1732014205606630457163', '&lt;img src=&quot;../../reg_img/17298572326390IMG_5456.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 16&lt;br&gt; PRICE: â‚¦2,599,000&lt;br&gt; DICRIPTION: IPhone 16 512GB&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;../../reg_img/17298737352581IMG_5457.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 15&lt;br&gt; PRICE: â‚¦1,100,000&lt;br&gt; DICRIPTION: Apple iPhone 15 128 GB Pink&lt;br&gt;&lt;hr&gt;', '3699000', 'delivery', 'delivery_6530871732014768', '1', '', ''),
(88, 'aka', 'aka', '09039323', '606630', '1732014205606630457163', '&lt;img src=&quot;../../reg_img/173004482260575BBC5938-8745-490D-8519-03FF6BC0EF29.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Dry cleaning &lt;br&gt; PRICE: â‚¦200&lt;br&gt; DICRIPTION: Dry cleaning per cloth&lt;br&gt;&lt;hr&gt;', '200', 'delivery', 'delivery_4506881732016037', '1', '1', ''),
(89, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '676533', '606630', '1732442073606630544281', '&lt;img src=&quot;../../reg_img/17298753718462IMG_5462.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 11 &lt;br&gt; PRICE: â‚¦580,000&lt;br&gt; DICRIPTION: Apple IPhone 11 6.1-Inch Liquid Retina LCD (4GB RAM, 64GB ROM) IOS 13, (12MP+12MP)+12MP 4G LTE Smartphone-Nano Sim-PURPLE&lt;br&gt;&lt;hr&gt;', '580000', 'delivery', 'delivery_3462891732442315', '1', '', ''),
(90, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '6765443222', '606630', '1732442073606630544281', '&lt;img src=&quot;../../reg_img/17298753718462IMG_5462.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 11 &lt;br&gt; PRICE: â‚¦580,000&lt;br&gt; DICRIPTION: Apple IPhone 11 6.1-Inch Liquid Retina LCD (4GB RAM, 64GB ROM) IOS 13, (12MP+12MP)+12MP 4G LTE Smartphone-Nano Sim-PURPLE&lt;br&gt;&lt;hr&gt;', '580000', 'delivery', 'delivery_941901732442336', '1', '', ''),
(91, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '57444332', '606630', '1732442073606630544281', '&lt;img src=&quot;../../reg_img/17298753718462IMG_5462.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 11 &lt;br&gt; PRICE: â‚¦580,000&lt;br&gt; DICRIPTION: Apple IPhone 11 6.1-Inch Liquid Retina LCD (4GB RAM, 64GB ROM) IOS 13, (12MP+12MP)+12MP 4G LTE Smartphone-Nano Sim-PURPLE&lt;br&gt;&lt;hr&gt;', '580000', 'delivery', 'delivery_8184911732442352', '1', '', ''),
(92, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '68654321356', '606630', '1732442073606630544281', '&lt;img src=&quot;../../reg_img/17298753718462IMG_5462.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 11 &lt;br&gt; PRICE: â‚¦580,000&lt;br&gt; DICRIPTION: Apple IPhone 11 6.1-Inch Liquid Retina LCD (4GB RAM, 64GB ROM) IOS 13, (12MP+12MP)+12MP 4G LTE Smartphone-Nano Sim-PURPLE&lt;br&gt;&lt;hr&gt;', '580000', 'delivery', 'delivery_2282921732442386', '1', '', ''),
(93, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '346643224556', '606630', '1732442073606630544281', '&lt;img src=&quot;../../reg_img/17298753718462IMG_5462.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 11 &lt;br&gt; PRICE: â‚¦580,000&lt;br&gt; DICRIPTION: Apple IPhone 11 6.1-Inch Liquid Retina LCD (4GB RAM, 64GB ROM) IOS 13, (12MP+12MP)+12MP 4G LTE Smartphone-Nano Sim-PURPLE&lt;br&gt;&lt;hr&gt;', '580000', 'delivery', 'delivery_4457931732442433', '1', '', ''),
(94, 'hanna', 'ado bsiri', '09012343433', '606630', '1732523253606630182879', '&lt;img src=&quot;../../reg_img/1729876353502IMG_5465.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone XR &lt;br&gt; PRICE: â‚¦605,000&lt;br&gt; DICRIPTION: Apple IPhone XR - 6.1&quot; - 128GB ROM, 3GB RAM, 2942mAh - Coral&lt;br&gt;&lt;hr&gt;', '605000', 'carryout', 'carryout_771941732523598', '1', '', ''),
(95, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09057646433', '606630', '1732526030606630464662', '&lt;img src=&quot;../../reg_img/17298737352581IMG_5457.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 15&lt;br&gt; PRICE: â‚¦1,100,000&lt;br&gt; DICRIPTION: Apple iPhone 15 128 GB Pink&lt;br&gt;&lt;hr&gt;', '1100000', 'delivery', 'delivery_2643951732527459', '1', '', ''),
(96, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09014343533', 'Keeny_40348_Brand', '1733151332Keeny_40348_Brand685952', '&lt;img src=&quot;../reg_img/17249397606404IMG_4380.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 14&lt;br&gt; PRICE: â‚¦850,000&lt;br&gt; DICRIPTION: IPhone 14 new&lt;br&gt;&lt;hr&gt;', '856000', 'delivery', 'delivery_1861961733151428', '1', '', 'Boluwadoro street  // Price: 6000'),
(97, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08063326644', 'Keeny_40348_Brand', '1733169921Keeny_40348_Brand423893', '&lt;img src=&quot;../reg_img/17331698906816IMG_5911.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Jollof rice&lt;br&gt; PRICE: â‚¦4,500&lt;br&gt; DICRIPTION: Jollof rice with chicken plus takeaway money&lt;br&gt;&lt;hr&gt;', '10500', 'delivery', 'delivery_4569971733170054', '1', '', 'Boluwadoro street  // Price: 6000');
INSERT INTO `orders` (`or_id`, `who_or_name`, `who_or_address`, `who_or_phone_num`, `brand_unique_id`, `user_or_id`, `total_or_items`, `total_or_price`, `delivery_or_carryout`, `or_id_unique_id`, `or_view_or_not`, `or_status`, `goplace_price`) VALUES
(98, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09015675555', 'Keeny_40348_Brand', '1733169921Keeny_40348_Brand423893', '&lt;img src=&quot;../reg_img/17331709502113IMG_5916.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Efor riro&lt;br&gt; PRICE: â‚¦400&lt;br&gt; DICRIPTION: Efor riro per position&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;../reg_img/17331709502113IMG_5916.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Efor riro&lt;br&gt; PRICE: â‚¦400&lt;br&gt; DICRIPTION: Efor riro per position&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;../reg_img/17331710769113IMG_5917.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Fufu&lt;br&gt; PRICE: â‚¦500&lt;br&gt; DICRIPTION: One quantity of fufu&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;../reg_img/17331710769113IMG_5917.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Fufu&lt;br&gt; PRICE: â‚¦500&lt;br&gt; DICRIPTION: One quantity of fufu&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;../reg_img/17331710769113IMG_5917.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Fufu&lt;br&gt; PRICE: â‚¦500&lt;br&gt; DICRIPTION: One quantity of fufu&lt;br&gt;&lt;hr&gt;', '8300', 'delivery', 'delivery_3834981733171184', '1', '', 'Boluwadoro street  // Price: 6000'),
(99, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '0907655543', 'Keeny_40348_Brand', '1733226217Keeny_40348_Brand247207', '&lt;img src=&quot;../reg_img/17249401251612IMG_4382.png&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: IPhone 13 pro&lt;br&gt; PRICE: â‚¦830,000&lt;br&gt; DICRIPTION: IPhone 13 Pro new 128gb&lt;br&gt;&lt;hr&gt;', '834000', 'delivery', 'delivery_9465991733226609', '1', '1', 'Ikere  // Price: 4000'),
(100, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '09027362626', 'Keeny_40348_Brand', '1733307765Keeny_40348_Brand724332', '&lt;img src=&quot;../reg_img/17333027236941IMG_5924.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Gold necklace &lt;br&gt; PRICE: â‚¦12,000&lt;br&gt; DICRIPTION: Gold necklace For sell&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;../reg_img/17333031803715IMG_5929.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hoodie&lt;br&gt; PRICE: â‚¦40,000&lt;br&gt; DICRIPTION: Acquire Men Quality Hoodie&lt;br&gt;&lt;hr&gt;', '58000', 'delivery', 'delivery_84301001733309066', '1', '', 'Boluwadoro street  // Price: 6000'),
(101, 'Akindele Samuel Kehinde', 'Iyin Apuabi Street No 29\r\n2 Flat', '08103227764', 'Keeny_40348_Brand', '1733307765Keeny_40348_Brand724332', '&lt;img src=&quot;../reg_img/17333027236941IMG_5924.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Gold necklace &lt;br&gt; PRICE: â‚¦12,000&lt;br&gt; DICRIPTION: Gold necklace For sell&lt;br&gt;&lt;hr&gt;&lt;img src=&quot;../reg_img/17333031803715IMG_5929.jpeg&quot; class=&quot;or_image&quot; alt=&quot;Product order&quot;&gt;&lt;br&gt; PRODUCT: Hoodie&lt;br&gt; PRICE: â‚¦40,000&lt;br&gt; DICRIPTION: Acquire Men Quality Hoodie&lt;br&gt;&lt;hr&gt;', '58000', 'delivery', 'delivery_88901011733309086', '1', '1', 'Boluwadoro street  // Price: 6000');

-- --------------------------------------------------------

--
-- Table structure for table `premium_users`
--

CREATE TABLE `premium_users` (
  `premium_users_id` int(11) NOT NULL,
  `beand_unique_id` varchar(255) NOT NULL,
  `premium_expire` varchar(255) NOT NULL,
  `monthly_or_yearly` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `prem_us_unique_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reg_product`
--

CREATE TABLE `reg_product` (
  `product_id` int(11) NOT NULL,
  `p_unique_id` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_discription` varchar(255) NOT NULL,
  `p_category` varchar(255) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `brand_unique_id` varchar(255) NOT NULL,
  `reg_p_price` varchar(255) NOT NULL,
  `Other_product` varchar(255) NOT NULL,
  `Gadgets` varchar(255) NOT NULL,
  `Mobile_phones` varchar(255) NOT NULL,
  `Phone_accessories` varchar(255) NOT NULL,
  `Computers` varchar(255) NOT NULL,
  `Computer_accessories` varchar(255) NOT NULL,
  `Clothing_and_Fashion` varchar(255) NOT NULL,
  `Perfume_and_cologne` varchar(255) NOT NULL,
  `Furniture` varchar(255) NOT NULL,
  `Art_and_crafting_material` varchar(255) NOT NULL,
  `Skin_care` varchar(255) NOT NULL,
  `Car_dealer` varchar(255) NOT NULL,
  `Poster_and_art_work` varchar(255) NOT NULL,
  `Home_appliances` varchar(255) NOT NULL,
  `Interior_decoration` varchar(255) NOT NULL,
  `Electron_appliances` varchar(255) NOT NULL,
  `Kitchen_utensils` varchar(255) NOT NULL,
  `Wine_merchant` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg_product`
--

INSERT INTO `reg_product` (`product_id`, `p_unique_id`, `p_name`, `p_discription`, `p_category`, `p_image`, `brand_unique_id`, `reg_p_price`, `Other_product`, `Gadgets`, `Mobile_phones`, `Phone_accessories`, `Computers`, `Computer_accessories`, `Clothing_and_Fashion`, `Perfume_and_cologne`, `Furniture`, `Art_and_crafting_material`, `Skin_care`, `Car_dealer`, `Poster_and_art_work`, `Home_appliances`, `Interior_decoration`, `Electron_appliances`, `Kitchen_utensils`, `Wine_merchant`, `status`, `member`) VALUES
(26, 'Kit 2_2617636', 'Kit 2', 'Kit 2', 'Kitchen_utensils', '17247881304939IMG_4328.jpeg', 'KehkehAsk_17674_Brand', '150000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 'Kit 4_28207599', 'Kit 4', 'Kit 4', 'Kitchen_utensils', '17247882532392IMG_4326.jpeg', 'KehkehAsk_17674_Brand', '300000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 'Kit 5_29833424', 'Kit 5', 'Kit 5', 'Kitchen_utensils', '17247883245416IMG_4325.jpeg', 'KehkehAsk_17674_Brand', '340080', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 'Kit 1_30288309', 'Kit 1', 'Kit 1', 'Kitchen_utensils', '17248025829307IMG_4330.jpeg', 'Luno_82435_Brand', '26000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'Louis Vuitton shoe_32712395', 'Louis Vuitton shoe', 'Black loafers-2 pieces', 'Clothing_and_Fashion', '17248299992119Screenshot_20240517-194026_1.png', 'Bukolami_58536_Brand', '42000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 'Nike Benassi Slides _33165423', 'Nike Benassi Slides ', 'Nike Shoes | Wmns Nike Benassi Slides\r\nJust Do It Jdi Lavenders | Color: Purple/\r\nSilver | Size: Various', 'Clothing_and_Fashion', '17248392785244IMG_4362.jpeg', 'Luno_82435_Brand', '15000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 'Victoria&#039;s Secret Sweatpants_34411923', 'Victoria&#039;s Secret Sweatpants', 'Victoria&#039;s Secret Sweatpants Gym Pant Slim Fit Lounge NYC Angel Casual Blue XS', 'Clothing_and_Fashion', '1724839465817IMG_4364.jpeg', 'Luno_82435_Brand', '10000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'Chanel Black Luxury Brand_35203395', 'Chanel Black Luxury Brand', 'Chanel Black Luxury Brand Clothes Leggings and Crop Top Set For Women', 'Clothing_and_Fashion', '17248396303047IMG_4365.jpeg', 'Luno_82435_Brand', '22000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 'Gucci shoe_3676065', 'Gucci shoe', 'Gucci shoe', 'Clothing_and_Fashion', '1724839706795IMG_4366.jpeg', 'Luno_82435_Brand', '35000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 'Louis Vuitton shoe_37537785', 'Louis Vuitton shoe', 'Black loafers-2 pieces', 'Clothing_and_Fashion', '17248478645448Screenshot_20240517-194026_1.png', 'Nexaura_41877_Brand', '42000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 'Bracelet_39964978', 'Bracelet', 'Silver bracelet', 'Other_product', '17248703831669IMG-20240722-WA0139.jpg', 'Temmy accessories_745510_Brand', '4000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'Boxed Necklace and bracelet_40521394', 'Boxed Necklace and bracelet', 'Available in gold and silver ', 'Other_product', '17248707763974IMG-20240826-WA0176.jpg', 'Temmy accessories_745510_Brand', '6500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, ' Necklace_41482152', ' Necklace', 'Available in gold and silver ', 'Other_product', '17248708521485IMG-20240828-WA0048.jpg', 'Temmy accessories_745510_Brand', '4000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 'Classic Hand bead _42721944', 'Classic Hand bead ', 'Available', 'Other_product', '1724871854839Screenshot_20240828-195835.png', 'Temmy accessories_745510_Brand', '5000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, '3 in 1 Bangles_43421144', '3 in 1 Bangles', 'Also available in gold', 'Other_product', '1724871915592IMG-20240828-WA0053.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 'Fashion ring with box_44645126', 'Fashion ring with box', 'Available', 'Other_product', '17248721186055Screenshot_20240828-195930.png', 'Temmy accessories_745510_Brand', '2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 'Fashion bead necklace_45957269', 'Fashion bead necklace', 'In different designs', 'Other_product', '17248721644095IMG-20240826-WA0123.jpg', 'Temmy accessories_745510_Brand', '11000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'Fashion bead necklace_46712500', 'Fashion bead necklace', 'In different designs', 'Other_product', '17248721833029IMG-20240826-WA0123.jpg', 'Temmy accessories_745510_Brand', '11000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'Fashion bead necklace_47646875', 'Fashion bead necklace', 'In different designs', 'Other_product', '17248723769231IMG-20240826-WA0109.jpg', 'Temmy accessories_745510_Brand', '11000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 'Earring_48448666', 'Earring', 'Classic', 'Other_product', '17248724237428IMG-20240821-WA0018.jpg', 'Temmy accessories_745510_Brand', '5000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 'Earring_49672691', 'Earring', 'Classic', 'Other_product', '17248724447784IMG-20240821-WA0059.jpg', 'Temmy accessories_745510_Brand', '5000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, '3 in 1 jewelries_50200607', '3 in 1 jewelries', 'Classic', 'Other_product', '17248724927166IMG-20240821-WA0174.jpg', 'Temmy accessories_745510_Brand', '6000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 'Necklace_52540479', 'Necklace', 'Black , gold and silver colour', 'Other_product', '1724872574291IMG-20240823-WA0033.jpg', 'Temmy accessories_745510_Brand', '3500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 'Earring_53565667', 'Earring', 'Black colour', 'Other_product', '17248726347313IMG-20240826-WA0067.jpg', 'Temmy accessories_745510_Brand', '2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'Bracelet_54935218', 'Bracelet', 'Different designs', 'Other_product', '17248742192280IMG-20240810-WA0188.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 'Bracelet_5584124', 'Bracelet', 'Different designs', 'Other_product', '17248742596930IMG-20240810-WA0181.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'Bracelet_56103396', 'Bracelet', 'Different designs', 'Other_product', '17248742606628IMG-20240810-WA0181.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'Bracelet_57607394', 'Bracelet', 'Different designs', 'Other_product', '17248742829882IMG-20240810-WA0230.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'Necklace_58213872', 'Necklace', 'Available', 'Other_product', '17248756775512IMG-20240828-WA0112.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 'Necklace_59587905', 'Necklace', 'Available', 'Other_product', '17248756988388IMG-20240828-WA0111.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, 'Egbetaxs _60872020', 'Egbetaxs ', 'Touch ', 'Phone_repairer', '17248757111296551D7DA1-B9D3-42C1-995F-212D87325D33.jpeg', 'Egbetaxs_502711_Brand', '10000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 'Necklace_61596419', 'Necklace', 'Available', 'Other_product', '17248757154417IMG-20240828-WA0110.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, 'Egbetaxs _62969521', 'Egbetaxs ', 'Touch ', 'Phone_repairer', '17248757423205551D7DA1-B9D3-42C1-995F-212D87325D33.jpeg', 'Egbetaxs_502711_Brand', '10000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 'Necklace_63729969', 'Necklace', 'Available', 'Other_product', '17248757521495IMG-20240828-WA0109.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 'Necklace_64713502', 'Necklace', 'Available', 'Other_product', '17248757839277IMG-20240823-WA0067.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 'Necklace_65267484', 'Necklace', 'Available', 'Other_product', '17248758085709IMG-20240823-WA0066.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 'Necklace_6699324', 'Necklace', 'Available', 'Other_product', '17248758325749IMG-20240823-WA0068.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, 'Necklace_67918388', 'Necklace', 'Available', 'Other_product', '17248758544909IMG-20240823-WA0069.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 'Necklace_6833565', 'Necklace', 'Available', 'Other_product', '17248760405206IMG-20240823-WA0071.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, 'Necklace_69149214', 'Necklace', 'Available', 'Other_product', '17248760644674IMG-20240823-WA0072.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, 'Earring and Necklace_70115633', 'Earring and Necklace', 'Available in gold and silver', 'Other_product', '17248761067790IMG-20240822-WA0303.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(71, 'Earring and Necklace_71973820', 'Earring and Necklace', 'Available in gold and silver', 'Other_product', '1724876124257IMG-20240823-WA0070.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 'Earring and Necklace_72593392', 'Earring and Necklace', 'Available in gold and silver', 'Other_product', '17248761459611IMG-20240828-WA0108.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, 'Earring and Necklace_73557765', 'Earring and Necklace', 'Available in gold and silver', 'Other_product', '17248761615595IMG-20240828-WA0113.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(74, 'Bracelet_74406176', 'Bracelet', 'For men', 'Other_product', '17248764615934IMG-20240726-WA0153.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 'Bracelet_7528755', 'Bracelet', 'For men', 'Other_product', '17248764809496IMG-20240726-WA0154.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, 'Bracelet_76695171', 'Bracelet', 'For men', 'Other_product', '17248765044868IMG-20240726-WA0155.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, 'Bracelet_78556185', 'Bracelet', 'For men', 'Other_product', '17248765375196IMG-20240726-WA0157.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 'Bracelet_79305633', 'Bracelet', 'For men', 'Other_product', '17248765518009IMG-20240726-WA0156.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, 'Bracelet_80498798', 'Bracelet', 'For men', 'Other_product', '17248765679036IMG-20240726-WA0158.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, 'Bracelet_81429763', 'Bracelet', 'For men', 'Other_product', '17248765833978IMG-20240726-WA0159.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 'Bracelet_83201584', 'Bracelet', 'For men', 'Other_product', '17248766098082IMG-20240726-WA0176.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, 'Bracelet_84975694', 'Bracelet', 'For men', 'Other_product', '1724876629958IMG-20240726-WA0177.jpg', 'Temmy accessories_745510_Brand', '7000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 'Necklace_85160928', 'Necklace', 'Necklace', 'Other_product', '17248766726212IMG-20240813-WA0016.jpg', 'Temmy accessories_745510_Brand', '2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, 'Bracelet_88992801', 'Bracelet', 'Bracelet', 'Other_product', '17248768148415IMG-20240716-WA0130.jpg', 'Temmy accessories_745510_Brand', '2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(93, 'Bracelet_93476853', 'Bracelet', 'For men', 'Other_product', '17248770669603Screenshot_20240719-161220.png', 'Temmy accessories_745510_Brand', '6000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(95, 'Hublot Wrist watch and bracelet_95706764', 'Hublot Wrist watch and bracelet', 'Available', 'Other_product', '17248775395402IMG-20240813-WA0295.jpg', 'Temmy accessories_745510_Brand', '20000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(96, 'Hublot Wrist watch and bracelet_96391983', 'Hublot Wrist watch and bracelet', 'Available', 'Other_product', '17248775562533IMG-20240813-WA0293.jpg', 'Temmy accessories_745510_Brand', '20000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(97, 'Hublot Wrist watch and bracelet_97280308', 'Hublot Wrist watch and bracelet', 'Available', 'Other_product', '17248775902122IMG-20240813-WA0284.jpg', 'Temmy accessories_745510_Brand', '20000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 'Rolex Wrist watch and bracelets_104251443', 'Rolex Wrist watch and bracelets', 'Available', 'Other_product', '17248776867435IMG-20240813-WA0286.jpg', 'Temmy accessories_745510_Brand', '20000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(105, 'Wrist watch and bracelets_105156427', 'Wrist watch and bracelets', 'Available', 'Other_product', '17248776926257IMG-20240813-WA0301.jpg', 'Temmy accessories_745510_Brand', '19000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(106, 'Wrist watch and bracelets_106195391', 'Wrist watch and bracelets', 'Available', 'Other_product', '17248777099708IMG-20240823-WA0111.jpg', 'Temmy accessories_745510_Brand', '4000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(107, 'Bracelet_107553382', 'Bracelet', 'Available', 'Clothing_and_Fashion', '17248783369486IMG-20240823-WA0067.jpg', 'Temmy accessories_745510_Brand', '2500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(108, '11 iPhone pouch _108568583', '11 iPhone pouch ', 'IPhone 11 pouch ', 'Phone_accessories', '17248785418849IMG_2288.jpeg', 'K.Tech _50329_Brand', '3000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, 'Eng 1_110799644', 'Eng 1', 'Eng ', 'Mechanic', '1724883409985IMG_4335.jpeg', 'Keeny_40348_Brand', '200000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(145, 'IPhone 14_145878877', 'IPhone 14', 'IPhone 14 new', 'Mobile_phones', '17249397606404IMG_4380.png', 'Keeny_40348_Brand', '850000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(146, 'IPhone 13_146249167', 'IPhone 13', 'IPhone 13 new', 'Mobile_phones', '17249398441385IMG_4381.png', 'Keeny_40348_Brand', '650000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(147, 'IPhone 13 pro_147649112', 'IPhone 13 pro', 'IPhone 13 Pro new 128gb', 'Mobile_phones', '17249401251612IMG_4382.png', 'Keeny_40348_Brand', '830000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(148, 'IPhone 13 Pro max_148396260', 'IPhone 13 Pro max', 'IPhone 13 Pro Max  new 128gb', 'Mobile_phones', '17249402049738IMG_4383.png', 'Keeny_40348_Brand', '1100000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(149, 'BLUE L-V KIDS SNEAKERS_149252243', 'BLUE L-V KIDS SNEAKERS', 'BLUE L-V KIDS SNEAKERS PREORDER', 'Clothing_and_Fashion', '17249404669075IMG_4384.jpeg', 'Keeny_40348_Brand', '44000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(150, 'SNEAKERS_150545604', 'SNEAKERS', 'PINK G SNEAKERS', 'Clothing_and_Fashion', '17249405546298IMG_4385.jpeg', 'Keeny_40348_Brand', '37000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(151, 'SCARF CHAIN BAG_151731775', 'SCARF CHAIN BAG', 'SCARF CHAIN BAG ', 'Clothing_and_Fashion', '1724940853444IMG_4386.png', 'Keeny_40348_Brand', '10500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(152, 'BUTTERFLY BAG_152779029', 'BUTTERFLY BAG', 'BUTTERFLY BAG', 'Clothing_and_Fashion', '17249409327374IMG_4387.jpeg', 'Keeny_40348_Brand', '16000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(153, 'THE P COAT_153312085', 'THE P COAT', 'THE P COAT', 'Clothing_and_Fashion', '17249411409800IMG_4388.jpeg', 'Keeny_40348_Brand', '30000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(154, 'G TRACK SUIT_154610047', 'G TRACK SUIT', 'G TRACK SUIT', 'Clothing_and_Fashion', '17249412541050IMG_4389.jpeg', 'Keeny_40348_Brand', '80000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(156, '12.5kg Cylinder Glass _156237780', '12.5kg Cylinder Glass ', '12.5kg Cylinder Glass Burner,Regulator, Hose &amp; Clips', 'Kitchen_utensils', '17249421861448IMG_4392.jpeg', 'Keeny_40348_Brand', '90000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(157, 'Double Burner_157187379', 'Double Burner', 'Qasa Double Burner Table Top Glass Cooker', 'Kitchen_utensils', '17249422664617IMG_4394.jpeg', 'Keeny_40348_Brand', '92000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(158, 'Saisho_158217439', 'Saisho', 'Saisho S-403ss(12) Saisho Electric Jug', 'Kitchen_utensils', '17249423932626IMG_4395.jpeg', 'Keeny_40348_Brand', '15000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(160, 'Gas Cooker (5b) Wood_160914530', 'Gas Cooker (5b) Wood', 'Maxi 60*90 Gas Cooker (5b) Wood', 'Kitchen_utensils', '17249426732881IMG_4396.jpeg', 'Keeny_40348_Brand', '105000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(161, 'Louis Vuitton shoe_161186060', 'Louis Vuitton shoe', 'Black double-sole loafers -5 pieces', 'Clothing_and_Fashion', '17249659152569Screenshot_20240517-194016_1.png', 'Bukolami_58536_Brand', '50000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(162, 'Louis Vuitton shoe_162343636', 'Louis Vuitton shoe', 'Black flat loafers -5 pieces', 'Clothing_and_Fashion', '17249659885074Screenshot_20240517-194033_1.png', 'Bukolami_58536_Brand', '35000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(165, 'Riggs perfume_165693909', 'Riggs perfume', '30ml \r\nIs a nice perfume that last long', 'Perfume_and_cologne', '17250375776630IMG-20240830-WA0046.jpg', 'Ewaade perfumery _517812_Brand', '5500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(166, 'Riggs perfume_166520143', 'Riggs perfume', '30ml \r\nIs a nice perfume that last long', 'Perfume_and_cologne', '17250375839815IMG-20240830-WA0046.jpg', 'Ewaade perfumery _517812_Brand', '5500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(167, 'My Way_167158883', 'My Way', 'My Way is a nice fragrance ', 'Perfume_and_cologne', '17250382869433IMG-20240829-WA0010.jpg', 'Ewaade perfumery _517812_Brand', '5500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(168, 'IPhone 12 pro_168825241', 'IPhone 12 pro', 'IPhone 12 Pro new 128gb ', 'Mobile_phones', '17251423713093IMG_4499.jpeg', 'Keeny_40348_Brand', '560000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(169, 'Louis Vuitton shoe_169583967', 'Louis Vuitton shoe', 'Black flat loafers-5 pieces', 'Clothing_and_Fashion', '17251699155063Screenshot_20240517-194033_1.png', 'Nexaura_41877_Brand', '35000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(170, 'Louis Vuitton shoe_170292458', 'Louis Vuitton shoe', 'Black double-sole loafers', 'Clothing_and_Fashion', '17251700009290Screenshot_20240517-194016_1.png', 'Nexaura_41877_Brand', '50000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(171, 'IPhone 15_171223908', 'IPhone 15', 'IPhone 15 128gb new', 'Mobile_phones', '17252329161011IMG_4547.png', 'Keeny_40348_Brand', '1700000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(172, 'Jollof rice_172695778', 'Jollof rice', 'One take away of jollof rice with chicken', 'Food_vendor', '17252929223272IMG_4562.jpeg', 'Kehkeh ask_618713_Brand', '5700', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(173, 'IPhone 15 pro max_173611717', 'IPhone 15 pro max', 'IPhone 15 pro max', 'Mobile_phones', '17253151563346IMG_4499.jpeg', '731014', '1850000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(174, 'Sneakers _174324883', 'Sneakers ', 'First grade\r\nQuality \r\nLouis Vuitton ', 'Clothing_and_Fashion', '17253269538963cd4fcd0c-b32e-4fe1-8233-7db524359daf.jpeg', '104215', '100000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(175, 'Men&rsquo;s crop top_175799517', 'Men&rsquo;s crop top', 'Quality top notch\r\nOriginal top ', 'Clothing_and_Fashion', '1725328439182519f914bb-8b4a-40d1-937f-86391c2dff74.jpeg', '104215', '26000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, 'New age powerbank _176890626', 'New age powerbank ', ' New age powerbank\r\n50000 mah', 'Gadgets', '1725457392930117254577859222843959462226278900.jpg', '768317', '55000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(177, 'The 910 Pressure Cooker_177785649', 'The 910 Pressure Cooker', 'The 910 Pressure Cooker\r\n10.5 qt Cooker/Canner', 'Kitchen_utensils', '17255408208328IMG_4624.png', 'KehkehAsk_17674_Brand', '65000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(179, 'Multi-Use Programmable Pressure Cooker_179792151', 'Multi-Use Programmable Pressure Cooker', '6-in-1 Multi-Use Programmable Pressure Cooker, Slow Cooker, Rice Cooker, Steamer, Saut&eacute;, &amp; Food Warmer, 6 Qt, Stainless Steel', 'Kitchen_utensils', '17255410833051IMG_4625.jpeg', 'KehkehAsk_17674_Brand', '195000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(181, 'Microwave_181436975', 'Microwave', 'Hisense 20 Litres (H20MOWS10) Microwave - White With 1 Year Warranty', 'Kitchen_utensils', '17255413372958IMG_4628.jpeg', 'KehkehAsk_17674_Brand', '80000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(184, 'Cake and fruit parfait _184608942', 'Cake and fruit parfait ', 'Cake and fruit parfait:SM', 'Food_vendor', '17257072446329b712e344-f825-4513-8ae5-26ecf00bc98b.jpeg', '485319', '2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(185, 'Milky doughnut _18585503', 'Milky doughnut ', 'Always available at you service ', 'Food_vendor', '17257425657244Screenshot_20240907-210508.jpg', '481318', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(186, 'Peanut _186349124', 'Peanut ', 'Crunchy peanut ðŸ¥œ', 'Food_vendor', '17257980034130Screenshot_20240907-211052.jpg', '481318', '1500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(187, 'Peanut _18756793', 'Peanut ', 'Big bottle of peanut very crunchy peanut ðŸ¥œ.', 'Food_vendor', '17257980861608Screenshot_20240907-211148.jpg', '481318', '3500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(188, 'Peanut _188381439', 'Peanut ', 'This is for wholesale.\r\n6 go for #500 and \r\n12 go for 1k.\r\nEtc', 'Food_vendor', '17257982832925Screenshot_20240907-211317.jpg', '481318', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(189, 'Social media logs_189571695', 'IG', '5years ups ðŸ‡ºðŸ‡¸ ', 'Other_product', '17262392987157IMG_1938.png', '625120', '5000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(190, 'Hp Stream 11_190506581', 'Hp Stream 11', 'Hp Stream 11 Intel Celeron 2GB RAM- 32GB HDD WIN 10', 'Computers', '1727304848701IMG_5013.jpeg', 'Keeny_40348_Brand', '170000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(191, 'DELL Latitude 3310_191344571', 'DELL Latitude 3310', 'DELL Latitude 3310 Intel&reg;ï¸ Core&trade;ï¸ I5-Quad Core 256GB SSD 16GB RAM 13.3&quot;WIN10 Pro', 'Computers', '17273050991859IMG_5015.jpeg', 'Keeny_40348_Brand', '870000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(192, 'XIEDE X059 DDR4 Laptop RAM_19252958', 'XIEDE X059 DDR4 Laptop RAM', 'XIEDE X059 DDR4 Laptop RAM, Memory Capacity: 16GB 2133MHz 16GB Fully', 'Computers', '17273052709989IMG_5017.jpeg', 'Keeny_40348_Brand', '98000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(193, 'Hp ProBook 11_193842350', 'Hp ProBook 11', 'Hp ProBook 11 X360- TOUCH Intel Celeron 256GB 4GB RAM WIN10 Pro+ USB LIGHT FOR KEYBOARD', 'Computers', '17273054326278IMG_5018.jpeg', 'Keeny_40348_Brand', '390000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(194, '12promax_194777459', '16 promax', '16promax', 'Mobile_phones', '17274346148980IMG_0654.jpeg', '731421', '3000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(195, 'IPhone 15_195712162', 'IPhone 15', 'Iphone 15', 'Mobile_phones', '17274325362572IMG_0668.jpeg', '731421', '2000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(196, 'Hp stream 11_196847812', 'Hp stream 11', 'Hp stream ', 'Computers', '17274801186336IMG_5013.jpeg', '970923', '170000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(197, 'Hg_197365372', 'Hg', 'Gh', 'Other_service', '17274810045433BAC53136-DD9F-4D4B-9F93-1EDB21083820.jpeg', '970923', '45000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(199, 'DON WILLIE TECHNICAL _199646273', 'DON WILLIE TECHNICAL ', 'We install a d refilling and servicing we also repair fridge and freezer thanks for your patronage in advance â¤ï¸', 'Other_service', '172833445542491000244125.jpg', '120924', '10000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(200, 'DON WILLIE TECHNICAL _200580906', 'DON WILLIE TECHNICAL ', 'We install a d refilling and servicing we also repair fridge and freezer thanks for your patronage in advance â¤ï¸', 'Other_service', '172833475423191000244125.jpg', '120924', '10000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(202, 'IPhone 13_202156902', 'IPhone 13', 'IPhone 13', 'Mobile_phones', '1729473749362IMG_5396.png', '573826', '8000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(203, 'IPhone 13_203839551', 'IPhone 13', 'IPhone 12', 'Mobile_phones', '17295143005417IMG_5396.png', '342527', '800000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(204, 'Dell Latitude E5470_204289665', 'Dell Latitude E5470', 'DELL Refurbished Dell Latitude E5470 14-Inch Laptop (Intel Core-i5-6300U Upto 3.0 GHz, 8GB RAM 500GB ROM', 'Computers', '17295226811247IMG_5407.jpeg', '573826', '300000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(205, 'Hp EliteBook_205293619', 'Hp EliteBook', 'Hp EliteBook 840 G6 Intel Core I5-16GB RAM/512GB SSD/Backlit Keyboard/FP Reader Wins 11 Pro Laptop+BAG', 'Computers', '17295227665263IMG_5408.jpeg', '573826', '550000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(207, 'Hp 15 VICTUS_207947174', 'Hp 15 VICTUS', 'Hp 15 VICTUS GAMING, 12TH GEN INTEL CORE I5, 16GB RAM, 512GB SSD,4GB NVIDIA RTX 2050 WINS 11', 'Computers', '17295230582952IMG_5409.jpeg', '573826', '1400000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(208, 'Lenovo Ideapad _208878780', 'Lenovo Ideapad ', 'Lenovo Ideapad Intel Celeron,4GB 256GB SSD Wins 11+Free Mouse', 'Computers', '17295233616743IMG_5410.jpeg', '573826', '400000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(209, 'Apple MacBook Pro_209280200', 'Apple MacBook Pro', 'Apple MacBook Pro 16.2&quot; - M3 Pro/12C/18C GPU/ 36GB/512GB - BLACK', 'Computers', '17295234856853IMG_5411.jpeg', '573826', '4800000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(210, 'DELL ALIENWARE_21058151', 'DELL ALIENWARE', 'DELL ALIENWARE M18 R1, I9-13thGEN, 1TB/32GB, 4080', 'Computers', '17295236576468IMG_5412.jpeg', '573826', '3850000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(211, 'IPhone 13_211854304', 'IPhone 13', 'IPhone 13', 'Mobile_phones', '17295964062369IMG_5396.png', '805728', '800000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(212, 'Eng 2 _212804717', 'Eng 2 ', 'Eng 2', 'Mechanic', '17297278336811IMG_5292.jpeg', '573826', '2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(213, 'IPhone 16_213824847', 'IPhone 16', 'IPhone 16', 'Mobile_phones', '1729735474879IMG_5431.png', '573826', '3300000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(214, 'Land Rover_214573618', 'Land Rover', 'Land Rover Range Rover Vogue 2023 Black', 'Car_dealer', '17298528524765IMG_5450.jpeg', '130829', '480000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(216, 'IPhone 16_216229949', 'IPhone 16', 'IPhone 16 512GB', 'Mobile_phones', '17298572326390IMG_5456.png', '606630', '2599000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(217, 'IPhone 15_217856962', 'IPhone 15', 'Apple iPhone 15 128 GB Pink', 'Mobile_phones', '17298737352581IMG_5457.jpeg', '606630', '1100000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(218, 'IPhone 14 _218313299', 'IPhone 14 ', 'Apple iPhone 14 256 GB', 'Mobile_phones', '17298739228449IMG_5458.jpeg', '606630', '1100000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(219, 'IPhone 13_219549721', 'IPhone 13', 'Apple iPhone 13 138 GB', 'Mobile_phones', '17298741789330IMG_5460.jpeg', '606630', '735000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(221, 'IPhone 12_221547440', 'IPhone 12', 'Apple iPhone 12 128 GB', 'Mobile_phones', '17298744099015IMG_5461.jpeg', '606630', '675000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(223, 'IPhone 11 _223286351', 'IPhone 11 ', 'Apple IPhone 11 6.1-Inch Liquid Retina LCD (4GB RAM, 64GB ROM) IOS 13, (12MP+12MP)+12MP 4G LTE Smartphone-Nano Sim-PURPLE', 'Mobile_phones', '17298753718462IMG_5462.jpeg', '606630', '580000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(225, 'IPhone XR _225488562', 'IPhone XR ', 'Apple IPhone XR - 6.1&quot; - 128GB ROM, 3GB RAM, 2942mAh - Coral', 'Mobile_phones', '1729876353502IMG_5465.jpeg', '606630', '605000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(226, 'IPhone XS max_226932957', 'IPhone XS max', 'IPhone XS Max 64 GB uk used ', 'Mobile_phones', '17298765011933IMG_5464.jpeg', '606630', '350000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(227, 'Hp EliteBook 840 G5_227269372', 'Hp EliteBook 840 G5', 'Hp EliteBook 840 G5 Intel Core I5- 12GB RAM/256GB SSD/Backlit Keyboard/FP Reader Windows 10 Pro + BAG', 'Computers', '17298768023662IMG_5466.jpeg', '606630', '455000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(228, 'Hp 15 VICTUS_228493117', 'Hp 15 VICTUS', 'Hp 15 VICTUS GAMING, 12TH GEN INTEL CORE I5, 8GB RAM, 512GB SSD NVIDIA RTX 2050 (4GB) WINS 11', 'Computers', '17298769714562IMG_5467.jpeg', '606630', '1300000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(229, 'MacBook Pro_229888258', 'MacBook Pro', 'MacBook Pro 16GB Intel Core I5 SSD 512GB', 'Computers', '17298775071007IMG_5468.jpeg', '606630', '1850000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(230, 'MacBook Air_230102616', 'MacBook Air', 'Apple MacBook Air MD711LL/B 11.6&quot; 4GB 128GB SSD Core&trade; i5-4260U 1.4GHz Mac OSX, Silver', 'Computers', '17298777538216IMG_5470.jpeg', '606630', '1650000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(231, 'DELL Latitude 7490 _231647912', 'DELL Latitude 7490 ', 'DELL Latitude 7490 TOUCHSCREEN 512GB SSD/16GB RAM/ Intel Core I7/ BACKLIGHT KEYBOARD-WIN 11PRO+BAG', 'Computers', '17298778279818IMG_5471.jpeg', '606630', '700000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(235, 'DELL ALIENWARE_235378516', 'DELL ALIENWARE', 'DELL ALIENWARE M16 R1,CORE I9-13900HX,1TB SSD/32GB RAM,12GB RTX 4080 GRAPHICS,16&quot; QHD+ DISPLAY,WIN 11', 'Computers', '17298781576251IMG_5472.jpeg', '606630', '1560000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(241, 'Dry cleaning _241404449', 'Dry cleaning ', 'Dry cleaning per cloth', 'Dry_cleaner', '173004482260575BBC5938-8745-490D-8519-03FF6BC0EF29.jpeg', '606630', '200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(243, 'IPhone 13_243383576', 'IPhone 13', 'IPhone 12', 'Mobile_phones', '17302368525960IMG_5460.jpeg', '314431', '650000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(245, 'SSD _245224746', 'SSD ', 'SSD 256GB', 'Computers', '173036569532IMG_5538.jpeg', '661132', '30000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'FY_001_MEM'),
(246, 'ConvoSpace _246607853', 'ConvoSpace ', 'Phone', 'Phone_accessories', '173047631383129k=.jpg', '25633', '20000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(247, 'ConvoSpace _247704843', 'ConvoSpace ', 'Phone', 'Phone_accessories', '173047631947919k=.jpg', '25633', '20000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(250, 'Jollof rice_250540044', 'Jollof rice', 'Jollof rice with chicken plus takeaway money', 'Food_vendor', '17331698906816IMG_5911.jpeg', 'Keeny_40348_Brand', '4500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(251, 'Salad_251186359', 'Salad', 'Salad ', 'Food_vendor', '17331706857396IMG_5915.jpeg', 'Keeny_40348_Brand', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(252, 'Efor riro_252660887', 'Efor riro', 'Efor riro per position', 'Food_vendor', '17331709502113IMG_5916.jpeg', 'Keeny_40348_Brand', '400', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(255, 'Gold necklace _255975935', 'Gold necklace ', 'Gold necklace For sell', 'Clothing_and_Fashion', '17333027236941IMG_5924.jpeg', 'Keeny_40348_Brand', '12000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(256, 'Hoodie_256952084', 'Hoodie', 'Acquire Men Quality Hoodie', 'Clothing_and_Fashion', '17333031803715IMG_5929.jpeg', 'Keeny_40348_Brand', '40000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(257, 'Baggy _257995670', 'Baggy ', 'Acquire Men Quality Baggy Trouser_white.', 'Clothing_and_Fashion', '17333032597375IMG_5930.jpeg', 'Keeny_40348_Brand', '25000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(258, 'Sweater _258365028', 'Sweater ', 'Men Knitted Sweater Mens Clothes', 'Clothing_and_Fashion', '1733303335644IMG_5931.jpeg', 'Keeny_40348_Brand', '100000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(259, ' Heart Necklace_259823327', ' Heart Necklace', '2 In 1 Couples Heart Necklace', 'Clothing_and_Fashion', '17333035296087IMG_5933.jpeg', 'Keeny_40348_Brand', '4000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `start_chat`
--

CREATE TABLE `start_chat` (
  `chat_id` int(11) NOT NULL,
  `chat_unique_id` varchar(255) NOT NULL,
  `buyer_chat_name` varchar(255) NOT NULL,
  `user_order_id` varchar(255) NOT NULL,
  `brand_unique_id` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL,
  `new_chat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `start_chat`
--

INSERT INTO `start_chat` (`chat_id`, `chat_unique_id`, `buyer_chat_name`, `user_order_id`, `brand_unique_id`, `datetime`, `status`, `new_chat`) VALUES
(73, '550773', 'Kenny', '1729472452573826151330', '573826', '2024-10-20 21:04:29', 'active_now', '1'),
(74, '429574', 'Olu sammy', '1729473774573826416454', '573826', '2024-10-20 21:23:13', 'active_now', '1'),
(75, '537275', 'Kenny', '1729514322342527129641', '342527', '2024-10-21 08:39:02', 'active_now', ''),
(76, '703076', 'Kenny', '1729514660573826584120', '573826', '2024-10-21 08:44:34', 'active_now', ''),
(77, '876477', 'Ayo', '1729524003573826396467', '573826', '2024-10-21 11:22:16', 'active_now', '1'),
(78, '558178', 'Hello ', '1729527482573826599888', '573826', '2024-10-21 12:22:00', 'active_now', '1'),
(79, '962879', 'Hannah ', '1729532889573826662700', '573826', '2024-10-21 14:09:15', 'active_now', '1'),
(80, '570380', 'Mike', '1729545009573826547626', '573826', '2024-10-21 17:11:21', 'active_now', ''),
(81, '363181', 'Hannah ', '1729545483573826644466', '573826', '2024-10-21 17:18:21', 'active_now', '1'),
(82, '177382', 'Kenny', '1729596432805728839476', '805728', '2024-10-22 07:27:30', 'active_now', ''),
(83, '237283', 'Kenny', '1729596493805728823879', '805728', '2024-10-22 07:28:25', 'active_now', ''),
(84, '464484', 'Ella', '1729596432805728839476', '805728', '2024-10-22 07:37:29', 'active_now', ''),
(85, '737685', 'Kenny', '1729670027573826732769', '573826', '2024-10-23 03:54:32', 'active_now', ''),
(86, '148586', 'Olumike ', '1729671466573826102175', '573826', '2024-10-23 04:25:49', 'active_now', ''),
(87, '457587', 'Sonic ', '1729675178573826727609', '573826', '2024-10-23 05:20:16', 'active_now', ''),
(88, '742488', 'Kehinde', '1729857798606630904917', '606630', '2024-10-25 08:06:11', 'active_now', '1'),
(89, '703889', 'Love', '172994857360663050142', '606630', '2024-10-26 09:18:38', 'active_now', ''),
(90, '728190', '-v', '1730202642606630808031', '606630', '2024-10-29 07:51:19', 'active_now', '1'),
(91, '228291', 'Kenny ', '1730236914Keeny_40348_Brand104160', '314431', '2024-10-29 17:22:46', 'active_now', ''),
(92, '638592', 'Sammy', '1730237111314431447646', '314431', '2024-10-29 17:25:25', 'active_now', ''),
(93, '68193', 'Kehinde', '1730374094606630475053', '661132', '2024-10-31 07:32:04', 'active_now', ''),
(94, '10894', '-hello', '1730503778Keeny_40348_Brand769157', 'Keeny_40348_Brand', '2024-11-01 19:42:10', 'active_now', '1'),
(95, '2595', 'Marvel', '1730507886Keeny_40348_Brand751682', 'Keeny_40348_Brand', '2024-11-01 21:39:11', 'active_now', ''),
(96, '828196', '_ser', '1730682826Keeny_40348_Brand437030', 'Keeny_40348_Brand', '2024-11-03 20:25:09', 'active_now', ''),
(97, '521197', 'Boy', '1730689443606630347260', '606630', '2024-11-03 22:05:02', 'active_now', ''),
(98, '326098', '-Hk', '1730728245606630847156', '606630', '2024-11-04 08:51:14', 'active_now', ''),
(99, '132999', '-hk', '1730728245606630847156', '606630', '2024-11-04 08:52:18', 'active_now', ''),
(100, '597100', '-HK', '1730728245606630847156', '606630', '2024-11-04 08:56:00', 'active_now', ''),
(101, '1077101', 'Sammy', '173105721860663030535', '606630', '2024-11-08 04:19:41', 'active_now', ''),
(102, '2208102', 'Kenny', '1731171698Keeny_40348_Brand814376', 'Keeny_40348_Brand', '2024-11-09 12:02:04', 'active_now', ''),
(103, '6136103', 'Hello ', '1731271100573826161492', '573826', '2024-11-10 15:38:32', 'active_now', ''),
(104, '8583104', 'Olumike', '1731496680Keeny_40348_Brand275848', 'Keeny_40348_Brand', '2024-11-13 06:36:40', 'active_now', ''),
(105, '2178105', 'Bigi', '1731842945Keeny_40348_Brand814945', 'Keeny_40348_Brand', '2024-11-17 06:30:18', 'active_now', ''),
(106, '5146106', 'Bhukola', '1731844782Keeny_40348_Brand343427', 'Keeny_40348_Brand', '2024-11-17 07:01:47', 'active_now', '1'),
(107, '9824107', 'Gunu', '173192585060663053636', '606630', '2024-11-18 05:33:11', 'active_now', ''),
(108, '7479108', 'Ola', '1732146197606630723628', '606630', '2024-11-20 18:58:35', 'active_now', ''),
(109, '2033109', 'Happy ', '1732443941Keeny_40348_Brand447970', 'Keeny_40348_Brand', '2024-11-24 05:25:57', 'active_now', ''),
(110, '4841110', 'Emma', '1732705681606630155486', '606630', '2024-11-27 06:08:19', 'active_now', ''),
(111, '3971111', 'Sammy', '1733063000606630714351', '606630', '2024-12-01 09:24:25', 'active_now', ''),
(112, '8205112', 'Kehinde', '1733151332Keeny_40348_Brand685952', 'Keeny_40348_Brand', '2024-12-02 09:58:17', 'active_now', ''),
(113, '4025113', 'Kenny', '1733226217Keeny_40348_Brand247207', 'Keeny_40348_Brand', '2024-12-03 06:47:01', 'active_now', ''),
(114, '2922114', 'Olamide', '1733307765Keeny_40348_Brand724332', 'Keeny_40348_Brand', '2024-12-04 05:35:04', 'active_now', '');

-- --------------------------------------------------------

--
-- Table structure for table `who_contact_us`
--

CREATE TABLE `who_contact_us` (
  `full_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_us_message` varchar(255) NOT NULL,
  `contact_us_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_go_places`
--
ALTER TABLE `brand_go_places`
  ADD PRIMARY KEY (`go_place_id`);

--
-- Indexes for table `brand_register`
--
ALTER TABLE `brand_register`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `forget_password`
--
ALTER TABLE `forget_password`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `fy_member`
--
ALTER TABLE `fy_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`or_id`);

--
-- Indexes for table `premium_users`
--
ALTER TABLE `premium_users`
  ADD PRIMARY KEY (`premium_users_id`);

--
-- Indexes for table `reg_product`
--
ALTER TABLE `reg_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `start_chat`
--
ALTER TABLE `start_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_go_places`
--
ALTER TABLE `brand_go_places`
  MODIFY `go_place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `brand_register`
--
ALTER TABLE `brand_register`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT for table `forget_password`
--
ALTER TABLE `forget_password`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fy_member`
--
ALTER TABLE `fy_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `premium_users`
--
ALTER TABLE `premium_users`
  MODIFY `premium_users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reg_product`
--
ALTER TABLE `reg_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `start_chat`
--
ALTER TABLE `start_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
