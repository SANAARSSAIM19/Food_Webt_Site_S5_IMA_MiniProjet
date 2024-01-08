-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for food_db
CREATE DATABASE IF NOT EXISTS `food_db` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `food_db`;

-- Dumping structure for table food_db.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table food_db.admin: ~4 rows (approximately)
INSERT INTO `admin` (`id`, `name`, `password`) VALUES
	(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
	(3, 'sanaa', 'sanaa'),
	(4, 'sss@gmail.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- Dumping structure for table food_db.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table food_db.cart: ~6 rows (approximately)

-- Dumping structure for table food_db.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table food_db.messages: ~0 rows (approximately)
INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
	(1, 5, 'admin', 'rssaimsanae@gmail.com', '4998', 'ddd'),
	(3, 8, 'sanaa', 'rssaimsanae@gmail.com', '0765555', 'ghhgggggggggg');

-- Dumping structure for table food_db.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table food_db.orders: ~2 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `payment_status`) VALUES
	(1, 6, 'sanaa', '3', 'admin@gmail.com', 'paypal', 'd, d, d, d, d, d, d - 1111', 'sanaa (4 x 1) - ', 4, 'pending'),
	(2, 6, 'sanaa', '3', 'admin@gmail.com', 'paypal', 'd, d, d, d, d, d, d - 1111', 'sanaa (4 x 1) - ', 4, 'completed'),
	(3, 6, 'sanaa', '3', 'admin@gmail.com', 'credit card', 'd, d, d, d, d, d, d - 1111', 'sanaa (4 x 1) - ', 4, 'completed'),
	(5, 8, 'rssaim', '087666666', 'sanaasanaa@gmail.com', 'paypal', 'sass, ss, sna, ss, ss, ss, ss - 222', 'desert1 (10 x 10) - burgerr (2 x 5) - ', 110, 'pending');

-- Dumping structure for table food_db.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table food_db.products: ~7 rows (approximately)
INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
	(10, 'burgerr', 'fast food', 2, 'téléchargement (3).jpg'),
	(11, 'desert1', 'desserts', 10, 'pexels-suzy-hazelwood-1126359.jpg'),
	(12, 'Orange', 'drinks', 5, 'pexels-isabella-mendes-338713.jpg'),
	(13, 'Choco', 'desserts', 15, 'pexels-anastasia-belousova-3522560.jpg'),
	(14, 'berg', 'fast food', 20, 'pexels-foodie-factor-551991.jpg'),
	(15, 'SDD', 'main dish', 25, 'pexels-valeria-boltneva-1893558.jpg'),
	(16, 'desr', 'desserts', 40, 'pexels-anna-tukhfatullina-food-photographerstylist-2638026.jpg'),
	(17, 'AZ', 'drinks', 50, 'pexels-isabella-mendes-338713.jpg');

-- Dumping structure for table food_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table food_db.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
	(1, 'sanaa', 'sanaa@gmail.com', '1', '123', 'dd'),
	(2, 'sanaa', 'rssaimmaryam@gmail.com', '222', '1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9', NULL),
	(4, 'sanaa', 'user@gmail.com', '5', '011c945f30ce2cbafc452f39840f025693339c42', NULL),
	(5, 'sanaa', 'sanaa1@gmail.com', '065088', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL),
	(6, 'sanaa', 'admin@gmail.com', '3', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'd, d, d, d, d, d, d - 1111'),
	(7, 'rssaim', 'rssaimm@gmail.com', '2', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'dd, dd, dd, dd, dd, dd, dd - 2'),
	(8, 'rssaim', 'sanaasanaa@gmail.com', '087666666', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'sass, ss, sna, ss, ss, ss, ss - 222');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
