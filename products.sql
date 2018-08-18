CREATE DATABASE products;

USE products;

CREATE TABLE items(
	item_id INTEGER(10) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(250),
    department_name VARCHAR(10),
    price DECIMAL(12, 2),
    stock_quantity INTEGER(10),
    PRIMARY KEY (item_id)
    );

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("Chrono Trigger Complete in Box", "SNES", 265.72, 3);

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("Earthbound (Mother 2) Complete Big Box", "SNES", 875, 1);

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("Super Mario RPG Complete in Box", "SNES", 140.49, 4);

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("Donkey Kong Country 2: Diddy's Kong Quest Complete in Box", "SNES", 40, 3);

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("The Legend of Zelda: Ocarina of Time Collector's Edition Complete in Box", "N64", 120.64, 2);

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("Banjo-Kazooie Complete in Box", "N64", 54.88, 6);

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("Super Mario 64 cart only", "N64", 50.47, 8);

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("Sonic the Hedgehog 3 Complete in Box", "Genesis", 24.99, 11);

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("Vectorman Complete in Box", "Genesis", 15.65, 4);

INSERT INTO items (product_name, department_name, price, stock_quantity)
VALUES ("Earthworm Jim Complete in Box", "Genesis", 32.69, 2);