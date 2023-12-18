-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS ExemploDB;

-- Usar o banco de dados criado
USE ExemploDB;

-- Criar tabela "Clientes"
CREATE TABLE IF NOT EXISTS Clientes (
    ClienteID INT PRIMARY KEY,
    NomeCliente VARCHAR(50),
    Saldo DECIMAL(10, 2)
);

-- Criar tabela "Transacoes"
CREATE TABLE IF NOT EXISTS Transacoes (
    TransacaoID INT PRIMARY KEY,
    ClienteID INT,
    Valor DECIMAL(10, 2),
    DataTransacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Criar um trigger que será acionado após uma inserção na tabela "Transacoes"
DELIMITER //
CREATE TRIGGER AfterInsertTransacao
AFTER INSERT ON Transacoes
FOR EACH ROW
BEGIN
    -- Exemplo de ação: Atualizar o saldo do cliente após uma transação
    UPDATE Clientes
    SET Saldo = Saldo - NEW.Valor
    WHERE ClienteID = NEW.ClienteID;
END;
//
DELIMITER ;

-- Inserir dados na tabela "Clientes"
INSERT INTO Clientes (ClienteID, NomeCliente, Saldo)
VALUES
    (1, 'João', 1000.00),
    (2, 'Maria', 500.00);

-- Inserir dados na tabela "Transacoes" (o trigger será acionado após cada inserção)
INSERT INTO Transacoes (ClienteID, Valor)
VALUES
    (1, 200.00),
    (2, 100.00);
