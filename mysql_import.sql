
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) AUTO_INCREMENT=1 ;


--data for table `products`

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`) VALUES
(1, 'PD1001', 'Television DXT', 'This is a HD ready television that is designed for better user experience. It comes with multiple languages and a movie mode to give you the complete cinematic experience.', 'lcd-tv.jpg', 500.85),
(2, 'PD1002', 'Wrist Watch G-Shock', 'The watch is shock resistant, as it can withstand rough and tough usage. The hard glass of the watch is made up of mineral glass material which keeps the watch from getting scratched.', 'wrist-watch.jpg', 380.30),
(3, 'PD1003', 'Android One Phone', 'Exceptional Phone. Exceptional Price. With a 5-inch HD screen and an incredibly fast Quad-Core processor, you can expect a smooth smartphone experience wherever you go.', 'android-phone.jpg', 220.50),
(4, 'PD1004', 'External Hard Disk', 'This easy to use storage device is unbelievably simple to use. With a single chord design all you need to do is plug the drive into the USB port of your computer.', 'external-hard-disk.jpg', 108.00);

