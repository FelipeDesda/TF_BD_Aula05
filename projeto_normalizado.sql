-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS healthtech_db;
USE healthtech_db;

-- Evita erro ao recriar tabelas
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Consulta;
DROP TABLE IF EXISTS Paciente;
DROP TABLE IF EXISTS Medico;
DROP TABLE IF EXISTS Convenio;

SET FOREIGN_KEY_CHECKS = 1;

-- =========================
-- Tabela Paciente
-- =========================
CREATE TABLE Paciente (
    cpf_paciente CHAR(11) PRIMARY KEY,
    nome_paciente VARCHAR(100) NOT NULL,
    telefone_paciente VARCHAR(20)
);

-- =========================
-- Tabela Medico
-- =========================
CREATE TABLE Medico (
    crm_medico VARCHAR(20) PRIMARY KEY,
    nome_medico VARCHAR(100) NOT NULL,
    especialidade_medico VARCHAR(100)
);

-- =========================
-- Tabela Convenio
-- =========================
CREATE TABLE Convenio (
    id_convenio INT PRIMARY KEY,
    nome_convenio VARCHAR(100) NOT NULL
);

-- =========================
-- Tabela Consulta
-- =========================
CREATE TABLE Consulta (
    id_consulta INT PRIMARY KEY,
    data_consulta DATE NOT NULL,
    hora_consulta TIME NOT NULL,
    valor_consulta DECIMAL(10,2),

    cpf_paciente CHAR(11),
    crm_medico VARCHAR(20),
    id_convenio INT,

    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(cpf_paciente),
    FOREIGN KEY (crm_medico) REFERENCES Medico(crm_medico),
    FOREIGN KEY (id_convenio) REFERENCES Convenio(id_convenio)
);