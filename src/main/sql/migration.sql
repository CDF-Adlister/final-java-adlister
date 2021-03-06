DROP DATABASE IF EXISTS adlister_db;

CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;

DROP TABLE IF EXISTS ads_categories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;


CREATE TABLE IF NOT EXISTS users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50)  NOT NULL,
    email    VARCHAR(100) NOT NULL,
    password VARCHAR(200) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username, email)
);

CREATE TABLE IF NOT EXISTS ads
(
    id          INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED DEFAULT NULL,
    title       VARCHAR(250)  NOT NULL,
    description TEXT          NOT NULL,
#     limits prices to
    price       DECIMAL(4, 2) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE IF NOT EXISTS ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED DEFAULT NULL,
    title       VARCHAR(250) NOT NULL,
    description TEXT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE IF NOT EXISTS categories
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(255) DEFAULT 'NONE',
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads_categories
(
    ad_id       INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);