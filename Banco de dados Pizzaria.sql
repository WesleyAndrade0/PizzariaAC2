-- Criação do banco de dados
CREATE DATABASE Pizzaria;
USE Pizzaria;

-- Criação da tabela PIZZA
CREATE TABLE Pizza (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    tamanho VARCHAR(20),
    ingredientes TEXT,
    embalagem_material VARCHAR(50),
    embalagem_tamanho VARCHAR(20),
    embalagem_preco DECIMAL(10, 2)
);

-- Criação da tabela RECEITA
CREATE TABLE Receita (
    id INT AUTO_INCREMENT PRIMARY KEY,
    instrucoes TEXT NOT NULL,
    autor VARCHAR(50),
    pizza_id INT,
    FOREIGN KEY (pizza_id) REFERENCES Pizza(id)
);

-- Criação da tabela PIZZAIOLO
CREATE TABLE Pizzaiolo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);

-- Criação da tabela FAZ para relacionamento muitos-para-muitos entre Pizzaiolo e Pizza
CREATE TABLE Faz (
    pizzaiolo_id INT,
    pizza_id INT,
    PRIMARY KEY (pizzaiolo_id, pizza_id),
    FOREIGN KEY (pizzaiolo_id) REFERENCES Pizzaiolo(id),
    FOREIGN KEY (pizza_id) REFERENCES Pizza(id)
);

USE Pizzaria;

-- Inserção de dados na tabela PIZZA
INSERT INTO Pizza (sabor, preco, descricao, tamanho, ingredientes, embalagem_material, embalagem_tamanho, embalagem_preco) VALUES
('Margherita', 20.00, 'Pizza de Margherita', 'M', 'Tomate, Mussarela, Manjericão', 'Papelão', 'Médio', 1.50),
('Pepperoni', 22.00, 'Pizza de Pepperoni', 'G', 'Pepperoni, Mussarela, Molho de Tomate', 'Papelão', 'Grande', 2.00),
('Quatro Queijos', 25.00, 'Pizza de Quatro Queijos', 'P', 'Mussarela, Gorgonzola, Parmesão, Provolone', 'Papelão', 'Pequeno', 1.20),
('Calabresa', 24.00, 'Pizza de Calabresa', 'M', 'Calabresa, Cebola, Mussarela, Molho de Tomate', 'Papelão', 'Médio', 1.50),
('Portuguesa', 26.00, 'Pizza de Portuguesa', 'G', 'Presunto, Ovo, Cebola, Ervilha, Mussarela', 'Papelão', 'Grande', 2.00),
('Frango com Catupiry', 28.00, 'Pizza de Frango com Catupiry', 'M', 'Frango, Catupiry, Mussarela, Molho de Tomate', 'Papelão', 'Médio', 1.50),
('Atum', 27.00, 'Pizza de Atum', 'P', 'Atum, Cebola, Mussarela, Molho de Tomate', 'Papelão', 'Pequeno', 1.20),
('Napolitana', 23.00, 'Pizza de Napolitana', 'G', 'Tomate, Mussarela, Alcaparras, Azeitona', 'Papelão', 'Grande', 2.00),
('Vegetariana', 25.00, 'Pizza Vegetariana', 'M', 'Pimentão, Cebola, Tomate, Azeitona, Mussarela', 'Papelão', 'Médio', 1.50),
('Toscana', 29.00, 'Pizza Toscana', 'P', 'Calabresa, Mussarela, Cebola, Tomate', 'Papelão', 'Pequeno', 1.20),
('Mexicana', 30.00, 'Pizza Mexicana', 'G', 'Pimenta, Calabresa, Mussarela, Tomate', 'Papelão', 'Grande', 2.00),
('Baiana', 28.00, 'Pizza Baiana', 'M', 'Carne Seca, Mussarela, Tomate, Pimenta', 'Papelão', 'Médio', 1.50),
('Palmito', 27.00, 'Pizza de Palmito', 'P', 'Palmito, Mussarela, Tomate, Azeitona', 'Papelão', 'Pequeno', 1.20),
('Rúcula com Tomate Seco', 29.00, 'Pizza de Rúcula com Tomate Seco', 'G', 'Rúcula, Tomate Seco, Mussarela, Molho de Tomate', 'Papelão', 'Grande', 2.00),
('Chocolate', 24.00, 'Pizza de Chocolate', 'M', 'Chocolate, Mussarela, Granulado', 'Papelão', 'Médio', 1.50),
('Banana com Canela', 22.00, 'Pizza de Banana com Canela', 'P', 'Banana, Canela, Açúcar, Mussarela', 'Papelão', 'Pequeno', 1.20),
('Romeu e Julieta', 26.00, 'Pizza de Romeu e Julieta', 'G', 'Goiabada, Queijo Minas, Mussarela', 'Papelão', 'Grande', 2.00),
('Brigadeiro', 25.00, 'Pizza de Brigadeiro', 'M', 'Chocolate, Granulado, Leite Condensado', 'Papelão', 'Médio', 1.50),
('Carne de Sol', 28.00, 'Pizza de Carne de Sol', 'P', 'Carne de Sol, Mussarela, Cebola, Tomate', 'Papelão', 'Pequeno', 1.20),
('Camarão', 30.00, 'Pizza de Camarão', 'G', 'Camarão, Mussarela, Tomate, Azeitona', 'Papelão', 'Grande', 2.00),
('Provolone', 27.00, 'Pizza de Provolone', 'M', 'Provolone, Mussarela, Tomate, Oregano', 'Papelão', 'Médio', 1.50),
('Abobrinha', 25.00, 'Pizza de Abobrinha', 'P', 'Abobrinha, Mussarela, Tomate, Oregano', 'Papelão', 'Pequeno', 1.20),
('Milho', 24.00, 'Pizza de Milho', 'G', 'Milho, Mussarela, Tomate, Orégano', 'Papelão', 'Grande', 2.00),
('Jalapeño', 29.00, 'Pizza Jalapeño', 'M', 'Jalapeño, Mussarela, Tomate, Orégano', 'Papelão', 'Médio', 1.50),
('Tomate Seco', 26.00, 'Pizza de Tomate Seco', 'P', 'Tomate Seco, Mussarela, Rúcula, Molho de Tomate', 'Papelão', 'Pequeno', 1.20),
('Lombo', 28.00, 'Pizza de Lombo', 'G', 'Lombo, Mussarela, Tomate, Oregano', 'Papelão', 'Grande', 2.00),
('Filé Mignon', 30.00, 'Pizza de Filé Mignon', 'M', 'Filé Mignon, Mussarela, Tomate, Oregano', 'Papelão', 'Médio', 1.50),
('Aliche', 29.00, 'Pizza de Aliche', 'P', 'Aliche, Mussarela, Tomate, Oregano', 'Papelão', 'Pequeno', 1.20),
('Carne Moída', 27.00, 'Pizza de Carne Moída', 'G', 'Carne Moída, Mussarela, Tomate, Oregano', 'Papelão', 'Grande', 2.00),
('Costela', 30.00, 'Pizza de Costela', 'M', 'Costela, Mussarela, Tomate, Oregano', 'Papelão', 'Médio', 1.50);

-- Inserção de dados na tabela RECEITA
INSERT INTO Receita (instrucoes, autor, pizza_id) VALUES
('Pré-aqueça o forno a 220 graus. Espalhe o molho de tomate na base da pizza, adicione os ingredientes e asse por 15 minutos.', 'Chef Mario', 1),
('Pré-aqueça o forno a 220 graus. Coloque o pepperoni por cima da base e asse por 12-15 minutos.', 'Chef Luigi', 2),
('Misture todos os queijos e espalhe uniformemente sobre a base da pizza. Asse por 10-12 minutos.', 'Chef Ana', 3),
('Espalhe o molho de tomate sobre a base da pizza, adicione a calabresa e a cebola. Asse por 15 minutos.', 'Chef Beto', 4),
('Pré-aqueça o forno a 220 graus. Espalhe os ingredientes sobre a base e asse por 12-15 minutos.', 'Chef Carla', 5),
('Pré-aqueça o forno a 220 graus. Adicione frango e catupiry sobre a base e asse por 15 minutos.', 'Chef Daniel', 6),
('Espalhe o molho de tomate na base, adicione o atum e a cebola. Asse por 12-15 minutos.', 'Chef Elisa', 7),
('Espalhe os ingredientes sobre a base e asse por 15 minutos.', 'Chef Felipe', 8),
('Pré-aqueça o forno a 220 graus. Adicione os ingredientes vegetais sobre a base e asse por 12-15 minutos.', 'Chef Gabriela', 9),
('Pré-aqueça o forno a 220 graus. Adicione a calabresa e a cebola sobre a base e asse por 12-15 minutos.', 'Chef Hugo', 10),
('Espalhe os ingredientes sobre a base e asse por 15 minutos.', 'Chef Ingrid', 11),
('Pré-aqueça o forno a 220 graus. Adicione carne seca e pimenta sobre a base e asse por 15 minutos.', 'Chef Jorge', 12),
('Pré-aqueça o forno a 220 graus. Adicione palmito sobre a base e asse por 12-15 minutos.', 'Chef Karla', 13),
('Pré-aqueça o forno a 220 graus. Adicione rúcula e tomate seco sobre a base e asse por 12-15 minutos.', 'Chef Leo', 14),
('Pré-aqueça o forno a 220 graus. Adicione chocolate e granulado sobre a base e asse por 10 minutos.', 'Chef Mariana', 15),
('Pré-aqueça o forno a 220 graus. Adicione banana e canela sobre a base e asse por 10 minutos.', 'Chef Nelson', 16),
('Pré-aqueça o forno a 220 graus. Adicione goiabada e queijo sobre a base e asse por 10 minutos.', 'Chef Olivia', 17),
('Pré-aqueça o forno a 220 graus. Adicione brigadeiro sobre a base e asse por 10 minutos.', 'Chef Paulo', 18),
('Pré-aqueça o forno a 220 graus. Adicione carne de sol sobre a base e asse por 15 minutos.', 'Chef Raquel', 19),
('Pré-aqueça o forno a 220 graus. Adicione camarão sobre a base e asse por 12-15 minutos.', 'Chef Sérgio', 20),
('Pré-aqueça o forno a 220 graus. Adicione provolone sobre a base e asse por 12-15 minutos.', 'Chef Tânia', 21),
('Pré-aqueça o forno a 220 graus. Adicione abobrinha sobre a base e asse por 12-15 minutos.', 'Chef Ulisses', 22),
('Pré-aqueça o forno a 220 graus. Adicione milho sobre a base e asse por 12-15 minutos.', 'Chef Valéria', 23),
('Pré-aqueça o forno a 220 graus. Adicione jalapeño sobre a base e asse por 12-15 minutos.', 'Chef Wagner', 24),
('Pré-aqueça o forno a 220 graus. Adicione tomate seco sobre a base e asse por 12-15 minutos.', 'Chef Xavier', 25),
('Pré-aqueça o forno a 220 graus. Adicione lombo sobre a base e asse por 12-15 minutos.', 'Chef Yara', 26),
('Pré-aqueça o forno a 220 graus. Adicione filé mignon sobre a base e asse por 12-15 minutos.', 'Chef Zeca', 27),
('Pré-aqueça o forno a 220 graus. Adicione aliche sobre a base e asse por 12-15 minutos.', 'Chef Aline', 28),
('Pré-aqueça o forno a 220 graus. Adicione carne moída sobre a base e asse por 12-15 minutos.', 'Chef Bruno', 29),
('Pré-aqueça o forno a 220 graus. Adicione costela sobre a base e asse por 12-15 minutos.', 'Chef Beto', 30);

-- Inserção de dados na tabela PIZZAIOLO
INSERT INTO Pizzaiolo (nome, salario) VALUES
('João Silva', 3000.00),
('Maria Oliveira', 3200.00),
('Carlos Souza', 3100.00),
('Ana Costa', 3300.00),
('Pedro Santos', 3400.00),
('Juliana Pereira', 3500.00),
('Rafael Almeida', 3600.00),
('Fernanda Ribeiro', 3700.00),
('Gabriel Lima', 3800.00),
('Larissa Carvalho', 3900.00),
('Bruno Rocha', 4000.00),
('Camila Martins', 4100.00),
('Rodrigo Gonçalves', 4200.00),
('Patrícia Silva', 4300.00),
('Lucas Costa', 4400.00),
('Mariana Fernandes', 4500.00),
('Felipe Souza', 4600.00),
('Isabela Oliveira', 4700.00),
('Henrique Santos', 4800.00),
('Bianca Almeida', 4900.00),
('Ricardo Lima', 5000.00),
('Sara Rodrigues', 5100.00),
('Thiago Pereira', 5200.00),
('Giovana Silva', 5300.00),
('Renato Carvalho', 5400.00),
('Beatriz Santos', 5500.00),
('Caio Almeida', 5600.00),
('Clara Martins', 5700.00),
('Igor Ribeiro', 5800.00),
('Antônio Gomes', 3500.00);

-- Inserção de dados na tabela FAZ (relacionamento entre Pizzaiolo e Pizza)
INSERT INTO Faz (pizzaiolo_id, pizza_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30);