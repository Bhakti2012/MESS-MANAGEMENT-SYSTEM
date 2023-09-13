# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     mess_management
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2021-05-10 15:05:01
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for mess_management
CREATE DATABASE IF NOT EXISTS `mess_management` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mess_management`;


# Dumping structure for table mess_management.mess_user
CREATE TABLE IF NOT EXISTS `mess_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `localaddress` text,
  `gender` text,
  `email` text,
  `mob_number` text,
  `password` text,
  `mess_name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table mess_management.mess_user: 2 rows
/*!40000 ALTER TABLE `mess_user` DISABLE KEYS */;
INSERT INTO `mess_user` (`id`, `username`, `localaddress`, `gender`, `email`, `mob_number`, `password`, `mess_name`) VALUES (1, 'jitu', 'Ambegaon', 'Male', 'abcd@gmail.com', '8888888888', '123456', 'jitu'), (2, 'om', 'Aundh', 'Male', 'om@gmail.com', '8888888888', '123456', 'om');
/*!40000 ALTER TABLE `mess_user` ENABLE KEYS */;


# Dumping structure for table mess_management.tblfeedback
CREATE TABLE IF NOT EXISTS `tblfeedback` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `mess_id` text,
  `mess_username` text,
  `mess_name` text,
  `feedback_info` text,
  `rating_info` text,
  `username` text,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

# Dumping data for table mess_management.tblfeedback: 3 rows
/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
INSERT INTO `tblfeedback` (`fid`, `mess_id`, `mess_username`, `mess_name`, `feedback_info`, `rating_info`, `username`) VALUES (1, '2', 'om', 'om', 'good', '4', 'jitusunsofttech@gmail.com'), (2, '1', 'jitu', 'jitu', 'good', '3', 'jitusunsofttech@gmail.com'), (3, '2', 'om', 'om', 'good', '1', 'jitusunsofttech@gmail.com');
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;


# Dumping structure for table mess_management.tblmaster
CREATE TABLE IF NOT EXISTS `tblmaster` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `From_City` text,
  `Latitude` text,
  `Longitude` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

# Dumping data for table mess_management.tblmaster: 51 rows
/*!40000 ALTER TABLE `tblmaster` DISABLE KEYS */;
INSERT INTO `tblmaster` (`id`, `From_City`, `Latitude`, `Longitude`) VALUES (1, 'Ambegaon', '18.4458', '73.8507'), (2, 'Aundh', '18.5602', '73.8031'), (3, 'Baner', '18.5590', '73.7868'), (4, 'Bavdhan-Khurd', '18.5135', '73.7699'), (5, 'Balewadi', '18.5789', '73.7707'), (6, 'Shivaji-Nagar', '18.5314', '73.8446'), (7, 'Bibvewadi', '18.4690', '73.8641'), (8, 'Bhugaon', '18.5011', '73.7508'), (9, 'Dhankawadi', '18.4655', '73.8547'), (10, 'Dhayari', '18.4471', '73.8102'), (11, 'Fursungi', '18.4727', '73.9785'), (12, 'Ghorpadi', '18.5236', '73.9063'), (13, 'Hadapsar', '18.5089', '73.9259'), (14, 'Katraj', '18.4529', '73.8652'), (15, 'Kharadi', '18.5538', '73.9477'), (16, 'Kondhwa', '18.4695', '73.8890'), (17, 'Parvati', '18.4923', '73.8547'), (18, 'Pirangut', '18.5130', '73.6779'), (19, 'Undri', '18.4567', '73.9095'), (20, 'Vishrantwadi', '18.5726', '73.8782'), (21, 'Vadgaon-Khurd', '18.4608', '73.8081'), (22, 'Vadgaon-Budruk', '18.4660', '73.8246'), (23, 'Vadgaon-Sheri', '18.5513', '73.9210'), (24, 'Wagholi', '18.5808', '73.9787'), (25, 'Warje', '18.4865', '73.7968'), (26, 'Yerwada', '18.5529', '73.8797'), (27, 'Shivane', '18.4662', '73.7822'), (28, 'Akurdi', '18.6505', '73.7786'), (29, 'Bhosari', '18.6321', '73.8468'), (30, 'Chakan', '18.7632', '73.8613'), (31, 'Charholi-Budruk', '18.6537', '73.9077'), (32, 'Chikhli', '18.6825', '73.8196'), (33, 'Chinchwad', '18.6298', '73.7997'), (34, 'Dapodi', '18.5853', '73.8334'), (35, 'Dehu-Road', '18.6860', '73.7477'), (36, 'Dighi', '18.6149', '73.8730'), (37, 'Hinjawadi', '18.5913', '73.7389'), (38, 'Kasarwadi', '18.6061', '73.8228'), (39, 'Moshi', '18.6794', '73.8492'), (40, 'Fugewadi', '18.5870', '73.8346'), (41, 'Pimple-Gurav', '18.5866', '73.8134'), (42, 'Pimple-Nilakh', '18.5790', '73.7860'), (43, 'Pimple-Saudagar', '18.5987', '73.7978'), (44, 'Pimpri', '18.6298', '73.7997'), (45, 'Ravet', '18.6606', '73.7322'), (46, 'Rahatani', '18.6047', '73.7871'), (47, 'Talawade', '18.6866', '73.7893'), (48, 'Tathawade', '18.6276', '73.7455'), (49, 'Thergaon', '18.6143', '73.7751'), (50, 'Wakad', '18.6011', '73.7641'), (51, 'Talegaon', '18.7376', '73.6747');
/*!40000 ALTER TABLE `tblmaster` ENABLE KEYS */;


# Dumping structure for table mess_management.tblmenudata
CREATE TABLE IF NOT EXISTS `tblmenudata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` text,
  `mess_name` text,
  `location_address` text,
  `Email` text,
  `breakfast_data` text,
  `lunch_data` text,
  `dinner_data` text,
  `lunch_price` text,
  `dinner_price` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table mess_management.tblmenudata: 2 rows
/*!40000 ALTER TABLE `tblmenudata` DISABLE KEYS */;
INSERT INTO `tblmenudata` (`id`, `username`, `mess_name`, `location_address`, `Email`, `breakfast_data`, `lunch_data`, `dinner_data`, `lunch_price`, `dinner_price`) VALUES (1, 'jitu', 'jitu', 'Ambegaon', 'abcd@gmail.com', 'Upma', 'Tamater_Aloo,Palak_Paneer,3(Roti),Plain_Rice,Achar,Masala_Papad', 'Rajma,Patta_Gobhi,3(Roti),Plain_Rice,Achar,Masala_Papad', '50', '70'), (2, 'om', 'om', 'Aundh', 'om@gmail.com', 'Idli', 'Patta_Gobhi,Chole,2(Roti),Pulao,Achar,Plain_Papad', 'Baingan_Bharta,Mix_Dal,2(Roti),Pulao,Achar,Plain_Papad', '40', '50');
/*!40000 ALTER TABLE `tblmenudata` ENABLE KEYS */;


# Dumping structure for table mess_management.userregistration
CREATE TABLE IF NOT EXISTS `userregistration` (
  `Uid` int(10) NOT NULL AUTO_INCREMENT,
  `Uname` text,
  `Address` text,
  `Gender` text,
  `Mobile_Number` text,
  `Email_Id` text,
  `Upassword` text,
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table mess_management.userregistration: 2 rows
/*!40000 ALTER TABLE `userregistration` DISABLE KEYS */;
INSERT INTO `userregistration` (`Uid`, `Uname`, `Address`, `Gender`, `Mobile_Number`, `Email_Id`, `Upassword`) VALUES (1, 'jitu', 'pune', 'Male', '8888888888', 'jitusunsofttech@gmail.com', '123456'), (2, 'Bhakti', 'pune', 'FeMale', '8888888888', 'hinganebhakti20@gmail.com', '123456');
/*!40000 ALTER TABLE `userregistration` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
