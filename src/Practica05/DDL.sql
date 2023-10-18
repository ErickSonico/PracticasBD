DROP SCHEMA IF EXISTS public CASCADE;
CREATE SCHEMA public;


CREATE TABLE Proveedor (
   IDPersona INT,
   Nombre VARCHAR(50),
   ApellidoPaterno VARCHAR(50),
   ApellidoMaterno VARCHAR(50),
   RFC VARCHAR(18),
   Genero CHAR(1),
   InicioContrato DATE,
   FinContrato DATE,
   NumInt INT,
   NumExt INT,
   Calle VARCHAR(20),
   Colonia VARCHAR(20),
   CodigoPostal INT,
   Estado VARCHAR(20),
   Costo FLOAT8,
   Producto VARCHAR(20),
   Frecuencia VARCHAR(20)
);
ALTER TABLE Proveedor ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT IDPersonaC1 UNIQUE (IDPersona);
ALTER TABLE Proveedor ADD CONSTRAINT Proveedor_pk PRIMARY KEY (IDPersona);
ALTER TABLE Proveedor ALTER COLUMN Nombre SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT NombreC1 CHECK(Nombre <> '');
ALTER TABLE Proveedor ADD CONSTRAINT NombreC2 CHECK(Nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Proveedor ALTER COLUMN ApellidoPaterno SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT ApellidoPaternoC1 CHECK(ApellidoPaterno <> '');
ALTER TABLE Proveedor ADD CONSTRAINT ApellidoPaternoC2 CHECK(ApellidoPaterno ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Proveedor ALTER COLUMN ApellidoMaterno SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT ApellidoMaternoC1 CHECK(ApellidoMaterno <> '');
ALTER TABLE Proveedor ADD CONSTRAINT ApellidoMaternoC2 CHECK(ApellidoMaterno ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Proveedor ALTER COLUMN RFC SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT RFCC1 CHECK(RFC <> '');
ALTER TABLE Proveedor ALTER COLUMN Genero SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT GeneroC1 CHECK(Genero <> '');
ALTER TABLE Proveedor ADD CONSTRAINT GeneroC2 CHECK(Genero ~ '^[MF]$');
ALTER TABLE Proveedor ALTER COLUMN InicioContrato SET NOT NULL;
ALTER TABLE Proveedor ALTER COLUMN FinContrato SET NOT NULL;
ALTER TABLE Proveedor ALTER COLUMN NumInt SET NOT NULL;
ALTER TABLE Proveedor ALTER COLUMN NumExt SET NOT NULL;
ALTER TABLE Proveedor ALTER COLUMN Calle SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT CalleC1 CHECK(Calle <> '');
ALTER TABLE Proveedor ADD constraint CalleC2 CHECK(Calle ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Proveedor ALTER COLUMN Colonia SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT ColoniaC1 CHECK(Colonia <> '');
ALTER TABLE Proveedor ADD CONSTRAINT ColoniaC2 CHECK (Colonia ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Proveedor ALTER COLUMN CodigoPostal SET NOT NULL;
ALTER TABLE Proveedor ALTER COLUMN Estado SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT EstadoC1 CHECK(Estado <> '');
ALTER TABLE Proveedor ADD CONSTRAINT EstadoC2 CHECK(Estado ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Proveedor ALTER COLUMN Costo SET NOT NULL;
ALTER TABLE Proveedor ALTER COLUMN Producto SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT ProductoC1 CHECK(Producto <> '');
ALTER TABLE Proveedor ALTER COLUMN Frecuencia SET NOT NULL;
ALTER TABLE Proveedor ADD CONSTRAINT FrecuenciaC1 CHECK(Frecuencia <> '');


CREATE TABLE CorreoProveedor (
   IDPersona INT,
   Correo VARCHAR(25)
);
ALTER TABLE CorreoProveedor ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE CorreoProveedor ADD CONSTRAINT IDPersonaC2 UNIQUE (IDPersona);
ALTER TABLE CorreoProveedor ALTER COLUMN Correo SET NOT NULL;
ALTER TABLE CorreoProveedor ADD CONSTRAINT CorreoC1 UNIQUE (Correo);
ALTER TABLE CorreoProveedor ADD CONSTRAINT CorreoC2 CHECK(Correo <> '');
ALTER TABLE CorreoProveedor ADD CONSTRAINT CorreoC3 CHECK(Correo ~ '^[a-zA-Z0-9._-]*@[a-z.-]*\.[a-zA-Z]{2,}$');
ALTER TABLE CorreoProveedor ADD CONSTRAINT CorreoProveedor_pk PRIMARY KEY (IDPersona,Correo);
ALTER TABLE CorreoProveedor ADD CONSTRAINT CorreoProveedor_fk FOREIGN KEY (IDPersona) REFERENCES Proveedor(IDPersona);

CREATE TABLE TelefonoProveedor (
   IDPersona INT,
   Telefono CHAR(10)
);
ALTER TABLE TelefonoProveedor ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE TelefonoProveedor ADD CONSTRAINT IDPersonaC3 UNIQUE (IDPersona);
ALTER TABLE TelefonoProveedor ALTER COLUMN Telefono SET NOT NULL;
ALTER TABLE TelefonoProveedor ADD CONSTRAINT TelefonoC1 UNIQUE (Telefono);
ALTER TABLE TelefonoProveedor ADD CONSTRAINT TelefonoC2 CHECK(Telefono <> '');
ALTER TABLE TelefonoProveedor ADD CONSTRAINT TelefonoProveedor_pk PRIMARY KEY (IDPersona,Telefono);
ALTER TABLE TelefonoProveedor ADD CONSTRAINT TelefonoProveedor_fk FOREIGN KEY (IDPersona) REFERENCES Proveedor(IDPersona);


CREATE TABLE Alimento (
   IDInsumo INT,
   Nombre VARCHAR(20),
   Caducidad DATE,
   Cantidad FLOAT8,
   Refrigeracion BOOL,
   NumProveedor INT,
   Tipo VARCHAR(20)
);
ALTER TABLE Alimento ALTER COLUMN IDInsumo SET NOT NULL;
ALTER TABLE Alimento ADD CONSTRAINT IDInsumoC1 UNIQUE (IDInsumo);
ALTER TABLE Alimento ADD CONSTRAINT Alimento_pk PRIMARY KEY (IDInsumo);
ALTER TABLE Alimento ALTER COLUMN Nombre SET NOT NULL;
ALTER TABLE Alimento ADD CONSTRAINT NombreC1 CHECK(Nombre <> '');
ALTER TABLE Alimento ADD CONSTRAINT NombreC2 CHECK(Nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Alimento ALTER COLUMN Caducidad SET NOT NULL;
ALTER TABLE Alimento ALTER COLUMN Cantidad SET NOT NULL;
ALTER TABLE Alimento ALTER COLUMN Refrigeracion SET NOT NULL;
ALTER TABLE Alimento ALTER COLUMN NumProveedor SET NOT NULL;
ALTER TABLE Alimento ALTER COLUMN Tipo SET NOT NULL;
ALTER TABLE Alimento ADD CONSTRAINT TipoC1 CHECK(Tipo <> '');


CREATE TABLE Medicina (
   IDInsumo INT,
   Nombre VARCHAR(20),
   Caducidad DATE,
   Cantidad FLOAT8,
   Refrigeracion BOOL,
   NumProveedor INT,
   Tipo VARCHAR(20),
   Laboratorio VARCHAR(20)
);
ALTER TABLE Medicina ALTER COLUMN IDInsumo SET NOT NULL;
ALTER TABLE Medicina ADD CONSTRAINT IDInsumoC2 Unique(IDInsumo);
ALTER TABLE Medicina ADD CONSTRAINT IDInsumo_pk PRIMARY KEY (IDInsumo);
ALTER TABLE Medicina ALTER COLUMN Nombre SET NOT NULL;
ALTER TABLE Medicina ADD CONSTRAINT NombreC1 CHECK(Nombre <> '');
ALTER TABLE Medicina ADD CONSTRAINT NombreC2 CHECK(Nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Medicina ALTER COLUMN Caducidad SET NOT NULL;
ALTER TABLE Medicina ALTER COLUMN Cantidad SET NOT NULL;
ALTER TABLE Medicina ALTER COLUMN Refrigeracion SET NOT NULL;
ALTER TABLE Medicina ALTER COLUMN NumProveedor SET NOT NULL;
ALTER TABLE Medicina ALTER COLUMN Tipo SET NOT NULL;
ALTER TABLE Medicina ADD CONSTRAINT TipoC1 CHECK(Tipo <> '');
ALTER TABLE Medicina ALTER COLUMN Laboratorio SET NOT NULL;
ALTER TABLE Medicina ADD CONSTRAINT LaboratorioC1 CHECK(Laboratorio <> '');


CREATE TABLE Cliente (
   IDPersona INT,
   Nombre VARCHAR(50),
   ApellidoPaterno VARCHAR(50),
   ApellidoMaterno VARCHAR(50),
   Genero CHAR(1)
);
ALTER TABLE Cliente ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Cliente ALTER COLUMN Nombre SET NOT NULL;
ALTER TABLE Cliente ADD CONSTRAINT NombreC1 CHECK(Nombre <> '');
ALTER TABLE Cliente ADD CONSTRAINT NombreC2 CHECK(Nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Cliente ALTER COLUMN ApellidoPaterno SET NOT NULL;
ALTER TABLE Cliente ADD CONSTRAINT ApellidoPaternoC1 CHECK(ApellidoPaterno <> '');
ALTER TABLE Cliente ADD CONSTRAINT ApellidoPaternoC2 CHECK(ApellidoPaterno ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Cliente ALTER COLUMN ApellidoMaterno SET NOT NULL;
ALTER TABLE Cliente ADD CONSTRAINT ApellidoMaternoC1 CHECK(ApellidoMaterno <> '');
ALTER TABLE Cliente ADD CONSTRAINT ApellidoMaternoC2 CHECK(ApellidoMaterno ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Cliente ALTER COLUMN Genero SET NOT NULL;
ALTER TABLE Cliente ADD CONSTRAINT GeneroC1 CHECK(Genero <> '');
ALTER TABLE Cliente ADD CONSTRAINT GeneroC2 CHECK(Genero ~ '^[MF]$');
ALTER TABLE Cliente ADD CONSTRAINT Cliente_pk PRIMARY KEY (IDPersona);


CREATE TABLE CorreoCliente (
   IDPersona INT,
   Correo VARCHAR(25)
);
ALTER TABLE CorreoCliente ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE CorreoCliente ALTER COLUMN Correo SET NOT NULL;
ALTER TABLE CorreoCliente ADD CONSTRAINT CorreoC1 CHECK(Correo <> '');
ALTER TABLE CorreoCliente ADD CONSTRAINT Correo2 CHECK(Correo ~ '^[a-zA-Z0-9._-]*@[a-z.-]*\.[a-zA-Z]{2,}$');
ALTER TABLE CorreoCliente ADD CONSTRAINT CorreoCliente_pk PRIMARY KEY(IDPersona, Correo);


CREATE TABLE TelefonoCliente (
   IDPersona INT,
   Telefono CHAR(10)
);
ALTER TABLE TelefonoCliente ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE TelefonoCliente ALTER COLUMN Telefono SET NOT NULL;
ALTER TABLE TelefonoCliente ADD CONSTRAINT TelefonoC1 CHECK(Telefono <> '');
ALTER TABLE TelefonoCliente ADD CONSTRAINT TelefonoCLiente_pk PRIMARY KEY(IDPersona, Telefono);


CREATE TABLE Evento (
   IDEvento INT,
   Fecha DATE,
   Tipo VARCHAR(20),
   Capacidad INT
);
ALTER TABLE Evento ALTER COLUMN IDEvento SET NOT NULL;
ALTER TABLE Evento ALTER COLUMN Fecha SET NOT NULL;
ALTER TABLE Evento ALTER COLUMN Tipo SET NOT NULL;
ALTER TABLE Evento ADD CONSTRAINT TipoC1 CHECK(Tipo <> '');
ALTER TABLE Evento ALTER COLUMN Capacidad SET NOT NULL;
ALTER TABLE Evento ADD CONSTRAINT Evento_pk PRIMARY KEY (IDEvento);


CREATE TABLE Bioma (
IDBioma INT,
Tipo VARCHAR(10)
);
ALTER TABLE Bioma ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE Bioma ADD CONSTRAINT IDBiomaC1 UNIQUE (IDBioma);
ALTER TABLE Bioma ALTER COLUMN Tipo SET NOT NULL;
ALTER TABLE Bioma ADD CONSTRAINT TipoC1 CHECK(Tipo <> '');
ALTER TABLE Bioma ADD CONSTRAINT Bioma_pk PRIMARY KEY (IDBioma);


CREATE TABLE Jaula (
IDBioma INT,
NumJaula INT
);
ALTER TABLE Jaula ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE Jaula ALTER COLUMN NumJaula SET NOT NULL;
ALTER TABLE Jaula add CONSTRAINT NumJaulaC1 UNIQUE (NumJaula);
ALTER TABLE Jaula ADD CONSTRAINT Jaula_pk PRIMARY KEY (IDBioma, NumJaula);


CREATE TABLE Servicio (
IDBioma INT,
Tipo VARCHAR(10)
);
ALTER TABLE Servicio ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE Servicio ALTER COLUMN Tipo SET NOT NULL;
ALTER TABLE Servicio ADD CONSTRAINT TipoC1 CHECK(Tipo <> '');
ALTER TABLE Servicio ADD CONSTRAINT Servicio_pk PRIMARY KEY (IDBioma, Tipo);


CREATE TABLE Ticket (
NumTicket INT,
IDBioma INT,
Tipo VARCHAR(10),
IDPersona INT,
Fecha DATE,
CostoTotal FLOAT8,
Descuento FLOAT8
);
ALTER TABLE Ticket ALTER COLUMN NumTicket SET NOT NULL;
ALTER TABLE Ticket ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE Ticket ALTER COLUMN Tipo SET NOT NULL;
ALTER TABLE Ticket ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Ticket ALTER COLUMN Fecha SET NOT NULL;
ALTER TABLE Ticket ALTER COLUMN CostoTotal SET NOT NULL;
ALTER TABLE Ticket ALTER COLUMN Descuento SET NOT NULL;
ALTER TABLE Ticket ADD CONSTRAINT TipoC1 CHECK(Tipo <> '');
ALTER TABLE Ticket ADD CONSTRAINT Ticket_pk PRIMARY KEY (NumTicket, IDBioma, Tipo);
ALTER TABLE Ticket ADD CONSTRAINT Ticket_fkey
FOREIGN KEY(IDPersona) REFERENCES Cliente(IDPersona);


CREATE TABLE Cuidador (
IDPersona INT,
IDBioma INT,
Nombre VARCHAR(50),
ApellidoPaterno VARCHAR(50),
ApellidoMaterno VARCHAR(50),
RFC VARCHAR(18),
Genero CHAR(1),
InicioContrato DATE,
FinContrato DATE,
NumInt INT,
NumExt Int,
Calle VARCHAR(20),
Colonia VARCHAR(20),
CodigoPostal INT,
Estado VARCHAR(20),
Salario FLOAT8,
DiasLabor INT,
Horario TIME
);
ALTER TABLE Cuidador ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN Nombre SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN ApellidoPaterno SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN ApellidoMaterno SET NOT NULL;
ALTER TABLE Cuidador ADD CONSTRAINT NombreC1 CHECK(Nombre <> '');
ALTER TABLE Cuidador ADD CONSTRAINT NombreC2 CHECK(Nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Cuidador ADD CONSTRAINT ApellidoPaternoC1 CHECK(ApellidoPaterno <> '');
ALTER TABLE Cuidador ADD CONSTRAINT ApellidoPaternoC2 CHECK(ApellidoPaterno ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Cuidador ADD CONSTRAINT ApellidoMaternoC1 CHECK(ApellidoMaterno <> '');
ALTER TABLE Cuidador ADD CONSTRAINT ApellidoMaternoC2 CHECK(ApellidoMaterno ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Cuidador ALTER COLUMN RFC SET NOT NULL;
ALTER TABLE Cuidador ADD CONSTRAINT RFCC1 CHECK(RFC <> '');
ALTER TABLE Cuidador ALTER COLUMN Genero SET NOT NULL;
ALTER TABLE Cuidador ADD CONSTRAINT GeneroC1 CHECK(Genero <> '');
ALTER TABLE Cuidador ADD CONSTRAINT GeneroC2 CHECK(Genero ~ '^[MF]$');
ALTER TABLE Cuidador ALTER COLUMN InicioContrato SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN FinContrato SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN NumInt SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN NumExt SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN Calle SET NOT NULL;
ALTER TABLE Cuidador ADD CONSTRAINT CalleC1 CHECK(Calle <> '');
ALTER TABLE Cuidador ADD constraint CalleC2 CHECK(Calle ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Cuidador ALTER COLUMN Colonia SET NOT NULL;
ALTER TABLE Cuidador ADD CONSTRAINT ColoniaC1 CHECK(Colonia <> '');
ALTER TABLE Cuidador ADD CONSTRAINT ColoniaC2 CHECK (Colonia ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Cuidador ALTER COLUMN CodigoPostal SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN Estado SET NOT NULL;
ALTER TABLE Cuidador ADD CONSTRAINT EstadoC1 CHECK(Estado <> '');
ALTER TABLE Cuidador ADD CONSTRAINT EstadoC2 CHECK(Estado ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Cuidador ALTER COLUMN Salario SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN DiasLabor SET NOT NULL;
ALTER TABLE Cuidador ALTER COLUMN Horario SET NOT NULL;
ALTER TABLE Cuidador ADD CONSTRAINT Cuidador_pk PRIMARY KEY (IDPersona);
ALTER TABLE Cuidador ADD CONSTRAINT Cuidador_fkey
FOREIGN KEY(IDBioma) REFERENCES Bioma(IDBioma);


CREATE TABLE CorreoCuidador (
   IDPersona INT,
   Correo VARCHAR(25)
);
ALTER TABLE CorreoCuidador ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE CorreoCuidador ADD CONSTRAINT IDPersonaC4 UNIQUE (IDPersona);
ALTER TABLE CorreoCuidador ALTER COLUMN Correo SET NOT NULL;
ALTER TABLE CorreoCuidador ADD CONSTRAINT CorreoCuidadorC1 CHECK(Correo <> '');
ALTER TABLE CorreoCuidador ADD CONSTRAINT CorreoCuidadorC2 CHECK(Correo ~ '^[a-zA-Z0-9._-]*@[a-z.-]*\.[a-zA-Z]{2,}$');
ALTER TABLE CorreoCuidador ADD CONSTRAINT CorreoCuidador_pk PRIMARY KEY(IDPersona, Correo);


CREATE TABLE TelefonoCuidador (
   IDPersona INT NOT NULL,
   Telefono CHAR(10) CHECK(Telefono <> '') NOT NULL
);
ALTER TABLE TelefonoCuidador ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE TelefonoCuidador ALTER COLUMN Telefono SET NOT NULL;
ALTER TABLE TelefonoCuidador ADD CONSTRAINT TelefonoCuidadorC1 CHECK(Telefono <> '');
ALTER TABLE TelefonoCuidador ADD CONSTRAINT TelefonoCuidadorC2 UNIQUE(Telefono);
ALTER TABLE TelefonoCuidador ADD CONSTRAINT TelefonoCuidador_pk PRIMARY KEY(IDPersona, Telefono);


CREATE TABLE Animal (
   IDAnimal INT,
   IDPersona INT,
   NumJaula INT,
   IDBioma INT,
   Nombre VARCHAR(20),
   Especie TEXT,
   Sexo CHAR(1),
   Peso FLOAT8,
   Alimentacion TEXT,
   Altura FLOAT8
);
ALTER TABLE Animal ALTER COLUMN IDAnimal SET NOT NULL;
ALTER TABLE Animal ADD CONSTRAINT IDAnimalC1 UNIQUE (IDAnimal);
ALTER TABLE Animal ADD CONSTRAINT IDAnimal_pk PRIMARY KEY (IDAnimal);
ALTER TABLE Animal ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Animal ADD CONSTRAINT IDPersonaC5 UNIQUE (IDPersona);
ALTER TABLE Animal ADD CONSTRAINT IDPersona_fk FOREIGN KEY (IDPersona) REFERENCES Cuidador(IDPersona);
ALTER TABLE Animal ALTER COLUMN NumJaula SET NOT NULL;
ALTER TABLE Animal ADD CONSTRAINT NumJaulaC2 UNIQUE (NumJaula);
ALTER TABLE Animal ADD CONSTRAINT NumJaula_fk FOREIGN KEY (NumJaula,IDBioma) REFERENCES Jaula(NumJaula,IDBioma);
ALTER TABLE Animal ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE Animal ADD CONSTRAINT IDBiomaC2 UNIQUE(IDBioma);
ALTER TABLE Animal ALTER COLUMN Nombre SET NOT NULL;
ALTER TABLE Animal ADD CONSTRAINT NombreAnimalC1 CHECK(Nombre <> '');
ALTER TABLE Animal ADD CONSTRAINT NombreAnimalC2 CHECK(Nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Animal ALTER COLUMN Especie SET NOT NULL;
ALTER TABLE Animal ADD CONSTRAINT EspecieAnimalC1 CHECK(Especie <> '');
ALTER TABLE Animal ADD CONSTRAINT EspecieAnimalC2 CHECK(Nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Animal ALTER COLUMN Sexo SET NOT NULL;
ALTER TABLE Animal ADD CONSTRAINT SexoAnimalC1 CHECK(Sexo <> '');
ALTER TABLE Animal ADD CONSTRAINT SexoAnimalC2 CHECK(Sexo <> '^[M-F]*$');
ALTER TABLE Animal ALTER COLUMN Peso SET NOT NULL;
ALTER TABLE Animal ALTER COLUMN Alimentacion SET NOT NULL;
ALTER TABLE Animal ADD CONSTRAINT AlimentacionAnimalC1 CHECK(Alimentacion <> '');
ALTER TABLE Animal ALTER COLUMN Altura SET NOT NULL;


CREATE TABLE Veterinario (
   IDPersona INT,
   IDBioma INT,
   Nombre VARCHAR(50),
   ApellidoPaterno VARCHAR(50),
   ApellidoMaterno VARCHAR(50),
   RFC VARCHAR(18),
   Genero CHAR(1),
   InicioContrato DATE,
   FinContrato DATE,
   NumInt INT,
   NumExt Int,
   Calle VARCHAR(20),
   Colonia VARCHAR(20),
   CodigoPostal INT,
   Estado VARCHAR(20),
   Salario FLOAT8,
   DiasLabor INT,
   Horario TIME
);
ALTER TABLE Veterinario ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Veterinario ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE Veterinario ALTER COLUMN Nombre SET NOT NULL;
ALTER TABLE Veterinario ADD CONSTRAINT NombreC1 CHECK(Nombre <> '');
ALTER TABLE Veterinario ADD CONSTRAINT NombreC2 CHECK(Nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Veterinario ALTER COLUMN ApellidoPaterno SET NOT NULL;
ALTER TABLE Veterinario ADD CONSTRAINT ApellidoPaternoC1 CHECK(ApellidoPaterno <> '');
ALTER TABLE Veterinario ADD CONSTRAINT ApellidoPaternoC2 CHECK(ApellidoPaterno ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Veterinario ALTER COLUMN ApellidoMaterno SET NOT NULL;
ALTER TABLE Veterinario ADD CONSTRAINT ApellidoMaternoC1 CHECK(ApellidoMaterno <> '');
ALTER TABLE Veterinario ADD CONSTRAINT ApellidoMaternoC2 CHECK(ApellidoMaterno ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Veterinario ALTER COLUMN RFC SET NOT NULL;
ALTER TABLE Veterinario ADD CONSTRAINT RFCC1 CHECK(RFC <> '');
ALTER TABLE Veterinario ALTER COLUMN Genero SET NOT NULL;
ALTER TABLE Veterinario ADD CONSTRAINT GeneroC1 CHECK(Genero <> '');
ALTER TABLE Veterinario ADD CONSTRAINT GeneroC2 CHECK(Genero ~ '^[MF]$');
ALTER TABLE Veterinario ALTER COLUMN InicioContrato SET NOT NULL;
ALTER TABLE Veterinario ALTER COLUMN FinContrato SET NOT NULL;
ALTER TABLE Veterinario ALTER COLUMN NumInt SET NOT NULL;
ALTER TABLE Veterinario ALTER COLUMN NumExt SET NOT NULL;
ALTER TABLE Veterinario ALTER COLUMN Calle SET NOT NULL;
ALTER TABLE Veterinario ADD CONSTRAINT CalleC1 CHECK(Calle <> '');
ALTER TABLE Veterinario ADD constraint CalleC2 CHECK(Calle ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Veterinario ALTER COLUMN Colonia SET NOT NULL;
ALTER TABLE Veterinario ADD CONSTRAINT ColoniaC1 CHECK(Colonia <> '');
ALTER TABLE Veterinario ADD CONSTRAINT ColoniaC2 CHECK (Colonia ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Veterinario ALTER COLUMN CodigoPostal SET NOT NULL;
ALTER TABLE Veterinario ALTER COLUMN Estado SET NOT NULL;
ALTER TABLE Veterinario ADD CONSTRAINT EstadoC1 CHECK(Estado <> '');
ALTER TABLE Veterinario ADD CONSTRAINT EstadoC2 CHECK(Estado ~ '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Veterinario ALTER COLUMN Salario SET NOT NULL;
ALTER TABLE Veterinario ALTER COLUMN DiasLabor SET NOT NULL;
ALTER TABLE Veterinario ALTER COLUMN Horario SET NOT NULL;
ALTER TABLE Veterinario ADD CONSTRAINT Veterinario_pk PRIMARY KEY (IDPersona);


CREATE TABLE Especialidad (
   IDPersona INT,
   Especialidad VARCHAR(20)
);
ALTER TABLE Especialidad ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Especialidad ADD CONSTRAINT IDPersonaEspecialidadC1 UNIQUE(IDPersona);
ALTER TABLE Especialidad ALTER COLUMN Especialidad SET NOT NULL;
ALTER TABLE Especialidad ADD CONSTRAINT EspecialidadC1 CHECK (Especialidad <> '');
ALTER TABLE Especialidad ADD CONSTRAINT EspecialidadC2 CHECK (Especialidad <> '^[a-zA-ZáéíóúÁÉÍÓÚüÜ ]*$');
ALTER TABLE Especialidad ADD CONSTRAINT Especialidad_pk PRIMARY KEY(IDPersona,Especialidad);


CREATE TABLE CorreoVeterinario (
   IDPersona INT NOT NULL,
   Correo VARCHAR(25) CHECK(Correo <> '') CHECK(Correo ~ '^[a-zA-Z0-9._-]*@[a-z.-]*\.[a-zA-Z]{2,}$' ) NOT null
);
ALTER TABLE CorreoVeterinario ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE CorreoVeterinario ADD CONSTRAINT IDPersonaC6 UNIQUE (IDPersona);
ALTER TABLE CorreoVeterinario ALTER COLUMN Correo SET NOT NULL;
ALTER TABLE CorreoVeterinario ADD CONSTRAINT CorreoVeterinarioC1 CHECK(Correo <> '');
ALTER TABLE CorreoVeterinario ADD CONSTRAINT CorreoVeterinarioC2 CHECK(Correo ~ '^[a-zA-Z0-9._-]*@[a-z.-]*\.[a-zA-Z]{2,}$');
ALTER TABLE CorreoVeterinario ADD CONSTRAINT CorreoVeterinario_pk PRIMARY KEY(IDPersona, Correo);


CREATE TABLE TelefonoVeterinario (
   IDPersona INT NOT NULL,
   Telefono CHAR(10) CHECK(Telefono <> '') NOT NULL
);
ALTER TABLE TelefonoVeterinario ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE TelefonoVeterinario ALTER COLUMN Telefono SET NOT NULL;
ALTER TABLE TelefonoVeterinario ADD CONSTRAINT TelefonoVeterinarioC1 CHECK(Telefono <> '');
ALTER TABLE TelefonoVeterinario ADD CONSTRAINT TelefonoVeterinarioC2 UNIQUE(Telefono);
ALTER TABLE TelefonoVeterinario ADD CONSTRAINT TelefonoCuidador_pk1 PRIMARY KEY(IDPersona, Telefono);


CREATE TABLE ProveerAlimento (
IDPersona INT,
IDInsumo INT
);
ALTER TABLE ProveerAlimento ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE ProveerAlimento ALTER COLUMN IDInsumo SET NOT NULL;
ALTER TABLE ProveerAlimento ADD CONSTRAINT ProveerAlimento_fkey
FOREIGN KEY(IDPersona) REFERENCES Proveedor(IDPersona);
ALTER TABLE ProveerAlimento ADD CONSTRAINT ProveerAlimento_fkey2
FOREIGN KEY(IDInsumo) REFERENCES Alimento(IDInsumo);


CREATE TABLE ProveerMedicina (
IDPersona INT,
IDInsumo INT
);
ALTER TABLE ProveerMedicina ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE ProveerMedicina ALTER COLUMN IDInsumo SET NOT NULL;
ALTER TABLE ProveerMedicina ADD CONSTRAINT ProveerMedicina_fkey
FOREIGN KEY(IDPersona) REFERENCES Proveedor(IDPersona);
ALTER TABLE ProveerMedicina ADD CONSTRAINT ProveerMedicina_fkey2
FOREIGN KEY(IDInsumo) REFERENCES Medicina(IDInsumo);


CREATE TABLE Atender (
IDPersona INT,
IDAnimal INT,
IndicacionMedica text
);
ALTER TABLE Atender ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Atender ALTER COLUMN IDAnimal SET NOT NULL;
ALTER TABLE Atender ALTER COLUMN IndicacionMedica SET NOT NULL;
ALTER TABLE Atender ADD CONSTRAINT Atender_fkey
FOREIGN KEY(IDPersona) REFERENCES Veterinario(IDPersona);
ALTER TABLE Atender ADD CONSTRAINT Atender_fkey2
FOREIGN KEY(IDAnimal) REFERENCES Animal(IDAnimal);


CREATE TABLE DistribuirAlimento (
IDBioma INT,
IDInsumo INT
);
ALTER TABLE DistribuirAlimento ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE DistribuirAlimento ALTER COLUMN IDInsumo SET NOT NULL;
ALTER TABLE DistribuirAlimento ADD CONSTRAINT DistribuirAlimento_fkey
FOREIGN KEY(IDBioma) REFERENCES Bioma(IDBioma);
ALTER TABLE DistribuirAlimento ADD CONSTRAINT DistribuirAlimento_fkey2
FOREIGN KEY(IDInsumo) REFERENCES Alimento(IDInsumo);


CREATE TABLE DistribuirMedicina (
IDBioma INT,
IDInsumo INT
);
ALTER TABLE DistribuirMedicina ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE DistribuirMedicina ALTER COLUMN IDInsumo SET NOT NULL;
ALTER TABLE DistribuirMedicina ADD CONSTRAINT DistribuirMedicina_fkey
FOREIGN KEY(IDBioma) REFERENCES Bioma(IDBioma);
ALTER TABLE DistribuirMedicina ADD CONSTRAINT DistribuirMedicina_fkey2
FOREIGN KEY(IDInsumo) REFERENCES Medicina(IDInsumo);


CREATE TABLE Notificar (
IDPersona INT,
IDEvento INT
);
ALTER TABLE Notificar ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Notificar ALTER COLUMN IDEvento SET NOT NULL;
ALTER TABLE Notificar ADD CONSTRAINT Notificar_fkey
FOREIGN KEY(IDPersona) REFERENCES Cliente(IDPersona);
ALTER TABLE Notificar ADD CONSTRAINT Notificar_fkey2
FOREIGN KEY(IDEvento) REFERENCES Evento(IDEvento);


CREATE TABLE Asistir (
IDPersona INT,
IDEvento INT
);
ALTER TABLE Asistir ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Asistir ALTER COLUMN IDEvento SET NOT NULL;
ALTER TABLE Asistir ADD CONSTRAINT Asistir_fkey
FOREIGN KEY(IDEvento) REFERENCES Evento(IDEvento);
ALTER TABLE Asistir ADD CONSTRAINT Asistir_fkey2
FOREIGN KEY(IDPersona) REFERENCES Cliente(IDPersona);


CREATE TABLE Trabajar (
IDBioma INT,
IDPersona INT
);
ALTER TABLE Trabajar ALTER COLUMN IDPersona SET NOT NULL;
ALTER TABLE Trabajar ALTER COLUMN IDBioma SET NOT NULL;
ALTER TABLE Trabajar ADD CONSTRAINT Trabajar_fkey
FOREIGN KEY(IDBioma) REFERENCES Bioma(IDBioma);
ALTER TABLE Trabajar ADD CONSTRAINT Trabajar_fkey2
FOREIGN KEY(IDPersona) REFERENCES Veterinario(IDPersona);




