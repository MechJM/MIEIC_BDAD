.mode	columns
.headers	on
.nullvalue	NULL

select Cliente.Nome as Nome_do_Cliente,sum(Servico.Custo) as CustoTotal from Cliente,Servico where Cliente.idCliente = Servico.idCliente and strftime('%m-%Y',Servico.Data) = '05-2020' group by Cliente.idCliente;--dinheiro gasto por clientes em serviços no mes de Maio de 2020