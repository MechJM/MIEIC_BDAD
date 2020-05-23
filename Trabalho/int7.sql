.mode	columns
.headers	on
.nullvalue	NULL

SELECT count(*) FROM Funcionario WHERE idFuncionario = (SELECT idFuncionario FROM Horario WHERE turnoNoturno = 1);--Mostrar o numero de funcionarios que trabalham à noite