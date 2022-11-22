-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 12:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user_sp` (IN `name_` VARCHAR(250), IN `username_` VARCHAR(250), IN `password_` VARCHAR(250), IN `confirm_` VARCHAR(250), IN `status_` VARCHAR(250), IN `email_` VARCHAR(250), IN `user_` INT)   BEGIN
#hadii userku uu horay in uu soo diido
#hadii passwork ka iyo confirm is yeelan waayaan in uu diido
#hadii passwordku uu ka yaryahay 5 xaraf in uu diido
#hadii kale diwaangele

IF(password_ !=confirm_)THEN
SELECT 'confirm password does not match to the password';
ELSEIF EXISTS(SELECT id FROM users WHERE username=username_)THEN
SELECT concat(username_,' already exists');
ELSEIF(CHAR_LENGTH(password_) <5)THEN
SELECT 'Your password must be atleast 5 chars`';
ELSE
INSERT INTO `users`(`name`, `username`, `email`, `password`, `status`, `date`, `user_id`) VALUES(name_,username_,email_,password_,status_,now(),user_);

SELECT "registered Success";
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `customers` (IN `name_` VARCHAR(200), IN `tell_` VARCHAR(20), IN `address_` VARCHAR(200), IN `user_` INT)   BEGIN
IF NOT EXISTS(SELECT id FROM customer WHERE name=name_ AND tell=tell_)THEN
INSERT INTO `customer`(`name`, `tell`, `address`, `date`, `user_id`) VALUES (name_,tell_,address_,now(),user_);
SELECT concat(name_," registered success");
ELSE
SELECT concat(name_," already Exists");
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `link` (IN `name_` VARCHAR(250), IN `category_` INT, IN `href_` VARCHAR(250), IN `icon_` VARCHAR(250), IN `user_` INT)   BEGIN
IF NOT EXISTS(SELECT id FROM links WHERE name=name_ AND category_id=category_)THEN
INSERT INTO `links`(`name`, `category_id`, `href`, `icon`, `date`, `user_id`) VALUES(name_,category_,href_,icon_,now(),user_);
SELECT concat(name_," registered success");
ELSE
SELECT concat(name_," already exists");
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `link_category_` (IN `category_` VARCHAR(50), IN `user_` INT)   BEGIN
IF NOT EXISTS(SELECT id FROM link_category WHERE category=category_)THEN
INSERT INTO `link_category`(`category`, `date`, `user_id`) VALUES (category_,now(),user_);
SELECT concat(category_," registered success");
ELSE
SELECT concat(category_," already Exists");
END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `login_` (IN `username_` VARCHAR(250), IN `password_` VARCHAR(250))   BEGIN
IF EXISTS(SELECT id FROM users u WHERE ( u.username=username_  or u.email=username_)AND u.password=password_)THEN
SELECT u.id user_id,u.name fullname,u.email,u.username FROM users u WHERE (u.username=username_ or u.email=username_ )AND u.password=password_;
ELSE 
SELECT "username and password are incorrect" error;
END IF;






END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `options` (IN `value_` INT, IN `text_` VARCHAR(200), IN `type_` VARCHAR(200), IN `user_` INT)   BEGIN

IF not EXISTS(SELECT id FROM options WHERE value=value_) THEN
INSERT INTO `options` (`value`, `text`, `tpye`, `date`, `user_id`) 
VALUES (value_,text_,type_,now(),user_);
SELECT concat(value_, " registerd success");
ELSE
SELECT concat(value_, " already registered");
END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product` (IN `code_` INT, IN `name_` INT(200), IN `cat_id_` INT, IN `unit_` VARCHAR(200), IN `image_` VARCHAR(200), IN `cprice_` INT, IN `sprice_` INT, IN `expire_` VARCHAR(200), IN `user_` INT)   BEGIN
if NOT EXISTS(SELECT id FROM product WHERE name=name_)THEN
INSERT INTO `product` (`code`, `name`, `category_id`, `unit`, `image`, `cprice`, `sprice`, `expire_date`, `date`, `user_id`)
VALUES (code_,name_,cat_id_,unit_,image_,cprice_,sprice_,expire_,now(),user_);
SELECT concat(name_, " registered success");
ELSE
SELECT concat(name_, " already registered");
END if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_category` (IN `name_` VARCHAR(200), IN `image_` VARCHAR(200), IN `user_` INT)   BEGIN
IF NOT EXISTS(SELECT id FROM product_category WHERE name=name_)THEN
INSERT INTO `product_category`(`name`, `img`,`date`,`user_id`) VALUES (name_,image_,now(),user_);
SELECT concat(name_," registered success");
ELSE
SELECT concat(name_," already Exists");
END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `purchaes` (IN `product_` INT, IN `qty_` VARCHAR(200), IN `cprice_` VARCHAR(20), IN `supplier_` INT, IN `invoice_` VARCHAR(200), IN `store_` INT, IN `user_` INT)   BEGIN

INSERT INTO `purchases`(`product_id`, `qty`, `cprice`, `supplier_id`, `invoice_no`, `store_id`, `date`, `user_id`) 
VALUES (product_,qty_,cprice_,supplier_,invoice_,store_,now(),user_);
SELECT concat(product_,"purchase succeseed");
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sales` (IN `product_id_` INT, IN `qty_` INT, IN `sprice_` INT, IN `cprice_` INT, IN `customer_id_` INT, IN `invoice_no_` VARCHAR(200), IN `store_id_` INT, IN `user_` INT)   BEGIN
IF NOT EXISTS(SELECT id FROM sales WHERE product_id=product_id_ AND invoice_no=invoice_no_) THEN
INSERT INTO `sales`(`product_id`, `qty`, `sprice`, `cprice`, `customer_id`, `invoice_no`, `store_id`, `date`, `user_id`) 
VALUES (product_id_,qty_,sprice,cprice_,customer_id_,invoice_no_,store_id_,now(),user_);
SELECT concat(product_id_, "has been sold");
ELSE
SELECT concat(product_id_, "has been sold already");
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `store` (IN `name_` VARCHAR(200), IN `address_` VARCHAR(200), IN `contact_` VARCHAR(200), IN `user_` INT)   BEGIN
IF NOT EXISTS(SELECT id FROM store WHERE address=address_ AND contact=contact_)THEN
INSERT INTO `store`(`name`, `address`, `contact`, `date`, `user_id`) VALUES (name_,address_,contact_,now(),user_);
SELECT concat(name_," registered success");
ELSE
SELECT concat(name_," already Exists in that location");
END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `suppliers` (IN `name_` VARCHAR(200), IN `tell_` VARCHAR(20), IN `address_` VARCHAR(200), IN `user_` INT)   BEGIN
IF NOT EXISTS(SELECT id FROM suppliers WHERE name=name_ AND tell=tell_)THEN
INSERT INTO `suppliers`(`name`, `tell`, `address`, `date`, `user_id`) VALUES (name_,tell_,address_,now(),user_);
SELECT concat(name_," registered success");
ELSE
SELECT concat(name_," already Exists");
END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_previllage` (IN `granted_user_` INT, IN `link_id_` INT, IN `user_` INT)   BEGIN

IF not EXISTS(SELECT id FROM options WHERE value=value_) THEN
INSERT INTO `user_previlage` (`granted_user`, `link_id`, `date`, `user_id`) 
VALUES (granted_user_,link_id_,now(),user_);
SELECT concat(granted_user_, " registerd success");
ELSE
SELECT concat(granted_user_, " already registered");
END IF;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `tell` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `tell`, `address`, `date`, `user_id`) VALUES
(1, 'mohamed abdirahman', '615400980', 'towfiiq', '2022-11-11 14:26:59', 2);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `href` int(11) DEFAULT NULL,
  `icon` varchar(250) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `name`, `category_id`, `href`, `icon`, `date`, `user_id`) VALUES
(1, 'Create User', 1, 0, 'fa fa-plus', '2022-11-09 12:39:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `link_category`
--

CREATE TABLE `link_category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link_category`
--

INSERT INTO `link_category` (`id`, `category`, `date`, `user_id`) VALUES
(1, 'CONTROL', '2022-11-09 12:29:40', 1),
(2, 'REGISTRATION', '2022-11-09 12:30:19', 1),
(3, 'REGISTRATION', '2022-11-09 12:30:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `value` varchar(250) DEFAULT NULL,
  `text` varchar(250) DEFAULT NULL,
  `tpye` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `cprice` float DEFAULT NULL,
  `sprice` float DEFAULT NULL,
  `expire_date` varchar(250) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `img`, `date`, `user_id`) VALUES
(1, 'cunto', '1234321', '2022-11-11 14:00:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `cprice` float DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `invoice_no` varchar(250) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `product_id`, `qty`, `cprice`, `supplier_id`, `invoice_no`, `store_id`, `date`, `user_id`) VALUES
(1, 1, 20, 0, 1, '1234rds', 1, '2022-11-11 14:35:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `sprice` float DEFAULT NULL,
  `cprice` float DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `invoice_no` varchar(250) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `sprice`, `cprice`, `customer_id`, `invoice_no`, `store_id`, `date`, `user_id`) VALUES
(1, 1, 13, NULL, 70, 1, '2342', 2, '2022-11-15 11:37:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `contact` varchar(250) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `name`, `address`, `contact`, `date`, `user_id`) VALUES
(1, 'ciribey', 'towfiiq', '617166171', '2022-11-11 13:32:45', 1),
(2, 'ci', '', '', '2022-11-11 13:57:59', 0),
(3, 'ciribey', 'ceelasha', '77789', '2022-11-11 13:58:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `tell` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `tell`, `address`, `date`, `user_id`) VALUES
(1, 'ahmed ali', '615526262', 'mogadisho', '2022-11-11 14:09:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(550) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `status`, `date`, `user_id`) VALUES
(1, 'Jaamac kadiye', 'jaamac', 'info@habraac.com', '123', NULL, '2022-11-09 12:07:44', 2),
(5, 'cali', 'cali', 'cali@gmail.com', '12345', 0, '2022-11-15 14:00:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_previlage`
--

CREATE TABLE `user_previlage` (
  `id` int(11) NOT NULL,
  `granted_user` int(11) DEFAULT NULL,
  `link_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_category`
--
ALTER TABLE `link_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_previlage`
--
ALTER TABLE `user_previlage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `link_category`
--
ALTER TABLE `link_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_previlage`
--
ALTER TABLE `user_previlage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
