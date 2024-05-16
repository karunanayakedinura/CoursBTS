DELETE FROM Embarcation;
INSERT INTO Embarcation
VALUES 
('B101','vert',True,'B1'),
('B102','blanc',True,'B1'),
('B103','jaune',False,'B1'),
('B201','blanc',False,'B2'),
('B202','rouge',True,'B2'),
('J101','multicolore',True,'J1'),
('J102','blanc',False,'J1'),
('J103','blanc',True,'J1'),
('J201','jaune',False,'J2'),
('J202','blanc',True,'J2'),
('M101','jaune',True,'M1'),
('M102','blanc',False,'M1'),
('M103','blanc',False,'M1'),
('P101','blanc',True,'P1'),
('P102','blanc',True,'P1'),
('P103','jaune',False,'P1'),
('P104','bleu',True,'P1'),
('P105','rouge',False,'P1'),
('P106','blanc',True,'P1'),
('P107','bleu',True,'P1'),
('P108','jaune',False,'P1'),
('P109','rouge',True,'P1'),
('P110','jaune',True,'P1'),
('P201','rouge',False,'P2'),
('P202','jaune',True,'P2'),
('P203','blanc',False,'P2'),
('P204','blanc',True,'P2'),
('P205','bleu',True,'P2'),
('P206','violet',False,'P2'),
('P207','blanc',True,'P2'),
('P208','jaune',True,'P2'),
('P301','blanc',False,'P3'),
('P302','rouge',True,'P3'),
('P303','rouge',False,'P3'),
('P304','jaune',True,'P3'),
('P305','bleu',True,'P3'),
('P306','bleu',False,'P3'),
('P307','bleu',False,'P3');
SELECT * FROM Embarcation;

DELETE FROM Typembarcation;
INSERT INTO Typembarcation
VALUES 
('B1','barque',2,15.,25.,80.,150),
('B2','barque',4,30.,50.,140.,200),
('J1','jet-ski',1,80.,150.,300.,500),
('J2','jet-ski',2,120.,250.,400.,700),
('M1','bateau a moteur',4,100.,200.,400.,800),
('P1','pedalo simple',2,30.,55.,150.,250),
('P2','pedalo double',4,40.,75.,170.,280),
('P3','pedalo toboggan',6,45.,80.,180.,300);
SELECT * FROM Typembarcation;

DELETE FROM Location;
INSERT INTO Location
VALUES
(1,'2020-08-29','10:00','10:30'),
(2,'2020-08-29','10:05','10:35'),
(3,'2020-08-29','10:02','11:02'),
(4,'2020-08-30','10:30','18:00'),
(5,'2020-08-30','10:45','11:15'),
(6,'2020-08-31','11:30','12:30'),
(7,'2020-08-31','11:45','12:15'),
(8,'2020-09-01','13:30','14:00'),
(9,'2020-09-01','13:32','14:02'),
(10,'2020-09-01','13:40','14:40'),
(11,'2020-09-01','13:45','14:00'),
(12,'2020-09-01','13:47','18:00');
SELECT * FROM Location;

DELETE FROM Louer;
INSERT INTO Louer
VALUES
(1,'P101',1),
(2,'P106',2),
(3,'P102',2),
(4,'J202',1),
(4,'M101',2),
(5,'B101',3),
(6,'P207',1),
(6,'P208',1),
(7,'P302',2),
(7,'P304',2),
(7,'P305',2),
(8,'P106',1),
(9,'P102',1),
(10,'P110',2),
(11,'J201',1),
(12,'J103',1);
SELECT * FROM Louer;
