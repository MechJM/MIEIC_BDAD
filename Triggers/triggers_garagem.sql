CREATE TRIGGER defaultCliente 
AFTER INSERT ON Reparacao 
FOR EACH ROW 
WHEN (NEW.idCliente ISNULL) 
BEGIN 
UPDATE Reparacao SET idCliente=(SELECT MAX(idCliente) 
FROM Carro WHERE idCarro = NEW.idCarro) 
WHERE idReparacao=NEW.idReparacao; 
END; 

CREATE TRIGGER OficinaB 
BEFORE INSERT ON ReparacaoPeca 
WHEN New.idPeca NOT IN (SELECT idPeca FROM PecaModelo WHERE idModelo = (SELECT idModelo FROM Carro WHERE idCarro = (SELECT idCarro FROM Reparacao WHERE idReparacao = New.idReparacao))) OR New.idPeca IN (SELECT idPeca FROM Peca WHERE quantidade < New.quantidade) 
BEGIN SELECT RAISE(ABORT, "Peca nao compativel ou quantidade insuficiente"); 
END; 

CREATE TRIGGER atualizaStockPecas 
AFTER INSERT ON ReparacaoPeca 
FOR EACH ROW 
BEGIN 
UPDATE Peca SET Quantidade = Quantidade - NEW.quantidade WHERE Peca.idPeca=NEW.idPeca; 
END; 

CREATE TRIGGER insertOnView 
INSTEAD OF INSERT ON modelosMarcas 
FOR EACH ROW 
BEGIN 
INSERT INTO Marca (nome) VALUES (NEW.nomeMarca); 
INSERT INTO Modelo (nome, idMarca) 
SELECT NEW.nomeModelo, idMarca FROM Marca; 
END; 