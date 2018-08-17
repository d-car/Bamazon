CREATE DATABASE products;

USE products;

CREATE TABLE items(
	item_id INTEGER(10) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(100),
    department_name VARCHAR(100),
    price DECIMAL(12, 2),
    stock_quantity INTEGER(10),
    PRIMARY KEY (item_id)
    );