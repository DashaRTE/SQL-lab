CREATE TABLE `users` 
(
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `password` VARCHAR(50) NOT NULL
);

CREATE TABLE `projects`
(
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
);

CREATE TABLE `project_members` 
(
    `project_id` INT,
    `user_id` INT,
    PRIMARY KEY (`project_id`, `user_id`)
);
CREATE TABLE `tasks`
(
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `project_id` INT,
    `user_id` INT
);
CREATE TABLE `task_assignees`
(
    `task_id` INT,
    `user_id` INT,
    PRIMARY KEY (`task_id`, `user_id`)
);
CREATE TABLE `files` 
(
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `task_id` INT,
    `project_id` INT
);