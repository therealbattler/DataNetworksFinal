-- MySQL Script generated by MySQL Workbench
-- 04/03/17 13:05:58
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema StockExchange
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema StockExchange
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `StockExchange` DEFAULT CHARACTER SET utf8 ;
USE `StockExchange` ;

-- -----------------------------------------------------
-- Table `StockExchange`.`Users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `StockExchange`.`Users` ;

CREATE TABLE IF NOT EXISTS `StockExchange`.`Users` (
  `UserID` VARCHAR(6) NOT NULL,
  `Password` VARCHAR(20) NOT NULL,
  `Balance` FLOAT NULL,
  `Profit` FLOAT NULL,
  PRIMARY KEY (`UserID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `StockExchange`.`WattSociety`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `StockExchange`.`WattSociety` ;

CREATE TABLE IF NOT EXISTS `StockExchange`.`WattSociety` (
  `StockOwner` VARCHAR(45) NOT NULL,
  `AmountOfStock` INT NULL,
  `Value` FLOAT NULL,
  `Abbreviation` VARCHAR(3) NULL,
  `ForSale` INT NULL,
  PRIMARY KEY (`StockOwner`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `StockExchange`.`OxytocSociety`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `StockExchange`.`OxytocSociety` ;

CREATE TABLE IF NOT EXISTS `StockExchange`.`OxytocSociety` (
  `StockOwner` VARCHAR(45) NOT NULL,
  `AmountOfStock` INT NULL,
  `Value` FLOAT NULL,
  `Abbreviation` VARCHAR(3) NULL,
  `ForSale` INT NULL,
  PRIMARY KEY (`StockOwner`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `StockExchange`.`ArchimedesSociety`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `StockExchange`.`ArchimedesSociety` ;

CREATE TABLE IF NOT EXISTS `StockExchange`.`ArchimedesSociety` (
  `StockOwner` VARCHAR(45) NOT NULL,
  `AmountOfStock` INT NULL,
  `Value` FLOAT NULL,
  `Abbreviation` VARCHAR(3) NULL,
  `ForSale` INT NULL,
  PRIMARY KEY (`StockOwner`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `StockExchange`.`Marketplace`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `StockExchange`.`Marketplace` ;

CREATE TABLE IF NOT EXISTS `StockExchange`.`Marketplace` (
  `SellerID` VARCHAR(45) NOT NULL,
  `StockName` VARCHAR(3) NULL,
  `PricePerStock` FLOAT NULL,
  `AmountOfStock` INT NULL,
  PRIMARY KEY (`SellerID`))
ENGINE = InnoDB;

INSERT INTO `stockexchange`.`users` (`UserID`, `Password`, `Balance`) VALUES ('SDA03', 'pw', '100'); 
INSERT INTO `stockexchange`.`users` (`UserID`, `Password`, `Balance`) VALUES ('417858', 'pw', '20'); 
INSERT INTO `stockexchange`.`users` (`UserID`, `Password`, `Balance`) VALUES ('423639', 'pw', '25'); 
INSERT INTO `stockexchange`.`users` (`UserID`, `Password`, `Balance`) VALUES ('STK', 'pw', '110'); 
INSERT INTO `stockexchange`.`users` (`UserID`, `Password`, `Balance`) VALUES ('399528', 'pw', '20'); 
INSERT INTO `stockexchange`.`users` (`UserID`, `Password`, `Balance`) VALUES ('418747', 'pw', '90'); 
INSERT INTO `stockexchange`.`users` (`UserID`, `Password`, `Balance`) VALUES ('WattS', 'pw', '500'); 
INSERT INTO `stockexchange`.`users` (`UserID`, `Password`, `Balance`) VALUES ('ArchS', 'pw', '500'); 
INSERT INTO `stockexchange`.`users` (`UserID`, `Password`, `Balance`) VALUES ('OxytS', 'pw', '500'); 
INSERT INTO `stockexchange`.`wattsociety` (`StockOwner`, `AmountOfStock`, `Value`, `Abbreviation`, `ForSale`) VALUES ('WattS', '4960', '24800', 'WTT', '4960');
INSERT INTO `stockexchange`.`wattsociety` (`StockOwner`, `AmountOfStock`, `Value`, `Abbreviation`, `ForSale`) VALUES ('417858', '10', '50', 'WTT', '0');
INSERT INTO `stockexchange`.`wattsociety` (`StockOwner`, `AmountOfStock`, `Value`, `Abbreviation`, `ForSale`) VALUES ('STK', '10', '50', 'WTT', '5');
INSERT INTO `stockexchange`.`wattsociety` (`StockOwner`, `AmountOfStock`, `Value`, `Abbreviation`, `ForSale`) VALUES ('SDA03', '20', '100', 'WTT', '10');
INSERT INTO `stockexchange`.`archimedessociety` (`StockOwner`, `AmountOfStock`, `Value`, `Abbreviation`, `ForSale`) VALUES ('ArchS', '4900', '24500', 'ARC', '4900');
INSERT INTO `stockexchange`.`archimedessociety` (`StockOwner`, `AmountOfStock`, `Value`, `Abbreviation`, `ForSale`) VALUES ('399528', '100', '500', 'ARC', '50');
INSERT INTO `stockexchange`.`oxytocsociety` (`StockOwner`, `AmountOfStock`, `Value`, `Abbreviation`, `ForSale`) VALUES ('OxytS', '4850', '24250', 'OXY', '4850');
INSERT INTO `stockexchange`.`oxytocsociety` (`StockOwner`, `AmountOfStock`, `Value`, `Abbreviation`, `ForSale`) VALUES ('418747', '120', '600', 'OXY', '20');
INSERT INTO `stockexchange`.`oxytocsociety` (`StockOwner`, `AmountOfStock`, `Value`, `Abbreviation`, `ForSale`) VALUES ('423639', '30', '150', 'OXY', '0');
INSERT INTO `stockexchange`.`marketplace` (`SellerID`, `StockName`, `PricePerStock`, `AmountOfStock`) VALUES ('WattS', 'WTT', '5', '4960');
INSERT INTO `stockexchange`.`marketplace` (`SellerID`, `StockName`, `PricePerStock`, `AmountOfStock`) VALUES ('OxytS', 'OXY', '5', '4850');
INSERT INTO `stockexchange`.`marketplace` (`SellerID`, `StockName`, `PricePerStock`, `AmountOfStock`) VALUES ('ArchS', 'ARC', '5', '4900');
INSERT INTO `stockexchange`.`marketplace` (`SellerID`, `StockName`, `PricePerStock`, `AmountOfStock`) VALUES ('STK', 'WTT', '3', '5');
INSERT INTO `stockexchange`.`marketplace` (`SellerID`, `StockName`, `PricePerStock`, `AmountOfStock`) VALUES ('SDA03', 'WTT', '4', '10');
INSERT INTO `stockexchange`.`marketplace` (`SellerID`, `StockName`, `PricePerStock`, `AmountOfStock`) VALUES ('399528', 'ARC', '4', '50');
INSERT INTO `stockexchange`.`marketplace` (`SellerID`, `StockName`, `PricePerStock`, `AmountOfStock`) VALUES ('418747', 'OXY', '2', '20');





SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
