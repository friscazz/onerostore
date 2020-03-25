/*
MySQL Backup
Source Server Version: 5.7.27
Source Database: onerostore
Date: 3/25/2020 18:52:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `detail_order`
-- ----------------------------
DROP TABLE IF EXISTS `detail_order`;
CREATE TABLE `detail_order` (
  `id_invoice` varchar(255) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `status` enum('Decline Payment','Accept Payment','Confirm Payment') NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id_invoice` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `provinsi` int(11) NOT NULL,
  `kota` int(11) NOT NULL,
  `kode_pos` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `pembayaran`
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE `pembayaran` (
  `id_invoice` varchar(255) NOT NULL,
  `nomor_transfer` varchar(255) NOT NULL,
  `nama_transfer` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `show` enum('no','yes') NOT NULL,
  `recomended` enum('no','yes') NOT NULL,
  `quantity` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `slider`
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_slider` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `category` VALUES ('1','HP');
INSERT INTO `login` VALUES ('1','onero','e2b7f1aad02519b809f9dfc051aec22e','Onero Store');
INSERT INTO `product` VALUES ('1','Hape','100','no','no','7','1','12322832_1210715975611233_6833973887981828548_o8.jpg');
INSERT INTO `slider` VALUES ('1','abcde','12322832_1210715975611233_6833973887981828548_o7.jpg'), ('2','b','apture.JPG'), ('3','k','84175738_1374888322718060_9161331281508696064_n.jpg');
