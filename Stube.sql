-- MySQL Script generated by MySQL Workbench
-- Thu May 13 12:20:48 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema stube
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema stube
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `stube` DEFAULT CHARACTER SET utf8 ;
USE `stube` ;

-- -----------------------------------------------------
-- Table `stube`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stube`.`User` (
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`email`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `stube`.`Video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stube`.`Video` (
  `id_video` VARCHAR(45) NOT NULL,
  `description` VARCHAR(150) NULL,
  `title` VARCHAR(45) NULL,
  `url` VARCHAR(150) NOT NULL,
  `User_email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_video`),
  CONSTRAINT `fk_Video_User`
    FOREIGN KEY (`User_email`)
    REFERENCES `stube`.`User` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `stube`.`User`
-- -----------------------------------------------------
START TRANSACTION;
USE `stube`;
INSERT INTO `stube`.`User` (`email`, `password`) VALUES ('anavera@gmail.com', '123456');
INSERT INTO `stube`.`User` (`email`, `password`) VALUES ('mariamontilla@gmail.com', '789123');
INSERT INTO `stube`.`User` (`email`, `password`) VALUES ('itacademy@gmail.com', 'abcdefg');

COMMIT;


-- -----------------------------------------------------
-- Data for table `stube`.`Video`
-- -----------------------------------------------------
START TRANSACTION;
USE `stube`;
INSERT INTO `stube`.`Video` (`id_video`, `description`, `title`, `url`, `User_email`) VALUES ('mfKr-1I4q3Aw', NULL, NULL, 'https://www.youtube.com/', 'itacademy@gmail.com');
INSERT INTO `stube`.`Video` (`id_video`, `description`, `title`, `url`, `User_email`) VALUES ('e8gaffa3Ca8&t', '', 'SQL course', 'https://www.youtube.com/watch?v=e8gaffa3Ca8', 'anavera@gmail.com');
INSERT INTO `stube`.`Video` (`id_video`, `description`, `title`, `url`, `User_email`) VALUES ('c4P__KoPZwo', 'Bases de datos', '¿Qué son las bases de datos?', 'https://www.youtube.com/watch?v=c4P__KoPZwo', 'mariamontilla@gmail.com');
INSERT INTO `stube`.`Video` (`id_video`, `description`, `title`, `url`, `User_email`) VALUES ('knVwokXITGI', 'Curso desde cero', 'Aprende BBDD', 'https://www.youtube.com/watch?v=knVwokXITGI', 'anavera@gmail.com');

COMMIT;

