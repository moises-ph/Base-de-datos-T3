create database Gimnasio;
use Gimnasio;

CREATE TABLE Instructores (
    id_instructor INT PRIMARY KEY,
    nombre_instructor VARCHAR(30) NOT NULL,
    telefono_instructor INT NOT NULL,
    correo_instructor VARCHAR(30) NOT NULL
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(30) NOT NULL,
    telefono_cliente INT NOT NULL,
    correo_cliente VARCHAR(30) NOT NULL,
    costo_mensual FLOAT NOT NULL
);
    
CREATE TABLE Maquinas (
    id_maquina INT AUTO_INCREMENT PRIMARY KEY,
    nombre_maquina VARCHAR(30) NOT NULL,
    funcionalidad TEXT,
    costo_hora FLOAT NOT NULL
);

CREATE TABLE Horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL
);
    
CREATE TABLE Reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_instructor INT,
    id_horario INT,
    tiempo_total TIME NOT NULL,
    costo_total FLOAT NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente)
        REFERENCES Clientes (id_cliente),
    CONSTRAINT fk_instructor FOREIGN KEY (id_instructor)
        REFERENCES Instructores (id_instructor),
    CONSTRAINT fk_horario FOREIGN KEY (id_horario)
        REFERENCES Horarios (id_horario)
);
    
CREATE TABLE reserva_maquinas (
    id_reserva_maquina INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT,
    id_maquina INT,
    costo_total_reserva FLOAT NOT NULL,
    tiempo_inicio TIME NOT NULL,
    tiempo_fin TIME NOT NULL,
    CONSTRAINT fk_reserva FOREIGN KEY (id_reserva)
        REFERENCES Reserva (id_reserva),
    CONSTRAINT fk_maquina FOREIGN KEY (id_maquina)
        REFERENCES Maquinas (id_maquina)
);