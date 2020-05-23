PRAGMA foreign_keys = ON;

Create Trigger mesmoCliente
Before Insert on Analise
When new.idCliente != (select Consulta.idCliente from Consulta where Consulta.idServico = new.Consulta)
Begin
    SELECT raise(rollback,'Este cliente não é o mesmo que foi à consulta associada');
End;
