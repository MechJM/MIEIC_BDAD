PRAGMA foreign_keys=ON;




create triggerConsultaDisponivel
after insert on Consulta
when 
    exists (select Dia_folga,Data_segunda,turnoDiurno,turnoNoturno from Horario,NEW,Medico where (cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',Horario.Data_segunda) as int)) < 7 and Medico.idFuncionario = Consulta.Medico and Horario.idFuncionario = Medico.idFuncionario) as horarioSemanaEmCausa 
    and (((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 0 and horarioSemanaEmCausa.Dia_folga not like 'Segunda') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 1 and horarioSemanaEmCausa.Dia_folga not like 'Terça') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 2 and horarioSemanaEmCausa.Dia_folga not like 'Quarta') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 3 and horarioSemanaEmCausa.Dia_folga not like 'Quinta') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 4 and horarioSemanaEmCausa.Dia_folga not like 'Sexta') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 5 and horarioSemanaEmCausa.Dia_folga not like 'Sábado') or ((cast(strftime('%J',NEW.Data) as int) - cast(strftime('%J',horarioSemanaEmCausa.Data_segunda) as int)) = 6 and horarioSemanaEmCausa.Dia_folga not like 'Domingo')) 
    and (((cast(strftime('%H',NEW.Hora)as int) > 20 or cast(strftime('%H',NEW.Hora)as int) < 6) and horarioSemanaEmCausa.turnoNoturno = 1) or ((cast(strftime('%H',NEW.Hora)as int) > 6 and cast(strftime('%H',NEW.Hora)as int) < 20) and horarioSemanaEmCausa.turnoDiurno = 1))
begin
select raise(rollback,'Esse funcionario nao estava a trabalhar nessa data e hora');
end;