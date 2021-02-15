CREATE Database `hotel`;

use `hotel`;

CREATE TABLE `manager` (
  `uid` int(20) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `upass` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `uemail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`uid`, `uname`, `upass`, `fullname`, `uemail`) VALUES
(1, 'navneet', '1234', 'Navneet Krishna', 'navneet@gmail.com'),
(2, 'umang', 'umang', 'Umang Sriv', 'umang@gmail.com'),
(6, 'admin', '1234', 'admin', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(200) NOT NULL,
  `room_cat` text NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `name` text NOT NULL,
  `phone` int(100) NOT NULL,
  `book` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_cat`, `checkin`, `checkout`, `name`, `phone`, `book`) VALUES
(1, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(2, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(3, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(4, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(5, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(6, 'Super Comfort', '2017-05-19', '2017-05-22', 'Jinat Afroj', 1524587558, 'true'),
(7, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(8, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(9, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(10, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(11, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(12, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(13, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(14, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(15, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `room_category`
--

CREATE TABLE `room_category` (
  `roomname` text NOT NULL,
  `room_qnty` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `booked` int(11) NOT NULL,
  `no_bed` int(11) NOT NULL,
  `bedtype` text NOT NULL,
  `facility` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_category`
--

INSERT INTO `room_category` (`roomname`, `room_qnty`, `available`, `booked`, `no_bed`, `bedtype`, `facility`, `price`) VALUES
('Duplex', 5, 5, 0, 2, 'single', 'AC, TV, Wifi', 1500),
('Family', 5, 5, 0, 2, 'double', 'Sofa, TV, WIFI, Balcony, AC.', 3500),
('Super Comfort', 5, 5, 0, 1, 'double', 'AC, TV, WIFI', 2200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_category`
--
ALTER TABLE `room_category`
  ADD PRIMARY KEY (`roomname`(100));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
