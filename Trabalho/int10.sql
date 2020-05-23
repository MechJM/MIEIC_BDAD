.mode column
.headers on
.nullvalue NULL

select Cirurgia.idServico as idCirurgia,sum(Equipamento.Quantidade) as Equipamentos_Usados from Cirurgia,Usado_Em,Equipamento where Cirurgia.idServico = Usado_Em.idServico and Usado_Em.Codigo = Equipamento.Codigo and Equipamento.Tipo like '%Ferramenta Cirúrgica%' group by Cirurgia.idServico;--total de ferramentas cirúrgicas usadas por cirurgia