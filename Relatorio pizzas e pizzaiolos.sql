USE Pizzaria;

-- Cria um relatório de todas as pizzas e os pizzaiolos aptos a produzi
SELECT 
    Pizzaiolo.nome AS Pizzaiolo,
    Pizza.sabor AS Pizza,
    Pizza.descricao AS Descricao,
    Pizza.tamanho AS Tamanho,
    Pizza.ingredientes AS Ingredientes
FROM 
    Faz
JOIN 
    Pizzaiolo ON Faz.pizzaiolo_id = Pizzaiolo.id
JOIN 
    Pizza ON Faz.pizza_id = Pizza.id
ORDER BY 
    Pizza.sabor, Pizzaiolo.nome;
