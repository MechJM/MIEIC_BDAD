PRAGMA foreign_keys=ON;

create view if not exists horarioSemanaEmCausaAnalise as select Dia_folga,Data_segunda,turnoDiurno,turnoNoturno from Horario where (cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',Horario.Data_segunda) as int)) < 7 and Horario.idFuncionario = NEW.idFuncionario;

create view if not exists trabalhoTurnoAnalise as select * from horarioSemanaEmCausaAnalise where (((cast(strftime('%H',NEW.Hora)as int) > 20 or cast(strftime('%H',NEW.Hora)as int) < 6) and horarioSemanaEmCausaAnalise.turnoNoturno = 1) or ((cast(strftime('%H',NEW.Hora)as int) > 6 and cast(strftime('%H',NEW.Hora)as int) < 20) and horarioSemanaEmCausaAnalise.turnoDiurno = 1));

create view if not exists trabalhoFolgaAnalise as select * from horarioSemanaEmCausaAnalise where (((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaAnalise.Data_segunda) as int)) = 0 and horarioSemanaEmCausaAnalise.Dia_folga not like 'Segunda') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaAnalise.Data_segunda) as int)) = 1 and horarioSemanaEmCausaAnalise.Dia_folga not like 'Terça') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaAnalise.Data_segunda) as int)) = 2 and horarioSemanaEmCausaAnalise.Dia_folga not like 'Quarta') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaAnalise.Data_segunda) as int)) = 3 and horarioSemanaEmCausaAnalise.Dia_folga not like 'Quinta') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaAnalise.Data_segunda) as int)) = 4 and horarioSemanaEmCausaAnalise.Dia_folga not like 'Sexta') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaAnalise.Data_segunda) as int)) = 5 and horarioSemanaEmCausaAnalise.Dia_folga not like 'Sábado') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaAnalise.Data_segunda) as int)) = 6 and horarioSemanaEmCausaAnalise.Dia_folga not like 'Domingo'));

create trigger analiseDisponivel
after insert on Analise
when not exists (select * from horarioSemanaEmCausaAnalise) or not exists (select * from trabalhoTurnoAnalise) or not exists (select * from trabalhoFolgaAnalise)
begin
select raise(rollback,'Esse funcionario nao estava a trabalhar nessa data e hora');
end;