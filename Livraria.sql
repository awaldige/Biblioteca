-- Criando o banco de dados
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

-- Tabela de Autores
CREATE TABLE Autores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    nacionalidade VARCHAR(100)
);

-- Tabela de Editoras
CREATE TABLE Editoras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    site VARCHAR(255)
);

-- Tabela de Gêneros
CREATE TABLE Generos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de Idiomas
CREATE TABLE Idiomas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

-- Tabela de Livros
CREATE TABLE Livros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    id_autor INT NOT NULL,
    id_editora INT NOT NULL,
    id_genero INT NOT NULL,
    id_idioma INT NOT NULL,
    ano_publicacao YEAR,
    isbn VARCHAR(20) UNIQUE,
    paginas INT,
    FOREIGN KEY (id_autor) REFERENCES Autores(id),
    FOREIGN KEY (id_editora) REFERENCES Editoras(id),
    FOREIGN KEY (id_genero) REFERENCES Generos(id),
    FOREIGN KEY (id_idioma) REFERENCES Idiomas(id)
);
ALTER TABLE Livros MODIFY COLUMN ano_publicacao SMALLINT(4);

-- Tabela de Exemplares
CREATE TABLE Exemplares (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT NOT NULL,
    codigo_exemplar VARCHAR(20) UNIQUE,
    status ENUM('disponível', 'emprestado', 'reservado', 'danificado') DEFAULT 'disponível',
    FOREIGN KEY (id_livro) REFERENCES Livros(id)
);
-- Inserir autores
INSERT INTO Autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileira'),
('J.K. Rowling', 'Britânica'),
('George Orwell', 'Britânica'),
('Clarice Lispector', 'Brasileira');

-- Inserir editoras
INSERT INTO Editoras (nome, site) VALUES
('Companhia das Letras', 'https://www.companhiadasletras.com.br'),
('Editora Rocco', 'https://www.rocco.com.br'),
('HarperCollins', 'https://www.harpercollins.com'),
('Editora Record', 'https://www.record.com.br');

-- Inserir gêneros
INSERT INTO Generos (nome) VALUES
('Romance'),
('Ficção'),
('Distopia'),
('Biografia');

-- Inserir idiomas
INSERT INTO Idiomas (nome) VALUES
('Português'),
('Inglês'),
('Espanhol');

-- Inserir livros
INSERT INTO Livros (titulo, id_autor, id_editora, id_genero, id_idioma, ano_publicacao, isbn, paginas) VALUES
('Dom Casmurro', 1, 1, 1, 1, 1899, '9788535914849', 256),
('Harry Potter e a Pedra Filosofal', 2, 2, 2, 1, 1997, '9788532530783', 264),
('1984', 3, 3, 3, 2, 1949, '9780451524935', 328),
('A Hora da Estrela', 4, 4, 1, 1, 1977, '9788532506245', 96);

-- Inserir exemplares
INSERT INTO Exemplares (id_livro, codigo_exemplar, status) VALUES
(1, 'EX001', 'disponível'),
(1, 'EX002', 'emprestado'),
(2, 'EX003', 'reservado'),
(3, 'EX004', 'disponível'),
(4, 'EX005', 'danificado');




