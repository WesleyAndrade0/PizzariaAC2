USE Pizzaria;

-- Primeiro, vamos separar os ingredientes em linhas distintas usando uma tabela temporária.
WITH IngredientesSeparados AS (
    SELECT 
        Pizza.id AS pizza_id,
        Pizza.sabor AS Pizza,
        TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Pizza.ingredientes, ',', numbers.n), ',', -1)) AS Ingrediente
    FROM 
        Pizza
    JOIN 
        (SELECT 1 n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) numbers
    ON 
        CHAR_LENGTH(Pizza.ingredientes) - CHAR_LENGTH(REPLACE(Pizza.ingredientes, ',', '')) >= numbers.n - 1
)
-- Selecionamos os resultados organizados por ingrediente e pizza.
SELECT 
    Ingrediente,
    GROUP_CONCAT(DISTINCT Pizza ORDER BY Pizza SEPARATOR ', ') AS Pizzas
FROM 
    IngredientesSeparados
GROUP BY 
    Ingrediente
ORDER BY 
    Ingrediente;
