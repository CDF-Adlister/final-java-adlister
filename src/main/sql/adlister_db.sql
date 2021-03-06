CREATE DATABASE IF NOT EXISTS adlister_db;
USE adlister_db;

DROP TABLE IF EXISTS ads_categories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;


CREATE TABLE IF NOT EXISTS users(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
username VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
password VARCHAR(200) NOT NULL,
PRIMARY KEY (id),
UNIQUE (username, email)
);

INSERT INTO users(username, email, password) Values
('apples', 'apples@gmail.com', 'apples123'),
('bananas', 'bananas@gmail.com', 'bananas123'),
('pear', 'pear@gmail.com', 'pear123');


CREATE TABLE IF NOT EXISTS ads(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
user_id  INT UNSIGNED DEFAULT NULL,
title VARCHAR(250) NOT NULL,
description TEXT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users (id)
);


CREATE TABLE IF NOT EXISTS categories(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     ads_id INT UNSIGNED DEFAULT NULL,
category VARCHAR(255) DEFAULT 'NONE',
PRIMARY KEY (id)
#     FOREIGN KEY (ads_id) REFERENCES ads (id)
);


INSERT INTO categories(category) VALUES
('help wanted'),
('free'),
('electronics'),
('apparel'),
('furniture');

INSERT INTO ads(user_id, title, description) Values
(1,'Add 1','This is an Add'),
(2, 'Add 2', 'This is Add 2'),
(3, 'Add 3', 'This is Add3');

CREATE TABLE IF NOT EXISTS ads_categories(
    ad_id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);
# SELECT user_id FROM ads