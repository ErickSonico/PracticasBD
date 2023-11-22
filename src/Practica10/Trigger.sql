
-- 2. Un trigger que se encargue de contar las personas que asisten a un evento, 
-- y agregarlo como atributo en evento. Cada vez que se inserte, 
-- se debera actualizar el campo.
CREATE OR REPLACE FUNCTION contar() RETURNS TRIGGER
AS 
$$
DECLARE
	a INT;
BEGIN
	ALTER TABLE Evento ADD column IF NOT EXISTS Asistencia INTEGER;
	a:= (SELECT count(*) FROM Asistir WHERE IDEvento = NEW.IDEvento);
	UPDATE Evento SET Asistencia = a WHERE IDEvento = NEW.IDEvento;
return null;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER cuentaAsistentes
AFTER INSERT
ON Asistir
FOR EACH ROW
EXECUTE PROCEDURE contar();