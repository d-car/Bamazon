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
VALUES ("Earthbound (Mother 2) Complete Big Box", "SNES", 875, 1),
	   ("Chrono Trigger Complete in Box", "SNES", 265.72, 3),
       ("Super Mario RPG Complete in Box", "SNES", 140.49, 4),
       ("Donkey Kong Country 2: Diddy's Kong Quest Complete in Box", "SNES", 40, 3),
       ("The Legend of Zelda: Ocarina of Time Collector's Edition Complete in Box", "N64", 120.64, 2),
       ("Banjo-Kazooie Complete in Box", "N64", 54.88, 6),
       ("Super Mario 64 cart only", "N64", 50.47, 8),
       ("Sonic the Hedgehog 3 Complete in Box", "Genesis", 24.99, 11),
       ("Vectorman Complete in Box", "Genesis", 15.65, 4),
       ("Earthworm Jim Complete in Box", "Genesis", 32.69, 2);
