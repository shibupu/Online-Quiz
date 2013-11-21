CREATE TABLE `quiz` (
    `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    `user_id` mediumint(8) unsigned NOT NULL,
    `category_id` mediumint(8) unsigned NOT NULL,
    `number_of_questions` tinyint(3) unsigned NOT NULL,
    `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `user_id` (`user_id`),
    KEY `category_id` (`category_id`),
    CONSTRAINT `quiz_fk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
    CONSTRAINT `quiz_fk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
