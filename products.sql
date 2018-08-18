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
VALUES ("Earthbound (Mother 2) CIB Big Box", "SNES", 875, 1),
	   ("Chrono Trigger CIB", "SNES", 265.72, 3),
       ("Super Mario RPG CIB", "SNES", 140.49, 4),
       ("Donkey Kong Country 2: Diddy's Kong Quest CIB", "SNES", 40, 3),
       ("The Legend of Zelda: Ocarina of Time Collector's Edition CIB", "N64", 120.64, 2),
       ("Banjo-Kazooie CIB", "N64", 54.88, 6),
       ("Super Mario 64 CIB", "N64", 50.47, 8),
       ("Sonic the Hedgehog 3 CIB", "Genesis", 24.99, 11),
       ("Vectorman CIB", "Genesis", 15.65, 4),
       ("Earthworm Jim CIB", "Genesis", 32.69, 2);
