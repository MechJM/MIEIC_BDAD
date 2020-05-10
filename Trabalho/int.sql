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