USE Pizzaria;

SELECT 
    Pizza.sabor AS Sabor,
    Pizzaiolo.nome AS Pizzaiolo,
    Receita.instrucoes AS Instrucoes
FROM 
    Faz
JOIN 
    Pizzaiolo ON Faz.pizzaiolo_id = Pizzaiolo.id
JOIN 
    Pizza ON Faz.pizza_id = Pizza.id
JOIN 
    Receita ON Pizza.id = Receita.pizza_id
ORDER BY 
    Pizza.sabor, Pizzaiolo.nome;
