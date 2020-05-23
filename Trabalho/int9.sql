.mode	columns
.headers	on
.nullvalue	NULL


select Cliente.Nome as Nome_do_Cliente from Cliente,Analise where Cliente.idCliente = Analise.idCliente and Analise.Nome like '%Ecocardiograma%' and Cliente.idCliente in (select Cliente.idCliente from Cliente,Consulta where Cliente.idCliente = Consulta.idCliente and Consulta.Diagnostico like '%Hipertensão%');--dos clientes que estiveram numa consulta onde foram diagnosticados com hipertensão, quais realizaram um ecocardiograma 