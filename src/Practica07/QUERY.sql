-- Veterinarios cuyo nombre empiece con la letra C: --

SELECT *
FROM Veterinario
WHERE Nombre LIKE 'C%';


-- Clientes que hayan nacido en el mes de Junio: --
SELECT *
FROM Cliente
WHERE EXTRACT(MONTH FROM Nacimiento) = '06';


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

-- Los animales herbivoros que pertenezcan al bioma bosque templado --
SELECT Nombre
FROM Animal
WHERE Alimentacion = 'herbivoro' AND
IDBioma IN
(SELECT IDBioma FROM Bioma WHERE Tipo = 'Bosque templado')