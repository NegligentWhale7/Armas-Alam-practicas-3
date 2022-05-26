CREATE DATABASE IF NOT EXISTS NegligentInventory;
USE NegligentInventory;

CREATE TABLE status_item(
    status_id INTEGER UNSIGNED PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL
) Engine = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE category(
    category_id INTEGER UNSIGNED PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
) Engine = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE users(
    user_id VARCHAR(50) PRIMARY KEY,
    user_name VARCHAR(250) UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR (250) NOT NULL,
    profile_picture VARCHAR(250) NOT NULL,
    phone VARCHAR (20) UNIQUE NOT NULL
) Engine = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE item(
    item_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(60) NOT NULL,
    item_image VARCHAR(250) NOT NULL,
    userT VARCHAR (50) NOT NULL,
    FOREIGN KEY (userT)
        REFERENCES users(user_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    statusT INTEGER UNSIGNED,
    FOREIGN KEY (statusT)
        REFERENCES status_item (status_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    categoryT INTEGER UNSIGNED,
    FOREIGN KEY (categoryT)
        REFERENCES category (category_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;