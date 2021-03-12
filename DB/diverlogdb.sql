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
-- Table `diver_log`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `diver_log` ;

CREATE TABLE IF NOT EXISTS `diver_log` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `location` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS diveruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'diveruser'@'localhost' IDENTIFIED BY 'diveruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'diveruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `diver_log`
-- -----------------------------------------------------
START TRANSACTION;
USE `diverlogdb`;
INSERT INTO `diver_log` (`id`, `location`) VALUES (1, 'Dutch Springs');
INSERT INTO `diver_log` (`id`, `location`) VALUES (2, 'Dutch Springs');

COMMIT;

