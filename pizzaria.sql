CREATE DATABASE AVAL;
USE AVAL;

CREATE TABLE TipoProduto (
  idTipoProduto INTEGER NOT NULL,
  DescTipo VARCHAR(40) NULL,
  PRIMARY KEY(idTipoProduto)
);

CREATE TABLE Pizzaria (
  idPizzaria INTEGER NOT NULL,
  NomePizzaria VARCHAR(40) NULL,
  PRIMARY KEY(idPizzaria)
);

CREATE TABLE Cliente (
  idCliente INTEGER NOT NULL,
  Nome VARCHAR(40) NULL,
  Telefone INTEGER NULL,
  PRIMARY KEY(idCliente)
);

CREATE TABLE Entregador (
  idEntregador INTEGER NOT NULL,
  Nome VARCHAR(40) NULL,
  Salario DECIMAL(8,2) NULL,
  PRIMARY KEY(idEntregador)
);

CREATE TABLE Produto (
  idProduto INTEGER NOT NULL,
  idTipoProduto INTEGER NOT NULL,
  Nome VARCHAR(40) NULL,
  Preco DECIMAL(8,2) NULL,
  PRIMARY KEY(idProduto),
  FOREIGN KEY(idTipoProduto)
    REFERENCES TipoProduto(idTipoProduto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Pedido (
  idPedido INTEGER NOT NULL,
  idPizzaria INTEGER NOT NULL,
  idEntregador INTEGER NOT NULL,
  idCliente INTEGER NOT NULL,
  PrecoTotal DECIMAL(8,2) NULL,
  DataPedido DATE NULL,
  PRIMARY KEY(idPedido),
  FOREIGN KEY(idCliente)
    REFERENCES Cliente(idCliente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idEntregador)
    REFERENCES Entregador(idEntregador)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idPizzaria)
    REFERENCES Pizzaria(idPizzaria)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE PedidoItem (
  idPedido INTEGER NOT NULL,
  idProduto INTEGER NOT NULL,
  Qtde INTEGER NULL,
  PrecoPedido DECIMAL(8,2) NULL,
  PRIMARY KEY(idPedido, idProduto),
  FOREIGN KEY(idPedido)
    REFERENCES Pedido(idPedido)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idProduto)
    REFERENCES Produto(idProduto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


INSERT INTO PIZZARIA VALUES(1,'Pizzaria Redonda');
SELECT * FROM PIZZARIA;

INSERT INTO CLIENTE VALUES(1,'João Marcelo',36241122);
INSERT INTO CLIENTE VALUES(2,'Paulo',36243344);
INSERT INTO CLIENTE VALUES(3,'Tiago',36245566);
INSERT INTO CLIENTE VALUES(4,'Augusto',36247788);
INSERT INTO CLIENTE VALUES(5,'Adriano',35611234);
INSERT INTO CLIENTE VALUES(6,'Angelo Augusto',35612345);
INSERT INTO CLIENTE VALUES(7,'Andresa Maria',3561-3456);
INSERT INTO CLIENTE VALUES(8,'Douglas Alcantara',35614567);
INSERT INTO CLIENTE VALUES(9,'Danilo Braga Jr',35615678);
INSERT INTO CLIENTE VALUES(10,'Daniela Peixoto',35616789);
INSERT INTO CLIENTE VALUES(11,'Francisco Antonio',35610987);
INSERT INTO CLIENTE VALUES(12,'Francisco Neto',35619876);
INSERT INTO CLIENTE VALUES(13,'Rosana Fernandes',35618765);
INSERT INTO CLIENTE VALUES(14,'Reginaldo Faria',35617654);
INSERT INTO CLIENTE VALUES(15,'Paulo Ari',35616543);
INSERT INTO CLIENTE VALUES(16,'Emerson Braga',35615432);
INSERT INTO CLIENTE VALUES(17,'Wagner Ribeiro',35614321);
INSERT INTO CLIENTE VALUES(18,'Amanda Bronca',35611324);
INSERT INTO CLIENTE VALUES(19,'Feliberto Feliz',35612435);
INSERT INTO CLIENTE VALUES(20,'Wagner Raposo',35614657);
INSERT INTO CLIENTE VALUES(21,'Sandra Mendonca',35611122);
INSERT INTO CLIENTE VALUES(22,'Elvis Augusto',35612233);
INSERT INTO CLIENTE VALUES(23,'Mario Salvador',35614455);
SELECT * FROM CLIENTE;


INSERT INTO ENTREGADOR VALUES(1,'Alceu Alves',500.00);
INSERT INTO ENTREGADOR VALUES(2,'Daniel Ferreira',500.00);
INSERT INTO ENTREGADOR VALUES(3,'Mario Sergio',500.00);
INSERT INTO ENTREGADOR VALUES(4,'Milton Jose',500.00);
INSERT INTO ENTREGADOR VALUES(5,'Angelo Cruz',500.00);
SELECT * FROM ENTREGADOR;


INSERT INTO TIPOPRODUTO VALUES(1,'Pizza');
INSERT INTO TIPOPRODUTO VALUES(2,'Refrigerante');
INSERT INTO TIPOPRODUTO VALUES(3,'Cerveja');
SELECT * FROM TIPOPRODUTO;


INSERT INTO PRODUTO VALUES(1,1,'Pizza Mussarela',11.00);
INSERT INTO PRODUTO VALUES(2,1,'Pizza Calabreza',13.00);
INSERT INTO PRODUTO VALUES(3,1,'Pizza Portuguesa',15.00);
INSERT INTO PRODUTO VALUES(4,1,'Pizza Escarola',14.00);
INSERT INTO PRODUTO VALUES(5,1,'Pizza Quatro Queijos',16.00);
INSERT INTO PRODUTO VALUES(6,1,'Pizza Frango Catupiry',15.00);
INSERT INTO PRODUTO VALUES(7,1,'Pizza Marguerita',12.00);
INSERT INTO PRODUTO VALUES(8,1,'Pizza Tomate Seco',14.00);
INSERT INTO PRODUTO VALUES(9,1,'Pizza Jardineira',15.00);
INSERT INTO PRODUTO VALUES(10,1,'Pizza Berinjela',18.00);
INSERT INTO PRODUTO VALUES(11,1,'Pizza Camarao',21.00);
INSERT INTO PRODUTO VALUES(12,1,'Pizza Cinco Queijos',16.00);
INSERT INTO PRODUTO VALUES(13,1,'Pizza Carne Catupiry',15.00);
INSERT INTO PRODUTO VALUES(14,1,'Pizza Bacalhau',22.00);
INSERT INTO PRODUTO VALUES(15,2,'Coca Cola',5.00);
INSERT INTO PRODUTO VALUES(16,2,'Guaraná Antarctica',4.00);
INSERT INTO PRODUTO VALUES(17,2,'Fanta Laranja',4.00);
INSERT INTO PRODUTO VALUES(18,2,'Fanta Uva',4.00);
INSERT INTO PRODUTO VALUES(19,2,'Sprite',4.00);
INSERT INTO PRODUTO VALUES(20,3,'Skol Lata',3.00);
INSERT INTO PRODUTO VALUES(21,3,'Boemia Lata',4.00);
INSERT INTO PRODUTO VALUES(22,3,'Skol Lata',3.00);
INSERT INTO PRODUTO VALUES(23,3,'Boemia Lata',4.00);
SELECT * FROM PRODUTO;


INSERT INTO PEDIDO VALUES(1,1,1,3,78.00,20110621);  
INSERT INTO PEDIDO VALUES(2,1,2,1,80.00,20110621);  
INSERT INTO PEDIDO VALUES(3,1,5,2,168.00,20110621); 
INSERT INTO PEDIDO VALUES(4,1,4,4,53.00,20110621);  
INSERT INTO PEDIDO VALUES(5,1,2,3,36.00,20110621);  
INSERT INTO PEDIDO VALUES(6,1,5,1,68.00,20110621);
INSERT INTO PEDIDO VALUES(7,1,4,16,117.00,20110621);
INSERT INTO PEDIDO VALUES(8,1,3,3,58.00,20110622);
INSERT INTO PEDIDO VALUES(9,1,3,4,43.00,20110622);
INSERT INTO PEDIDO VALUES(10,1,5,5,77.00,20110622);
INSERT INTO PEDIDO VALUES(11,1,4,6,84.00,20110622);
INSERT INTO PEDIDO VALUES(12,1,3,7,52.00,20110622);
INSERT INTO PEDIDO VALUES(13,1,2,8,123.00,20110622);
INSERT INTO PEDIDO VALUES(14,1,1,9,50.00,20110622);
INSERT INTO PEDIDO VALUES(15,1,1,10,72.00,20110622);
INSERT INTO PEDIDO VALUES(16,1,1,11,34.00,20110622);
INSERT INTO PEDIDO VALUES(17,1,4,12,103.00,20110622);
INSERT INTO PEDIDO VALUES(18,1,2,13,29.00,20110622);
INSERT INTO PEDIDO VALUES(19,1,5,14,11.00,20110622);
INSERT INTO PEDIDO VALUES(20,1,2,15,259.00,20110623);
INSERT INTO PEDIDO VALUES(21,1,4,16,74.00,20110623);
INSERT INTO PEDIDO VALUES(22,1,1,17,85.00,20110623);
INSERT INTO PEDIDO VALUES(23,1,3,18,53.00,20110623);
INSERT INTO PEDIDO VALUES(24,1,2,19,124.00,20110623);
INSERT INTO PEDIDO VALUES(25,1,1,20,45.00,20110623);
SELECT * FROM PEDIDO;


INSERT INTO PEDIDOITEM VALUES(1,3,3,45.00); 
INSERT INTO PEDIDOITEM VALUES(1,8,2,28.00); 
INSERT INTO PEDIDOITEM VALUES(1,15,1,5.00); 
INSERT INTO PEDIDOITEM VALUES(2,3,2,30.00); 
INSERT INTO PEDIDOITEM VALUES(2,8,2,28.00); 
INSERT INTO PEDIDOITEM VALUES(2,4,1,14.00); 
INSERT INTO PEDIDOITEM VALUES(2,16,2,8.00); 
INSERT INTO PEDIDOITEM VALUES(3,1,4,44.00); 
INSERT INTO PEDIDOITEM VALUES(3,2,3,39.00);  
INSERT INTO PEDIDOITEM VALUES(3,9,4,60.00);  
INSERT INTO PEDIDOITEM VALUES(3,15,5,25.00); 
INSERT INTO PEDIDOITEM VALUES(4,3,1,15.00); 
INSERT INTO PEDIDOITEM VALUES(4,8,1,14.00);  
INSERT INTO PEDIDOITEM VALUES(4,5,1,16.00); 
INSERT INTO PEDIDOITEM VALUES(4,16,2,8.00); 
INSERT INTO PEDIDOITEM VALUES(5,7,2,24.00); 
INSERT INTO PEDIDOITEM VALUES(5,16,3,12.00); 
INSERT INTO PEDIDOITEM VALUES(6,10,1,18.00); 
INSERT INTO PEDIDOITEM VALUES(6,13,2,30.00);  
INSERT INTO PEDIDOITEM VALUES(6,23,3,12.00); 
INSERT INTO PEDIDOITEM VALUES(6,19,2,8.00); 
INSERT INTO PEDIDOITEM VALUES(7,13,3,45.00); 
INSERT INTO PEDIDOITEM VALUES(7,7,4,48.00);  
INSERT INTO PEDIDOITEM VALUES(7,23,1,4.00); 
INSERT INTO PEDIDOITEM VALUES(7,15,4,20.00); 
INSERT INTO PEDIDOITEM VALUES(8,7,4,48.00); 
INSERT INTO PEDIDOITEM VALUES(8,15,2,10.00); 
INSERT INTO PEDIDOITEM VALUES(9,13,2,30.00); 
INSERT INTO PEDIDOITEM VALUES(9,23,2,8.00); 
INSERT INTO PEDIDOITEM VALUES(9,15,1,5.00); 
INSERT INTO PEDIDOITEM VALUES(10,12,2,32.00); 
INSERT INTO PEDIDOITEM VALUES(10,11,1,21.00);  
INSERT INTO PEDIDOITEM VALUES(10,21,1,4.00); 
INSERT INTO PEDIDOITEM VALUES(10,15,4,20.00); 
INSERT INTO PEDIDOITEM VALUES(11,6,1,15.00); 
INSERT INTO PEDIDOITEM VALUES(11,7,2,24.00); 
INSERT INTO PEDIDOITEM VALUES(11,9,3,45.00); 
INSERT INTO PEDIDOITEM VALUES(12,3,2,30.00); 
INSERT INTO PEDIDOITEM VALUES(12,8,1,14.00); 
INSERT INTO PEDIDOITEM VALUES(12,16,2,8.00); 
INSERT INTO PEDIDOITEM VALUES(13,1,3,33.00); 
INSERT INTO PEDIDOITEM VALUES(13,9,4,60.00);  
INSERT INTO PEDIDOITEM VALUES(13,15,6,30.00); 
INSERT INTO PEDIDOITEM VALUES(14,8,1,14.00);  
INSERT INTO PEDIDOITEM VALUES(14,5,2,32.00); 
INSERT INTO PEDIDOITEM VALUES(14,16,1,4.00); 
INSERT INTO PEDIDOITEM VALUES(15,7,3,36.00); 
INSERT INTO PEDIDOITEM VALUES(15,16,1,4.00); 
INSERT INTO PEDIDOITEM VALUES(15,17,2,24.00); 
INSERT INTO PEDIDOITEM VALUES(15,21,2,8.00); 
INSERT INTO PEDIDOITEM VALUES(16,14,1,22.00); 
INSERT INTO PEDIDOITEM VALUES(16,19,2,8.00);  
INSERT INTO PEDIDOITEM VALUES(16,18,1,4.00); 
INSERT INTO PEDIDOITEM VALUES(17,13,1,15.00); 
INSERT INTO PEDIDOITEM VALUES(17,4,6,84.00);  
INSERT INTO PEDIDOITEM VALUES(17,23,1,4.00); 
INSERT INTO PEDIDOITEM VALUES(18,7,2,24.00); 
INSERT INTO PEDIDOITEM VALUES(18,15,1,5.00); 
INSERT INTO PEDIDOITEM VALUES(19,1,1,11.00); 
INSERT INTO PEDIDOITEM VALUES(20,12,2,32.00); 
INSERT INTO PEDIDOITEM VALUES(20,11,2,42.00);  
INSERT INTO PEDIDOITEM VALUES(20,14,3,66.00); 
INSERT INTO PEDIDOITEM VALUES(20,8,5,70.00);  
INSERT INTO PEDIDOITEM VALUES(20,21,1,4.00); 
INSERT INTO PEDIDOITEM VALUES(20,15,5,25.00); 
INSERT INTO PEDIDOITEM VALUES(20,19,5,20.00); 
INSERT INTO PEDIDOITEM VALUES(21,8,5,70.00);  
INSERT INTO PEDIDOITEM VALUES(21,21,1,4.00); 
INSERT INTO PEDIDOITEM VALUES(22,1,1,11.00); 
INSERT INTO PEDIDOITEM VALUES(22,12,2,32.00); 
INSERT INTO PEDIDOITEM VALUES(22,11,2,42.00);  
INSERT INTO PEDIDOITEM VALUES(23,12,2,32.00); 
INSERT INTO PEDIDOITEM VALUES(23,11,1,21.00); 
INSERT INTO PEDIDOITEM VALUES(24,2,3,39.00);  
INSERT INTO PEDIDOITEM VALUES(24,9,4,60.00);  
INSERT INTO PEDIDOITEM VALUES(24,15,5,25.00);
INSERT INTO PEDIDOITEM VALUES(25,3,3,45.00); 
SELECT * FROM PedidoItem;

-- INNER JOIN: Exibir pedidos e o nome dos clientes
SELECT Pedido.idPedido, Cliente.Nome AS NomeCliente, Pedido.PrecoTotal, Pedido.DataPedido
FROM Pedido
    INNER JOIN Cliente ON Pedido.idCliente = Cliente.idCliente;

-- INNER JOIN: Exibir entregadores e o total de entregas que eles fizeram
SELECT
    Entregador.idEntregador,
    Entregador.Nome AS NomeEntregador,
    COUNT(Pedido.idPedido) AS TotalEntregas
FROM Entregador
    INNER JOIN Pedido ON Entregador.idEntregador = Pedido.idEntregador
GROUP BY
    Entregador.idEntregador,
    Entregador.Nome;

-- GROUP BY: Contar pedidos por cliente
SELECT Cliente.Nome, COUNT(Pedido.idPedido) AS TotalPedidos
FROM Cliente
    INNER JOIN Pedido ON Cliente.idCliente = Pedido.idCliente
GROUP BY
    Cliente.Nome;

-- GROUP BY: Contar produtos pedidos e sua quantidade total
SELECT Produto.Nome, SUM(PedidoItem.Qtde) AS QuantidadeTotal
FROM Produto
    INNER JOIN PedidoItem ON Produto.idProduto = PedidoItem.idProduto
GROUP BY
    Produto.Nome;

-- SUBSELECT: Exibir entregadores que entregaram mais de 3 pedidos
SELECT idEntregador, Nome
FROM Entregador
WHERE
    idEntregador IN (
        SELECT idEntregador
        FROM Pedido
        GROUP BY
            idEntregador
        HAVING
            COUNT(idPedido) > 3
    );

-- SUBSELECT: Exibir clientes que fizeram pedidos acima de R$ 100
SELECT idCliente, Nome
FROM Cliente
WHERE
    idCliente IN (
        SELECT idCliente
        FROM Pedido
        WHERE
            PrecoTotal > 100
    );

-- UNION: Exibir nomes de todos os clientes e entregadores em uma lista
SELECT Nome AS NomePessoa, 'Cliente' AS Tipo
FROM Cliente
UNION
SELECT Nome AS NomePessoa, 'Entregador' AS Tipo
FROM Entregador;

-- UNION: Exibir nomes de todas as pizzas e tipos de produtos
SELECT NomePizzaria AS Nome
FROM Pizzaria
UNION
SELECT DescTipo AS Nome
FROM TipoProduto;


-- Trigger

-- registrar o total de pedidos excluídos em uma tabela de auditoria:

CREATE TABLE AuditoriaPedido (
    idPedido INTEGER,
    DataExclusao DATETIME
);

CREATE TRIGGER TriggerPedidoDelete
AFTER DELETE ON Pedido
FOR EACH ROW
BEGIN
  INSERT INTO AuditoriaPedido (idPedido, DataExclusao)
  VALUES (OLD.idPedido, NOW());
END;


delete from pedidoitem where idpedido = 2;
delete p from pedido p where p.idpedido = 2;

select * from auditoriapedido;

-- STORED PROCEDURE: Adicionar comissão por entrega para um entregador específico
DELIMITER / /

CREATE PROCEDURE AdicionarComissao(
    IN p_idEntregador INT,
    IN p_comissaoPorEntrega DECIMAL(8,2)
)
BEGIN
    DECLARE totalEntregas INT;

    -- Contar quantos pedidos o entregador fez
    SELECT COUNT(*) INTO totalEntregas
    FROM Pedido
    WHERE idEntregador = p_idEntregador;

    -- Atualizar o salário com base na comissão por entrega
    UPDATE Entregador
    SET Salario = Salario + (totalEntregas * p_comissaoPorEntrega)
    WHERE idEntregador = p_idEntregador;
    
END //

DELIMITER;

-- STORED PROCEDURE: Visualizar pedidos de um cliente específico
CREATE PROCEDURE AumentarSalarioEntregador(IN Percentual DECIMAL(5,2))
BEGIN
  UPDATE Entregador
  SET Salario = Salario + (Salario * (Percentual / 100));

END;