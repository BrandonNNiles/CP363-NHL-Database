--Basics
DROP DATABASE IF EXISTS `nhl363`;
CREATE DATABASE `nhl363`; 
USE `nhl363`;

--Configuration related
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `GAMES`(
    `game_id` int(8) NOT NULL,
    `start_date` date NOT NULL,
    `start_time` time NOT NULL,
    `city_host` char(50) NOT NULL,
    `home_team` char(50) NOT NULL,
    `away_team` char(50) NOT NULL,
    `arena_name` char(50) NOT NULL,
    PRIMARY KEY (`game_id`),
    KEY `FK_home_team` (`home_team`),
    KEY `FK_away_team` (`away_team`)
)