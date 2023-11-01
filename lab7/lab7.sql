CREATE TABLE `category` 
(
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
);

CREATE TABLE `news` 
(
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `content` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `author` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `creation_date` DATETIME NOT NULL,
    `category_id` INT UNSIGNED NOT NULL,
    FOREIGN KEY (`category_id`) REFERENCES `category`(`id`)
);

CREATE TABLE `user` 
(
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
);

CREATE TABLE `comment` 
(
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `content` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `creation_date` DATETIME NOT NULL,
    `user_id` INT UNSIGNED NOT NULL,
    `news_id` INT UNSIGNED NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`),
    FOREIGN KEY (`news_id`) REFERENCES `news`(`id`) 
);

CREATE TABLE `rating` 
(
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `value` INT NOT NULL CHECK (value >= 1 AND value <= 5),
    `user_id` INT UNSIGNED NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
);