-- MySQL Script generated by MySQL Workbench
-- Tue Mar 22 10:36:12 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_loja_games
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_loja_games
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_loja_games` DEFAULT CHARACTER SET utf8 ;
USE `db_loja_games` ;

-- -----------------------------------------------------
-- Table `db_loja_games`.`tb_categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_loja_games`.`tb_categorias` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_loja_games`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_loja_games`.`tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(255) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  `data_nascimento` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_loja_games`.`tb_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_loja_games`.`tb_produtos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(500) NULL,
  `console` VARCHAR(255) NOT NULL,
  `quantidade` INT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `foto` VARCHAR(255) NULL,
  `categorias_id` BIGINT NULL,
  `usuarios_id` BIGINT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_produtos_tb_categorias_idx` (`categorias_id` ASC) VISIBLE,
  INDEX `fk_tb_produtos_tb_usuarios1_idx` (`usuarios_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produtos_tb_categorias`
    FOREIGN KEY (`categorias_id`)
    REFERENCES `db_loja_games`.`tb_categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_produtos_tb_usuarios1`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `db_loja_games`.`tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
