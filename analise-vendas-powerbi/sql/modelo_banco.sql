-- 1. CRIAÇÃO DAS TABELAS
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(150) UNIQUE NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100),
    categoria VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- 2. INSERTS (CLIENTES E PRODUTOS)
INSERT INTO clientes (nome_cliente, email_cliente, cidade, estado) VALUES
('Gabriel Silva', 'gabriel1@email.com', 'São Paulo', 'SP'), ('Ana Souza', 'ana2@email.com', 'Rio de Janeiro', 'RJ'),
('Carlos Lima', 'carlos3@email.com', 'Belo Horizonte', 'MG'), ('Juliana Rocha', 'juliana4@email.com', 'Curitiba', 'PR'),
('Lucas Mendes', 'lucas5@email.com', 'Salvador', 'BA'), ('Fernanda Alves', 'fernanda6@email.com', 'Fortaleza', 'CE'),
('Rafael Costa', 'rafael7@email.com', 'Recife', 'PE'), ('Mariana Ribeiro', 'mariana8@email.com', 'Porto Alegre', 'RS'),
('Bruno Fernandes', 'bruno9@email.com', 'Brasília', 'DF'), ('Patricia Gomes', 'patricia10@email.com', 'Campinas', 'SP'),
('João Pedro', 'joao11@email.com', 'São Paulo', 'SP'), ('Camila Martins', 'camila12@email.com', 'Rio de Janeiro', 'RJ'),
('Felipe Rocha', 'felipe13@email.com', 'Curitiba', 'PR'), ('Amanda Silva', 'amanda14@email.com', 'Salvador', 'BA'),
('Thiago Alves', 'thiago15@email.com', 'Fortaleza', 'CE'), ('Larissa Costa', 'larissa16@email.com', 'Recife', 'PE'),
('Eduardo Ribeiro', 'eduardo17@email.com', 'Porto Alegre', 'RS'), ('Beatriz Fernandes', 'beatriz18@email.com', 'Brasília', 'DF'),
('Ricardo Gomes', 'ricardo19@email.com', 'Campinas', 'SP'), ('Juliana Castro', 'juliana20@email.com', 'São Paulo', 'SP'),
('Paulo Henrique', 'paulo21@email.com', 'Rio de Janeiro', 'RJ'), ('Renata Souza', 'renata22@email.com', 'Belo Horizonte', 'MG'),
('Marcelo Lima', 'marcelo23@email.com', 'Curitiba', 'PR'), ('Vanessa Rocha', 'vanessa24@email.com', 'Salvador', 'BA'),
('Gustavo Mendes', 'gustavo25@email.com', 'Fortaleza', 'CE'), ('Tatiane Alves', 'tatiane26@email.com', 'Recife', 'PE'),
('Daniel Costa', 'daniel27@email.com', 'Porto Alegre', 'RS'), ('Aline Ribeiro', 'aline28@email.com', 'Brasília', 'DF'),
('Rodrigo Fernandes', 'rodrigo29@email.com', 'Campinas', 'SP'), ('Carla Gomes', 'carla30@email.com', 'São Paulo', 'SP');

INSERT INTO produtos (nome_produto, categoria, preco) VALUES
('Notebook', 'Eletrônicos', 3500.00), ('Mouse', 'Eletrônicos', 80.00), ('Teclado', 'Eletrônicos', 150.00),
('Monitor', 'Eletrônicos', 1200.00), ('Cadeira Gamer', 'Móveis', 900.00), ('Mesa Escritório', 'Móveis', 700.00),
('Celular', 'Eletrônicos', 2500.00), ('Fone de Ouvido', 'Eletrônicos', 200.00), ('Smart TV', 'Eletrônicos', 3000.00),
('Impressora', 'Eletrônicos', 600.00), ('Livro SQL', 'Livros', 120.00), ('Livro Power BI', 'Livros', 150.00),
('Camiseta', 'Roupas', 50.00), ('Calça Jeans', 'Roupas', 120.00), ('Tênis', 'Roupas', 300.00),
('Jaqueta', 'Roupas', 400.00), ('Relógio', 'Acessórios', 500.00), ('Mochila', 'Acessórios', 250.00),
('Óculos', 'Acessórios', 350.00), ('Carteira', 'Acessórios', 150.00);

-- INSERTS DE PEDIDOS E ITENS (RESUMIDOS)
INSERT INTO pedidos (id_cliente, data_pedido) VALUES
(1,'2025-01-01'),(2,'2025-01-02'),(3,'2025-01-03'),(4,'2025-01-04'),(5,'2025-01-05'),
(6,'2025-01-06'),(7,'2025-01-07'),(8,'2025-01-08'),(9,'2025-01-09'),(10,'2025-01-10'),
(11,'2025-01-11'),(12,'2025-01-12'),(13,'2025-01-13'),(14,'2025-01-14'),(15,'2025-01-15'),
(16,'2025-01-16'),(17,'2025-01-17'),(18,'2025-01-18'),(19,'2025-01-19'),(20,'2025-01-20'),
(21,'2025-01-21'),(22,'2025-01-22'),(23,'2025-01-23'),(24,'2025-01-24'),(25,'2025-01-25'),
(26,'2025-01-26'),(27,'2025-01-27'),(28,'2025-01-28'),(29,'2025-01-29'),(30,'2025-01-30'),
(1,'2025-02-01'),(2,'2025-02-02'),(3,'2025-02-03'),(4,'2025-02-04'),(5,'2025-02-05'),
(6,'2025-02-06'),(7,'2025-02-07'),(8,'2025-02-08'),(9,'2025-02-09'),(10,'2025-02-10'),
(11,'2025-02-11'),(12,'2025-02-12'),(13,'2025-02-13'),(14,'2025-02-14'),(15,'2025-02-15'),
(16,'2025-02-16'),(17,'2025-02-17'),(18,'2025-02-18'),(19,'2025-02-19'),(20,'2025-02-20'),
(21,'2025-02-21'),(22,'2025-02-22'),(23,'2025-02-23'),(24,'2025-02-24'),(25,'2025-02-25'),
(26,'2025-02-26'),(27,'2025-02-27'),(28,'2025-02-28'),(1,'2025-03-01'),(2,'2025-03-02'),
(3,'2025-03-03'),(4,'2025-03-04'),(5,'2025-03-05'),(6,'2025-03-06'),(7,'2025-03-07'),
(8,'2025-03-08'),(9,'2025-03-09'),(10,'2025-03-10'),(11,'2025-03-11'),(12,'2025-03-12'),
(13,'2025-03-13'),(14,'2025-03-14'),(15,'2025-03-15'),(16,'2025-03-16'),(17,'2025-03-17'),
(18,'2025-03-18'),(19,'2025-03-19'),(20,'2025-03-20'),(21,'2025-03-21'),(22,'2025-03-22'),
(23,'2025-03-23'),(24,'2025-03-24'),(25,'2025-03-25'),(26,'2025-03-26'),(27,'2025-03-27'),
(28,'2025-03-28'),(29,'2025-03-29'),(30,'2025-03-30'),(1,'2025-04-01'),(2,'2025-04-02'),
(3,'2025-04-03'),(4,'2025-04-04'),(5,'2025-04-05'),(6,'2025-04-06'),(7,'2025-04-07'),
(8,'2025-04-08'),(9,'2025-04-09'),(10,'2025-04-10'),(11,'2025-04-11'),(12,'2025-04-12');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade) VALUES
(1,1,1),(1,2,2),(2,3,1),(2,4,1),(3,5,2),(3,6,1),(4,7,1),(4,8,2),(5,9,1),(5,10,1),
(6,11,2),(6,12,1),(7,13,3),(7,14,1),(8,15,2),(8,16,1),(9,17,1),(9,18,2),(10,19,1),(10,20,1),
(11,1,2),(11,3,1),(12,2,1),(12,4,2),(13,5,1),(13,7,1),(14,6,2),(14,8,1),(15,9,1),(15,11,2),
(16,10,1),(16,12,1),(17,13,2),(17,15,1),(18,14,1),(18,16,2),(19,17,1),(19,19,1),(20,18,2),(20,20,1),
(21,1,1),(21,5,2),(22,2,2),(22,6,1),(23,3,1),(23,7,2),(24,4,1),(24,8,1),(25,9,2),(25,13,1),
(26,10,1),(26,14,2),(27,11,1),(27,15,1),(28,12,2),(28,16,1),(29,17,1),(29,18,2),(30,19,1),(30,20,1),
(31,1,1),(31,10,1),(32,2,2),(32,11,1),(33,3,1),(33,12,2),(34,4,1),(34,13,1),(35,5,3),(35,14,1),
(36,6,1),(36,15,2),(37,7,1),(37,16,1),(38,8,2),(38,17,1),(39,9,1),(39,18,2),(40,10,1),(40,19,1),
(41,1,2),(41,20,1),(42,2,1),(42,19,2),(43,3,1),(43,18,1),(44,4,2),(44,17,1),(45,5,1),(45,16,2),
(46,6,1),(46,15,1),(47,7,2),(47,14,1),(48,8,1),(48,13,2),(49,9,1),(49,12,1),(50,10,2),(50,11,1),
(51,11,1),(51,10,2),(52,12,1),(52,9,1),(53,13,2),(53,8,1),(54,14,1),(54,7,2),(55,15,1),(55,6,1),
(56,16,2),(56,5,1),(57,17,1),(57,4,2),(58,18,1),(58,3,1),(59,19,2),(59,2,1),(60,20,1),(60,1,2),
(61,1,1),(61,2,1),(62,3,2),(62,4,1),(63,5,1),(63,6,2),(64,7,1),(64,8,1),(65,9,2),(65,10,1),
(66,11,1),(66,12,2),(67,13,1),(67,14,1),(68,15,2),(68,16,1),(69,17,1),(69,18,2),(70,19,1),(70,20,1),
(71,2,1),(71,4,1),(72,6,2),(72,8,1),(73,10,1),(73,12,2),(74,14,1),(74,16,1),(75,18,2),(75,20,1),
(76,1,3),(76,3,1),(77,5,1),(77,7,2),(78,9,1),(78,11,1),(79,13,2),(79,15,1),(80,17,1),(80,19,2),
(81,1,1),(81,5,1),(82,2,2),(82,6,1),(83,3,1),(83,7,2),(84,4,1),(84,8,1),(85,9,2),(85,13,1),
(86,10,1),(86,14,2),(87,11,1),(87,15,1),(88,12,2),(88,16,1),(89,17,1),(89,18,2),(90,19,1),(90,20,1),
(91,1,2),(91,3,1),(92,2,1),(92,4,2),(93,5,1),(93,7,1),(94,6,2),(94,8,1),(95,9,1),(95,11,2),
(96,10,1),(96,12,1),(97,13,2),(97,15,1),(98,14,1),(98,16,2),(99,17,1),(99,19,1),(100,18,2),(100,20,1);-- 1. CRIAÇÃO DAS TABELAS
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(150) UNIQUE NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100),
    categoria VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- 2. INSERTS (CLIENTES E PRODUTOS)
INSERT INTO clientes (nome_cliente, email_cliente, cidade, estado) VALUES
('Gabriel Silva', 'gabriel1@email.com', 'São Paulo', 'SP'), ('Ana Souza', 'ana2@email.com', 'Rio de Janeiro', 'RJ'),
('Carlos Lima', 'carlos3@email.com', 'Belo Horizonte', 'MG'), ('Juliana Rocha', 'juliana4@email.com', 'Curitiba', 'PR'),
('Lucas Mendes', 'lucas5@email.com', 'Salvador', 'BA'), ('Fernanda Alves', 'fernanda6@email.com', 'Fortaleza', 'CE'),
('Rafael Costa', 'rafael7@email.com', 'Recife', 'PE'), ('Mariana Ribeiro', 'mariana8@email.com', 'Porto Alegre', 'RS'),
('Bruno Fernandes', 'bruno9@email.com', 'Brasília', 'DF'), ('Patricia Gomes', 'patricia10@email.com', 'Campinas', 'SP'),
('João Pedro', 'joao11@email.com', 'São Paulo', 'SP'), ('Camila Martins', 'camila12@email.com', 'Rio de Janeiro', 'RJ'),
('Felipe Rocha', 'felipe13@email.com', 'Curitiba', 'PR'), ('Amanda Silva', 'amanda14@email.com', 'Salvador', 'BA'),
('Thiago Alves', 'thiago15@email.com', 'Fortaleza', 'CE'), ('Larissa Costa', 'larissa16@email.com', 'Recife', 'PE'),
('Eduardo Ribeiro', 'eduardo17@email.com', 'Porto Alegre', 'RS'), ('Beatriz Fernandes', 'beatriz18@email.com', 'Brasília', 'DF'),
('Ricardo Gomes', 'ricardo19@email.com', 'Campinas', 'SP'), ('Juliana Castro', 'juliana20@email.com', 'São Paulo', 'SP'),
('Paulo Henrique', 'paulo21@email.com', 'Rio de Janeiro', 'RJ'), ('Renata Souza', 'renata22@email.com', 'Belo Horizonte', 'MG'),
('Marcelo Lima', 'marcelo23@email.com', 'Curitiba', 'PR'), ('Vanessa Rocha', 'vanessa24@email.com', 'Salvador', 'BA'),
('Gustavo Mendes', 'gustavo25@email.com', 'Fortaleza', 'CE'), ('Tatiane Alves', 'tatiane26@email.com', 'Recife', 'PE'),
('Daniel Costa', 'daniel27@email.com', 'Porto Alegre', 'RS'), ('Aline Ribeiro', 'aline28@email.com', 'Brasília', 'DF'),
('Rodrigo Fernandes', 'rodrigo29@email.com', 'Campinas', 'SP'), ('Carla Gomes', 'carla30@email.com', 'São Paulo', 'SP');

INSERT INTO produtos (nome_produto, categoria, preco) VALUES
('Notebook', 'Eletrônicos', 3500.00), ('Mouse', 'Eletrônicos', 80.00), ('Teclado', 'Eletrônicos', 150.00),
('Monitor', 'Eletrônicos', 1200.00), ('Cadeira Gamer', 'Móveis', 900.00), ('Mesa Escritório', 'Móveis', 700.00),
('Celular', 'Eletrônicos', 2500.00), ('Fone de Ouvido', 'Eletrônicos', 200.00), ('Smart TV', 'Eletrônicos', 3000.00),
('Impressora', 'Eletrônicos', 600.00), ('Livro SQL', 'Livros', 120.00), ('Livro Power BI', 'Livros', 150.00),
('Camiseta', 'Roupas', 50.00), ('Calça Jeans', 'Roupas', 120.00), ('Tênis', 'Roupas', 300.00),
('Jaqueta', 'Roupas', 400.00), ('Relógio', 'Acessórios', 500.00), ('Mochila', 'Acessórios', 250.00),
('Óculos', 'Acessórios', 350.00), ('Carteira', 'Acessórios', 150.00);

-- INSERTS DE PEDIDOS E ITENS
INSERT INTO pedidos (id_cliente, data_pedido) VALUES
(1,'2025-01-01'),(2,'2025-01-02'),(3,'2025-01-03'),(4,'2025-01-04'),(5,'2025-01-05'),
(6,'2025-01-06'),(7,'2025-01-07'),(8,'2025-01-08'),(9,'2025-01-09'),(10,'2025-01-10'),
(11,'2025-01-11'),(12,'2025-01-12'),(13,'2025-01-13'),(14,'2025-01-14'),(15,'2025-01-15'),
(16,'2025-01-16'),(17,'2025-01-17'),(18,'2025-01-18'),(19,'2025-01-19'),(20,'2025-01-20'),
(21,'2025-01-21'),(22,'2025-01-22'),(23,'2025-01-23'),(24,'2025-01-24'),(25,'2025-01-25'),
(26,'2025-01-26'),(27,'2025-01-27'),(28,'2025-01-28'),(29,'2025-01-29'),(30,'2025-01-30'),
(1,'2025-02-01'),(2,'2025-02-02'),(3,'2025-02-03'),(4,'2025-02-04'),(5,'2025-02-05'),
(6,'2025-02-06'),(7,'2025-02-07'),(8,'2025-02-08'),(9,'2025-02-09'),(10,'2025-02-10'),
(11,'2025-02-11'),(12,'2025-02-12'),(13,'2025-02-13'),(14,'2025-02-14'),(15,'2025-02-15'),
(16,'2025-02-16'),(17,'2025-02-17'),(18,'2025-02-18'),(19,'2025-02-19'),(20,'2025-02-20'),
(21,'2025-02-21'),(22,'2025-02-22'),(23,'2025-02-23'),(24,'2025-02-24'),(25,'2025-02-25'),
(26,'2025-02-26'),(27,'2025-02-27'),(28,'2025-02-28'),(1,'2025-03-01'),(2,'2025-03-02'),
(3,'2025-03-03'),(4,'2025-03-04'),(5,'2025-03-05'),(6,'2025-03-06'),(7,'2025-03-07'),
(8,'2025-03-08'),(9,'2025-03-09'),(10,'2025-03-10'),(11,'2025-03-11'),(12,'2025-03-12'),
(13,'2025-03-13'),(14,'2025-03-14'),(15,'2025-03-15'),(16,'2025-03-16'),(17,'2025-03-17'),
(18,'2025-03-18'),(19,'2025-03-19'),(20,'2025-03-20'),(21,'2025-03-21'),(22,'2025-03-22'),
(23,'2025-03-23'),(24,'2025-03-24'),(25,'2025-03-25'),(26,'2025-03-26'),(27,'2025-03-27'),
(28,'2025-03-28'),(29,'2025-03-29'),(30,'2025-03-30'),(1,'2025-04-01'),(2,'2025-04-02'),
(3,'2025-04-03'),(4,'2025-04-04'),(5,'2025-04-05'),(6,'2025-04-06'),(7,'2025-04-07'),
(8,'2025-04-08'),(9,'2025-04-09'),(10,'2025-04-10'),(11,'2025-04-11'),(12,'2025-04-12');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade) VALUES
(1,1,1),(1,2,2),(2,3,1),(2,4,1),(3,5,2),(3,6,1),(4,7,1),(4,8,2),(5,9,1),(5,10,1),
(6,11,2),(6,12,1),(7,13,3),(7,14,1),(8,15,2),(8,16,1),(9,17,1),(9,18,2),(10,19,1),(10,20,1),
(11,1,2),(11,3,1),(12,2,1),(12,4,2),(13,5,1),(13,7,1),(14,6,2),(14,8,1),(15,9,1),(15,11,2),
(16,10,1),(16,12,1),(17,13,2),(17,15,1),(18,14,1),(18,16,2),(19,17,1),(19,19,1),(20,18,2),(20,20,1),
(21,1,1),(21,5,2),(22,2,2),(22,6,1),(23,3,1),(23,7,2),(24,4,1),(24,8,1),(25,9,2),(25,13,1),
(26,10,1),(26,14,2),(27,11,1),(27,15,1),(28,12,2),(28,16,1),(29,17,1),(29,18,2),(30,19,1),(30,20,1),
(31,1,1),(31,10,1),(32,2,2),(32,11,1),(33,3,1),(33,12,2),(34,4,1),(34,13,1),(35,5,3),(35,14,1),
(36,6,1),(36,15,2),(37,7,1),(37,16,1),(38,8,2),(38,17,1),(39,9,1),(39,18,2),(40,10,1),(40,19,1),
(41,1,2),(41,20,1),(42,2,1),(42,19,2),(43,3,1),(43,18,1),(44,4,2),(44,17,1),(45,5,1),(45,16,2),
(46,6,1),(46,15,1),(47,7,2),(47,14,1),(48,8,1),(48,13,2),(49,9,1),(49,12,1),(50,10,2),(50,11,1),
(51,11,1),(51,10,2),(52,12,1),(52,9,1),(53,13,2),(53,8,1),(54,14,1),(54,7,2),(55,15,1),(55,6,1),
(56,16,2),(56,5,1),(57,17,1),(57,4,2),(58,18,1),(58,3,1),(59,19,2),(59,2,1),(60,20,1),(60,1,2),
(61,1,1),(61,2,1),(62,3,2),(62,4,1),(63,5,1),(63,6,2),(64,7,1),(64,8,1),(65,9,2),(65,10,1),
(66,11,1),(66,12,2),(67,13,1),(67,14,1),(68,15,2),(68,16,1),(69,17,1),(69,18,2),(70,19,1),(70,20,1),
(71,2,1),(71,4,1),(72,6,2),(72,8,1),(73,10,1),(73,12,2),(74,14,1),(74,16,1),(75,18,2),(75,20,1),
(76,1,3),(76,3,1),(77,5,1),(77,7,2),(78,9,1),(78,11,1),(79,13,2),(79,15,1),(80,17,1),(80,19,2),
(81,1,1),(81,5,1),(82,2,2),(82,6,1),(83,3,1),(83,7,2),(84,4,1),(84,8,1),(85,9,2),(85,13,1),
(86,10,1),(86,14,2),(87,11,1),(87,15,1),(88,12,2),(88,16,1),(89,17,1),(89,18,2),(90,19,1),(90,20,1),
(91,1,2),(91,3,1),(92,2,1),(92,4,2),(93,5,1),(93,7,1),(94,6,2),(94,8,1),(95,9,1),(95,11,2),
(96,10,1),(96,12,1),(97,13,2),(97,15,1),(98,14,1),(98,16,2),(99,17,1),(99,19,1),(100,18,2),(100,20,1);
