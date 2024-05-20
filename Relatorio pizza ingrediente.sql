USE Pizzaria;

SELECT 
    sabor AS Pizza,
    descricao AS Descricao,
    tamanho AS Tamanho,
    ingredientes AS Ingredientes
FROM 
    Pizza
ORDER BY 
    sabor;
