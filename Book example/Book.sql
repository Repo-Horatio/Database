CREATE TABLE `Arthur` (
  `id` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `Book` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `release` datetime,
  `arthur` varchar(255),
  `publisher` varchar(255)
);

CREATE TABLE `Publisher` (
  `id` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

ALTER TABLE `Book` ADD FOREIGN KEY (`arthur`) REFERENCES `Arthur` (`id`);

ALTER TABLE `Book` ADD FOREIGN KEY (`publisher`) REFERENCES `Publisher` (`id`);
