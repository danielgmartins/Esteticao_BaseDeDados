USE Esteticao ;

SET SQL_SAFE_UPDATES = 1;

SET FOREIGN_KEY_CHECKS= 1;


START TRANSACTION;

INSERT INTO Cidade
	(nome)
    VALUES
    (1,'Setubal'),
    (2,'Palmela'),
    (3,'Pinhal Novo');


INSERT INTO Loja
	(idLoja, rua, cidade)
    VALUES
    (1, 'Avenida General Daniel de Sousa', 1),
    (2, 'Rua dos Poços', 2),
    (3, 'Bairo 12 de Abril', 3);

INSERT INTO Funcionario
	(idFuncionario, nome, contacto, funcao, email, loja,Salario)
	VALUES
	(1,'Júlio Fernades', '912343423', 'Recepcionista', 'j_fernandes@esteticao.pt',1,500.0),
	(2,'André Henriques', '967873746', 'Tosquiador', 'a_henriques@esteticao.pt',1,500.0),
	(3,'Maria Dantas', '919998877', 'Pet Groomer', 'm_dantas@esteticao.pt',1, 600.0),
	(4,'Tito Dantas', '923554329', 'Gerente', 't_dantaas@esteticao.pt', 1, 1120.00),
    (5,'Carina Silva', '965432881', 'Recepcionista', 'c_silva@esteticao.pt', 2, 600.0),
    (6,'Hugo Melo', '924577984', 'Tosquiador', 'h_melo@esteticao.pt',2, 575.0),
    (7,'Ricardo Cunha', '924547987', 'Gerente', 'r_cunha@esteticao.pt',2, 900.0),
    (8,'Margarida Rodrigues', '914357672', 'Pet Groomer', 'm_reodrigues@esteticao.pt', 2,575.0),
    (9,'Rita Fonseca', '912472821', 'Recepcionista', 'r_fonseca@esteticao.pt', 3,600.0),
    (10,'Diogo Silva', '912482941', 'Tosquiador', 'd_silva@esteticao.pt', 3, 520.0),
    (11,'Paulo cunha', '932123572', 'Pet Groomer', 'p_cunha@esteticao.pt', 3, 533.0),
    (12,'Daniel Braga', '921637289', 'Gerente', 'd_braga@esteticao.pt', 3, 1000.0);
    
    
-- SELECT * FROM funcionario;

INSERT INTO Porte
	(idPorte, designacao, modificador_preco)
    VALUES
    (1, 'Pequeno', 1.0),
    (2, 'Medio', 1.5),
	(3, 'Grande', 2.0);
    
    
INSERT INTO Cliente
	(nome, nif, Email, contacto, rua, cidade)
	VALUES
	('Juliana Sousa', '235728194', 'juliana@gmail.com', '945890234', 'Rua do carvalhal 24',1),
	('Rodrigo Henriques', '216839174', 'rg34@hotmail.com', '915841236', 'Rua do cabido 13',3),
	('José Maria', NULL, 'jm@gmai.com','919911875', 'Rua Vitor de Sá 67',1),
	('Rosa Conceição', '246281671', 'rosa@gmail.com', '967283918', 'Avenida Alfredo Barros 72',1),
    ('Henrique Sousa', '261852918', 'henr1234@hotmail.com', '927772848', 'Rua Augusta 2',1),
    ('António Júnior', '251374183', 'Sousa4324@gmail.com', '924127398', 'Rua Maria de Sousa 5',2),
    ('Tino Patas', '281765914', 'tino1990@sapo.pt', '914123947', 'Avenida Central 117',2),
    ('Maria Silva', NULL, 'marialll@gmail.com', '934534356', 'Avenida cidade do Porto 513',2),
    ('Virginia Ribeiro', '251364712', 'Virg3@sapo.pt', '929978398', 'Rua de França 53',2),
    ('Noé Teko', '261537412', 'teko@hotmail.com', '927245368', 'Rua José Sarmento 24',2),
    ('Paulo Ferraz',NULL, 'pauloferraz88@hotmail.com', '924124256', 'Rua dos Olivais 45',3),
    ('Joana Fernadnes', NULL, 'joaninha@gmail.com', '912829128', 'Rua Araujo Caranda 66',3),
    ('Diogo Antunes', '245124235', 'dantunes@hotmail.com', '918272482', 'Rua Rafael Bordalo Pinheiro 15',3),
    --
    ('Tiago Marques', '253995867', 'tiago_marques78@yahoo.com', '939996147', 'Rua Maria de Sousa, 31',3),
    ('Gabriela Vaz', '246658321', 'gabriela_v@gmail.com', '912211785', 'Rua do Montinho 146',3),
    ('Francisca Fernandes', '235579989', 'francisca98@gmail.com', '922546879', 'Rua Caslopo 22',1),
    ('Diana Lopes', '221359784', 'diana_lopes@yahoo.com', '933264875', 'Rua dos Peões 17',2),
    ('Leandro Zeferino', '255316789', 'leandrozef90@outlook.com', '911214123', 'Rua José António Vaz 1554',3),
    ('Luisa Caldas', '233468695', 'luisa50caldas@gmail.com', '964877859', 'Rua Santa Catarina 16',3),
    ('Diogo Araujo', NULL, 'diogoaraujo98@gmail.com', '922316485', 'Avenida da Liberdade 245',1),
    ('Rita Amorim', NULL, 'tita_amorim@outlook.com', '912355532', 'Rua da Consituição 134',2),
    ('Elísio Fernandes', NULL, 'elio@me.com', '933634875', 'Rua da Tapada 123', 2);
    
        
-- SELECT * FROM enfermeiro;

INSERT INTO Cao
	(idCao,observacoes,porte,cliente,nome)
    VALUES
    (1, NULL, 1, 1 , 'Tita'),
    (2, 'Alergia a Shampoo', 2, 1, 'Tareco'),
	(3, NULL, 1, 2 , 'Boby'),
    (4, 'Ferida na Orelha',2, 2, 'Laika'),
    (5, NULL, 1, 3, 'Luna'),
    (6, NULL, 3, 4, 'Abelhinha'),
    (7, 'displasia da anca', 3 , 5, 'Petra'),
    (8, 'Peladas na Pata', 2, 6, 'Nufa'),
    (9, NULL, 3, 7, 'Farrusco'),
    (10, NULL, 1, 7, 'Bull'),
    (11, 'Mordidas na cauda', 2, 8, 'Nala'),
    (12, NULL, 2, 9, 'Ted'),
    (13, NULL, 3, 10, 'Preta'),
    (14, 'Leishmaniose', 1, 11, 'Bolinhas'),
    (15, NULL, 1, 11, 'Max'),
    (16, 'Mordidas no Pescoço', 2, 12, 'Rex'),
    (17, NULL, 3, 13, 'Alfa'),
    -- 
    (18, NULL, 1, 14, 'Pipoca'),
    (19, NULL, 1, 15, 'Patusco'),
    (20, NULL, 2, 16, 'Giga'),
    (21, NULL, 2, 17, 'Churro'),
    (22, NULL, 2, 18, 'Kika'),
    (23, NULL, 3, 19, 'Pimpolho'),
    (24, NULL, 3, 20, 'Max'),
    (25, NULL, 3, 21, 'Lola'),
    (27, NULL, 1, 22, 'Lord Nibbler');
-- SELECT * FROM doente;


INSERT INTO Loja_Cliente
	(loja, cliente)
    VALUES
     (1, 1),
     (1, 2),
     (1, 3),
     (1, 4),
     (1, 5),
     (2, 6),
     (2, 7),
     (2, 8),
     (2, 9),
     (2,10),
     (3,11),
     (3,12),
     (3,13),
     --
     (3,14),
     (3,15),
     (1,16),
     (2,17),
     (3,18),
     (3,19),
     (1,20),
     (2,21),
     (2,22);



INSERT INTO Marcacao
	(data_hora,funcionario,cliente,cao,loja)
    VALUES
    -- MARCAÇOES SETEMBRO
    ('2016-09-01 10:00:00', 2, 1, 1, 1),
	('2016-09-01 11:00:00', 2, 2, 3, 1),
	('2016-09-01 12:00:00', 2, 3, 5, 1),
	('2016-09-01 13:00:00', 3, 4, 6, 1),
    ('2016-09-02 10:00:00', 3, 5, 7, 1),
    ('2016-09-02 15:00:00', 6, 6, 8, 2),
    ('2016-09-02 16:00:00', 6, 7, 9, 2),
    ('2016-09-03 09:00:00', 8, 8, 11, 2),
    ('2016-09-03 10:00:00', 10, 9, 12, 2),
    ('2016-09-03 16:00:00',11, 10, 13, 2),
    ('2016-09-03 17:00:00',11, 11, 14, 3),
	('2016-09-05 11:00:00', 1, 12, 16, 3),
	('2016-09-05 13:00:00', 8, 13, 17, 3),
	('2016-09-05 14:00:00', 11, 1, 2, 1),
    ('2016-09-06 10:00:00', 10, 4,6, 1),
    ('2016-09-06 18:00:00', 11, 2, 4, 1),
    ('2016-09-06 10:00:00', 11, 2, 3, 1),
    ('2016-09-07 16:00:00', 10, 1, 1, 1),
    ('2016-09-07 15:00:00', 6, 3, 5, 2),
    ('2016-09-08 16:00:00', 6, 2, 3, 2),
    ('2016-09-08 17:00:00', 6, 4, 6, 2),
    ('2016-09-08 18:00:00', 8, 7, 9, 2),
    ('2016-09-09 10:00:00', 2, 1, 2, 1),
    ('2016-09-09 11:00:00', 3, 1, 1, 1),
    ('2016-09-09 12:00:00', 3, 5, 7, 1),
    ('2016-09-09 16:00:00', 2, 5, 7, 1),
    ('2016-09-10 15:00:00', 6, 3, 5, 2),
    ('2016-09-10 18:00:00', 8, 2, 3, 2),
    ('2016-09-10 19:00:00', 8, 1, 2, 2),
    ('2016-09-10 20:00:00', 11, 11, 15, 3),
    ('2016-09-12 10:00:00', 10, 9, 12, 2),
    ('2016-09-12 11:00:00', 6, 11, 14, 3),
    ('2016-09-12 12:00:00', 6, 1, 1, 1),
    ('2016-09-12 15:00:00', 8, 13, 17, 3),
    ('2016-09-13 17:00:00', 11, 11, 15, 3),
    ('2016-09-13 16:00:00', 10, 6, 8, 2),
    ('2016-09-13 18:00:00', 10, 3, 5, 1),
    ('2016-09-14 10:00:00', 11, 9, 12, 2),
    ('2016-09-14 12:00:00', 10, 1, 2, 1),
    ('2016-09-15 11:00:00', 6, 7, 10, 2),
    ('2016-09-15 15:00:00', 6, 1, 1, 1),
    ('2016-09-16 18:00:00', 8, 7, 10, 2),
    ('2016-09-16 10:00:00', 2, 2, 4, 1),
    ('2016-09-16 14:00:00', 2, 12, 16, 3),
    ('2016-09-17 11:00:00', 3, 6, 8, 2),
    ('2016-09-17 15:00:00', 3, 3, 5, 1),
    ('2016-09-17 16:00:00', 11, 1, 1, 1),
    ('2016-09-19 10:00:00', 10, 12, 16, 3),
    ('2016-09-19 11:00:00', 3, 13, 17, 3),
    ('2016-09-19 15:00:00', 2, 2, 4, 1),
    ('2016-09-20 15:00:00', 6, 3, 5, 2),
    ('2016-09-20 18:00:00', 8, 2, 3, 2),
    ('2016-09-20 19:00:00', 8, 1, 2, 2),
    ('2016-09-20 20:00:00', 11, 11, 15, 3),
    ('2016-09-21 10:00:00', 10, 9, 12, 2),
    ('2016-09-21 11:00:00', 6, 11, 14, 3),
    ('2016-09-21 12:00:00', 6, 1, 1, 1),
    ('2016-09-22 15:00:00', 8, 13, 17, 3),
    ('2016-09-22 17:00:00', 11, 11, 15, 3),
    ('2016-09-22 16:00:00', 10, 6, 8, 2),
    ('2016-09-22 18:00:00', 10, 3, 5, 1),
    ('2016-09-23 10:00:00', 11, 9, 12, 2),
    ('2016-09-23 12:00:00', 10, 1, 2, 1),
    ('2016-09-23 11:00:00', 6, 7, 10, 2),
    ('2016-09-24 15:00:00', 6, 1, 1, 1),
    ('2016-09-24 18:00:00', 8, 7, 10, 2),
    ('2016-09-26 10:00:00', 2, 2, 4, 1),
    ('2016-09-26 14:00:00', 2, 12, 16, 3),
    ('2016-09-27 11:00:00', 3, 6, 8, 2),
    ('2016-09-27 15:00:00', 3, 3, 5, 1),
    ('2016-09-27 16:00:00', 11, 1, 1, 1),
    ('2016-09-28 10:00:00', 10, 12, 16, 3),
	('2016-09-28 15:00:00',  10, 15, 19, 3),
    ('2016-09-28 16:00:00', 8, 17, 21, 2),
    ('2016-09-28 18:00:00', 11, 14, 18, 3),
    ('2016-09-29 11:00:00', 2, 16, 20, 1),
    ('2016-09-29 13:00:00', 10, 19, 15,3),
    ('2016-09-29 15:00:00', 10, 18, 22, 3),
    ('2016-09-30 12:00:00', 7, 22, 27, 2),
    ('2016-09-30 16:00:00', 3, 20, 24, 1),
    ('2016-09-30 18:00:00',  7, 21, 17, 2),
        -- MARCAÇOES OUTUBRO
	('2016-10-01 15:00:00', 6, 3, 5, 2),
    ('2016-10-01 18:00:00', 8, 2, 3, 2),
    ('2016-10-01 19:00:00', 8, 1, 2, 2),
    ('2016-10-01 20:00:00', 11, 11, 15, 3),
    ('2016-10-03 10:00:00', 10, 9, 12, 2),
    ('2016-10-03 11:00:00', 6, 11, 14, 3),
    ('2016-10-03 12:00:00', 6, 1, 1, 1),
    ('2016-10-03 15:00:00', 8, 13, 17, 3),
    ('2016-10-04 17:00:00', 11, 11, 15, 3),
    ('2016-10-04 16:00:00', 10, 6, 8, 2),
    ('2016-10-04 18:00:00', 10, 3, 5, 1),
    ('2016-10-05 10:00:00', 11, 9, 12, 2),
    ('2016-10-05 12:00:00', 10, 1, 2, 1),
    ('2016-10-06 11:00:00', 6, 7, 10, 2),
    ('2016-10-06 15:00:00', 6, 1, 1, 1),
    ('2016-10-06 18:00:00', 8, 7, 10, 2),
    ('2016-10-07 10:00:00', 2, 2, 4, 1),
    ('2016-10-07 14:00:00', 2, 12, 16, 3),
    ('2016-10-08 11:00:00', 3, 6, 8, 2),
    ('2016-10-08 15:00:00', 3, 3, 5, 1),
    ('2016-10-08 16:00:00', 11, 1, 1, 1),
    ('2016-10-10 10:00:00', 10, 12, 16, 3),
    ('2016-10-10 11:00:00', 3, 13, 17, 3),
    ('2016-10-10 15:00:00', 2, 2, 4, 1),
    ('2016-10-11 15:00:00', 6, 3, 5, 2),
    ('2016-10-11 18:00:00', 8, 2, 3, 2),
    ('2016-10-11 19:00:00', 8, 1, 2, 2),
    ('2016-10-11 20:00:00', 11, 11, 15, 3),
    ('2016-10-12 15:00:00',  10, 15, 19, 3),
    ('2016-10-12 16:00:00', 8, 17, 21, 2),
    ('2016-10-12 18:00:00', 11, 14, 18, 3),
    ('2016-10-14 12:00:00', 7, 22, 27, 2),
    ('2016-10-14 16:00:00', 3, 20, 24, 1),
    ('2016-10-14 18:00:00',  7, 21, 17, 2),
    ('2016-10-15 15:00:00', 6, 1, 1, 1),
    ('2016-10-16 18:00:00', 8, 7, 10, 2),
    ('2016-10-16 10:00:00', 2, 2, 4, 1),
    ('2016-10-16 14:00:00', 2, 12, 16, 3),
    ('2016-10-17 11:00:00', 3, 6, 8, 2),
    ('2016-10-17 15:00:00', 3, 3, 5, 1),
    ('2016-10-17 16:00:00', 11, 1, 1, 1),
    ('2016-10-19 10:00:00', 10, 12, 16, 3),
    ('2016-10-19 11:00:00', 3, 13, 17, 3),
    ('2016-10-19 15:00:00', 2, 2, 4, 1),
    ('2016-10-21 10:00:00', 10, 9, 12, 2),
    ('2016-10-21 11:00:00', 6, 11, 14, 3),
    ('2016-10-21 12:00:00', 6, 1, 1, 1),
    ('2016-10-22 15:00:00', 8, 13, 17, 3),
    ('2016-10-22 17:00:00', 11, 11, 15, 3),
	('2016-10-24 15:00:00', 6, 3, 5, 2),
    ('2016-10-24 18:00:00', 8, 2, 3, 2),
    ('2016-10-24 19:00:00', 8, 1, 2, 2),
    ('2016-10-24 20:00:00', 11, 11, 15, 3),
	('2016-10-25 11:00:00', 2, 16, 20, 1),
    ('2016-10-25 13:00:00', 10, 19, 15,3),
    ('2016-10-25 15:00:00', 10, 18, 22, 3),
    ('2016-10-26 11:00:00', 1, 12, 16, 3),
	('2016-10-26 13:00:00', 8, 13, 17, 3),
	('2016-10-26 14:00:00', 11, 1, 2, 1),
    ('2016-10-27 10:00:00', 10, 4,6, 1),
    ('2016-10-27 18:00:00', 11, 2, 4, 1),
    ('2016-10-28 10:00:00', 11, 2, 3, 1),
    ('2016-10-28 16:00:00', 10, 1, 1, 1),
    ('2016-10-28 15:00:00', 6, 3, 5, 2),
    ('2016-10-29 16:00:00', 6, 2, 3, 2),
    ('2016-10-29 17:00:00', 6, 4, 6, 2),
    ('2016-10-29 18:00:00', 8, 7, 9, 2),
    ('2016-10-31 10:00:00', 2, 1, 2, 1),
    ('2016-10-31 11:00:00', 3, 1, 1, 1),
    ('2016-10-31 12:00:00', 3, 5, 7, 1),
    ('2016-10-31 16:00:00', 2, 5, 7, 1),
    -- MARCAÇOES NOVEMBRO
    ('2016-11-01 19:00:00', 8, 1, 2, 2),
    ('2016-11-01 20:00:00', 11, 11, 15, 3),
    ('2016-11-02 15:00:00',  10, 15, 19, 3),
    ('2016-11-02 16:00:00', 8, 17, 21, 2),
    ('2016-11-02 18:00:00', 11, 14, 18, 3),
    ('2016-11-04 12:00:00', 7, 22, 27, 2),
    ('2016-11-04 16:00:00', 3, 20, 24, 1),
    ('2016-11-04 18:00:00',  7, 21, 17, 2),
    ('2016-11-05 15:00:00', 6, 1, 1, 1),
    ('2016-11-07 18:00:00', 8, 7, 10, 2),
    ('2016-11-07 10:00:00', 2, 2, 4, 1),
    ('2016-11-07 14:00:00', 2, 12, 16, 3),
	('2016-11-08 15:00:00',  10, 15, 19, 3),
    ('2016-11-08 16:00:00', 8, 17, 21, 2),
    ('2016-11-08 18:00:00', 11, 14, 18, 3),
    ('2016-11-09 11:00:00', 2, 16, 20, 1),
    ('2016-11-09 13:00:00', 10, 19, 15,3),
    ('2016-11-09 15:00:00', 10, 18, 22, 3),
    ('2016-11-10 12:00:00', 7, 22, 27, 2),
    ('2016-11-10 16:00:00', 3, 20, 24, 1),
    ('2016-11-10 18:00:00',  7, 21, 17, 2),
    ('2016-11-11 15:00:00', 6, 3, 5, 2),
    ('2016-11-11 18:00:00', 8, 2, 3, 2),
    ('2016-11-11 19:00:00', 8, 1, 2, 2),
    ('2016-11-11 20:00:00', 11, 11, 15, 3),
    ('2016-11-12 15:00:00',  10, 15, 19, 3),
    ('2016-11-12 16:00:00', 8, 17, 21, 2),
    ('2016-11-12 18:00:00', 11, 14, 18, 3),
    ('2016-11-14 15:00:00', 6, 1, 1, 1),
    ('2016-11-14 18:00:00', 8, 7, 10, 2),
    ('2016-11-15 10:00:00', 2, 2, 4, 1),
    ('2016-11-15 14:00:00', 2, 12, 16, 3),
    ('2016-11-16 11:00:00', 3, 6, 8, 2),
    ('2016-11-16 15:00:00', 3, 3, 5, 1),
    ('2016-11-16 16:00:00', 11, 1, 1, 1),
    ('2016-11-17 10:00:00', 10, 12, 16, 3),
	('2016-11-17 15:00:00',  10, 15, 19, 3),
    ('2016-11-17 16:00:00', 8, 17, 21, 2),
    ('2016-11-17 18:00:00', 11, 14, 18, 3),
    ('2016-11-18 11:00:00', 2, 16, 20, 1),
    ('2016-11-18 13:00:00', 10, 19, 15,3),
    ('2016-11-18 15:00:00', 10, 18, 22, 3),
    ('2016-11-19 12:00:00', 7, 22, 27, 2),
    ('2016-11-19 16:00:00', 3, 20, 24, 1),
    ('2016-11-21 15:00:00',  10, 15, 19, 3),
    ('2016-11-21 16:00:00', 8, 17, 21, 2),
    ('2016-11-21 18:00:00', 11, 14, 18, 3),
    ('2016-11-22 15:00:00', 6, 1, 1, 1),
    ('2016-11-22 18:00:00', 8, 7, 10, 2),
    ('2016-11-23 10:00:00', 2, 2, 4, 1),
    ('2016-11-23 14:00:00', 2, 12, 16, 3),
    ('2016-11-23 11:00:00', 3, 6, 8, 2),
    ('2016-11-24 15:00:00', 3, 3, 5, 1),
    ('2016-11-24 16:00:00', 11, 1, 1, 1),
    ('2016-11-25 10:00:00', 10, 12, 16, 3),
	('2016-11-25 15:00:00',  10, 15, 19, 3),
    ('2016-11-25 16:00:00', 8, 17, 21, 2);
-- SELECT * FROM marcaçao;
    --
     

  INSERT INTO Servico
	(idServico,designacao,preco)
    VALUES
	(1, 'Tosquia tesoura', 21.5),
    (2, 'Manicure', 12.0),
    (3, 'Limpeza de ouvido', 20.0),
    (4, 'Tosquia bebé', 25.5),
    (5, 'Descarrapatização', 50.0);
    
-- SELECT * FROM servilços;





INSERT INTO Marcacao_Servico
	(marcacao, servico)
    VALUES
    (1,5),
    (2,3),
    (2,1),
    (3,2),
    (4,3),
    (5,1),
    (6,2),
    (6,1),
    (7,2),
    (8,4),
    (9,2),
    (10,5),
    (11,2),
    (12,5),
    (13,5),
    (14,2),
    (15,3),
    (16,2),
    (17,1),
    (18,2),
    (19,2),
    (19,3),
    (20,4),
    (21,5),
    (22,1),
    (23,1),
    (24,2),
    (25,4),
    (26,2),
    (27,1),
    (28,2),
    (29,1),
    (30,1),
    (31,1),
    (32,2),
    (33,5),
    (34,2),
    (35,2),
    (36,1),
    (37,2),
    (37,1),
    (38,1),
    (39,4),
    (40,1),
    (41,2),
    (42,3),
    (43,4),
    (44,1),
    (45,2),
    (46,1),
    (47,3),
    (48,2),
    (49,1),
    (50,2),
	(51,1),
    (52,2),
    (52,3),
	(53,5),
    (54,3),
    (55,2),
    (56,4),
    (57,3),
    (58,5),
    (59,2),
    (60,5),
    (61,2),
    (62,5),
    (63,5),
    (64,2),
    (65,3),
    (66,2),
    (67,1),
    (68,2),
    (69,2),
    (69,3),
    (70,4),
    (71,5),
    (72,1),
    (73,1),
    (74,2),
    (75,4),
    (76,2),
    (77,1),
    (78,2),
    (79,1),
    (80,1),
    (81,1),
    (82,2),
    (83,5),
    (84,2),
    (85,2),
    (86,1),
    (87,2),
    (87,1),
    (88,1),
    (89,4),
    (90,1),
    (91,2),
    (92,3),
    (93,4),
    (94,1),
    (95,2),
    (96,1),
    (97,3),
    (98,2),
    (99,1),
    (100,2),
    (101,5),
    (102,3),
    (102,1),
    (103,2),
    (104,3),
    (105,1),
    (106,2),
    (106,1),
    (107,2),
    (108,4),
    (109,2),
    (110,5),
    (111,2),
    (112,5),
    (113,5),
    (114,2),
    (115,3),
    (116,2),
    (117,1),
    (118,2),
    (119,2),
    (119,3),
    (120,4),
    (120,1),
    (121,5),
    (122,1),
    (123,1),
    (124,2),
    (125,4),
    (126,2),
    (127,1),
    (128,2),
    (129,1),
    (130,1),
    (131,1),
    (132,2),
    (133,5),
    (134,2),
    (135,2),
    (136,1),
    (137,2),
    (137,1),
    (138,1),
    (139,4),
    (140,1),
    (141,2),
    (142,3),
    (143,4),
    (144,1),
    (144,3),
    (145,1),
    (146,2),
    (146,1),
    (147,2),
    (148,4),
    (149,2),
    (150,5),
    (151,2),
    (152,5),
    (153,5),
    (154,2),
    (155,3),
    (156,2),
    (157,1),
    (158,2),
    (159,2),
    (159,3),
    (160,4),
    (161,5),
    (162,1),
    (163,1),
    (164,2),
    (165,4),
    (166,2),
    (167,1),
    (168,2),
    (169,1),
    (170,1),
    (171,1),
    (172,2),
    (173,5),
    (174,2),
    (175,2),
    (176,1),
    (177,2),
    (177,1),
    (178,1),
    (179,4),
    (180,1),
    (181,3),
    (182,5),
    (182,1),
    (183,3),
    (184,3),
    (185,1),
    (185,2),
    (186,3),
    (187,2),
    (187,1),
    (188,1),
    (189,4),
    (190,1),
    (191,2),
    (192,3),
    (193,4),
    (194,1),
    (194,3),
    (195,1),
    (196,2),
    (196,1),
    (197,2),
    (198,4),
    (199,2),
    (200,5),
    (201,2),
    (202,5),
    (203,5),
    (204,2),
    (205,3),
    (206,2),
    (207,1),
    (208,2),
    (209,2),
    (209,3);
    
    -- 209
/*
IF ErroTransacao THEN
		-- Desfazer as operações realizadas.
        ROLLBACK;
    ELSE
		-- Confirmar as operações realizadas.
        COMMIT;
END IF;
*/
COMMIT;