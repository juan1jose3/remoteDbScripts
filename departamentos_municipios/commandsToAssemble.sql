SET NAMES utf8mb4;

-- Using the correct name now
CREATE DATABASE IF NOT EXISTS departamentos;
USE departamentos;

CREATE TABLE IF NOT EXISTS municipios (
    codigo_departamento INT,
    nombre_departamento VARCHAR(100),
    codigo_municipio INT,
    nombre_municipio VARCHAR(100),
    tipo VARCHAR(100),
    longitud DECIMAL(10,6),
    latitud DECIMAL(10,6)
) CHARACTER SET utf8mb4;

LOAD DATA INFILE '/var/lib/mysql-files/encoded-table.csv' 
INTO TABLE municipios
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;