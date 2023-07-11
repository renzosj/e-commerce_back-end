-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

DROP TABLE IF EXISTS category;
CREATE TABLE category(
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS product;
CREATE TABLE product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS tag;
CREATE TABLE tag(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(100)
);

DROP TABLE IF EXISTS productTag;
CREATE TABLE product_Tag(
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE,
    tag_id INT,
    FOREIGN KEY (tag_id) REFERENCES tag(id) ON DELETE SET NULL
);
