CREATE DATABASE HospitalDB;
GO

SELECT name AS BaseDeDatos
FROM sys.databases;
GO

USE HospitalDB;
GO

CREATE TABLE Especialidades (
    id_especialidad INT IDENTITY(1,1),
    nombre VARCHAR(80),
    descripcion VARCHAR(150)
);
GO

CREATE TABLE Pacientes (
    id_paciente INT IDENTITY(1,1),
    nombre VARCHAR(80),
    apellido VARCHAR(80),
    correo VARCHAR(100),
    edad INT,
    fecha_registro DATE DEFAULT GETDATE()
);
GO

CREATE TABLE Medicos (
    id_medico INT IDENTITY(1,1),
    nombre VARCHAR(80),
    apellido VARCHAR(80),
    correo VARCHAR(100),
    salario DECIMAL(10,2),
    id_especialidad INT
);
GO

CREATE TABLE Habitaciones (
    id_habitacion INT IDENTITY(1,1),
    numero VARCHAR(10),
    tipo VARCHAR(50),
    estado VARCHAR(20),
    id_paciente INT NULL
);
GO

CREATE TABLE Citas (
    id_cita INT IDENTITY(1,1),
    id_paciente INT,
    id_medico INT,
    fecha_cita DATETIME,
    motivo VARCHAR(150)
);
GO

CREATE TABLE Tratamientos (
    id_tratamiento INT IDENTITY(1,1),
    id_paciente INT,
    descripcion VARCHAR(200),
    fecha_inicio DATE,
    fecha_fin DATE NULL,
    estado VARCHAR(20)
);
GO

CREATE TABLE Medicamentos (
    id_medicamento INT IDENTITY(1,1),
    nombre VARCHAR(100),
    laboratorio VARCHAR(100),
    fecha_vencimiento DATE,
    precio DECIMAL(10,2),
    stock INT,
    id_tratamiento INT NULL
);
GO
