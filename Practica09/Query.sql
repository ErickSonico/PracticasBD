-- Los veterinarios y cuidadores que comparten el apellido --

-- Los animales herbivoros que pertenezcan al bioma bosque templado --
SELECT Nombre
FROM Animal
WHERE Alimentacion = 'herbivoro' AND
IDBioma IN (SELECT IDBioma FROM Bioma WHERE Tipo = 'Bosque templado')