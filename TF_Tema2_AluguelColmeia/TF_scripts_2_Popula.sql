-- -------- << TF_scripts_2 >> -------------------
--
-- 		SCRIPT DE CRIACAO (DML)
--
-- Data Criacao ...........: 25/01/2023
-- Autor(es) ..............: Leonardo Vitoriano e Guilherme  Meneses
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: TF_scripts_2
--
-- PROJETO => 01 Base de Dados
--         => 17 Tabelas
-- -----------------------------------------------------------

-- BASE DE DADOS

USE tf2_scripts_2;


INSERT INTO APICULTOR(idApicultor, nomeApicultor, cpfApicultor, telefoneApicultor, qtdTotalApiario, nomeSindicato) VALUES
( NULL, 'Andre Reis', 13456789013, 6199876514, 30, 'Central Unica dos Trabalhadores'),
( NULL, 'Alexandre Moura', 10987654310, 7876513456, 11, 'Movimento Sem Terra'),
( NULL, 'Jair Messias', 30987654313, 5113456789, 19, 'Central Servico'),
( NULL, 'Jack Russo', 49876543456, 5198765431, 31, 'Movimento Trabalho'),
( NULL, 'Felipe Braga', 98076546789, 9897865456, 17,'Central Trabalho');

INSERT INTO ENXAME(idEnxame ,idadeRainha, populaca) VALUES
( NULL, 'jovem', 'grande' ),
( NULL, 'jovem', 'pequena' ),
( NULL, 'velha', 'grande' ),
( NULL, 'jovem','grande' ),
( NULL, 'velha', 'pequena' );

INSERT INTO APIARIO(idApiario, idApicultor, idEnxame) VALUES
( NULL, 1, 1),
( NULL, 2, 2),
( NULL, 3, 3),
( NULL, 4, 4),
( NULL, 5, 5);

INSERT INTO GEOLOCALIZADOR(idGeolocalizador, idApiario, latitude, longitude)  VALUES
( NULL, 1, -15.31487, -31.13513),
( NULL, 2, -17.35944, -30.23456),
( NULL, 3, -17.50547, -29.15856),
( NULL, 4, -14.56644, -29.03435),
( NULL, 5, -13.23456, -28.46849);

INSERT INTO CURSO(idCurso, nomeCurso, descricaoCurso)   VALUES
( NULL, 'biologo','entende fauna'),
( NULL, 'agricultura','entende sobre flora'),
( NULL, 'veterinaria','entende condicao animais'),
( NULL, 'ambientalista','entende leis'),
( NULL, 'virulista','entende doencas');

INSERT INTO tem(idApicultor, idCurso) VALUES
( 1, 1),
( 2, 2),
( 3, 3),
( 4, 4),
( 5, 5);

INSERT INTO CLIENTE(idCliente, idPropriedade, nomeCliente, cpf, cnpj)   VALUES
( NULL, 1, 'Janus Oliva', 15634567535,NULL),
( NULL, 2, 'Andre Janones', 13689485746,NULL),
( NULL, 3, 'Estevao Ricardo', 39485746584,NULL),
( NULL, 4, 'Jonh Alencar', 4985746378,NULL),
( NULL, 5, 'Yuri Trevor', 84736475837,NULL);

INSERT INTO PROPRIEDADE(idPropriedade, idDono, qtdApiario) VALUES
( NULL, 1, 7),
( NULL, 2, 9),
( NULL, 3, 11),
( NULL, 4, 14),
( NULL, 5, 15);

INSERT INTO ENDERECO (idEndereco, cep, cidade, estado, bairro, numEndereco, idApicultor, idPropriedade, complemento) VALUES
( NULL, 13456789134, 'Gama', 'DF', 'brasilia', 18374, 1, NULL, NULL),
( NULL, 10987654536, 'Marcus', 'MG', 'campinas', 93846, NULL, 1, NULL),
( NULL, 37495867495, 'Taguatinga', 'DF', 'guara', 47564, 2, NULL, NULL),
( NULL, 39547849479, 'Camarao', 'GO', 'paraisopoles', 85746, NULL, 2, NULL),
( NULL, 18456354735, 'Guarulhos', 'SP', 'tiete', 14567, 3, NULL, NULL);

INSERT INTO nomePlanta(idPropriedade, nomePlanta) VALUES
( 1, 'laranja'),
( 2, 'abacaxi'),
( 3, 'ingu'),
( 4, 'limao'),
( 5, 'pera');

INSERT INTO ALUGUEL(idAluguel, idApicultor, idCliente) VALUES
( NULL, 1, 1),
( NULL, 2, 2),
( NULL, 3, 3),
( NULL, 4, 4),
( NULL, 5, 5);

INSERT INTO CONTRATO(idContrato, idCliente, idApicultor, idPropriedadeCliente, idAluguel, 
					nomePlantaPolenizada, tempoAluguel, qtdApiario, valorContrato) VALUES
( NULL, 1, 1, 1, 1, 'laranja', 30, 7, 700),
( NULL, 2, 2, 2, 2, 'abacaxi', 10, 9, 1800),
( NULL, 3, 3, 4, 3, 'ingu', 50, 11, 3000),
( NULL, 4, 4, 4, 4, 'limao', 40, 14, 4000),
( NULL, 5, 5, 5, 5, 'pera', 30, 15, 1300);

INSERT INTO diaAplicacaoAgrotoxico(idContrato, diaAplicacaoAgrotoxico) VALUES
( 1, '2023-04-02'),
( 1, '2023-08-03'),
( 3, '2023-09-03'),
( 4, '2023-11-03'),
( 4, '2023-15-04');

INSERT INTO CONSULTOR(idConsultor, nomeConsultor, telefoneConsultor, cpfConsultor, nomeSindicato) VALUES
( NULL, 'João Pedro', 6134569876, 04620829463, 'Força Sindical'),
( NULL, 'Ana Maria', 6186756483, 00770539408, 'Central dos Trabalhadores e Trabalhadoras do Brasil'),
( NULL, 'Etelvino de Souza Trindade', 7137465869, 99584050396, 'Nova Central Sindical de Trabalhadores'),
( NULL, 'Andre Moraes', 9894857465, 99001050396, 'Central Geral dos Trabalhadores do Brasil'),
( NULL, 'Pedro José', 5148574638, 12382967436, 'Central dos Sindicatos Brasileiros');

INSERT INTO EQUIPE VALUES
( NULL, 1, 1),
( NULL, 2, 2),
( NULL, 3, 3),
( NULL, 4, 4),
( NULL, 5, 5);

INSERT INTO compoe  VALUES
( 1, 1),
( 2, 2),
( 3, 3),
( 4, 4),
( 5, 5);

INSERT INTO CONSULTORIA  VALUES
( NULL, 1, 1, 1, 1, '2023-11-01'),
( NULL, 2, 2, 2, 2, '2023-15-01'),
( NULL, 3, 3, 3, 3, '2023-17-01'),
( NULL, 4, 4, 4, 4, '2023-01-01'),
( NULL, 5, 5, 5, 5, '2023-02-01');












