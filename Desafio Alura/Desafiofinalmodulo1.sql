<<<<<<< HEAD
#CREATE SCHEMA Alura;
Use Alura;

DROP TABLE Funcionarios;
CREATE TABLE IF NOT EXISTS Funcionarios(
    ID_Func INT PRIMARY KEY,
    Nome_Func VARCHAR(100),
    Dep_Func VARCHAR(100),
    Salario_Func FLOAT
);
INSERT INTO Funcionarios(ID_Func, Nome_Func, Dep_Func, Salario_Func)
VALUES
('1', 'Heitor Vieira', 'Financeiro', 4959.22),
('2', 'Daniel Campos', 'Vendas', 3884.44),
('3', 'Luiza Dias', 'TI', 8205.78),
('4', 'Davi Lucas Moraes', 'Financeiro', 8437.02),
('5', 'Pietro Cavalcanti', 'TI', 4946.88),
('6', 'Evelyn da Mata', 'Vendas', 5278.88),
('7', 'Isabella Rocha', 'Marketing', 4006.03),
('8', 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
('9', 'Brenda Cardoso', 'TI', 8853.34),
('10', 'Danilo Souza', 'TI', 8242.14);

SELECT * FROM funcionarios;

SELECT * FROM funcionarios WHERE Dep_Func = 'Vendas';

SELECT * FROM funcionarios WHERE Salario_Func > 5000.00;

SELECT DISTINCT Dep_Func FROM funcionarios;

update funcionarios
set Salario_Func = 7500.00
where Dep_Func = 'TI';

DELETE FROM funcionarios
where Salario_Func< 4000;

SELECT Nome_Func, Salario_Func
FROM funcionarios
WHERE Dep_Func = 'Vendas' AND Salario_Func >= 6000;

CREATE TABLE projetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100),
    id_gerente INT,
    FOREIGN KEY (id_gerente) REFERENCES funcionarios(ID_Func)
);
=======
#CREATE SCHEMA Alura;
Use Alura;

DROP TABLE Funcionarios;
CREATE TABLE IF NOT EXISTS Funcionarios(
    ID_Func INT PRIMARY KEY,
    Nome_Func VARCHAR(100),
    Dep_Func VARCHAR(100),
    Salario_Func FLOAT
);
INSERT INTO Funcionarios(ID_Func, Nome_Func, Dep_Func, Salario_Func)
VALUES
('1', 'Heitor Vieira', 'Financeiro', 4959.22),
('2', 'Daniel Campos', 'Vendas', 3884.44),
('3', 'Luiza Dias', 'TI', 8205.78),
('4', 'Davi Lucas Moraes', 'Financeiro', 8437.02),
('5', 'Pietro Cavalcanti', 'TI', 4946.88),
('6', 'Evelyn da Mata', 'Vendas', 5278.88),
('7', 'Isabella Rocha', 'Marketing', 4006.03),
('8', 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
('9', 'Brenda Cardoso', 'TI', 8853.34),
('10', 'Danilo Souza', 'TI', 8242.14);

SELECT * FROM funcionarios;

SELECT * FROM funcionarios WHERE Dep_Func = 'Vendas';

SELECT * FROM funcionarios WHERE Salario_Func > 5000.00;

SELECT DISTINCT Dep_Func FROM funcionarios;

update funcionarios
set Salario_Func = 7500.00
where Dep_Func = 'TI';

DELETE FROM funcionarios
where Salario_Func< 4000;

SELECT Nome_Func, Salario_Func
FROM funcionarios
WHERE Dep_Func = 'Vendas' AND Salario_Func >= 6000;

CREATE TABLE projetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100),
    id_gerente INT,
    FOREIGN KEY (id_gerente) REFERENCES funcionarios(ID_Func)
);
>>>>>>> 0a78ab65a0630a681625137b6775239713823722
DROP TABLE projetos;