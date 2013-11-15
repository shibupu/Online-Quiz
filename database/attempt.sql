CREATE TABLE `attempt` (
    `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    `user_id` mediumint(8) unsigned NOT NULL,
    `quiz_id` mediumint(8) unsigned NOT NULL,
    `data` text,
    `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `user_id` (`user_id`),
    KEY `quiz_id` (`quiz_id`),
    CONSTRAINT `attempt_fk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
    CONSTRAINT `attempt_fk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
