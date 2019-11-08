-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema carsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `carsdb` ;

-- -----------------------------------------------------
-- Schema carsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `carsdb` DEFAULT CHARACTER SET utf8 ;
USE `carsdb` ;

-- -----------------------------------------------------
-- Table `cars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cars` ;

CREATE TABLE IF NOT EXISTS `cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `make` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `cars`
-- -----------------------------------------------------
START TRANSACTION;
USE `carsdb`;
INSERT INTO `cars` (`id`, `make`) VALUES (1, 'chevy');

COMMIT;

