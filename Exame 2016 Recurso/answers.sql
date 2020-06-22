select Estudante.nome as nome from Estudante, Curso where Estudante.curso = Curso.id and Estudante.nome like '%a%' and Curso.nome = "MIEIC";
select '' as '';
select Estudante.nome as nome from Estudante, Amizade where Estudante.id = Amizade.ID1 and Amizade.ID2 = (select id from Estudante where nome like 'Gabriel%');
select '' as '';
select Estudante.nome as Nome from Estudante where Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 1)) and Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 2)) and Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 3)) and Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 4)) and Estudante.id in (select ID1 from Amizade where ID2 in (select id from Estudante where anoCurricular = 5));

drop TABLE if exists AmizadeTransitiva;
create table AmizadeTransitiva (ID1 int REFERENCES Estudante(id), ID2 int REFERENCES Estudante(id), PRIMARY KEY(ID1,ID2));
insert into AmizadeTransitiva  select distinct Am1.ID1,Am2.ID2 from Amizade as Am1, Amizade as Am2 where Am1.ID2 = Am2.ID1 and Am1.ID1 != Am2.ID2 and (Am1.ID1,Am2.ID2) not in (select * from Amizade) order by Am1.ID1,Am2.ID2;
--insert into AmizadeTransitiva  SELECT ID2,ID1 from AmizadeTransitiva;