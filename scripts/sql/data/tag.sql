SET foreign_key_checks = 0;

DELETE FROM `tag`;  # delete all data from `tag` before insert

INSERT INTO `tag` (id,name) VALUES(1,'Vegetarian');
INSERT INTO `tag` (id,name) VALUES(2,'Dairy Free');
INSERT INTO `tag` (id,name) VALUES(3,'Gluten Free');
INSERT INTO `tag` (id,name) VALUES(4,'Appetizers');
INSERT INTO `tag` (id,name) VALUES(5,'Breakfast');
INSERT INTO `tag` (id,name) VALUES(6,'Main Course');
INSERT INTO `tag` (id,name) VALUES(7,'Dessert');

SET foreign_key_checks = 1;
