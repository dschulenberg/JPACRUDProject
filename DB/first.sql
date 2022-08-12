-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema righttooldb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `righttooldb` ;

-- -----------------------------------------------------
-- Schema righttooldb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `righttooldb` DEFAULT CHARACTER SET utf8 ;
USE `righttooldb` ;

-- -----------------------------------------------------
-- Table `maintenance_history`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `maintenance_history` ;

CREATE TABLE IF NOT EXISTS `maintenance_history` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `machine_name` VARCHAR(45) NOT NULL,
  `employee_name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS righttooluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'righttooluser'@'localhost' IDENTIFIED BY 'righttooluser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'righttooluser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
