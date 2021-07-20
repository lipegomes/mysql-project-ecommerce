USE PROJECT_ECOMMERCE;

CREATE TABLE `PRODUCTS_1` (
  `PRODUCT_ID` INT NOT NULL,
  `PRODUCT_NAME` VARCHAR(200) NOT NULL,
  `PRODUCT_TYPE` VARCHAR(45) NULL DEFAULT NULL,
  `PRICE` DECIMAL(10,2) NULL DEFAULT NULL,
  `QUANTITY` int NOT NULL default 0,
  PRIMARY KEY (`PRODUCT_ID`),
  UNIQUE KEY `PRODUCT_NAME_UNIQUE` (`PRODUCT_NAME`)
)ENGINE = InnoDB;

SELECT  * FROM PRODUCTS_1;
