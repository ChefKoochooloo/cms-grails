SET foreign_key_checks = 0;

DELETE FROM `unit`;  # delete all data from `unit` before insert

INSERT INTO `unit` (id,name) VALUES(1,'-');
INSERT INTO `unit` (id,name) VALUES(2,'lbs');
INSERT INTO `unit` (id,name) VALUES(3,'oz.');
INSERT INTO `unit` (id,name) VALUES(4,'fl. oz.');
INSERT INTO `unit` (id,name) VALUES(5,'gal');
INSERT INTO `unit` (id,name) VALUES(6,'cup(s)');
INSERT INTO `unit` (id,name) VALUES(7,'tsp');
INSERT INTO `unit` (id,name) VALUES(8,'tbsp');
INSERT INTO `unit` (id,name) VALUES(9,'pinch');
INSERT INTO `unit` (id,name) VALUES(10,'dash');
INSERT INTO `unit` (id,name) VALUES(11,'pcs.');
INSERT INTO `unit` (id,name) VALUES(12,'l');
INSERT INTO `unit` (id,name) VALUES(13,'kg');
INSERT INTO `unit` (id,name) VALUES(14,'dkg');
INSERT INTO `unit` (id,name) VALUES(15,'g');
INSERT INTO `unit` (id,name) VALUES(16,'ml');
INSERT INTO `unit` (id,name) VALUES(17,'dcl');

SET foreign_key_checks = 1;
