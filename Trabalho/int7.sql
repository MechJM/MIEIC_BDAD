.mode	columns
.headers	on
.nullvalue	NULL

SELECT count(*) FROM Funcionario WHERE idFuncionario in (SELECT idFuncionario FROM Horario WHERE turnoNoturno = 1);--Mostrar o numero de funcionarios que trabalham à noite