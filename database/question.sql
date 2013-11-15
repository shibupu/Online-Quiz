CREATE TABLE `question` (
    `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    `quiz_id` mediumint(8) unsigned NOT NULL,
    `question` varchar(255) NOT NULL,
    `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `quiz_id` (`quiz_id`),
    CONSTRAINT `question_fk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
