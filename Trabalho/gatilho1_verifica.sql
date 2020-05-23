PRAGMA foreign_keys= ON;

SELECT * FROM Analise;

Insert INTO Servico VALUES(32, '2019-07-20', '10:00',100,5);
Insert INTO Servico VALUES(33,'2019-07-25', '11:00',120,5);
Insert INTO Consulta VALUES(33,'2019-07-25', '11:00',120,5,'--','--',4);
Insert INTO Analise VALUES(32, '2019-07-20', '10:00',100,5,'--','--','2019-7-21',5,33);

SELECT * FROM Analise;