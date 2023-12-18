-- Criar a função
DELIMITER //

CREATE FUNCTION SomarClientesCadastradosNoDia(dataConsulta DATE)
RETURNS INT
BEGIN
    DECLARE totalClientes INT;

    SELECT COUNT(*) INTO totalClientes
    FROM Clientes
    WHERE DATE(DataCadastro) = dataConsulta;

    RETURN totalClientes;
END;

//

DELIMITER ;


--SELECT SomarClientesCadastradosNoDia('2023-01-01') AS TotalClientesCadastrados;  -- Para chamar a funcao;