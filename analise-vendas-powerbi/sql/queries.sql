-- 1. FATURAMENTO TOTAL
SELECT SUM(i.quantidade * p.preco) AS Faturamento_Total
FROM itens_pedido i JOIN produtos p ON p.id_produto = i.id_produto;

-- 2. TOTAL DE PEDIDOS
SELECT COUNT(id_pedido) AS Total_Pedidos FROM pedidos;

-- 3. TICKET MÉDIO
SELECT SUM(i.quantidade * p.preco) / COUNT(DISTINCT pd.id_pedido) AS Ticket_Medio
FROM produtos p JOIN itens_pedido i ON p.id_produto = i.id_produto
JOIN pedidos pd ON pd.id_pedido = i.id_pedido;

-- 4. FATURAMENTO POR CATEGORIA
SELECT p.categoria, SUM(i.quantidade * p.preco) AS Total_Faturado
FROM itens_pedido i JOIN produtos p ON p.id_produto = i.id_produto
GROUP BY p.categoria ORDER BY Total_Faturado DESC;

-- 5. TOP 5 PRODUTOS
WITH ranking AS (
    SELECT p.nome_produto, SUM(i.quantidade) AS Total_Vendidos,
    ROW_NUMBER() OVER (ORDER BY SUM(i.quantidade) DESC) AS Top5
    FROM produtos p JOIN itens_pedido i ON p.id_produto = i.id_produto
    GROUP BY p.id_produto
) SELECT * FROM ranking WHERE Top5 <= 5;

-- 6. TOP 5 CLIENTES
WITH gasto AS (
    SELECT c.nome_cliente, SUM(i.quantidade * p.preco) AS Total_Gasto,
    ROW_NUMBER() OVER (ORDER BY SUM(i.quantidade * p.preco) DESC) AS Top5
    FROM clientes c JOIN pedidos pd ON c.id_cliente = pd.id_cliente
    JOIN itens_pedido i ON i.id_pedido = pd.id_pedido
    JOIN produtos p ON p.id_produto = i.id_produto
    GROUP BY c.id_cliente
) SELECT * FROM gasto WHERE Top5 <= 5;

-- 7. FATURAMENTO POR MÊS
SELECT DATE_FORMAT(pd.data_pedido, '%Y-%m') AS Mes, SUM(i.quantidade * p.preco) AS Faturamento
FROM pedidos pd JOIN itens_pedido i ON pd.id_pedido = i.id_pedido
JOIN produtos p ON p.id_produto = i.id_produto
GROUP BY Mes ORDER BY Mes;
