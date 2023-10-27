-- Veterinarios: --

SELECT *
FROM Veterinario
WHERE Nombre LIKE 'C%';


-- Clientes: --
SELECT *
FROM Cliente
WHERE MONTH('Nacimiento') = 6;

SELECT *
FROM Cliente


-- Alimentos: --
SELECT *
FROM Alimento
WHERE Caducidad BETWEEN '2023-01-01' AND '2023-10-18' 


-- Animal: --
SELECT *
FROM Animal
WHERE Alimentacion = 'carnivoro';