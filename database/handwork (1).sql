-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2017 at 09:25 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_handworker`
--

CREATE TABLE `book_handworker` (
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `handworker_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `workplace` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_handworker`
--

INSERT INTO `book_handworker` (`book_id`, `customer_id`, `handworker_id`, `subcategory_id`, `workplace`, `date`, `time`, `booking_date`) VALUES
(1, 11, 2, 1, 'abbottabad', '14/12/2017', '9:00am', '2017-06-03 11:06:13'),
(2, 3, 2, 1, 'abbottabad', '12.21.2.12', '9:00', '2017-06-10 20:14:55'),
(3, 8, 3, 1, 'abbottabd', '12/12/12/1', '9:00', '2017-06-10 20:14:55'),
(5, 0, 0, 0, '', '', '', '2017-06-11 18:58:41'),
(6, 24, 0, 0, 'abotabad', '11/11/11', '8:00', '2017-06-11 19:01:50'),
(7, 0, 0, 0, '', '', '', '2017-06-11 19:03:19'),
(8, 3, 26, 0, 'abtd', '11/1/11', '10:00', '2017-06-11 19:03:55'),
(9, 3, 23, 3, 'abttbd', '10/12/12', '10:00', '2017-06-11 19:18:53'),
(10, 3, 22, 3, 'abrsds', '11/11/11', '1:00', '2017-06-11 19:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Electrician'),
(2, 'Carpanter'),
(3, 'Beautician');

-- --------------------------------------------------------

--
-- Table structure for table `handworker_job_earnings`
--

CREATE TABLE `handworker_job_earnings` (
  `earning_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `total_hours` int(11) NOT NULL COMMENT 'if days and months = 0',
  `total_days` int(11) NOT NULL COMMENT 'if hours and months = 0',
  `total_months` int(11) NOT NULL COMMENT 'if days and hours = 0',
  `total_amount_earned` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `handworker_job_earnings`
--

INSERT INTO `handworker_job_earnings` (`earning_id`, `book_id`, `total_hours`, `total_days`, `total_months`, `total_amount_earned`, `date`) VALUES
(1, 1, 8, 0, 0, 500, '2017-06-03 11:08:05'),
(3, 1, 2, 2, 2, 20000, '2017-06-11 18:06:50'),
(4, 1, 3, 3, 3, 30000, '2017-06-11 18:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `handworker_job_photos`
--

CREATE TABLE `handworker_job_photos` (
  `jobphoto_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `photos` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `handworker_job_photos`
--

INSERT INTO `handworker_job_photos` (`jobphoto_id`, `user_id`, `book_id`, `photos`, `date`) VALUES
(1, 2, 1, 'abc.jpg', '2017-06-10 17:34:51'),
(2, 2, 1, 'xyz.jpg', '2017-06-10 17:34:51'),
(3, 2, 1, 'asd.jpg', '2017-06-10 17:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `handworker_pricing`
--

CREATE TABLE `handworker_pricing` (
  `price_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `per_hour_eta` varchar(30) NOT NULL,
  `per_day_eta` varchar(30) NOT NULL,
  `per_project_eta` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `handworker_pricing`
--

INSERT INTO `handworker_pricing` (`price_id`, `user_id`, `per_hour_eta`, `per_day_eta`, `per_project_eta`, `date`) VALUES
(1, 8, '15$', '120$', '4560$', '2017-06-03 11:01:43'),
(2, 2, '15$', '100$', '340$', '2017-06-03 11:01:43'),
(3, 11, '65$', '670$', '1000$', '2017-06-03 11:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `handworker_rating`
--

CREATE TABLE `handworker_rating` (
  `rating_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_rate` varchar(30) NOT NULL,
  `comments` varchar(50) NOT NULL,
  `rating_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `handworker_rating`
--

INSERT INTO `handworker_rating` (`rating_id`, `book_id`, `user_id`, `total_rate`, `comments`, `rating_date`) VALUES
(1, 1, 2, '5', 'this is good wokrer', '2017-06-03 11:00:53'),
(2, 1, 2, '5', 'this is good wokrer', '2017-06-03 11:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `handworker_skills`
--

CREATE TABLE `handworker_skills` (
  `skill_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skills` varchar(30) NOT NULL,
  `detail` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `handworker_skills`
--

INSERT INTO `handworker_skills` (`skill_id`, `user_id`, `skills`, `detail`) VALUES
(1, 2, 'carpanter', 'i am carpanter i am carpanter i am carpanter i am carpantervi am carpanter i am carpanter i am carpanter i am carpanter i am carpanter'),
(3, 2, 'elctrician', 'i am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanter'),
(4, 2, 'beautician', 'i am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanteri am carpanter'),
(5, 2, 'electrician', 'i am ecltrcian i am ecltrcian i am ecltrcian i am ecltrcian i am ecltrciani am ecltrciani am ecltrciani am ecltrciani am ecltrciani am ecltrcian');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `category_id`, `sub_category_name`) VALUES
(1, 1, 'home appliance'),
(2, 2, 'carpanter1'),
(3, 3, 'groom'),
(4, 3, 'bride'),
(7, 1, 'wiring'),
(8, 2, 'carpanter2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `user_type` enum('Admin','Hand worker','Customer') NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_image` varchar(250) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(30) NOT NULL,
  `user_contact` varchar(30) NOT NULL,
  `user_address` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `category_id`, `sub_category_id`, `user_type`, `user_name`, `user_image`, `user_email`, `user_pass`, `user_contact`, `user_address`, `date`) VALUES
(2, 1, 1, 'Hand worker', 'tahir', '', 'tahir@gmail.com', 'tahir123', '03129876546', 'disttrict tehsil aboottabad', '2017-06-03 10:53:11'),
(3, 0, 0, 'Customer', 'hamza', '', 'hamza@gmail.com', 'hamza123', '0312987578', 'disttrict tehsil aboottabad', '2017-06-03 10:54:32'),
(8, 2, 2, 'Customer', 'tasadaq', 'xyz.jpg', 'tasadaq@gmail.com', 'tasadaq123', '031298989898', '\r\n	abbottabad', '2017-06-03 19:23:34'),
(11, 3, 4, 'Customer', 'faizan', 'faizan.jpg', 'faizan.jpg', 'faizan123', '03111234567', 'abbottabad', '2017-06-05 08:00:21'),
(22, 1, 7, 'Hand worker', 'hamza', '', 'hamza@gmail.com', 'hamza123', '021334444', '\r\n	abbottabad', '2017-06-08 08:11:06'),
(23, 1, 7, 'Hand worker', 'hamza', '', 'hamza@gmail.com', 'hamza123', '021334444', '\r\n	abbottabad', '2017-06-08 08:16:11'),
(24, 1, 7, 'Hand worker', 'faad', '', 'faad@gmail.com', 'faad123', '012121212', '\r\n	abbottabad', '2017-06-08 09:17:17'),
(25, 1, 1, 'Customer', 'faad', '', 'faad@gmail.com', 'faad28371', '01201930', '\r\n	abbottabad', '2017-06-10 18:22:27'),
(26, 2, 2, 'Hand worker', 'faad1', '804044.jpg', 'faad1@gmail.com', 'faad28371', '323232323', '\r\n	abboattad', '2017-06-10 18:24:33'),
(27, 1, 2, 'Customer', 'imran', 'irman.jpg', 'imran@ggmail.com', 'imran123', '32323', 'abbottabad', '2017-06-11 11:37:17');

-- --------------------------------------------------------

--
-- Stand-in structure for view `users_handworker`
-- (See below for the actual view)
--
CREATE TABLE `users_handworker` (
`user_id` int(11)
,`user_type` enum('Admin','Hand worker','Customer')
,`user_name` varchar(30)
,`user_image` varchar(250)
,`user_email` varchar(30)
,`user_pass` varchar(30)
,`user_contact` varchar(30)
,`user_address` varchar(30)
,`date` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_handworkerwithcats`
-- (See below for the actual view)
--
CREATE TABLE `view_handworkerwithcats` (
`user_id` int(11)
,`category_id` int(11)
,`sub_category_id` int(11)
,`user_type` enum('Admin','Hand worker','Customer')
,`user_name` varchar(30)
,`user_image` varchar(250)
,`user_email` varchar(30)
,`user_pass` varchar(30)
,`user_contact` varchar(30)
,`user_address` varchar(30)
,`date` timestamp
,`category_name` varchar(30)
,`sub_category_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_handworkerwithcatspricing`
-- (See below for the actual view)
--
CREATE TABLE `view_handworkerwithcatspricing` (
`user_id` int(11)
,`category_id` int(11)
,`sub_category_id` int(11)
,`user_type` enum('Admin','Hand worker','Customer')
,`user_name` varchar(30)
,`user_image` varchar(250)
,`user_email` varchar(30)
,`user_pass` varchar(30)
,`user_contact` varchar(30)
,`user_address` varchar(30)
,`date` timestamp
,`category_name` varchar(30)
,`sub_category_name` varchar(50)
,`per_hour_eta` varchar(30)
,`per_day_eta` varchar(30)
,`per_project_eta` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hw_bookings`
-- (See below for the actual view)
--
CREATE TABLE `view_hw_bookings` (
`book_id` int(11)
,`customer_id` int(11)
,`handworker_id` int(11)
,`subcategory_id` int(11)
,`workplace` varchar(30)
,`date` varchar(30)
,`time` varchar(30)
,`booking_date` timestamp
,`CustomerType` enum('Admin','Hand worker','Customer')
,`CustomerName` varchar(30)
,`hwType` enum('Admin','Hand worker','Customer')
,`hwName` varchar(30)
,`category_id` int(11)
,`category_name` varchar(30)
,`sub_category_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `users_handworker`
--
DROP TABLE IF EXISTS `users_handworker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users_handworker`  AS  select `user`.`user_id` AS `user_id`,`user`.`user_type` AS `user_type`,`user`.`user_name` AS `user_name`,`user`.`user_image` AS `user_image`,`user`.`user_email` AS `user_email`,`user`.`user_pass` AS `user_pass`,`user`.`user_contact` AS `user_contact`,`user`.`user_address` AS `user_address`,`user`.`date` AS `date` from `user` where (`user`.`user_type` = 'Hand worker') ;

-- --------------------------------------------------------

--
-- Structure for view `view_handworkerwithcats`
--
DROP TABLE IF EXISTS `view_handworkerwithcats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_handworkerwithcats`  AS  select `u`.`user_id` AS `user_id`,`u`.`category_id` AS `category_id`,`u`.`sub_category_id` AS `sub_category_id`,`u`.`user_type` AS `user_type`,`u`.`user_name` AS `user_name`,`u`.`user_image` AS `user_image`,`u`.`user_email` AS `user_email`,`u`.`user_pass` AS `user_pass`,`u`.`user_contact` AS `user_contact`,`u`.`user_address` AS `user_address`,`u`.`date` AS `date`,`c`.`category_name` AS `category_name`,`s`.`sub_category_name` AS `sub_category_name` from ((`user` `u` left join `category` `c` on((`c`.`category_id` = `u`.`category_id`))) left join `sub_category` `s` on((`s`.`sub_category_id` = `u`.`sub_category_id`))) where (`u`.`user_type` = 'Hand worker') ;

-- --------------------------------------------------------

--
-- Structure for view `view_handworkerwithcatspricing`
--
DROP TABLE IF EXISTS `view_handworkerwithcatspricing`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_handworkerwithcatspricing`  AS  select `u`.`user_id` AS `user_id`,`u`.`category_id` AS `category_id`,`u`.`sub_category_id` AS `sub_category_id`,`u`.`user_type` AS `user_type`,`u`.`user_name` AS `user_name`,`u`.`user_image` AS `user_image`,`u`.`user_email` AS `user_email`,`u`.`user_pass` AS `user_pass`,`u`.`user_contact` AS `user_contact`,`u`.`user_address` AS `user_address`,`u`.`date` AS `date`,`c`.`category_name` AS `category_name`,`s`.`sub_category_name` AS `sub_category_name`,`p`.`per_hour_eta` AS `per_hour_eta`,`p`.`per_day_eta` AS `per_day_eta`,`p`.`per_project_eta` AS `per_project_eta` from (((`user` `u` left join `category` `c` on((`c`.`category_id` = `u`.`category_id`))) left join `sub_category` `s` on((`s`.`sub_category_id` = `u`.`sub_category_id`))) left join `handworker_pricing` `p` on((`p`.`user_id` = `u`.`user_id`))) where (`u`.`user_type` = 'Hand worker') order by `u`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_hw_bookings`
--
DROP TABLE IF EXISTS `view_hw_bookings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hw_bookings`  AS  select `b`.`book_id` AS `book_id`,`b`.`customer_id` AS `customer_id`,`b`.`handworker_id` AS `handworker_id`,`b`.`subcategory_id` AS `subcategory_id`,`b`.`workplace` AS `workplace`,`b`.`date` AS `date`,`b`.`time` AS `time`,`b`.`booking_date` AS `booking_date`,`u`.`user_type` AS `CustomerType`,`u`.`user_name` AS `CustomerName`,`u2`.`user_type` AS `hwType`,`u2`.`user_name` AS `hwName`,`c`.`category_id` AS `category_id`,`c`.`category_name` AS `category_name`,`sc`.`sub_category_name` AS `sub_category_name` from ((((`book_handworker` `b` join `user` `u` on((`u`.`user_id` = `b`.`customer_id`))) join `user` `u2` on((`u2`.`user_id` = `b`.`handworker_id`))) join `sub_category` `sc` on((`sc`.`sub_category_id` = `b`.`subcategory_id`))) join `category` `c` on((`c`.`category_id` = `sc`.`category_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_handworker`
--
ALTER TABLE `book_handworker`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `handworker_job_earnings`
--
ALTER TABLE `handworker_job_earnings`
  ADD PRIMARY KEY (`earning_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `handworker_job_photos`
--
ALTER TABLE `handworker_job_photos`
  ADD PRIMARY KEY (`jobphoto_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `handworker_pricing`
--
ALTER TABLE `handworker_pricing`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `handworker_rating`
--
ALTER TABLE `handworker_rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `handworker_skills`
--
ALTER TABLE `handworker_skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_handworker`
--
ALTER TABLE `book_handworker`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `handworker_job_earnings`
--
ALTER TABLE `handworker_job_earnings`
  MODIFY `earning_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `handworker_job_photos`
--
ALTER TABLE `handworker_job_photos`
  MODIFY `jobphoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `handworker_pricing`
--
ALTER TABLE `handworker_pricing`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `handworker_rating`
--
ALTER TABLE `handworker_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `handworker_skills`
--
ALTER TABLE `handworker_skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `handworker_job_earnings`
--
ALTER TABLE `handworker_job_earnings`
  ADD CONSTRAINT `handworker_job_earnings_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_handworker` (`book_id`);

--
-- Constraints for table `handworker_job_photos`
--
ALTER TABLE `handworker_job_photos`
  ADD CONSTRAINT `handworker_job_photos_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_handworker` (`book_id`);

--
-- Constraints for table `handworker_pricing`
--
ALTER TABLE `handworker_pricing`
  ADD CONSTRAINT `handworker_pricing_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `handworker_rating`
--
ALTER TABLE `handworker_rating`
  ADD CONSTRAINT `handworker_rating_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_handworker` (`book_id`),
  ADD CONSTRAINT `handworker_rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `handworker_skills`
--
ALTER TABLE `handworker_skills`
  ADD CONSTRAINT `handworker_skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
