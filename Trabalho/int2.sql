.mode	columns
.headers	on
.nullvalue	NULL

SELECT * FROM Servico WHERE Custo = (SELECT MAX(Custo) FROM Servico);--Mostrar o serviço mais caro