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

