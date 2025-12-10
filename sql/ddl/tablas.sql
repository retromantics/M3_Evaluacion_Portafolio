-- ================================================
-- Script DDL: Crear Tablas para AE5_ABP
-- ================================================

-- -----------------------------------------------------
-- Base de datos
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ae5_abp`;
CREATE SCHEMA IF NOT EXISTS `ae5_abp`;
USE `ae5_abp`;

-- -----------------------------------------------------
-- Tabla clientes
-- -----------------------------------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla pedidos
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `clientes_id` INT NOT NULL,
  `fecha` DATE NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pedidos_clientes_idx` (`clientes_id` ASC),
  CONSTRAINT `fk_pedidos_clientes`
    FOREIGN KEY (`clientes_id`)
    REFERENCES `clientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla productos
-- -----------------------------------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla pedidos_tiene_productos (N:M)
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pedidos_tiene_productos`;
CREATE TABLE IF NOT EXISTS `pedidos_tiene_productos` (
  `pedidos_id` INT NOT NULL,
  `productos_id` INT NOT NULL,
  PRIMARY KEY (`pedidos_id`, `productos_id`),
  INDEX `fk_pedidos_has_productos_productos1_idx` (`productos_id` ASC),
  INDEX `fk_pedidos_has_productos_pedidos1_idx` (`pedidos_id` ASC),
  CONSTRAINT `fk_pedidos_has_productos_pedidos1`
    FOREIGN KEY (`pedidos_id`)
    REFERENCES `pedidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_has_productos_productos1`
    FOREIGN KEY (`productos_id`)
    REFERENCES `productos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;
