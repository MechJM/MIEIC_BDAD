PRAGMA foreign_keys= ON;
Create Trigger dataAnalise
Before Insert on Analise

When(New.Data < (SELECT Data FROM Consulta Where (idServico = New.Consulta)))

Begin
    SELECT raise(rollback,	'Uma análise não pode ser anterior à consulta');
End;