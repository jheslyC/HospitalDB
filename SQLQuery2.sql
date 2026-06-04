CREATE DATABASE HospitalDB;
GO

USE HospitalDB;
GO

CREATE TABLE Especialidades (
    id_especialidad INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL
);

CREATE TABLE Pacientes (
    id_paciente INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    apellido VARCHAR(80) NOT NULL,
    correo VARCHAR(100) NOT NULL
);

CREATE TABLE Medicos (
    id_medico INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    apellido VARCHAR(80) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    id_especialidad INT NOT NULL
);

ALTER TABLE Pacientes ADD telefono VARCHAR(20);
ALTER TABLE Pacientes ADD direccion VARCHAR(150);
ALTER TABLE Pacientes ADD genero VARCHAR(15);
ALTER TABLE Pacientes ADD tipo_sangre VARCHAR(5);
ALTER TABLE Pacientes ADD fecha_nacimiento DATE;
ALTER TABLE Medicos ADD experiencia INT;
ALTER TABLE Medicos ADD turno VARCHAR(30);

INSERT INTO Especialidades(nombre)
VALUES
('Cardiología'),
('Pediatría'),
('Neurología'),
('Dermatología'),
('Medicina General');

INSERT INTO Pacientes(nombre,apellido,correo)
VALUES
('Juan','Ramirez','juan@gmail.com'),
('Maria','Lopez','maria@gmail.com');

INSERT INTO Medicos(nombre,apellido,salario,id_especialidad)
VALUES
('Carlos','Ruiz',25000,1),
('Ana','Lopez',22000,2);

UPDATE Pacientes
SET telefono='8888-9999'
WHERE id_paciente=1;

UPDATE Medicos
SET experiencia=10
WHERE id_medico=1;

DELETE FROM Pacientes
WHERE id_paciente=2;
