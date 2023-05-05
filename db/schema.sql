-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE tags (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    price DECIMAL NOT NULL,
    stock INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES departments(id)
);

CREATE TABLE product_tags (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id)
    REFERENCES products(id),
    tag_id INT NOT NULL,
    FOREIGN KEY (tag_id)
    REFERENCES tags(id)
);