-- Los veterinarios y cuidadores que comparten el apellido --
SELECT *
FROM Veterinario
WHERE ApellidoPaterno IN (SELECT ApellidoPaterno FROM Cuidador);

-- Los animales herbivoros que pertenezcan al bioma bosque templado --
SELECT Nombre
FROM Animal
WHERE Alimentacion = 'herbivoro' AND
IDBioma IN (SELECT IDBioma FROM Bioma WHERE Tipo = 'Bosque templado')

-- Alimentos de tipo semilla, que son distribuidos en el aviario.
SELECT Nombre
FROM Alimento 
WHERE Tipo = 'Semilla' AND
IDInsumo IN (SELECT IDInsumo FROM DistribuirAlimento WHERE IDBioma = 6)


-- Biomas que posean almenos 10 animales

