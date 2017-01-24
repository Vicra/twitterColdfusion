CREATE TABLE `Roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `role_description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
);

CREATE TABLE `Tweets` (
  `tweet_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  `creation_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tweet_id`)
);

CREATE TABLE `Users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `profile_img_url` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
);

CREATE TABLE `Users_Roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_role_id`)
);