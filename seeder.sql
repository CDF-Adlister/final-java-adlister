INSERT INTO users(username, email, password)
VALUES ('codeup', 'codeup@codeup.com', 'codeup'),
       ('sally', 'sally@codeup.com', 'sally'),
       ('pepe', 'pepe@codeup.com', 'pepe'),
       ('derek', 'derek@codeup.com', 'derek');

INSERT INTO ads(user_id, title, description, price)
VALUES (1, 'Playstation for sale', 'This is a slightly used playstation 1', '$' + 29.99),
       (1, 'Super Nintendo', 'Get your game on with this old-school classic!', '$' + 25.00),
       (2, 'Xbox', 'Not in working condition, but can be used for parts', '$' + 20.00),
       (3, '2 Gamecube Controllers', 'Two wired licensed Nintendo controllers', '$' + 40.00),
       (4, 'E.T. for Atari', 'Found in the ground. Kind of dusty', '$' + 5000.00),
       (5, 'Half Life 3', 'Physical copy of unreleased game PM for details', '$' + 9999.99);

INSERT INTO categories(category) VALUES
('PC'),
('consoles'),
('accessories'),
('cartridges'),
('disks'),
('retro'),
('free'),
('collectibles');

INSERT INTO ads_categories(ad_id, category_id)
VALUES (1, 2), (1, 6), (2, 2), (2, 6), (2, 7),
       (3, 3), (4, 4), (4, 6), (4, 8), (5, 1),
       (5, 5), (5, 8);