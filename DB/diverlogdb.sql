-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema diverlogdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `diverlogdb` ;

-- -----------------------------------------------------
-- Schema diverlogdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `diverlogdb` DEFAULT CHARACTER SET utf8 ;
USE `diverlogdb` ;

-- -----------------------------------------------------
-- Table `dive`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dive` ;

CREATE TABLE IF NOT EXISTS `dive` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `time` TIME NOT NULL,
  `duration` INT UNSIGNED NOT NULL COMMENT 'mins',
  `max_depth` INT UNSIGNED NULL COMMENT 'm',
  `water_temp` INT NULL COMMENT 'C',
  `start_pressure` INT UNSIGNED NULL,
  `end_pressure` INT UNSIGNED NULL,
  `oxygen_percent` INT NULL,
  `location` VARCHAR(45) NOT NULL,
  `state_province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `latitude` DECIMAL(7,4) NULL,
  `longitude` DECIMAL(7,4) NULL,
  `suit` VARCHAR(45) NULL,
  `rating` INT UNSIGNED NULL,
  `visibility` INT UNSIGNED NULL,
  `notes` VARCHAR(255) NULL,
  `weight` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
-- DROP USER diver@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'diver'@'localhost' IDENTIFIED BY 'diver';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'diver'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dive`
-- -----------------------------------------------------
START TRANSACTION;
USE `diverlogdb`;
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (1, '2018-07-28', '10:12:00', 27, 12.2, 15, 200, 76, 21.0, 'Dutch Springs', 'Pennsylvania', 'United States', 40.685977471645, -75.353867334194, '7 mm full plus hood gloves boots', 2, 1, 'So cold! Open water cert dive. Skills include weight check, trim check, partial mask flood, regulator recovery/clear, underwater exploration, signals, tired diver tow, snorkel/reg exchange', 6);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (2, '2018-07-28', '12:16:00', 36, 12.2, 19, 221, 131, 21.0, 'Dutch Springs', 'Pennsylvania', 'United States', 40.685977471645, -75.353867334194, '7 mm full plus hood gloves boots', 2, 1, 'So cold! Open water cert dive. Skills include orally inflate BCD, buoyancy control, mask clearing, alt. air supply use, DSMB deployment, remove/replace scuba, remove/replace weights', 6);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (3, '2018-07-28', '15:45:00', 29, 9.4, 22, 221, 117, 21.0, 'Dutch Springs', 'Pennsylvania', 'United States', 40.685977471645, -75.353867334194, '7 mm full plus hood gloves boots', 2, 1, 'So cold! Open water cert dive. Buoyancy control/oral inflation, mask remove/replace, cramp removal, surface swim with compass, underwater compass navigation, CESA ', 6);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (4, '2018-07-29', '09:31:00', 34, 18.3, 14, 234, 97, 21.0, 'Dutch Springs', 'Pennsylvania', 'United States', 40.685977471645, -75.353867334194, '7 mm full plus hood gloves boots', 2, 1, 'So cold! Open water cert dive. Free descent without reference otherwise otherwise fun dive hitting max depth. Divemasters in dry suits… it’s just too cold and visibility was terrible', 6);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (5, '2019-06-27', '09:02:00', 44, 18.2, 30, 200, 100, 21.0, 'Lighthouse Kota Kinabalu', 'Sabah', 'Malaysia', 6.0050, 116.0245, '3 mm shortie', 3, 2, 'Nudibranch, Clownfish, Shoal Yellow Snappers, Damselfish, Parrotfish, Angelfish, Triggerfish, Coral Crab, Tuna, Cleaner Shrimp, Emperor Shrimp', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (6, '2019-06-27', '11:21:00', 51, 14.7, 30, 205, 110, 21.0, 'Coral Garden Kota Kinabalu', 'Sabah', 'Malaysia', 6.0050, 116.0245, '3 mm shortie', 3, 3, 'Nudibranch, clownfish, Shoal Yellow Snapper, Damselfish, Scorpion fish, pufferfish, green turtles, sweet lips, cuttlefish, goby, mantis shrimp', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (7, '2019-06-27', '14:35:00', 47, 17.3, 30, 200, 100, 21.0, 'Turtle Patch Kota Kinabalu', 'Sabah', 'Malaysia', 6.0050, 116.0245, '3 mm shortie', 3, 2, 'Clownfish, shoal yellow fish, damsel fish, parrotfish, angel fish, porcupine pufferfish, giant pufferfish, sweet lips, razorfish, extremely persistent ramora', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (8, '2019-07-06', '15:02:00', 45, 18.7, 29, 200, 90, 21.0, 'Bunaken', 'North Sulawesi', 'Indonesia', 1.6758, 124.7556, '3 mm shortie', 4, 3, 'First drift dive with super strong current!!! lots of turtles', 2);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (9, '2019-07-07', '08:27:00', 41, 20.7, 29, 200, 105, 21.0, 'Lokai 3 Bunaken', 'North Sulawesi', 'Indonesia', 1.6758, 124.7556, '3 mm shortie', 5, 3, '', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (10, '2019-07-07', '10:27:00', 46, 21.0, 29, 210, 110, 21.0, 'Lokai 1 Bunaken', 'North Sulawesi', 'Indonesia', 1.6758, 124.7556, '3 mm shortie', 3, 3, '', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (11, '2019-07-08', '08:22:00', 46, 17.5, 28, 200, 105, 21.0, 'Batu Sandar Lembeh', 'North Sulawesi', 'Indonesia', 1.49554, 125.26, '3 mm shortie', 5, 1, 'mimic octopus, pufferfish, cockatoo waspfish, lembeh velvetfish, peacock flounder, nudibranch, common seahorse', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (12, '2019-07-08', '10:52:00', 48, 18.0, 28, 210, 105, 21.0, 'Jahir Lembeh', 'North Sulawesi', 'Indonesia', 1.48085, 125.242, '3 mm shortie', 5, 1, 'boxfish, pufferfish, nudibranch, Berry\'s bobtail squid, stargazer, shrimp, clownfish', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (13, '2019-07-08', '14:49:00', 46, 17.3, 28, 200, 100, 21.0, 'Police Pier Lembeh', 'North Sulawesi', 'Indonesia', 1.424914, 125.2258, '3 mm shortie', 5, 1, 'lembeh sea dragon, ringed pipe fish, yellow lipped sea krait, bangai cardinal fish, barramundi juvenile, mandarin fish, peacock mantis shrimp, nudibranch', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (14, '2019-07-09', '08:20:00', 44, 17.0, 27, 200, 100, 21.0, 'Lembeh', 'North Sulawesi', 'Indonesia', 1.424914, 125.2258, '3 mm shortie', Null, Null, '', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (15, '2019-07-09', '10:31:00', 45, 18.0, 28, 210, 100, 21.0, 'Lembeh', 'North Sulawesi', 'Indonesia', 1.424914, 125.2258, '3 mm shortie', Null, Null, '', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (16, '2019-07-16', '10:20:00', 56, 15.9, 28, 220, 110, 31.0, 'Mawan Komodo', 'East Nusa Tenggara', 'Indonesia', -8.56175437636807, 119.602570172184, '3 mm shortie', 3, 5, 'Drift dive training dive towards advanced open water cert. Nitrox cert dive. Very weak current. Black tipped reef sharks.', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (17, '2019-07-16', '12:57:00', 53, 9.6, 28, 210, 100, 31.0, 'Siaba Komodo', 'East Nusa Tenggara', 'Indonesia', -8.56175437636807, 119.602570172184, '3 mm shortie', 4, 5, 'Peak Buoyancy Dive towards advanced open water cert. Saw turtle. played games in the sand', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (18, '2019-07-16', '18:44:22', 49, 18.6, 28, 210, 100, 31.0, 'Sebayur Komodo', 'East Nusa Tenggara', 'Indonesia', -8.56175437636807, 119.602570172184, '3 mm full', 4, 5, 'Fish ID dive for AOW cert. Saw butterfly fish, angelfish, parrot fish, titan trigger fish, trigger fish, grouper, cuttlefish, moray eel, box fish, wrasse', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (19, '2019-07-17', '10:16:00', 56, 13.9, 28, 210, 100, 32.0, 'Mawan Komodo', 'East Nusa Tenggara', 'Indonesia', -8.56175437636807, 119.602570172184, '3 mm full', 4, 5, 'Navigation dive towards AOW cert. saw a turtle and flounder, got a bit cold, did a square in current. Took heading and did reciprocal, also counted kick rate 33 kick cycles for 20 m.', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (20, '2019-07-17', '12:43:00', 33, 27.7, 27, 220, 100, 32.0, 'Penga Komodo', 'East Nusa Tenggara', 'Indonesia', -8.56175437636807, 119.602570172184, '3 mm full', 5, 5, 'Deep dive for AOW cert!!! final dive along wall', 3);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (21, '2019-08-07', '10:05:00', 33, 27.8, 24, 210, 90, 21.0, 'Manta Point Nusa Penida', 'Bali', 'Indonesia', -8.793385, 115.524567, '3 mm full plus 3 mm shortie', 5, 3, 'Bamboo shark, sting ray, manta ray, mola mola!!!', 5);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (22, '2019-08-07', '12:06:00', 40, 23.9, 24, 210, 80, 21.0, 'Crystal Bay Nusa Penida', 'Bali', 'Indonesia', -8.793385, 115.524567, '3 mm full plus 3 mm shortie', 5, 4, 'flounder, goat fish, cleaner fish', 4);
INSERT INTO `dive` (`id`, `date`, `time`, `duration`, `max_depth`, `water_temp`, `start_pressure`, `end_pressure`, `oxygen_percent`, `location`, `state_province`, `country`, `latitude`, `longitude`, `suit`, `rating`, `visibility`, `notes`, `weight`) VALUES (23, '2019-08-07', '13:55:00', 53, 17.5, 30, 200, 60, 21.0, 'Toyah Pakeh Nusa Penida', 'Bali', 'Indonesia', -8.793385, 115.524567, '3 mm full plus 3 mm shortie', 4, 3, 'Ribbon eel, snowflake eel, eel, cubbs, crown of thorns starfish, nudibranch, hawksbill turtle, orangutan crab.', 4);

COMMIT;
