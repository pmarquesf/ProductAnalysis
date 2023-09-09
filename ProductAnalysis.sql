CREATE DATABASE IF NOT EXISTS ProductAnalysis;

USE ProductAnalysis;

CREATE TABLE Product_List (
	id_product INT(10) AUTO_INCREMENT PRIMARY KEY,
    asin VARCHAR(10),
    name_product VARCHAR(200),
    main_category VARCHAR(30),
    sub_category VARCHAR(15),
    image VARCHAR(100),
    link VARCHAR(200),
    no_of_ratings INT(10),
    discount_price FLOAT(2),
    actual_price FLOAT(2),
    percent_discount FLOAT(1),
    ratings FLOAT(1)
);

LOAD DATA INFILE 'AllEletronics-Structured.csv'
INTO TABLE Product_List
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

