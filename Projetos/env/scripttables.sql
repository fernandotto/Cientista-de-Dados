-- MySQL Script generated by MySQL Workbench
-- Wed Sep  1 14:53:13 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema coletaIGTI
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema coletaIGTI
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coletaIGTI` DEFAULT CHARACTER SET utf8 ;
USE `coletaIGTI` ;

-- -----------------------------------------------------
-- Table `coletaIGTI`.`Pessoas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coletaIGTI`.`Pessoas` (
  `cod_pessoa` INT NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  PRIMARY KEY (`cod_pessoa`),
  UNIQUE INDEX `cod_pessoa_UNIQUE` (`cod_pessoa` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coletaIGTI`.`Hobbies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coletaIGTI`.`Hobbies` (
  `cod_hobbie` INT NOT NULL,
  `hobbie` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`cod_hobbie`),
  UNIQUE INDEX `cod_hobbie_UNIQUE` (`cod_hobbie` ASC) VISIBLE,
  UNIQUE INDEX `hobbie_UNIQUE` (`hobbie` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coletaIGTI`.`Clima`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coletaIGTI`.`Clima` (
  `cod_clima` INT NOT NULL,
  `clima` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_clima`),
  UNIQUE INDEX `cod_clima_UNIQUE` (`cod_clima` ASC) VISIBLE,
  UNIQUE INDEX `clima_UNIQUE` (`clima` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coletaIGTI`.`Bebidas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coletaIGTI`.`Bebidas` (
  `cod_bebida` INT NOT NULL,
  `bebidas` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_bebida`),
  UNIQUE INDEX `cod_bebida_UNIQUE` (`cod_bebida` ASC) VISIBLE,
  UNIQUE INDEX `bebidas_UNIQUE` (`bebidas` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coletaIGTI`.`Animal de Estimacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coletaIGTI`.`Animal de Estimacao` (
  `cod_animal_estimacao` INT NOT NULL,
  `Animal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_animal_estimacao`),
  UNIQUE INDEX `cod_animal_estimacao_UNIQUE` (`cod_animal_estimacao` ASC) VISIBLE,
  UNIQUE INDEX `Animal_UNIQUE` (`Animal` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coletaIGTI`.`Pesquisa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coletaIGTI`.`Pesquisa` (
  `cod_pesquisa` INT NOT NULL,
  `data_pesquisa` DATE NOT NULL,
  `Pessoas_cod_pessoa` INT NOT NULL,
  `Hobbies_cod_hobbie` INT NOT NULL,
  `Clima_cod_clima` INT NOT NULL,
  `Bebidas_cod_bebida` INT NOT NULL,
  `Animal de Estimacao_cod_animal_estimacao` INT NOT NULL,
  PRIMARY KEY (`cod_pesquisa`),
  UNIQUE INDEX `cod_pesquisa_UNIQUE` (`cod_pesquisa` ASC) VISIBLE,
  INDEX `fk_Pesquisa_Pessoas_idx` (`Pessoas_cod_pessoa` ASC) VISIBLE,
  INDEX `fk_Pesquisa_Hobbies1_idx` (`Hobbies_cod_hobbie` ASC) VISIBLE,
  INDEX `fk_Pesquisa_Clima1_idx` (`Clima_cod_clima` ASC) VISIBLE,
  INDEX `fk_Pesquisa_Bebidas1_idx` (`Bebidas_cod_bebida` ASC) VISIBLE,
  INDEX `fk_Pesquisa_Animal de Estimacao1_idx` (`Animal de Estimacao_cod_animal_estimacao` ASC) VISIBLE,
  CONSTRAINT `fk_Pesquisa_Pessoas`
    FOREIGN KEY (`Pessoas_cod_pessoa`)
    REFERENCES `coletaIGTI`.`Pessoas` (`cod_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pesquisa_Hobbies1`
    FOREIGN KEY (`Hobbies_cod_hobbie`)
    REFERENCES `coletaIGTI`.`Hobbies` (`cod_hobbie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pesquisa_Clima1`
    FOREIGN KEY (`Clima_cod_clima`)
    REFERENCES `coletaIGTI`.`Clima` (`cod_clima`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pesquisa_Bebidas1`
    FOREIGN KEY (`Bebidas_cod_bebida`)
    REFERENCES `coletaIGTI`.`Bebidas` (`cod_bebida`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pesquisa_Animal de Estimacao1`
    FOREIGN KEY (`Animal de Estimacao_cod_animal_estimacao`)
    REFERENCES `coletaIGTI`.`Animal de Estimacao` (`cod_animal_estimacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
