-- Active: 1733068436815@@127.0.0.1@3306@alura
CREATE SCHEMA Alura

USE Alura;

/*
Modulo 1 e 2 alura

SELECT * 
FROM tabelafornecedores 
where país_de_origem = 'China';
#Filtro específico da tabela porem pode ter dado repetido.

SELECT DISTINCT Cliente 
FROM tabelapedidos 
where status = 'Entregue';
#Vai fazer a pesquisa porem sem repetir com filtro específico.

CREATE TABLE tabelaclientes(
    ID_Cliente INT PRIMARY KEY,
    Nome_Cliente VARCHAR(250),
    Informações_Contato VARCHAR(250)
);
#Criando tabelas para armazenar os dados dos clientes.

SELECT *
FROM tabelaclientes;

ALTER TABLE tabelaclientes
ADD Endereço_Cliente VARCHAR(250);
#Adicionando uma coluna na tabela com o ALTER TABLE 

DROP TABLE tabelaclientes;
#Apagando a tabela selecionada

DROP SCHEMA Alura;
#Apagando o banco de dados inteiro.

CREATE TABLE tabelacategorias(
    ID_Categoria INT PRIMARY KEY,
    Nome_Cateoria VARCHAR(250),
    Descricao_Categoria TEXT
);

Chave Estrangeira

CREATE TABLE tabelaprodutos(
    ID_Produto INT PRIMARY KEY,
    nome_Produto VARCHAR(250),
    Descricao_Produto TEXT,
    categoria_Produto INT,
    proco_Compra_Produto DECIMAL(10,2),
    unidade_Produto VARCHAR(50),
    fornecedor_Produto INT,
    data_Inclusao_Produto DATE,
    FOREIGN KEY (categoria_Produto) REFERENCES tabelacategorias (id_categoria),
    FOREIGN KEY (fornecedor_Produto) REFERENCES tabelafornecedores (id)
);


*/
/*Modulo 3 Alura*/

/*Inserindo Valores*/
/*
INSERT INTO tabelaclientes(
    id_cliente,
    nome_cliente,
    informações_contato,
    endereço_cliente
    )
VALUES 
    ('1','Ana Silva', 'ana.silva@email.com', 'Rua Flores - Casa 1');

  SELECT * From tabelaclientes;


INSERT INTO tabelaclientes
(ID_Cliente, Nome_Cliente, Informacoes_Contato, Endereco_Cliente)
  VALUES
  (1,'Ana Silva', 'ana.silva@email.com', 'Rua Flores, 10'),
  (2,'João Santos', 'joao.santos@provedor.com', 'Rua dos pinheiros, 25'),
  (3,'Maria Fernandes', 'maria.fernandes@email.com', 'Rua Santo Antonio, 10'),
  (4,'Carlos Pereira', 'carlos.pereira@email.com', 'Avenida rio, 67'),
  (5,'Patrícia Lima', 'patricia.lima@email.com','Rua das Flores, 123'),
  (6,'Rodrigo Almeida', 'rodrigo.almeida@email.com', 'Avenida Central, 456'),
  (7,'André Oliveira', 'andre.oliveira@email.com', 'Travessa do Sol, 789'),
  (8,'Isabela Rodrigues', 'isabela.rodrigues@email.com', 'Rua da Paz, 321'),
  (9,'Ricardo Sousa', 'ricardo.sousa@email.com', 'Alameda dos Sonhos, 654'),
  (10,'Luana Gomes', 'luana.gomes@email.com', 'Praceta das Estrelas, 987'),
  (11,'Juliano Costa', 'juliano.costa@email.com', 'Av. Principal, 234'),
  (12,'Sandra Ferreira', 'sandra.ferreira@email.com', 'Rua da Liberdade, 567'),
  (13,'Roberto Barbosa', 'roberto.barbosa@email.com', 'Rua da Esquina, 432'),
  (14,'Alice Santos', 'alice.santos@email.com', 'Largo da Amizade, 765'),
  (15,'Gustavo Lima', 'gustavo.lima@email.com', 'Avenida das Árvores, 876'),
  (16,'Carla Silva', 'carla.silva@email.com', 'Travessa das Aves, 345'),
  (17,'Daniel Oliveira', 'daniel.oliveira@email.com', 'Alameda dos Bosques, 678'),
  (18,'Luciana Almeida', 'luciana.almeida@email.com', 'Rua das Colinas, 123'),
  (19,'Fernando Pereira', 'fernando.pereira@email.com', 'Avenida das Ondas, 987'),
  (20,'Marina Lima', 'marina.lima@email.com', 'Praceta dos Girassóis, 456'),
  (21,'Lucas Rodrigues', 'lucas.rodrigues@email.com', 'Rua das Montanhas, 321'),
  (22,'Adriana Sousa', 'adriana.sousa@email.com', 'Travessa dos Rios, 654'),
  (23,'Eduardo Gomes', 'eduardo.gomes@email.com', 'Avenida das Pedras, 789'),
  (24,'Marcia Costa', 'marcia.costa@email.com', 'Largo das Praias, 234'),
  (25,'José Silva', 'jose.silva@email.com', 'Av. dos Ventos, 432'),
  (26,'Beatriz Alves', 'beatriz.alves@email.com', 'Rua dos Coqueiros, 765'),
  (27,'André Santos', 'andre.santos@email.com', 'Avenida dos Lagos, 876'),
  (28,'Carolina Lima', 'carolina.lima@email.com', 'Travessa das Neves, 345'),
  (29,'Fábio Rodrigues', 'fabio.rodrigues@email.com', 'Alameda dos Campos, 678'),
  (30,'Larissa Pereira', 'larissa.pereira@email.com', 'Rua dos Bosques, 123');
  
  SELECT * From tabelaclientes;
*/
/*
//Inserindo os Produtos.

INSERT INTO tabelaprodutos
(ID_Produto,
  nome_Produto,
  Descricao_Produto,
  categoria_Produto,
  proco_Compra_Produto,
  unidade_Produto,
  fornecedor_Produto,
  data_Inclusao_Produto)
  VALUES
  ('1', 'Smartphone X', 'Smartphone de última geração', 1, 699.99, 'Unidade', 1, '2023-08-01'),
  ('2', 'Notebook Pro', 'Notebook poderoso com tela HD', 2, 699.99, 'Unidade', 2, '2023-08-02'),
  ('3', 'Tablet Lite', 'Tablet compacto e leve', 3, 299.99, 'Unidade', 3, '2023-08-03'),
  ('4', 'TV LED 55', 'TV LED Full HD de 55 polegadas', 4, 599.99, 'Unidade', 4, '2023-08-04'),
  ('5', 'Câmera DSLR', 'Câmera digital DSLR com lente intercambiável', 5, 699.99, 'Unidade', 5, '2023-08-05'),
  ('6', 'Impressora Laser', 'Impressora laser de alta qualidade', 6, 349.99, 'Unidade', 6, '2023-08-06'),
  ('7', 'Mouse Óptico', 'Mouse óptico sem fio', 7, 19.99, 'Unidade', 7, '2023-08-07'),
  ('8', 'Teclado sem Fio', 'Teclado sem fio ergonômico', 8, 39.99, 'Unidade', 8, '2023-08-08'),
  ('9', 'Headphones Estéreo', 'Headphones estéreo com cancelamento de ruído', 9, 149.99, 'Unidade', 9, '2023-08-09'),
  ('10', 'Smartwatch', 'Smartwatch com monitor de frequência cardíaca', 10, 199.99, 'Unidade', 10, '2023-08-10'),
  ('11', 'Monitor 24', 'Monitor LED Full HD de 24 polegadas', 11, 149.99, 'Unidade', 11, '2023-08-11'),
  ('12', 'HD Externo 1TB', 'HD Externo portátil de 1TB', 12, 79.99, 'Unidade', 12, '2023-08-12'),
  ('13', 'Drone DJI', 'Drone DJI com câmera 4K', 13, 799.99, 'Unidade', 13, '2023-08-13'),
  ('14', 'Console de Jogos', 'Console de jogos de última geração', 14, 299.99, 'Unidade', 14, '2023-08-14'),
  ('15', 'Fones de Ouvido Bluetooth', 'Fones de ouvido Bluetooth com estojo de carregamento', 15, 59.99, 'Unidade', 15, '2023-08-15'),
  ('16', 'Projetor HD', 'Projetor HD de alta definição', 16, 499.99, 'Unidade', 16, '2023-08-16'),
  ('17', 'Impressora Multifuncional', 'Impressora multifuncional com scanner', 6, 249.99, 'Unidade', 6, '2023-08-17'),
  ('18', 'Notebook Ultrafino', 'Notebook ultrafino com SSD rápido', 2, 999.99, 'Unidade', 2, '2023-08-18'),
  ('19', 'Mouse Gamer', 'Mouse gamer com iluminação RGB', 7, 49.99, 'Unidade', 7, '2023-08-19'),
  ('20', 'Câmera de Ação', 'Câmera de ação à prova d''água', 5, 129.99, 'Unidade', 5, '2023-08-20'),
  ('21', 'Tablet Profissional', 'Tablet profissional para designers', 3, 499.99, 'Unidade', 3, '2023-08-21'),
  ('22', 'Monitor Curvo', 'Monitor LED curvo de 32 polegadas', 11, 299.99, 'Unidade', 11, '2023-08-22'),
  ('23', 'Teclado Mecânico', 'Teclado mecânico para jogos', 8, 89.99, 'Unidade', 8, '2023-08-23'),
  ('24', 'Console Portátil', 'Console de jogos portátil', 14, 199.99, 'Unidade', 14, '2023-08-24'),
  ('25', 'HD Externo 2TB', 'Smartphone de última geração', 1, 699.99, 'Unidade', 12, '2023-08-25'),
  ('26', 'Kit de Caixas de Som', 'Kit de caixas de som estéreo', 17, 29.99, 'Unidade', 17, '2023-08-26'),
  ('27', 'Câmera de Segurança', 'Câmera de segurança com visão noturna', 18, 79.99, 'Unidade', 18, '2023-08-27'),
  ('28', 'Projetor Mini', 'Projetor mini portátil', 16, 199.99, 'Unidade', 16, '2023-08-28'),
  ('29', 'Impressora a Jato de Tinta', 'Impressora a jato de tinta colorida', 6, 89.99, 'Unidade', 6, '2023-08-29'),
  ('30', 'Servidor de Rede', 'Servidor de rede empresarial', 19, 799.99, 'Unidade', 19, '2023-08-30'),
  ('31', 'Smartphone Y', 'Smartphone de última geração', 1, 699.99, 'Unidade', 1, '2023-08-01'),
  ('32', 'Notebook Avançado', 'Notebook poderoso com tela Full HD', 2, 1299.99, 'Unidade', 2, '2023-08-02'),
  ('33', 'Tablet Pro', 'Tablet profissional com caneta stylus', 3, 399.99, 'Unidade', 3, '2023-08-03'),
  ('34', 'TV OLED 65', 'TV OLED 4K de 65 polegadas', 4, 899.99, 'Unidade', 4, '2023-08-04'),
  ('35', 'Câmera Mirrorless', 'Câmera digital mirrorless de alta qualidade', 5, 799.99, 'Unidade', 5, '2023-08-05'),
  ('36', 'Impressora Jato de Tinta', 'Impressora jato de tinta colorida', 6, 299.99, 'Unidade', 6, '2023-08-06'),
  ('37', 'Mouse Bluetooth', 'Mouse Bluetooth ergonômico', 7, 29.99, 'Unidade', 7, '2023-08-07'),
  ('38', 'Teclado Mecânico RGB', 'Teclado mecânico RGB para gamers', 8, 59.99, 'Unidade', 8, '2023-08-08'),
  ('39', 'Fones de Ouvido Sem Fio', 'Fones de ouvido sem fio com cancelamento de ruído', 9, 169.99, 'Unidade', 9, '2023-08-09'),
  ('40', 'Smartwatch Pro', 'Smartwatch com GPS e monitor de saúde', 10, 249.99, 'Unidade', 10, '2023-08-10'),
  ('41', 'Monitor 27', 'Monitor LED Quad HD de 27 polegadas', 11, 199.99, 'Unidade', 11, '2023-08-11'),
  ('42', 'HD Externo 4TB', 'HD Externo portátil de 4TB', 12, 129.99, 'Unidade', 12, '2023-08-12'),
  ('43', 'Drone DJI Pro', 'Drone DJI com câmera 8K', 13, 1199.99, 'Unidade', 13, '2023-08-13'),
  ('44', 'Console de Jogos Elite', 'Console de jogos de elite com VR', 14, 599.99, 'Unidade', 14, '2023-08-14'),
  ('45', 'Fones de Ouvido com Cancelamento de Ruído', 'Fones de ouvido com cancelamento de ruído ativo', 15, 89.99, 'Unidade', 15, '2023-08-15'),
  ('46', 'Projetor 4K', 'Projetor 4K de alta definição', 16, 799.99, 'Unidade', 16, '2023-08-16'),
  ('47', 'Impressora Laser Colorida', 'Impressora laser colorida de alta qualidade', 6, 349.99, 'Unidade', 6, '2023-08-17'),
  ('48', 'Notebook Ultrafino SSD', 'Notebook ultrafino com SSD rápido', 2, 1099.99, 'Unidade', 2, '2023-08-18'),
  ('49', 'Mouse Gamer RGB', 'Mouse gamer com iluminação RGB personalizável', 7, 69.99, 'Unidade', 7, '2023-08-19'),
  ('50', 'Câmera de Ação Pro', 'Câmera de ação 4K à prova dágua', 5, 149.99, 'Unidade', 5, '2023-08-20'),
  ('51', 'Tablet Profissional', 'Tablet profissional para designers e artistas', 3, 499.99, 'Unidade', 3, '2023-08-21'),
  ('52', 'Monitor Curvo 34', 'Monitor LED curvo ultra-amplo de 34 polegadas', 11, 399.99, 'Unidade', 11, '2023-08-22'),
  ('53', 'Teclado Mecânico Retroiluminado', 'Teclado mecânico com retroiluminação', 8, 79.99, 'Unidade', 8, '2023-08-23'),
  ('54', 'Console Portátil Clássico', 'Console portátil com jogos clássicos', 14, 149.99, 'Unidade', 14, '2023-08-24'),
  ('55', 'HD Externo 5TB', 'HD Externo portátil de 5TB', 12, 149.99, 'Unidade', 12, '2023-08-25'),
  ('56', 'Kit de Caixas de Som Bluetooth', 'Kit de caixas de som Bluetooth estéreo', 17, 49.99, 'Unidade', 17, '2023-08-26'),
  ('57', 'Câmera de Segurança HD', 'Câmera de segurança HD com gravação em nuvem', 18, 99.99, 'Unidade', 18, '2023-08-27'),
  ('58', 'Projetor Portátil', 'Projetor portátil de alta qualidade', 16, 249.99, 'Unidade', 16, '2023-08-28'),
  ('59', 'Impressora a Laser Monocromática', 'Impressora a laser monocromática de alta velocidade', 6, 169.99, 'Unidade', 6, '2023-08-29'),
  ('60', 'Servidor de Rede Empresarial', 'Servidor de rede empresarial com suporte 24/7', 19, 1999.99, 'Unidade', 19, '2023-08-30');

 SELECT * From tabelaprodutos;

  DROP TABLE tabelaprodutos;

  */
  /*
PRAGMA table_info(tabelapedidos);
PRAGMA table_info(tabelapedidos);
INSERT INTO tabelapedidosgold
(ID_Pedido_Gold,
Data_Do_Pedido_Gold,
Status_Gold,
Total_Do_Pedido_Gold,
Cliente_Gold,
Data_De_Envio_Estimada_Gold)
--No select vai ser necessario alterar o tipo do c4 de texto para numero real, para pois  isso vai ajudar a fazer a verificação.
SELECT
c1, -- ID_Pedido_Gold
c2, -- Data_Do_Pedido_Gold
c3, -- Status_Gold
CAST(c4 AS REAL), -- Total_Do_Pedido_Gold convertido para número
c5, -- Cliente_Gold
c6  -- Data_De_Envio_Estimada_Gold
FROM tabelapedidos
WHERE CAST(c4 AS REAL) >= 400;
--renomeando as colunas das tabelas através de nomes alternativos.
SELECT
c1 AS ID_Pedido_Gold,
c2 AS Data_Do_Pedido_Gold,
c3 AS Status_Gold,
c4 AS Total_Do_Pedido_Gold,
c5 AS Cliente_Gold,
c6 AS Data_De_Envio_Estimada_Gold
FROM tabelapedidos
WHERE CAST(c4 AS REAL) >= 400;
--Alterando na tabela o c4 para formato numero
ALTER TABLE tabelapedidos
ADD COLUMN c4_numeric REAL;

UPDATE tabelapedidos
SET c4_numeric = CAST(c4 AS REAL);
--Atualizando na tabelapedidos que o c4 vai ser um numero real agora.

SELECT * FROM tabelapedidosgold;
--Verificando todos os dados que foram selecionados estão corretos

*/

/*
DROP TABLE IF EXISTS Funcionarios;

CREATE TABLE IF NOT EXISTS Funcionarios (
  ID_Funcionarios INT PRIMARY KEY,
  Nome_Funcionario TEXT,
  Cargo_Funcionario TEXT,
  Departamento_Funcionario TEXT,
  Salario_Funcionario DECIMAL(10,2),
  Data_Contratacao_Funcionario DATE
);
SELECT * FROM funcionarios;
INSERT INTO Funcionarios (ID_Funcionarios, Nome_Funcionario, Cargo_Funcionario, Departamento_Funcionario, Salario_Funcionario, Data_Contratacao_Funcionario)
VALUES
(32, 'João Silva', 'Desenvolvedor de Software', 'TI', 6000.00, '2023-10-24');
*/
/*
SELECT * FROM tabelaclientes where nome_cliente > 'C';
SELECT * FROM tabelapedidos where c3 = 'Entregue';
SELECT * FROM tabelaclientes;
select * FROM tabelapedidos;
*/
/*
SELECT * FROM tabelapedidos;

SELECT * FROM tabelapedidos where c4 >= 200.00 AND c3 = 'Pendente';

SELECT * FROM tabelapedidos where c3 = 'Processando' OR c3 = 'Pendente';

SELECT * FROM tabelapedidos where NOT c3 = 'Pendente';

SELECT * FROM tabelapedidos WHERE c6 BETWEEN '2023-08-01' AND '2023-09-01';
*/
/*
SELECT * FROM tabelaprodutos WHERE preco_compra_produto BETWEEN 200 AND 600 ORDER BY nome_produto;
SELECT * FROM tabelaprodutos WHERE preco_compra_produto BETWEEN 200 AND 600 ORDER BY data_inclusao_produto;
SELECT * FROM tabelaprodutos WHERE preco_compra_produto BETWEEN 200 AND 600 ORDER BY fornecedor_produto;
SELECT * FROM tabelaprodutos WHERE preco_compra_produto BETWEEN 200 AND 600 ORDER BY fornecedor_produto DESC;
*/
/*
Delete 

SELECT * FROM tabelafornecedores;

DELETE FROM tabelafornecedores
where c3 = 'Turquia';

DELETE FROM tabelafornecedores
WHERE c1 > 35; 

*/
