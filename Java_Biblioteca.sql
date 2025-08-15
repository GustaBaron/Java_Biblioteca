CREATE DATABASE IF NOT EXISTS Java_Biblioteca;
USE Java_Biblioteca;

-- Tabela USUARIO
CREATE TABLE USUARIO (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255)
);

-- Tabela LIVRO
CREATE TABLE LIVRO (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255)
);

-- Tabela EMPRESTIMO
CREATE TABLE EMPRESTIMO (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_livro INT,
    data_emprestimo DATETIME,
    data_prevista_devolucao DATETIME,
    data_efetiva_devolucao DATETIME,
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id_livro)
);

-- Inserir usuários
INSERT INTO USUARIO (nome, email) VALUES
('Ana Silva', 'ana.silva@email.com'),
('Bruno Souza', 'bruno.souza@email.com'),
('Carla Oliveira', 'carla.oliveira@email.com');

-- Inserir livros
INSERT INTO LIVRO (titulo) VALUES
('O Senhor dos Anéis'),
('Dom Casmurro'),
('A Revolução dos Bichos'),
('1984');

-- Inserir empréstimos
INSERT INTO EMPRESTIMO (id_usuario, id_livro, data_emprestimo, data_prevista_devolucao, data_efetiva_devolucao) VALUES
(1, 1, '2025-08-01 10:00:00', '2025-08-15 10:00:00', '2025-08-12 14:30:00'),
(2, 3, '2025-08-05 14:00:00', '2025-08-19 14:00:00', NULL),
(1, 2, '2025-08-10 09:00:00', '2025-08-24 09:00:00', NULL),
(3, 4, '2025-07-28 16:00:00', '2025-08-11 16:00:00', '2025-08-10 11:45:00');

