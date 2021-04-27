CREATE TABLE `Arthur` (
  `id` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `Book` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `release` datetime,
  `publisher` varchar(255)
);

CREATE TABLE `Book_Arthur` (
  `Arthur_id` int,
  `Book_id` int
);

CREATE TABLE `Publisher` (
  `id` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

ALTER TABLE `Book` ADD FOREIGN KEY (`publisher`) REFERENCES `Publisher` (`id`);

ALTER TABLE `Book_Arthur` ADD FOREIGN KEY (`Arthur_id`) REFERENCES `Arthur` (`id`);

ALTER TABLE `Book_Arthur` ADD FOREIGN KEY (`Book_id`) REFERENCES `Book` (`id`);
