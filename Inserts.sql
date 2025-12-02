INSERT INTO Estado (nome) VALUES ('Bahia');
INSERT INTO Estado (nome) VALUES ('São Paulo');
INSERT INTO Estado (nome) VALUES ('Rio de Janeiro');
INSERT INTO Estado (nome) VALUES ('Minas Gerais');
INSERT INTO Estado (nome) VALUES ('Paraná');
INSERT INTO Estado (nome) VALUES ('Santa Catarina');
INSERT INTO Estado (nome) VALUES ('Rio Grande do Sul');
INSERT INTO Estado (nome) VALUES ('Pernambuco');
INSERT INTO Estado (nome) VALUES ('Ceará');
INSERT INTO Estado (nome) VALUES ('Pará');
INSERT INTO Estado (nome) VALUES ('Amazonas');
INSERT INTO Estado (nome) VALUES ('Goiás');
INSERT INTO Estado (nome) VALUES ('Distrito Federal');
INSERT INTO Estado (nome) VALUES ('Mato Grosso');
INSERT INTO Estado (nome) VALUES ('Mato Grosso do Sul');

INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Salvador', 1);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('São Paulo', 2);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Rio de Janeiro', 3);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Belo Horizonte', 4);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Curitiba', 5);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Florianópolis', 6);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Porto Alegre', 7);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Recife', 8);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Fortaleza', 9);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Belém', 10);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Manaus', 11);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Goiânia', 12);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Brasília', 13);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Cuiabá', 14);
INSERT INTO Cidade (nome, Estado_idEstado) VALUES ('Campo Grande', 15);

INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Centro', 1);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Liberdade', 2);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Copacabana', 3);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Savassi', 4);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Batel', 5);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Trindade', 6);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Moinhos de Vento', 7);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Boa Viagem', 8);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Meireles', 9);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Marco', 10);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Adrianópolis', 11);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Setor Bueno', 12);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Asa Sul', 13);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Centro Norte', 14);
INSERT INTO Bairro (nome, Cidade_idCidade) VALUES ('Jardim dos Estados', 15);

INSERT INTO Funcionario (nome, cpf, tel, cep, endereco, Bairro_idBairro) VALUES ('Ana Silva','12345678901','71999910001','40000000','Rua A, 10',1);
INSERT INTO Funcionario VALUES (NULL,'Bruno Souza','22345678901','11999910002','01000000','Rua B, 20',2);
INSERT INTO Funcionario VALUES (NULL,'Carlos Pereira','32345678901','21999910003','22000000','Rua C, 30',3);
INSERT INTO Funcionario VALUES (NULL,'Daniela Ramos','42345678901','31999910004','30000000','Rua D, 40',1);
INSERT INTO Funcionario VALUES (NULL,'Eduardo Lima','52345678901','41999910005','80000000','Rua E, 50',9);
INSERT INTO Funcionario VALUES (NULL,'Fernanda Rocha','62345678901','48999910006','88000000','Rua F, 60',6);
INSERT INTO Funcionario VALUES (NULL,'Gabriel Santos','72345678901','51999910007','90000000','Rua G, 70',7);
INSERT INTO Funcionario VALUES (NULL,'Helena Castro','82345678901','81999910008','50000000','Rua H, 80',1);
INSERT INTO Funcionario VALUES (NULL,'Igor Almeida','92345678901','85999910009','60000000','Rua I, 90',9);
INSERT INTO Funcionario VALUES (NULL,'Julia Mendes','01345678901','91999910010','66000000','Rua J, 100',10);
INSERT INTO Funcionario VALUES (NULL,'Kleber Duarte','11345678901','92999910011','69000000','Rua K, 110',11);
INSERT INTO Funcionario VALUES (NULL,'Laura Teixeira','21345678901','62999910012','74000000','Rua L, 120',1);
INSERT INTO Funcionario VALUES (NULL,'Marcos Silva','31345678901','61999910013','70000000','Rua M, 130',9);
INSERT INTO Funcionario VALUES (NULL,'Natália Franco','41345678901','65999910014','78000000','Rua N, 140',14);
INSERT INTO Funcionario VALUES (NULL,'Otávio Nunes','51345678901','67999910015','79000000','Rua O, 150',15);

INSERT INTO Biologo VALUES (1,1001);
INSERT INTO Biologo VALUES (2,1002);
INSERT INTO Biologo VALUES (3,1003);
INSERT INTO Biologo VALUES (4,1004);
INSERT INTO Biologo VALUES (5,1005);

INSERT INTO MedVeterinario VALUES (6,2006);
INSERT INTO MedVeterinario VALUES (7,2007);
INSERT INTO MedVeterinario VALUES (8,2008);
INSERT INTO MedVeterinario VALUES (9,2009);
INSERT INTO MedVeterinario VALUES (10,2010);

INSERT INTO Cuidador VALUES (11,'2023-11-01');
INSERT INTO Cuidador VALUES (12,'2023-12-01');
INSERT INTO Cuidador VALUES (13,'2024-01-01');
INSERT INTO Cuidador VALUES (14,'2024-02-01');
INSERT INTO Cuidador VALUES (15,'2024-03-01');

INSERT INTO Porte (tipo) VALUES ('Pequeno');
INSERT INTO Porte (tipo) VALUES ('Médio');
INSERT INTO Porte (tipo) VALUES ('Grande');

INSERT INTO Periculosidade (nivel) VALUES ('Baixa');
INSERT INTO Periculosidade (nivel) VALUES ('Moderada');
INSERT INTO Periculosidade (nivel) VALUES ('Alta');
INSERT INTO Periculosidade (nivel) VALUES ('Extrema');

INSERT INTO Familia (idFamilia, nome) VALUES
(1, 'Felidae'),
(2, 'Canidae'),
(3, 'Hominidae'),
(4, 'Ursidae'),
(5, 'Bovidae'),
(6, 'Cervidae'),
(7, 'Equidae'),
(8, 'Leporidae'),
(9, 'Muridae'),
(10, 'Psittacidae'),
(11, 'Accipitridae'),
(12, 'Crocodylidae'),
(13, 'Testudinidae'),
(14, 'Delphinidae'),
(15, 'Suidae');

INSERT INTO Genero (idGenero, nome, Familia_idFamilia) VALUES
(1, 'Panthera', 1),
(2, 'Felis', 1),
(3, 'Canis', 2),
(4, 'Homo', 3),
(5, 'Ursus', 4),
(6, 'Bos', 5),
(7, 'Cervus', 6),
(8, 'Equus', 7),
(9, 'Oryctolagus', 8),
(10, 'Rattus', 9),
(11, 'Ara', 10),
(12, 'Haliaeetus', 11),
(13, 'Crocodylus', 12),
(14, 'Chelonoidis', 13),
(15, 'Sus', 15);

INSERT INTO Especie (idEspecie, nome_popular, nome_cientifico, Genero_idGenero) VALUES
(1, 'Leão', 'Panthera leo', 1),
(2, 'Tigre', 'Panthera tigris', 1),
(3, 'Gato Doméstico', 'Felis catus', 2),
(4, 'Lobo Cinzento', 'Canis lupus', 3),
(5, 'Humano', 'Homo sapiens', 4),
(6, 'Urso Pardo', 'Ursus arctos', 5),
(7, 'Boi Doméstico', 'Bos taurus', 6),
(8, 'Cervo Vermelho', 'Cervus elaphus', 7),
(9, 'Zebra-da-planície', 'Equus quagga', 8),
(10, 'Coelho Europeu', 'Oryctolagus cuniculus', 9),
(11, 'Rato Marrom', 'Rattus norvegicus', 10),
(12, 'Arara Azul', 'Ara ararauna', 11),
(13, 'Águia Careca', 'Haliaeetus leucocephalus', 12),
(14, 'Crocodilo-do-Nilo', 'Crocodylus niloticus', 13),
(15, 'Javali', 'Sus scrofa', 15);

INSERT INTO Habitat VALUES (NULL,'Habitat 1',100.50,'Espaço amplo',11);
INSERT INTO Habitat VALUES (NULL,'Habitat 2',200.00,'Ambiente arborizado',12);
INSERT INTO Habitat VALUES (NULL,'Habitat 3',150.75,'Rocha e sombra',13);
INSERT INTO Habitat VALUES (NULL,'Habitat 4',320.20,'Grama e lago',14);
INSERT INTO Habitat VALUES (NULL,'Habitat 5',220.90,'Área seca',15);
INSERT INTO Habitat VALUES (NULL,'Habitat 6',500.30,'Savanas artificiais',12);
INSERT INTO Habitat VALUES (NULL,'Habitat 7',340.10,'Terreno rochoso',11);
INSERT INTO Habitat VALUES (NULL,'Habitat 8',410.50,'Lama e água',13);
INSERT INTO Habitat VALUES (NULL,'Habitat 9',275.60,'Cercado tropical',12);
INSERT INTO Habitat VALUES (NULL,'Habitat 10',180.40,'Ilha artificial',15);
INSERT INTO Habitat VALUES (NULL,'Habitat 11',90.20,'Terreno pequeno',11);
INSERT INTO Habitat VALUES (NULL,'Habitat 12',310.00,'Floresta úmida',12);
INSERT INTO Habitat VALUES (NULL,'Habitat 13',260.10,'Clima árido',13);
INSERT INTO Habitat VALUES (NULL,'Habitat 14',150.00,'Riacho artificial',14);
INSERT INTO Habitat VALUES (NULL,'Habitat 15',290.90,'Região pantanosa',15);

INSERT INTO Animal VALUES (NULL,'Animal 1',120.50,1.20,'Saudável',1,1,1,1);
INSERT INTO Animal VALUES (NULL,'Animal 2',200.10,1.50,'Agressivo',2,1,2,2);
INSERT INTO Animal VALUES (NULL,'Animal 3',150.75,1.10,NULL,3,3,3,3);
INSERT INTO Animal VALUES (NULL,'Animal 4',40.30,0.80,'Manso',4,4,3,4);
INSERT INTO Animal VALUES (NULL,'Animal 5',8.20,0.40,NULL,1,1,3,4);
INSERT INTO Animal VALUES (NULL,'Animal 6',800.50,5.20,NULL,6,2,3,4);
INSERT INTO Animal VALUES (NULL,'Animal 7',1200.00,3.20,'Pesado',7,7,2,2);
INSERT INTO Animal VALUES (NULL,'Animal 8',300.10,1.40,NULL,1,1,1,1);
INSERT INTO Animal VALUES (NULL,'Animal 9',160.00,1.70,'Dominante',9,9,2,3);
INSERT INTO Animal VALUES (NULL,'Animal 10',70.40,1.00,NULL,10,10,3,2);
INSERT INTO Animal VALUES (NULL,'Animal 11',300.20,2.00,'Dormindo muito',1,1,1,4);
INSERT INTO Animal VALUES (NULL,'Animal 12',100.50,1.30,NULL,12,12,1,3);
INSERT INTO Animal VALUES (NULL,'Animal 13',85.70,1.60,NULL,13,13,3,2);
INSERT INTO Animal VALUES (NULL,'Animal 14',90.20,0.90,'Pelo limpo',1,1,1,1);
INSERT INTO Animal VALUES (NULL,'Animal 15',1500.00,1.50,'Muito perigoso',15,15,2,1);

INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-01 10:00:00','Rotina diária','OK',1,1);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-02 10:00:00','Verificação de água',NULL,2,2);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-03 10:00:00','Limpeza geral','Necessário reforço',3,3);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-04 10:00:00','Checagem estrutural',NULL,4,4);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-05 10:00:00','Rotina diária','OK',5,1);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-06 10:00:00','Rotina diária','OK',6,1);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-07 10:00:00','Análise de comportamento','Atenção',2,2);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-08 10:00:00','Checagem de cerca',NULL,8,4);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-09 10:00:00','Rotina diária','OK',9,3);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-10 10:00:00','Limpeza',NULL,1,1);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-11 10:00:00','Análise de saúde','Normal',11,1);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-12 10:00:00','Monitoramento',NULL,12,2);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-13 10:00:00','Rotina diária','OK',13,3);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-14 10:00:00','Rotina diária','OK',14,4);
INSERT INTO VerificacaoRotina VALUES (NULL,'2025-01-15 10:00:00','Verificação climática',NULL,1,2);

INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-20 14:38:23', 'Revisão Extra', 'Sem observações', 2, 2006);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-01 15:00:00','Exame geral','Sem tratamento',2,2007);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-02 15:00:00','Ferimento na pata','Curativo',3,2007);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-03 15:00:00','Tosse','Antibiótico',4,2006);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-04 15:00:00','Vômito','Hidratação',5,2007);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-05 15:00:00','Agressividade','Sedativo',5,2006);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-06 15:00:00','Exame',NULL,6,2006);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-07 15:00:00','Falta de apetite','Vitaminas',7,2007);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-08 15:00:00','Arranhão','Pomada',8,2008);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-09 15:00:00','Letargia','Soro',9,2009);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-10 15:00:00','Machucado','Curativo',10,2010);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-11 15:00:00','Febre','Remédio',11,2010);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-12 15:00:00','Inchaço','Compressa',12,2008);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-13 15:00:00','Parasitas','Desparasitação',13,2009);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-14 15:00:00','Exame de rotina','Sem observações',14,2007);
INSERT INTO AtendimentoVeterinario VALUES (NULL,'2025-01-15 15:00:00','Análise','Normal',15,2008);