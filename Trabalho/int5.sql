.mode	columns
.headers	on
.nullvalue	NULL

select Departamento.Nome,count(*) as NumFuncs from Funcionario,Departamento where Funcionario.Departamento = Departamento.Nome group by Funcionario.Departamento order by NumFuncs;--Número de funcionários por departamento