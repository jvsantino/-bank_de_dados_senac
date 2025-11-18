DROP TABLE IF EXISTS Vendas;

DROP TABLE IF EXISTS Medicamentos;

DROP TABLE IF EXISTS Clientes;

CREATE TABLE Clientes (

    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,

    Nome VARCHAR(150) NOT NULL,

    Endereco TEXT,

    Telefone VARCHAR(20)

);

CREATE TABLE Medicamentos (

    ID_Medicamento INT PRIMARY KEY AUTO_INCREMENT,

    Nome VARCHAR(150) NOT NULL,

    categoria VARCHAR(50),

    Descricao TEXT,

    Estoque INT,

    Preco DECIMAL(10, 2)

);

CREATE TABLE Vendas (

    ID_Venda INT PRIMARY KEY AUTO_INCREMENT,

    ID_Cliente INT,

    ID_Medicamento INT,

    Data_Venda DATE,

    Quantidade INT,

    Valor_Total DECIMAL(10, 2),

    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),

    FOREIGN KEY (ID_Medicamento) REFERENCES Medicamentos(ID_Medicamento)

);

INSERT INTO Medicamentos (Nome, categoria, Descricao, Estoque, Preco) VALUES

('Dipirona', 'medicamento', 'Analgésico e antitérmico', 100, 5.00),

('Simeticona', 'medicamento', 'Antiflatulento', 50, 8.50);
 