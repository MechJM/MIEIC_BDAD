PRAGMA foreign_keys=ON;

create view if not exists horarioSemanaEmCausa as select Dia_folga,Data_segunda,turnoDiurno,turnoNoturno,Hora,Data from Horario,NEW,Cirurgia where NEW.Cirurgia = Cirurgia.idServico and NEW.Medico = Horario.idFuncionario and (cast(strftime('%J',Cirurgia.Data) as int) - cast(strftime('%J',Horario.Data_segunda) as int)) < 7;

create view if not exists trabalhoTurno as select * from horarioSemanaEmCausa where (((cast(strftime('%H',horarioSemanaEmCausa.Hora)as int) > 20 or cast(strftime('%H',horarioSemanaEmCausa.Hora)as int) < 6) and horarioSemanaEmCausa.turnoNoturno = 1) or ((cast(strftime('%H',horarioSemanaEmCausa.Hora)as int) > 6 and cast(strftime('%H',horarioSemanaEmCausa.Hora)as int) < 20) and horarioSemanaEmCausa.turnoDiurno = 1));

create view if not exists trabalhoFolga as select * from horarioSemanaEmCausa where (((cast(strftime('%J',horarioSemanaEmCausa.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 0 and horarioSemanaEmCausa.Dia_folga not like 'Segunda') or ((cast(strftime('%J',horarioSemanaEmCausa.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 1 and horarioSemanaEmCausa.Dia_folga not like 'Terça') or ((cast(strftime('%J',horarioSemanaEmCausa.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 2 and horarioSemanaEmCausa.Dia_folga not like 'Quarta') or ((cast(strftime('%J',horarioSemanaEmCausa.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 3 and horarioSemanaEmCausa.Dia_folga not like 'Quinta') or ((cast(strftime('%J',horarioSemanaEmCausa.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 4 and horarioSemanaEmCausa.Dia_folga not like 'Sexta') or ((cast(strftime('%J',horarioSemanaEmCausa.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 5 and horarioSemanaEmCausa.Dia_folga not like 'Sábado') or ((cast(strftime('%J',horarioSemanaEmCausa.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 6 and horarioSemanaEmCausa.Dia_folga not like 'Domingo'));

create trigger cirurgiaMedicoDisponivel
after insert on Realizam
when not exists (select * from horarioSemanaEmCausa) or not exists (select * from trabalhoTurno) or not exists (select * from trabalhoFolga)
begin
select raise(rollback,'Esse funcionario nao estava a trabalhar nessa data e hora');
end;