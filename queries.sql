-- 
USE Esteticao;

SELECT * FROM Funcionario;

-- Informaçao sobre marcaçoes com data, valor, cliente e funcionario
SELECT  M.data_hora, 
		M.Valor, 
        M.cliente, 
        C.nome AS 'Cliente' ,
        F.nome AS 'Funcionario'
	FROM Marcacao AS M
		INNER JOIN Cliente As C  ON (M.cliente = C.idCliente)
		INNER JOIN Funcionario As F on (M.funcionario = F.idFuncionario);
       -- WHERE (marcacao.cliente = 6);
       
-- Loja com mais clientes       
SELECT Loja_Cliente.loja, COUNT(Loja_Cliente.cliente) AS clientes
	FROM Loja_Cliente
    GROUP BY Loja_Cliente.loja
    ORDER BY clientes DESC;
    
-- Clientes que fizeram mais marcações a loja
SELECT C.idCliente, C.nome, COUNT(M.idMarcacao) AS NumeroMarcacoes
	FROM Cliente  AS C
		RIGHT JOIN Marcacao As M  ON M.cliente = C.idCliente
        GROUP BY C.idCliente
        ORDER BY NumeroMarcacoes DESC;

        
-- 10 Marcaçoes mais caras de Sempre
SELECT M.data_hora, M.Valor, C.nome AS Cliente, F.nome AS Funcionario
	FROM Marcacao AS M
		INNER JOIN Cliente As C  ON (M.cliente = C.idCliente)
		INNER JOIN Funcionario As F on (M.funcionario = F.idFuncionario)
        ORDER BY valor DESC
        LIMIT 10;
       -- WHERE (marcacao.cliente = 6);
        
--  Funcionarios com o salario mais alto
SELECT Funcionario.nome, Funcionario.salario, Funcionario.funcao, Funcionario.loja
	FROM Funcionario
    ORDER BY Funcionario.salario DESC
    Limit 5;
    
-- Somatório de salarios de cada loja, ordenado por salario
SELECT Loja.idloja, SUM(F.salario) AS Salario
	FROM Loja
		INNER JOIN Funcionario As F	ON (F.loja= Loja.idLoja)
    GROUP BY Loja.idLoja
    ORDER BY Salario;
    
-- Seleção de Clientes da Loja 1
SELECT C.Nome
	FROM Cliente AS C
		INNER JOIN Loja_Cliente AS LC
		ON LC.cliente = C.idCliente
	WHERE LC.loja = 1;
    
-- Lista Funcionarios
SELECT  F.idFuncionario AS 'Codigo',
		F.nome AS 'Nome',
        F.contacto AS 'Contacto',
        F.funcao AS 'Função',
        F.email AS 'Email',
        F.loja AS 'Loja',
        '______________________________________' AS 'Observações'
	FROM Funcionario AS F
    ORDER BY F.funcao;
    

-- Lista Cidades de Clientes (com numero de Clientes naquelas cidades) Onde não existe loja
SELECT CI.nome AS 'Cidade',
	   COUNT(C.idCliente) AS 'Numero de Clientes'
	FROM Cidade AS CI
		INNER JOIN Cliente AS C ON C.cidade = CI.idCidade
	WHERE CI.idCidade NOT IN (SELECT Loja.cidade FROM Loja)
	GROUP BY CI.idCidade;

-- Lista ordenada de Cidades com mais clientes
SELECT CI.nome AS 'Cidade',
	   COUNT(C.idCliente) AS Numero_de_Clientes
	FROM Cidade AS CI
		INNER JOIN Cliente AS C ON C.cidade = CI.idCidade
	GROUP BY CI.idCidade
    ORDER BY Numero_de_Clientes DESC;    
    
    

-- Mostra total de vendas num dado 'Mes' e 'Ano'
SELECT SUM(M.valor) AS TotalVendas
	FROM Marcacao AS M
	WHERE MONTH(M.data_hora) = 9 AND YEAR(M.data_hora) = 2016;
    


-- Marcações do dia 2016-11-11 ordenado por data na loja 2
SELECT M.idMarcacao AS 'Codigo da marcação',
		DATE(M.data_hora) AS 'Data',
		TIME(M.data_hora) AS 'Hora',
		C.nome AS 'Cliente',
		Cao.nome AS 'Cão',
		Cao.observacoes AS 'Observações sobre Cão',
		F.nome AS 'Funcionario',
		M.loja AS 'Loja'
	FROM Marcacao AS M
		INNER JOIN Cliente AS C
		ON C.idCliente = M.cliente
			INNER JOIN Cao
			ON Cao.idCao = M.cao
				INNER JOIN Funcionario AS F
				ON F.idFuncionario = M.funcionario
	WHERE DATE(M.data_hora) = '2016-11-11' AND M.loja = 2
	ORDER BY TIME(M.data_hora) ASC;
