CREATE TABLE `answer` (
    `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    `question_id` mediumint(8) unsigned NOT NULL,
    `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `question_id` (`question_id`),
    CONSTRAINT `answer_fk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
