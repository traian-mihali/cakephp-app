CREATE DATABASE IF NOT EXISTS bookmarks;
USE bookmarks;

CREATE TABLE IF NOT EXISTS `users` (
        `id` INT(11) PRIMARY KEY,
        `email` VARCHAR(255) NOT NULL,
        `password` VARCHAR(255) NOT NULL,
        `firstname` VARCHAR(255) NOT NULL,
        `lastname` VARCHAR(255) NOT NULL,
        `created` DATETIME NOT NULL,
        `modified` DATETIME NOT NULL
);
CREATE TABLE IF NOT EXISTS `tags` (
        `id` INT PRIMARY KEY,
        `name` VARCHAR(255) NOT NULL,
        `created` DATETIME NOT NULL,
        `modified` DATETIME NOT NULL
);
CREATE TABLE IF NOT EXISTS `bookmarks_tags` (
        `bookmark_id` INT(11) NOT NULL,
        `tag_id` INT(11) NOT NULL,
		PRIMARY KEY (`bookmark_id`, `tag_id`),
		KEY `fk_bookmarks_tags_bookmarks_idx` (`bookmark_id`),
        KEY `fk_bookmarks_tags_tags_idx` (`tag_id`),
		CONSTRAINT `fk_bookmarks_tags_bookmarks` FOREIGN KEY (`bookmark_id`) REFERENCES `bookmarks` (`id`)  ON UPDATE CASCADE,
		CONSTRAINT `fk_bookmakrs_tags_tags` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `bookmarks` (
		`id` INTEGER PRIMARY KEY,
		`user_id` INTEGER(11),
		`title` VARCHAR(255) NOT NULL,
		`url` VARCHAR(255) NOT NULL,
		`created` DATETIME NOT NULL,
		`modified` DATETIME NOT NULL
);