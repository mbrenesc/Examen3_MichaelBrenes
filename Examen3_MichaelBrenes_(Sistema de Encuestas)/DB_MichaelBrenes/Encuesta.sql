CREATE DATABASE Encuestas 
GO


USE Encuestas
go 

CREATE TABLE PreguntasEncuesta (
    EncuestaID INT PRIMARY KEY,
    NombreParticipante VARCHAR(65),
    FechaNacimiento INT CHECK (FechaNacimiento BETWEEN 18 AND 50),
    CorreoElectronico VARCHAR(80),
    PartidoPolitico VARCHAR(3) CHECK (PartidoPolitico IN ('PLN', 'PUSC', 'PAC')),
    Fecha DATE,
);

CREATE PROCEDURE AgregarEncuesta
    @NombreParticipante VARCHAR(255),
    @FechaNacimiento INT,
    @CorreoElectronico VARCHAR(255),
    @PartidoPolitico VARCHAR(3)
AS
BEGIN
    INSERT INTO PreguntasEncuesta (NombreParticipante, FechaNacimiento, CorreoElectronico, PartidoPolitico)
    VALUES (@NombreParticipante, @FechaNacimiento, @CorreoElectronico, @PartidoPolitico);
END;


CREATE PROCEDURE GenerarReporteEncuestas
AS
BEGIN
    SELECT * FROM PreguntasEncuesta ;
END;