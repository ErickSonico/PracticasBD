-- Veterinarios cuyo nombre empiece con la letra C: --

SELECT *
FROM Veterinario
WHERE Nombre LIKE 'C%';


-- Clientes que hayan nacido en el mes de Junio: --
SELECT 
FROM Cliente
WHERE Nacimiento LIKE '__-06-__' ;


-- Alimentos cuya fecha de caducidad este entre el 1 de enero de 2023 y del 18 de octubre de 2023 --
SELECT *
FROM Alimento
WHERE Caducidad BETWEEN '2023-01-01' AND '2023-10-18' 


-- Animal carnívoros: --
SELECT *
FROM Animal
WHERE Alimentacion = 'carnivoro';

-- Todos los clientes: --
SELECT *
FROM Cliente;