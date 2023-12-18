-- Criar a procedure
DELIMITER //

CREATE PROCEDURE RelatorioDiarioProdutosComprados()
BEGIN
    SELECT
        DataCompra,
        COUNT(IDProduto) AS QuantidadeProdutosComprados
    FROM
        Compras
    WHERE
        DataCompra = CURDATE()  -- Filtra apenas as compras do dia atual
    GROUP BY
        DataCompra;
END;

//

DELIMITER ;


-- CALL RelatorioDiarioProdutosComprados();  -- Para chamar a procedure
