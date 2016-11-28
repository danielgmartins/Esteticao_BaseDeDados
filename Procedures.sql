USE Esteticao;
-- Caes De cada cliente
DELIMITER %%  
CREATE PROCEDURE caoCliente (IN IdCliente INT) 
BEGIN 
	SELECT Cao.nome, C.Nome
		FROM Cao 
			INNER JOIN Cliente AS C
				On (Cao.cliente = C.idCliente)
					WHERE (Cao.cliente= IdCliente);
END %%
DELIMITER ;
    
CALL caoCLiente (2);


DELIMITER %%  
CREATE PROCEDURE AumentoFuncionario (IN Aumento Float, IN idFunc INT) 
BEGIN 
        UPDATE Funcionario AS F
		SET F.Salario = (Aumento + F.Salario)
        WHERE F.idFuncionario = idFunc;
END %%
DELIMITER ;


CALL AumentoFuncionario (5, 5);

/* SELECT F.Nome, F.Salario, F.idFuncionario
	From funcionario as F; */

/**********************


DELIMITER %%  
CREATE PROCEDURE CidadesdosClientesporLoja (IN IDLoja INT)
BEGIN 
    SELECT Lc.Loja, C.Nome, COUNT(CLi.Cidade) AS Clientes
	FROM Loja_Cliente AS LC
		INNER JOIN Cliente As Cli  ON (LC.cliente = Cli.idCliente)
        INNER JOIN Cidade As C  ON (Cli.cidade = C.idCidade)
        Where (LC.loja = IDloja)
        GROUP BY C.Nome
        ORDER BY Clientes DESC;
END %%
DELIMITER ;

CALL CidadesdosClientesporLoja(1);

*************************/

    