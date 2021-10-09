-- -----------------------------------------------------
-- Schema dh-vestment-casual
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dh-vestment-casual`;
USE `dh-vestment-casual` ;

-- -----------------------------------------------------
-- Table `categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `categories` ;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` VARCHAR(1) NOT NULL PRIMARY KEY,
  `category` VARCHAR(45) DEFAULT NULL
  );

-- -----------------------------------------------------
-- Table `colors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `colors` ;
CREATE TABLE IF NOT EXISTS `colors` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `color` VARCHAR(45) DEFAULT NULL
);
  
-- -----------------------------------------------------
-- Table `sizes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sizes` ;
CREATE TABLE IF NOT EXISTS `sizes` (
  `id` VARCHAR(3) NOT NULL PRIMARY KEY,
  `size` VARCHAR(45) DEFAULT NULL
  );

-- -----------------------------------------------------
-- Table `types`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `types` ;
CREATE TABLE IF NOT EXISTS `types` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `type` VARCHAR(45) DEFAULT NULL
  );

-- -----------------------------------------------------
-- Table `products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `products` ;
CREATE TABLE IF NOT EXISTS `products` (
  `idProducts` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `clothingColor` INT UNSIGNED DEFAULT NULL,
  `clothingSex` VARCHAR(1) DEFAULT NULL,
  `clothingSize` VARCHAR(3) DEFAULT NULL,
  `clothingType` INT UNSIGNED DEFAULT NULL,
  `inStock` INT DEFAULT NULL,
  `photo` VARCHAR(80) DEFAULT NULL,
  `price` INT DEFAULT NULL,
  `productDescription` VARCHAR(200) DEFAULT NULL,
  `productName` VARCHAR(80) DEFAULT NULL,
  FOREIGN KEY (clothingColor) REFERENCES colors(id),
  FOREIGN KEY (clothingSex) REFERENCES categories(id),
  FOREIGN KEY (clothingSize) REFERENCES sizes(id),
  FOREIGN KEY (clothingType) REFERENCES types(id)
  );


-- -----------------------------------------------------
-- Table `users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `users` ;
CREATE TABLE IF NOT EXISTS `users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `first_name` VARCHAR(45) DEFAULT NULL,
  `last_name` VARCHAR(45) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `password` VARCHAR(150) DEFAULT NULL,
  `avatar` VARCHAR(100) DEFAULT NULL,
  `credentials` VARCHAR(45) DEFAULT NULL
  );