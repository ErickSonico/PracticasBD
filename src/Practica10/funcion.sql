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
create or replace function animalesBioma (bioma VARCHAR(30)) returns int 
as $$
declare 
	fila animal%ROWTYPE;
	contador int := 0;
begin 
	for fila in 
	select IDAnimal
	from Animal a natural join Jaula b natural join Bioma c
	where c.Tipo = bioma

	loop 
		contador = contador + 1;
	end loop;
	return contador;
end;
$$ LANGUAGE plpgsql;

SELECT animalesBioma('Franja');
SELECT animalesBioma('Bosque Tropical');
