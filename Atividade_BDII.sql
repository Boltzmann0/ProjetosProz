-- Criar o banco de dados
CREATE DATABASE Escola;

-- Usar o banco de dados criado
USE Escola;

-- Criar tabela Alunos
CREATE TABLE Alunos (
    IDAluno INT PRIMARY KEY,
    Nome VARCHAR(50),
    CursoID INT,
    FOREIGN KEY (CursoID) REFERENCES Cursos(IDCurso)
);

-- Criar tabela Cursos
CREATE TABLE Cursos (
    IDCurso INT PRIMARY KEY,
    NomeCurso VARCHAR(50)
);

-- Inserir dados na tabela Cursos
INSERT INTO Cursos (IDCurso, NomeCurso)
VALUES
    (1, 'Matemática'),
    (2, 'História'),
    (3, 'Ciências');

-- Inserir dados na tabela Alunos
INSERT INTO Alunos (IDAluno, Nome, CursoID)
VALUES
    (1, 'João', 1),
    (2, 'Maria', 2),
    (3, 'Carlos', 1),
    (4, 'Ana', 3);

-- Consulta usando INNER JOIN para obter informações do aluno e curso
SELECT Alunos.IDAluno, Alunos.Nome AS NomeAluno, Cursos.NomeCurso
FROM Alunos
INNER JOIN Cursos ON Alunos.CursoID = Cursos.IDCurso;
