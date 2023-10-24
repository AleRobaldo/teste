
CREATE DATABASE IF NOT EXISTS Biblioteca;
USE Biblioteca;


CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    NomeAutor VARCHAR(255)
);


CREATE TABLE Editoras (
    EditoraID INT PRIMARY KEY,
    NomeEditora VARCHAR(255)
);


CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(255),
    AutorID INT,
    EditoraID INT,
    AnoPublicacao INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID),
    FOREIGN KEY (EditoraID) REFERENCES Editoras(EditoraID)
);
SELECT * FROM LIVROS;

CREATE TABLE Leitores (
    LeitorID INT PRIMARY KEY,
    NomeLeitor VARCHAR(255)
);


CREATE TABLE Emprestimos (
    EmprestimoID INT PRIMARY KEY,
    LivroID INT,
    LeitorID INT,
    DataEmprestimo DATE,
    DataDevolucao DATE,
    FOREIGN KEY (LivroID) REFERENCES Livros(LivroID),
    FOREIGN KEY (LeitorID) REFERENCES Leitores(LeitorID)
);

INSERT INTO Autores (AutorID, NomeAutor)
VALUES
    (1, 'Autor 1'),
    (2, 'Autor 2'),
    (3, 'Autor 3'),
    (4, 'Autor 4'),
    (5, 'Autor 5'),
    (6, 'Autor 6'),
    (7, 'Autor 7'),
    (8, 'Autor 8'),
    (9, 'Autor 9'),
    (10, 'Autor 10'),
    (11, 'Autor 11'),
    (12, 'Autor 12'),
    (13, 'Autor 13'),
    (14, 'Autor 14'),
    (15, 'Autor 15'),
    (16, 'Autor 16'),
    (17, 'Autor 17'),
    (18, 'Autor 18'),
    (19, 'Autor 19'),
    (20, 'Autor 20');

INSERT INTO Editoras (EditoraID, NomeEditora)
VALUES
    (1, 'Editora 1'),
    (2, 'Editora 2'),
    (3, 'Editora 3'),
    (4, 'Editora 4'),
    (5, 'Editora 5'),
    (6, 'Editora 6'),
    (7, 'Editora 7'),
    (8, 'Editora 8'),
    (9, 'Editora 9'),
    (10, 'Editora 10'),
    (11, 'Editora 11'),
    (12, 'Editora 12'),
    (13, 'Editora 13'),
    (14, 'Editora 14'),
    (15, 'Editora 15'),
    (16, 'Editora 16'),
    (17, 'Editora 17'),
    (18, 'Editora 18'),
    (19, 'Editora 19'),
    (20, 'Editora 20');

INSERT INTO Livros (LivroID, Titulo, AutorID, EditoraID, AnoPublicacao)
VALUES
    (1, 'Livro 1', 1, 1, 2020),
    (2, 'Livro 2', 2, 2, 2019),
    (3, 'Livro 3', 1, 1, 2020),
    (4, 'Livro 4', 2, 2, 2019),
    (5, 'Livro 5', 1, 1, 2020),
    (6, 'Livro 6', 2, 2, 2019),
    (7, 'Livro 7', 1, 1, 2020),
    (8, 'Livro 8', 2, 2, 2019),
    (9, 'Livro 9', 1, 1, 2020),
    (10, 'Livro 10', 2, 2, 2019),
    (11, 'Livro 11', 1, 1, 2020),
    (12, 'Livro 12', 2, 2, 2019),
    (13, 'Livro 13', 1, 1, 2020),
    (14, 'Livro 14', 2, 2, 2019),
    (15, 'Livro 15', 1, 1, 2020),
    (16, 'Livro 16', 2, 2, 2019),
    (17, 'Livro 17', 1, 1, 2020),
    (18, 'Livro 18', 2, 2, 2019),
    (19, 'Livro 19', 2, 2, 2019),
    (20, 'Livro 20', 3, 3, 2021);

INSERT INTO Leitores (LeitorID, NomeLeitor)
VALUES
    (1, 'Leitor 1'),
    (2, 'Leitor 2'),
    (3, 'Leitor 3'),
    (4, 'Leitor 4'),
    (5, 'Leitor 5'),
    (6, 'Leitor 6'),
    (7, 'Leitor 7'),
    (8, 'Leitor 8'),
    (9, 'Leitor 9'),
    (10, 'Leitor 10'),
    (11, 'Leitor 11'),
    (12, 'Leitor 12'),
    (13, 'Leitor 13'),
    (14, 'Leitor 14'),
    (15, 'Leitor 15'),
    (16, 'Leitor 16'),
    (17, 'Leitor 17'),
    (18, 'Leitor 18'),
    (19, 'Leitor 19'),
    (20, 'Leitor 20');

INSERT INTO Emprestimos (EmprestimoID, LivroID, LeitorID, DataEmprestimo, DataDevolucao)
VALUES
    (1, 1, 1, str_to_date('2023-01-10', '%Y-%M-%d'), str_to_date('2023-02-20', '%Y-%M-%d')),
    (2, 2, 2, '10-01-2023', '20-02-2023'),
    (3, 3, 3, '10-01-2023', '20-02-2023'),
    (4, 4, 4, '10-01-2023', '20-02-2023'),
    (5, 5, 5, '10-01-2023', '20-02-2023'),
    (6, 6, 6, '10-01-2023', '20-02-2023'),
    (7, 7, 7, '10-01-2023', '20-02-2023'),
    (8, 8, 8, '10-01-2023', '20-02-2023'),
    (9, 9, 9, '10-01-2023', '20-02-2023'),
    (10, 10, 10, '10-01-2023', '20-02-2023'),
    (11, 11, 11, '10-01-2023', '20-02-2023'),
    (12, 12, 12, '10-01-2023', '20-02-2023'),
    (13, 13, 13, '10-01-2023', '20-02-2023'),
    (14, 14, 14, '10-01-2023', '20-02-2023'),
    (15, 15, 15, '10-01-2023', '20-02-2023'),
    (16, 16, 16, '10-01-2023', '20-02-2023'),
    (17, 17, 17, '10-01-2023', '20-02-2023'),
    (18, 18, 18, '10-01-2023', '20-02-2023'),
    (19, 19, 19, '10-01-2023', '20-02-2023'),
    (20, 20, 20, '10-01-2023', '20-02-2023');

DELIMITER //

CREATE PROCEDURE ObterNomeAutor(IN Autor INT, OUT NomeAutor VARCHAR(255))
BEGIN
    SELECT NomeAutor INTO NomeAutor
    FROM Autores
    WHERE Autor = AutorID;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION CalcularAtraso(EmprestimoDate DATE, DevolucaoDate DATE) RETURNS INT
BEGIN
    DECLARE DiasAtraso INT;
    SET DiasAtraso = DATEDIFF(DevolucaoDate, EmprestimoDate);
    IF DiasAtraso < 0 THEN
        SET DiasAtraso = 0;
    END IF;
    RETURN DiasAtraso;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER AtualizarStatusLivro
AFTER INSERT ON Emprestimos
FOR EACH ROW
BEGIN
    UPDATE Livros
    SET Status = 'Emprestado'
    WHERE Livros.LivroID = NEW.LivroID;
END //

DELIMITER ;
