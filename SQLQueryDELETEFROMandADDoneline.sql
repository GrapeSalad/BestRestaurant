DELETE FROM cuisines;
DELETE FROM restaurants;
DELETE FROM reviews;
INSERT INTO cuisines (type, description) OUTPUT INSERTED.id VALUES ('Mexican', 'yummy');
INSERT INTO restaurants (name, location, cuisine_id) OUTPUT INSERTED.id VALUES ('Chimmy Chongs', 'Portland', cuisine.id);
INSERT INTO reviews (username, score, comment, restaurant_id) OUTPUT INSERTED.id VALUES ('Chimmy', 5, 'The chimmies are very good.');
SELECT * FROM cuisines;
SELECT * FROM restaurants;
SELECT * FROM reviews;