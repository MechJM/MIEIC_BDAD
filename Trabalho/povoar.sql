INSERT INTO Cliente Values ('Alexandra Pereira', 244272509, 'Rua do Talho 12', 913254257, 1, 'Asma');
INSERT INTO Cliente Values ('Diogo Martins', 711178002, 'Rua das Flores 20',912058756,2, 'Cancro do pulmão');
INSERT INTO Cliente Values ('Carlos Gonçalves',961425548, 'Rua da Boavista 500',915279348,3, 'Afasia de Broca');
INSERT INTO Cliente Values ('António Granja', 167760436, 'Rua Nossa Sra de Fátima 72',912978347,4, 'Paragem do miocárdio');
INSERT INTO Cliente Values ('Diogo Viana', 373878287, 'Rua das Amoras 100',919312021,5, 'Alucinações');
INSERT INTO Cliente Values ('Kevin Ianga', 226614242,'Rua de Almada 10',918541208,6,'Insuficiência Cardiaca');
INSERT INTO Cliente Values ('João David', 631969374,'Rua dos Indecisos 109',918922960,7, 'Perna esquerda quebrada');
INSERT INTO Cliente Values ('Pedro Barbosa',507608741,'Rua Barão Forrester 3',911475591,8, 'Obesidade');
INSERT INTO Cliente Values ('Daniela Ferreira',946885254,'Rua das Escolas 81',969518081,9, 'Ansiedade');
INSERT INTO Cliente Values ('Mariana Marinho',200780963,'Rua da Carla Ferreira' ,968081780,10, 'Diabetes');
INSERT INTO Cliente Values ('Rute Chaves Bettencourt',115876635,'Rua Santa Clara do Sul 15' ,912000845,11, 'Palidez, Perda de apetite');
INSERT INTO Cliente Values ('Nicholas Bernardes',123456987, 'Travessa São José 4212', 913542687, 12, 'Perda de memória, Vertigem');
INSERT INTO Cliente Values ('Marisa Quadros',418563287, 'Travessa Doutor Paes de Melo 895', 918264555, 13, 'Rouquidão, Tosse');

INSERT INTO Departamento VALUES('Análises Clínicas',4);
INSERT INTO Departamento VALUES('Anestesiologia',3);
INSERT INTO Departamento VALUES('Cardiologia',5);
INSERT INTO Departamento VALUES('Cirurgia de Especialidade',5);
INSERT INTO Departamento VALUES('Cirurgia Geral',5);
INSERT INTO Departamento VALUES('Dermatologia',1);
INSERT INTO Departamento VALUES('Endocrinologia',4);
INSERT INTO Departamento VALUES('Enfermagem',0);
INSERT INTO Departamento VALUES('Gastrenterologia',4);
INSERT INTO Departamento VALUES('Ginecologia-Obstetrícia',2);
INSERT INTO Departamento VALUES('Hematologia',4);
INSERT INTO Departamento VALUES('Imagiologia',3);
INSERT INTO Departamento VALUES('Imunologia',3);
INSERT INTO Departamento VALUES('Infecciologia',1);
INSERT INTO Departamento VALUES('Medicina Dentária',1);
INSERT INTO Departamento VALUES('Medicina Geral e Familiar',0);
INSERT INTO Departamento VALUES('Medicina Intensiva',0);
INSERT INTO Departamento VALUES('Nefrologia',3);
INSERT INTO Departamento VALUES('Neurologia',5);
INSERT INTO Departamento VALUES('Nutrição',1);
INSERT INTO Departamento VALUES('Oftalmologia',2);
INSERT INTO Departamento VALUES('Oncologia',1);
INSERT INTO Departamento VALUES('Ortopedia',5);
INSERT INTO Departamento VALUES('Otorrinolaringologia',4);
INSERT INTO Departamento VALUES('Patologia',4);
INSERT INTO Departamento VALUES('Pediatria',2);
INSERT INTO Departamento VALUES('Pneumologia',4);
INSERT INTO Departamento VALUES('Psiquiatria',3);
INSERT INTO Departamento VALUES('Urgências',0);
INSERT INTO Departamento VALUES('Urologia',3);

INSERT INTO Funcionario VALUES ('Asdrubál Silva',130437866,'Rua dos Carvalhos 44' ,964118989, 1, 'Urgências');
INSERT INTO Funcionario VALUES ('Pedro Silva',623832096,'Rua das Flores 73' ,962677726,2, 'Urgências');
INSERT INTO Funcionario VALUES ('Sofia Borges',325437259, 'Rua Pedro-Hispano 21' ,937982340,3, 'Urgências');
INSERT INTO Funcionario VALUES ('Domingo Domingues',946885253, 'Rua 5 de Outubro 123' ,931360537,4, 'Urgências');
INSERT INTO Funcionario VALUES ('Joana Alves',799642630, 'Rua do Varão 60' ,935861728,5, 'Urgências');
INSERT INTO Funcionario VALUES ('Luís Silva',130437867,'Rua Álvares Cabral 50' ,969402024,6,'Pneumologia');
INSERT INTO Funcionario VALUES ('Miguel Azevedo',997395948, 'Rua do Miguel Jordão 89' ,966089679,7,'Pneumologia');
INSERT INTO Funcionario VALUES ('Miguel Lopes',564680097, 'Rua de Cedofeita 45' ,931154433,8,'Pneumologia');
INSERT INTO Funcionario VALUES ('Joaquim Lopes',874747711, 'Rua Miguel Bombarda 76' ,931513214,9,'Cardiologia');
INSERT INTO Funcionario VALUES ('António Lima',123968184, 'Praça do Bonfim 30' ,934719368,10,'Cardiologia');
INSERT INTO Funcionario VALUES ('Juliana Santos',132845751, 'Praça da República 50' ,912574702,11,'Cardiologia');
INSERT INTO Funcionario VALUES ('Margarida Sá',440837476, 'Rua dos Vingadores 76' ,917368886,12,'Pediatria');
INSERT INTO Funcionario VALUES ('António César',209765575, 'Rua D. Sebastião 33' ,919184876,13,'Pediatria');
INSERT INTO Funcionario VALUES ('Daniel Monteiro',734746160, 'Rua Álvares Cabral 12' ,914837993,14,'Pediatria');
INSERT INTO Funcionario VALUES ('Miguel Taveira',345631564, 'Avenida do Ouro 1' ,931154433,15,'Oftalmologia');
INSERT INTO Funcionario VALUES ('João Rocha',960954509, 'Avenida da Boavista 267' ,939318349,16,'Oftalmologia');
INSERT INTO Funcionario VALUES ('Marta Correia',874747712, 'Praça Mouzinho de Alburqueque 45' ,936799890,17,'Psiquiatria');
INSERT INTO Funcionario VALUES ('Ana Gonçalves',385970256, 'Rua Sem Fim 89' ,938710866,18,'Psiquiatria');
INSERT INTO Funcionario VALUES ('Marisa Cruz',578230859, 'Rua Pequena 10' ,935861729,19,'Oncologia');
INSERT INTO Funcionario VALUES ('Luana Andrade',847144854, 'Rua Comandante Augusto Cardoso 67' ,911035333,20,'Oncologia');
INSERT INTO Funcionario VALUES ('Manuela Barbosa',102261353, 'Avenida Angola 1001',934670536,21,'Medicina Geral e Familiar');

INSERT INTO Enfermeiro VALUES ('Asdrubál Silva',130437866,'Rua dos Carvalhos 44' ,964118989, 1, 'Urgências',0);
INSERT INTO Enfermeiro VALUES ('António Lima',123968184, 'Praça do Bonfim 30' ,934719368,10,'Cardiologia',5);
INSERT INTO Enfermeiro VALUES ('Margarida Sá',440837476, 'Rua dos Vingadores 76' ,917368886,12,'Pediatria',35);
INSERT INTO Enfermeiro VALUES ('Juliana Santos',132845751, 'Praça da República 50' ,912574702,11,'Cardiologia',250);
INSERT INTO Enfermeiro VALUES ('Sofia Borges',325437259, 'Rua Pedro-Hispano 21' ,937982340,3, 'Urgências',15);
INSERT INTO Enfermeiro VALUES ('Miguel Lopes',564680097, 'Rua de Cedofeita 45' ,931154433,8,'Pneumologia',20);
INSERT INTO Enfermeiro VALUES ('Joana Alves',799642630, 'Rua do Varão 60' ,935861728,5, 'Urgências',98);
INSERT INTO Enfermeiro VALUES ('Daniel Monteiro',734746160, 'Rua Álvares Cabral 12' ,914837993,14,'Pediatria',47);
INSERT INTO Enfermeiro VALUES ('João Rocha',960954509, 'Avenida da Boavista 267' ,939318349,16,'Oftalmologia', 22);
INSERT INTO Enfermeiro VALUES ('Ana Gonçalves',385970256, 'Rua Sem Fim 89' ,938710866,18,'Psiquiatria', 137);

INSERT INTO Medico VALUES ('Pedro Silva',623832096,'Rua das Flores 73' ,962677726,2, 'Urgências','Urgências',1);
INSERT INTO Medico VALUES ('Domingo Domingues',946885253, 'Rua 5 de Outubro 123' ,931360537,4, 'Urgências' , 'Urgências',0);
INSERT INTO Medico VALUES ('Luís Silva',130437867,'Rua Álvares Cabral 50' ,969402024,6,'Pneumologia','Pneumologia',1);
INSERT INTO Medico VALUES ('Miguel Azevedo',997395948, 'Rua do Miguel Jordão 89' ,966089679,7,'Pneumologia','Pneumologia',0);
INSERT INTO Medico VALUES ('Joaquim Lopes',874747711, 'Rua Miguel Bombarda 76' ,931513214,9,'Cardiologia','Cardiologia',1);
INSERT INTO Medico VALUES ('António César',209765575, 'Rua D. Sebastião 33' ,919184876,13,'Dermatologia','Dermatologia',0);
INSERT INTO Medico VALUES ('Miguel Taveira',345631564, 'Avenida do Ouro 1' ,931154433,15,'Oftalmologia','Oftalmologia',1);
INSERT INTO Medico VALUES ('Marta Correia',874747712, 'Praça Mouzinho de Alburqueque 45' ,936799890,17,'Psiquiatria','Psiquiatria',0);
INSERT INTO Medico VALUES ('Marisa Cruz',578230859, 'Rua Pequena 10' ,935861729,19,'Oncologia','Oncologia',1);
INSERT INTO Medico VALUES ('Luana Andrade',847144854, 'Rua Comandante Augusto Cardoso 76' ,911035333,20,'Oncologia', 'Oncologia',0);
INSERT INTO Medico VALUES ('Manuela Barbosa',102261353, 'Avenida Angola 1001',934670536,21,'Medicina Geral e Familiar','Medicina Geral e Familiar',1);

INSERT INTO Horario VALUES(1,9, 'Sábado','2019-05-06',1,0);
INSERT INTO Horario VALUES(2,21, 'Terça','2019-04-08',1,0);
INSERT INTO Horario VALUES(3,15, 'Segunda','2019-04-01',1,0);
INSERT INTO Horario VALUES(4,20, 'Domingo','2019-12-30',1,1);
INSERT INTO Horario VALUES(5,2, 'Quinta','2019-03-11',1,1);
INSERT INTO Horario VALUES(6,17, 'Quinta','2019-09-09',1,1);
INSERT INTO Horario VALUES(7,21, 'Segunda','2018-12-24',1,0);
INSERT INTO Horario VALUES(8,20, 'Sexta','2019-08-12',1,1);
INSERT INTO Horario VALUES(9,7, 'Quarta','2019-01-07',1,1);
INSERT INTO Horario VALUES(10,19, 'Segunda','2019-07-15',1,1);
INSERT INTO Horario VALUES(11,21, 'Terça','2019-03-25',1,0);
INSERT INTO Horario VALUES(12,2, 'Quinta','2019-04-01',1,1);
INSERT INTO Horario VALUES(13,7, 'Quarta','2019-05-06',1,0);
INSERT INTO Horario VALUES(14,9, 'Domingo','2019-04-01',1,1);
INSERT INTO Horario VALUES(15,2, 'Domingo','2019-05-13',1,1);
INSERT INTO Horario VALUES(16,4, 'Quarta','2019-06-24',1,0);
INSERT INTO Horario VALUES(17,19, 'Sexta','2019-05-13',1,1);
INSERT INTO Horario VALUES(18,20, 'Domingo','2019-06-24',1,1);
INSERT INTO Horario VALUES(19,7, 'Sexta','2019-05-06',1,0);
INSERT INTO Horario VALUES(20,4, 'Sábado','2019-05-06',1,0);
INSERT INTO Horario VALUES(21,4, 'Sábado','2019-05-13',1,0);
INSERT INTO Horario VALUES(22,13, 'Sábado','2019-08-19',1,0);
INSERT INTO Horario VALUES(23,15, 'Sábado','2019-11-11',1,0);
INSERT INTO Horario VALUES(24,1, 'Quinta','2019-04-01',1,0);
INSERT INTO Horario VALUES(25,10, 'Segunda','2019-05-06',1,1);
INSERT INTO Horario VALUES(26,8, 'Domingo','2019-04-01',1,1);
INSERT INTO Horario VALUES(27,11, 'Sexta','2019-05-13',1,1);
INSERT INTO Horario VALUES(28,10, 'Sábado','2019-05-13',1,1);
INSERT INTO Horario VALUES(29,12, 'Domingo','2019-05-13',1,1);
INSERT INTO Horario VALUES(30,1, 'Sexta','2019-05-06',1,1);
INSERT INTO Horario VALUES(31,8, 'Sábado','2019-05-06',1,1);
INSERT INTO Horario VALUES(32,3, 'Domingo','2019-05-06',1,1);
INSERT INTO Horario VALUES(33,3, 'Terça','2019-05-13',1,1);
INSERT INTO Horario VALUES(34,9, 'Segunda','2019-05-20',1,1);
INSERT INTO Horario VALUES(35,14, 'Sexta','2019-04-15',0,1);
INSERT INTO Horario VALUES(36,15, 'Quarta','2019-04-30',0,1);
INSERT INTO Horario VALUES(37,20, 'Sexta','2019-06-10',1,0);
INSERT INTO Horario VALUES(38,19, 'Sexta','2019-04-22',1,0);
INSERT INTO Horario VALUES(39,4, 'Domingo','2019-07-29',1,0);
INSERT INTO Horario VALUES(40,5, 'Quinta','2019-12-23',1,0);
INSERT INTO Horario VALUES(41,7, 'Quarta','2019-12-09',1,0);
INSERT INTO Horario VALUES(42,9, 'Segunda','2019-08-26',1,0);
INSERT INTO Horario VALUES(43,12, 'Terça','2019-02-25',1,0);

INSERT INTO Equipamento VALUES(1,'Imagiologia',20);
INSERT INTO Equipamento VALUES(2,'Imagiologia',5);
INSERT INTO Equipamento VALUES(3,'Prótese',1);
INSERT INTO Equipamento VALUES(4,'Prótese',4);
INSERT INTO Equipamento VALUES(5,'Ferramenta Cirúrgica',100);
INSERT INTO Equipamento VALUES(6,'Ferramenta Cirúrgica',13);
INSERT INTO Equipamento VALUES(7,'Ferramenta Cirúrgica',1);
INSERT INTO Equipamento VALUES(8,'Termómetro',5);
INSERT INTO Equipamento VALUES(9,'Termómetro',7);
INSERT INTO Equipamento VALUES(10,'Ferramenta Cirúrgica',50);

INSERT INTO Servico VALUES(1, '2019-05-24', '14:00', 100,4);
INSERT INTO Servico VALUES(2, '2019-12-31', '10:00', 40,2);
INSERT INTO Servico VALUES(3, '2019-04-05', '09:00', 35,7);
INSERT INTO Servico VALUES(4, '2019-04-07','09:30', 120,1);
INSERT INTO Servico VALUES(5, '2019-04-17','22:00', 80,6);
INSERT INTO Servico VALUES(6, '2019-05-05','20:00',80,8);
INSERT INTO Servico VALUES(7, '2019-05-07','17:00',120,9);
INSERT INTO Servico VALUES(8, '2019-04-05','16:30',150,3);
INSERT INTO Servico VALUES(9, '2019-05-10','14:30',20,4);
INSERT INTO Servico VALUES(10, '2019-04-12','15:00',20,6);
INSERT INTO Servico VALUES(11, '2019-05-14','16:00',46,11);
INSERT INTO Servico VALUES(12, '2019-05-09','16:30',64,12);
INSERT INTO Servico VALUES(13, '2019-05-17','14:00',37,13);
INSERT INTO Servico VALUES(14, '2019-03-11','13:20',73,8);
INSERT INTO Servico VALUES(15, '2019-09-11','13:45',44,6);
INSERT INTO Servico VALUES(16, '2018-12-25','09:20',121,7);
INSERT INTO Servico VALUES(17, '2019-08-12','08:00',73,11);
INSERT INTO Servico VALUES(18, '2019-01-11','11:15',200,13);
INSERT INTO Servico VALUES(19, '2019-07-20','13:10',120,13);
INSERT INTO Servico VALUES(20, '2019-06-25','17:40',98,5);
INSERT INTO Servico VALUES(21, '2019-06-26','17:00',156,7);
INSERT INTO Servico VALUES(22, '2019-08-25','12:40',80,3);
INSERT INTO Servico VALUES(23, '2019-11-11','17:15',28,2);
INSERT INTO Servico VALUES(24, '2019-06-12','09:40',88,13);
INSERT INTO Servico VALUES(25, '2019-04-23','10:40',250,6);
INSERT INTO Servico VALUES(26, '2019-07-29','17:30',192,4);
INSERT INTO Servico VALUES(27, '2019-12-25','15:30',68,11);
INSERT INTO Servico VALUES(28, '2019-12-15','11:00',130,10);
INSERT INTO Servico VALUES(29, '2019-08-31','10:40',150,5);
INSERT INTO Servico VALUES(30, '2019-02-28','07:20',174,7);
INSERT INTO Servico VALUES(31, '2019-03-28','19:30',20,10); 

INSERT INTO Consulta VALUES(9, '2019-05-10','14:30',20,4,'Arritmia','Fadiga,Falta de ar',9);
INSERT INTO Consulta VALUES(10, '2019-04-12','15:00',20,6,'Hipertensão','Obesidade',21);
INSERT INTO Consulta VALUES(3, '2019-04-05', '09:00', 35,7,'Lesão Ocular','Dor no olho direito, Diabetes',15);
INSERT INTO Consulta VALUES(2, '2019-12-31', '10:00', 40,2,'Cancro do estômago','Dores abdominais',20);
INSERT INTO Consulta VALUES(14, '2019-03-11','13:20',73,8,'Nariz partido','Dor no nariz',2);
INSERT INTO Consulta VALUES(15, '2019-09-11','13:45',44,6,'Depressão','Angústia, Falta de ar',17);
INSERT INTO Consulta VALUES(16, '2018-12-25','09:20',121,7,'Apneia de sono','Falta de ar, Insónias',21);
INSERT INTO Consulta VALUES(17, '2019-08-12','08:00',73,11,'Leucemia','Dores na coluna',20);
INSERT INTO Consulta VALUES(18, '2019-01-11','11:15',200,13,'Asma','Dificuldade em respirar, Tosse',7);
INSERT INTO Consulta VALUES(19, '2019-07-20','13:10',120,5,'Tumor cerebral','Dores de cabeça',19);
INSERT INTO Consulta VALUES(31, '2019-03-28','19:30',20,10,'Inconclusivo','Tonturas, fraqueza, dormência',21); 

INSERT INTO Cirurgia VALUES(4, '2019-04-07','09:30', 120,1,'Amputação','Perna esquerda');
INSERT INTO Cirurgia VALUES(7, '2019-05-07','17:00',120,9,'Transplante','Pulmão');
INSERT INTO Cirurgia VALUES(8, '2019-04-05','16:30',150,3,'Colocação de pacemaker','Coração');
INSERT INTO Cirurgia VALUES(11, '2019-05-14','16:00',46,11,'Transplante','Medula óssea');
INSERT INTO Cirurgia VALUES(12, '2019-05-09','16:30',64,12,'Lobectomia','Pulmão');
INSERT INTO Cirurgia VALUES(13, '2019-05-17','14:00',37,13,'Alargamento do canal cárpico','Mão esquerda');
INSERT INTO Cirurgia VALUES(20, '2019-06-25','17:40',98,5,'Remoção de pedras','Rim');
INSERT INTO Cirurgia VALUES(21, '2019-06-26','17:00',156,7,'Remoção de tumor','Pulmão');
INSERT INTO Cirurgia VALUES(22, '2019-08-25','12:40',80,3,'Retirada de sinal','Pele');
INSERT INTO Cirurgia VALUES(23, '2019-11-11','17:15',28,2,'Colocação de lente','Olho');

INSERT INTO Analise VALUES(1, '2019-05-24', '14:00', 100, 4,'TAC','Deformações no coração','2019-06-09',9,9);
INSERT INTO Analise VALUES(5, '2019-04-17','22:00', 80,6,'TAC','Não existem estenoses aórticas','2019-04-19',14,10);
INSERT INTO Analise VALUES(6, '2019-05-05','20:00',80,8,'Radiografia','O osso está a regenerar como previsto','2019-05-07',15,14);
INSERT INTO Analise VALUES(24, '2019-06-12','09:40',88,13,'Espirometria','Asma testada como positiva','2019-06-26,',20,18);
INSERT INTO Analise VALUES(25, '2019-04-23','10:40',250,6,'Análise ao sangue','Nivéis de glicose elevados','2019-05-04',19,10);
INSERT INTO Analise VALUES(26, '2019-07-29','17:30',192,4,'Ecocardiograma','Diagnosticada a insuficiência cardíaca','2019-08-19',4,9);
INSERT INTO Analise VALUES(27, '2019-12-25','15:30',68,11,'Análise ao sangue','Nivéis de ferro e glicose muito baixos','2020-01-01',5,17);
INSERT INTO Analise VALUES(28, '2019-12-15','11:00',130,10,'Glicemia','Diabetes diagnosticado','2019-12-25',7,31);
INSERT INTO Analise VALUES(29, '2019-08-31','10:40',150,5,'ADAS-COG','Alzheimer não detetado','2019-09-11',9,19);
INSERT INTO Analise VALUES(30, '2019-02-28','07:20',174,7,'TFP','A capacidade expiratória está muito abaixo do normal','2019-03-10',12,16);

INSERT INTO Realizam VALUES(2,4);
INSERT INTO Realizam VALUES(7,7);
INSERT INTO Realizam VALUES(9,8);
INSERT INTO Realizam VALUES(2,11);
INSERT INTO Realizam VALUES(4,20);
INSERT INTO Realizam VALUES(19,11);
INSERT INTO Realizam VALUES(20,21);
INSERT INTO Realizam VALUES(7,12);
INSERT INTO Realizam VALUES(4,12);
INSERT INTO Realizam VALUES(4,13);
INSERT INTO Realizam VALUES(13,22);
INSERT INTO Realizam VALUES(15,23);

INSERT INTO Auxilia VALUES(1,4);
INSERT INTO Auxilia VALUES(10,7);
INSERT INTO Auxilia VALUES(8,8);
INSERT INTO Auxilia VALUES(11,11);
INSERT INTO Auxilia VALUES(10,11);
INSERT INTO Auxilia VALUES(12,11);
INSERT INTO Auxilia VALUES(1,12);
INSERT INTO Auxilia VALUES(8,12);
INSERT INTO Auxilia VALUES(3,12);
INSERT INTO Auxilia VALUES(3,13);

INSERT INTO Usado_Em VALUES(1,4);
INSERT INTO Usado_Em VALUES(2,4);
INSERT INTO Usado_Em VALUES(8,7);
INSERT INTO Usado_Em VALUES(2,7);
INSERT INTO Usado_Em VALUES(5,8);
INSERT INTO Usado_Em VALUES(6,8);
INSERT INTO Usado_Em VALUES(7,1);
INSERT INTO Usado_Em VALUES(7,5);
INSERT INTO Usado_Em VALUES(9,6);
INSERT INTO Usado_Em VALUES(4,10);