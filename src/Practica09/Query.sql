-- Los veterinarios y cuidadores que comparten el apellido --
SELECT *
FROM Veterinario
WHERE ApellidoPaterno IN (SELECT ApellidoPaterno FROM Cuidador);

-- Los animales herbivoros que pertenezcan al bioma bosque templado --
SELECT Nombre
FROM Animal
WHERE Alimentacion = 'herbivoro' AND
IDBioma IN (SELECT IDBioma FROM Bioma WHERE Tipo = 'Bosque templado')

-- Biomas que posean almenos 10 animales

