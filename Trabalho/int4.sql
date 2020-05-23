.mode	columns
.headers	on
.nullvalue	NULL

select Nome,Injecoes_Administradas from Enfermeiro where Injecoes_Administradas > 100;--Enfermeiros com mais de 100 injeções administradas