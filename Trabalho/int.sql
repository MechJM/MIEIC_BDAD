.mode column
.headers on
.nullvalue NULL

select Nome,Injecoes_Administradas from Enfermeiro where Injecoes_Administradas > 100;
select '' as '';
select idServico,Custo from Cirurgia where Custo > 40;
select '' as '';
select Nome,sum(Servico.Custo) as Total from Cliente,Servico where Cliente.idCliente = Servico.idCliente group by Servico.idCliente order by Total;
select '' as '';
select Departamento.Nome,count(*) as NumFuncs from Funcionario,Departamento where Funcionario.Departamento = Departamento.Nome group by Funcionario.Departamento order by NumFuncs;
select '' as '';
select distinct Cliente.Nome as Nome_do_Cliente, Medico.Especialidade as Especialidade from Cliente,Consulta,Medico where Cliente.idCliente = Consulta.idCliente and Consulta.Medico = Medico.idFuncionario order by Nome_do_Cliente;--As especialidades dos médicos de consultas de cada cliente
select '' as '';
select Nome from Cliente where idCliente in (select Cliente.idCliente from Cliente,Cirurgia where Cliente.idCliente = Cirurgia.idCliente and Cirurgia.Tipo_Procedimento like '%Transplante%');--nomes de clientes que efetuaram transplante, provavelmente não precisa da subquery
select '' as '';
select Medico.Nome as Nome,Medico.idFuncionario as idMedico,count(*) as numCirurgias from Medico,Cirurgia,Realizam where Realizam.Medico = Medico.idFuncionario and Realizam.Cirurgia = Cirurgia.idServico group by Medico.idFuncionario;
select '' as '';
select Cliente.Nome as Nome_do_Cliente from Cliente,Analise where Cliente.idCliente = Analise.idCliente and Analise.Nome like '%Ecocardiograma%' and Cliente.idCliente in (select Cliente.idCliente from Cliente,Consulta where Cliente.idCliente = Consulta.idCliente and Consulta.Diagnostico like '%Hipertensão%');--dos clientes que estiveram numa consulta onde foram diagnosticados com hipertensão, quais realizaram um ecocardiograma 
select '' as '';
select Departamento.Nome as Nome from Departamento where Nome not in (select Departamento.Nome as Nome from Departamento,Funcionario where Funcionario.Departamento = Departamento.Nome group by Departamento.Nome);--Departamentos sem funcionários
select '' as '';
select Cliente.Nome as Nome_do_Cliente,sum(Servico.Custo) as CustoTotal from Cliente,Servico where Cliente.idCliente = Servico.idCliente and strftime('%m',Servico.Data) = '05' and strftime('%Y',Servico.Data) = '2020' group by Cliente.idCliente;--dinheiro gasto por clientes em serviços no mes de Maio de 2020
select '' as '';
