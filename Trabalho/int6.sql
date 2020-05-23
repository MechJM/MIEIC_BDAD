.mode	columns
.headers	on
.nullvalue	NULL


select distinct Cliente.Nome as Nome_do_Cliente, Medico.Especialidade as Especialidade from Cliente,Consulta,Medico where Cliente.idCliente = Consulta.idCliente and Consulta.Medico = Medico.idFuncionario order by Nome_do_Cliente;--As especialidades dos médicos de consultas de cada cliente