CREATE DATABASE QUIZ;
USE QUIZ;
CREATE TABLE respostas_quiz (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100),
    quest01 CHAR(1),
    quest02 CHAR(1),
    quest03 CHAR(1),
    quest04 CHAR(1),
    quest05 CHAR(1),
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

