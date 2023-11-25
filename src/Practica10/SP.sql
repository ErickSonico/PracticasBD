-- SP que se encarga de registrar un cliente
CREATE OR REPLACE PROCEDURE agregaCliente(idpersona IN INT, nombre IN VARCHAR(50), apellidopaterno IN VARCHAR(50), apellidomaterno IN VARCHAR(50), genero CHAR(1), nacimiento IN DATE)
AS $$
BEGIN
		
		IF idpersona <= 0 THEN
    	RAISE EXCEPTION 'El identificador no es válido';
  		END IF;
  	
  		BEGIN
    	idpersona := idpersona::INTEGER;
  		EXCEPTION
    	WHEN OTHERS THEN
      	RAISE EXCEPTION 'La edad debe ser un número entero.';
  		END;
  		
  		IF nombre ~ '[0-9]' or apellidopaterno ~ '[0-9]' or apellidomaterno ~ '[0-9]' THEN
    	RAISE EXCEPTION 'Los nombres y apellidos no pueden contener números';
  		END IF;
  		
  		IF genero NOT IN ('F', 'M') THEN 
  		RAISE EXCEPTION 'El género sólo puede ser F o M';
  		END IF;
  		
  		INSERT INTO cliente(idpersona, nombre, apellidopaterno, apellidomaterno, genero, nacimiento) VALUES (idpersona, nombre, apellidopaterno, apellidomaterno, genero, nacimiento);
  END;
  $$
  LANGUAGE plpgsql;
 
 
 CALL agregacliente(200, 'Mariano', 'Colexcua', 'Ramírez', 'M', '2002-04-21');
 CALL agregacliente(201, 'Marian0', 'Colexcua', 'Ramírez', 'M', '2002-04-21'); -- Lanza error
 
 -- SP que se encargue de eliminar un proveedor a traves de su id
 CREATE OR REPLACE PROCEDURE eliminaProveedor(idproveedor IN INT)
 AS $$
 BEGIN 
	 
 		IF idproveedor <= 0 THEN
    	RAISE EXCEPTION 'El identificador no es válido';
  		END IF;
  	
  		DELETE FROM proveedor WHERE idpersona = idproveedor;
  	
END;
$$
LANGUAGE plpgsql;

CALL eliminaproveedor(2);