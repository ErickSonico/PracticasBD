-- Una función que reciba el identificador de veterinarios y regrese la edad del mismo.
CREATE LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION edadVeterinario(identificador INT)
RETURNS INT AS $$
DECLARE
    
    fechaNacimento DATE;
    edad INT;

BEGIN

    SELECT v.Nacimiento INTO fechaNacimento
    FROM Veterinario v
    WHERE v.IDPersona = identificador;

    edad := EXTRACT(YEAR FROM AGE(current_date, fechaNacimento));

    RETURN edad;

END;
$$ LANGUAGE plpgsql;

SELECT edadVeterinario(100)
FROM Veterinario v
where v.IDPersona = 50;


--ii. Una función que reciba el bioma y calcule el número de animales en ese bioma.
CREATE OR REPLACE FUNCTION animalesBioma (bioma VARCHAR(30)) RETURNS INT 
AS $$
DECLARE 
	fila animal%ROWTYPE;
	contador int := 0;
BEGIN 
	FOR fila IN 
	SELECT IDAnimal
	FROM Animal a NATURAL JOIN Jaula b NATURAL JOIN Bioma c
	WHERE c.Tipo = bioma

	LOOP 
		contador = contador + 1;
	END LOOP;
	RETURN contador;
END;
$$ LANGUAGE plpgsql;

SELECT animalesBioma('Franja');
SELECT animalesBioma('Bosque Tropical');
