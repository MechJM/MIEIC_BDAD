PRAGMA foreign_keys=ON;

create view if not exists horarioSemanaEmCausaConsulta as select Dia_folga,Data_segunda,turnoDiurno,turnoNoturno from Horario where (cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',Horario.Data_segunda) as int)) < 7 and Horario.idFuncionario = NEW.Medico;

create view if not exists trabalhoTurnoConsulta as select * from horarioSemanaEmCausaConsulta where (((cast(strftime('%H',NEW.Hora)as int) > 20 or cast(strftime('%H',NEW.Hora)as int) < 6) and horarioSemanaEmCausaConsulta.turnoNoturno = 1) or ((cast(strftime('%H',NEW.Hora)as int) > 6 and cast(strftime('%H',NEW.Hora)as int) < 20) and horarioSemanaEmCausaConsulta.turnoDiurno = 1));

create view if not exists trabalhoFolgaConsulta as select * from horarioSemanaEmCausaConsulta where (((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaConsulta.Data_segunda) as int)) = 0 and horarioSemanaEmCausaConsulta.Dia_folga not like 'Segunda') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaConsulta.Data_segunda) as int)) = 1 and horarioSemanaEmCausaConsulta.Dia_folga not like 'Terça') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaConsulta.Data_segunda) as int)) = 2 and horarioSemanaEmCausaConsulta.Dia_folga not like 'Quarta') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaConsulta.Data_segunda) as int)) = 3 and horarioSemanaEmCausaConsulta.Dia_folga not like 'Quinta') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaConsulta.Data_segunda) as int)) = 4 and horarioSemanaEmCausaConsulta.Dia_folga not like 'Sexta') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaConsulta.Data_segunda) as int)) = 5 and horarioSemanaEmCausaConsulta.Dia_folga not like 'Sábado') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausaConsulta.Data_segunda) as int)) = 6 and horarioSemanaEmCausaConsulta.Dia_folga not like 'Domingo'));

create trigger consultaDisponivel
after insert on Consulta
when not exists (select * from horarioSemanaEmCausaConsulta) or not exists (select * from trabalhoTurnoConsulta) or not exists (select * from trabalhoFolgaConsulta)
begin
select raise(rollback,'Esse funcionario nao estava a trabalhar nessa data e hora');
end;