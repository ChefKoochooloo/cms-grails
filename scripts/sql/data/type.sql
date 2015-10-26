SET foreign_key_checks = 0;

DELETE FROM `type`; # delete all data from `type` before insert

INSERT INTO `type` (id,name) VALUES(1,'Appetizer');
INSERT INTO `type` (id,name) VALUES(2,'Breakfast');
INSERT INTO `type` (id,name) VALUES(3,'Main Course');
INSERT INTO `type` (id,name) VALUES(4,'Dessert');

SET foreign_key_checks = 1;
