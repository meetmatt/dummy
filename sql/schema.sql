CREATE TABLE `human` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `vacation_dest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `human_vacation_dest` (
  `human_id` int(10) unsigned NOT NULL,
  `destination_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`human_id`,`destination_id`),
  KEY `destination_id` (`destination_id`),
  CONSTRAINT `human_vacation_dest_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `vacation_dest` (`id`),
  CONSTRAINT `human_vacation_dest_ibfk_1` FOREIGN KEY (`human_id`) REFERENCES `human` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
