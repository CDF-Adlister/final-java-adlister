DROP DATABASE IF EXISTS adlister_db;

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
INSERT INTO users(username, email, password)
VALUES ('codeup', 'codeup@codeup.com', 'codeup'),
       ('sally', 'sally@codeup.com', 'sally'),
       ('pepe', 'pepe@codeup.com', 'pepe'),
       ('derek', 'derek@codeup.com', 'derek');

CREATE TABLE IF NOT EXISTS ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id  INT UNSIGNED DEFAULT NULL,
    title VARCHAR(250) NOT NULL,
    description TEXT NOT NULL,
#     limits prices to
    price DECIMAL(4, 2) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO ads(user_id, title, description, price)
VALUES (1, 'Playstation for sale', 'This is a slightly used playstation 1', '$' + 29.99),
       (1, 'Super Nintendo', 'Get your game on with this old-school classic!', '$' + 25.00),
       (2, 'Xbox', 'Not in working condition, but can be used for parts', '$' + 20.00),
       (3, '2 Gamecube Controllers', 'Two wired licensed Nintendo controllers', '$' + 40.00),
       (4, 'E.T. for Atari', 'Found in the ground. Kind of dusty', '$' + 5000.00),
       (5, 'Half Life 3', 'Physical copy of unreleased game PM for details', '$' + 9999.99);

CREATE TABLE IF NOT EXISTS categories(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(255) DEFAULT 'NONE',
    PRIMARY KEY (id)
);

INSERT INTO categories(category) VALUES
('PC'),
('consoles'),
('accessories'),
('cartridges'),
('disks'),
('retro'),
('free'),
('collectibles');

CREATE TABLE IF NOT EXISTS ads_categories(
  ad_id INT UNSIGNED NOT NULL,
  category_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (ad_id) REFERENCES ads(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO ads_categories(ad_id, category_id)
VALUES (1, 2), (1, 6), (2, 2), (2, 6), (2, 7),
       (3, 3), (4, 4), (4, 6), (4, 8), (5, 1),
       (5, 5), (5, 8);
