USE mundo_deportivo;
CREATE TABLE rol (
id_rol INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
rol VARCHAR(45) NOT NULL
);
INSERT INTO rol (rol)
VALUES ('Administrador'),
('coordinador'),
('participante'),
('espectador');
CREATE TABLE equipo(
id_equipo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_de_equipo VARCHAR (85) NOT NULL,
n°_participantes INT NOT NULL
);
INSERT INTO equipo(nombre_de_equipo,n°_participantes)
VALUES('Panteras fc',5),
('Yesca fc',5),
('Equipo Dinamita', 5),
('Lakers', 5),
('Pantera blancas', 5),
('Las chicas superpoderosas', 5);

CREATE TABLE usuario(
id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_rol INT NOT NULL,
id_equipo INT,
nombre VARCHAR (85) NOT NULL,
correo VARCHAR(85) UNIQUE NOT NULL,
contraseña VARCHAR(85) UNIQUE NOT NULL,
telefono VARCHAR(85)  NOT NULL,
FOREIGN KEY (id_rol) REFERENCES rol (id_rol) ON DELETE CASCADE,
FOREIGN KEY (id_equipo) REFERENCES equipo (id_equipo) ON DELETE CASCADE
);
INSERT INTO usuario (id_rol, id_equipo, nombre, correo, telefono, contraseña)
VALUES
(1,NULL,'Juan Pérez', 'juanperez@email.com', '3196113498','sol123'),
(2,NULL,'Ana Gómez', 'anagomez@email.com', '3226778976','luna456'),
(3,NULL,'Carlos Ruiz', 'carlosruiz@email.com', '3134689653','casa789'),
(4,NULL,'Laura Sánchez', 'laurasanchez@email.com', '3013665908','perro321'),
(3,NULL,'Pedro Díaz', 'pedrodiaz@email.com', '3244576432','gato654'),
(3,1,'Juan Rodriguez', 'juanRo@gmail.com', '3254576432','hola2025'),
(3,1, 'Andres Barragan', 'barraganandres@gmail.com', '3114576432','clave001'),
(3,1, 'Julian Ariza', 'julianari@gmail.com', '3444576432','prueba12'),
(3,1,'Camilo Puerro', 'puerro@gmail.com', '3244346432','mundo88'),
(3,1,'Eduardo Pérez', 'Eduarpe@gmail.com', '3244579432','amigo99'),
(3,1,'Carlos Benites', 'benitesca@yahoo.com', '3247576432','flor777'),
(3,2,'Felipe forero', 'feliforero@yahoo.com', '3254576432','rojo1234'),
(3,2,'Brayan Torres', 'torresbr@gmail.com', '3554576432','azul5678'),
(3,2,'Kevin Muñoz', 'kmuñoz@gmail.com', '3044576432','cielo123'),
(3,2,'jeison Duarte', 'jeiduarte@yahoo.com', '3024576432','tierra456'),
(4,NULL,'Andres portes', 'andresfeliportez@gmail.com', '32371430878','fuego999'),
(3,NULL,'Mariana Castaño', 'marianac@hotmail.com', '3159843261','agua000'),
(3,NULL,'Jorge Ramírez', 'jramirez@hotmai.com', '3228941053','solydeluna1'),
(3,NULL,'Silvia Contreras', 'silviac@hotmai.com', '3001582369','miusuario22'),
(3,NULL,'Esteban Londoño', 'estebanl@email.com', '3105694875','miacceso33'),
(3,NULL,'Natalia Ortiz', 'nortiz@hotmai.com', '3116543278','teclado44'),
(3,NULL,'Daniel Quintero', 'dquintero@email.com', '3128439157','pantalla55'),
(3,NULL,'Paula Vélez', 'paulav@hotmai.com', '3201578423','mouse66'),
(3,NULL,'Andrés Castillo', 'andresc@email.com', '3042867531','celular77'),
(3,NULL,'Valentina Ruiz', 'valenruiz@hotmai.com', '3237891560','correito88'),
(3,NULL,'Mauricio Torres', 'mauriciot@email.com', '3016842391','entrada99'),
(3,NULL,'Catalina Peña', 'cpenia@hotmai.com', '3175640932','saluda123'),
(3,NULL,'Leonardo Herrera', 'leoherrera@email.com', '3112907643','cristal456'),
(3,3,'Andrea Méndez', 'andream@hotmai.com', '3029587640','reloj789'),
(3,3,'Sebastián Mora', 'sebamora@email.com', '3224975382','tiempo321'),
(3,3,'Daniela Muñoz', 'danielamunoz@email.com', '3187562390','mañana654'),
(3,3,'Felipe Andrade', 'fandrade@gmail.com', '3031654729','tarde987'),
(3,3,'Laura Medina', 'lauramedina@email.com', '3002485763','noche000'),
(3,4,'Tomás Espinosa', 'tomase@gmail.com', '3190847621','soyyoo2025'),
(3,4,'Juliana López', 'julianalopez@gmail.com', '3218457960','aquiestoy1'),
(3,4,'Cristian Vargas', 'cristianv@email.com', '3057642938','entraya2'),
(3,4,'Manuela Ríos', 'manuelarios@gmail.com', '3169472580','accede3'),
(3,4,'Camilo Torres', 'camitorres@email.com', '3098675412','venconmigo4'),
(3,5,'Carolina Rincón', 'carorincon@gmail.com', '3127908543','usuario5'),
(3,5,'Diego Salazar', 'dsalazar@email.com', '3109852376','pase123'),
(3,5,'Marcela Torres', 'mtorres@gmail.com', '3145628901','canal456'),
(3,5,'Andrés Rojas', 'arojas@email.com', '3180456723','clave789'),
(3,5,'Valeria Cifuentes', 'valecifuentes@email.com', '3057893412','miemail00'),
(3,5,'Sergio Acosta', 'sacosta@gmail.com', '3216578490','pruebaok1'),
(3,6,'Camila Vargas', 'camivargas@email.com', '3201967432','intentelo2'),
(3,6,'Juan Esteban Mejía', 'juanemejia@hotmail.com', '3042867543','sinproblema3'),
(3,6,'Mariana Pérez', 'marianaperez@hotmail.com', '3190478526','funcionaya4'),
(3,6,'Mateo Herrera', 'mherrera@hotmail.com', '3175896041','ingresame5'),
(3,6,'Gabriela Cruz', 'gcruz@yahoo.com', '3126784903','daleclick6'),
(3,6,'Tomás Rodríguez', 'trodriguez@yahoo.com', '3225981347','contrasena7'),
(4,NULL,'Ana María Suárez', 'anamsuarez@yahoo.com', '3037584260','miclave8'),
(4,NULL,'Julián Castaño', 'julianc@yahoo.com', '3112967438','abrepuerta9'),
(4,NULL,'Lina Morales', 'linamorales@yahoo.com', '3098654721','dameacceso0'),
(4,NULL,'Nicolás Pineda', 'npineda@email.com', '3014983276','abrir123'),
(4,NULL,'Karen Zambrano', 'karenzambrano@yahoo.com', '3029841057','entrando456');

CREATE TABLE resultado(
id_resultado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ganador VARCHAR(85) NULL,
perdedor VARCHAR(85) NULL,
marcador VARCHAR(55) NOT NULL
);
INSERT INTO resultado (ganador, perdedor, marcador) VALUES
('Pedro Ruiz', 'Carlos Ruiz', 'Tiempo 2h 30m'),
('Panteras fc', 'Yesca fc', 'GOLES: 3-2'),
('Mariana Castaño', 'Jorge Ramírez', '21-28'),
('Esteban Londoño', 'Silvia Contreras', '40-20'),
('Daniel Quintero', 'Paula Vélez', '21-15'),
('Valentina Ruiz', 'Andrés Castillo', '40-30'),
('Catalina Peña', 'Mauricio Torres', '21-13'),
('Leonardo Herrera', 'Catalina Peña', '40-10'),
('Equipo Dinamita', 'Lakers', '76-63'),
('Las chicas superpoderosas', 'Panteras Blancas', '30-15');
drop table resultado;
drop table evento;
drop table inscripcion;
CREATE TABLE evento(
id_evento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_de_evento VARCHAR(85),
fecha_de_evento DATE NOT NULL,
deporte VARCHAR(85) NOT NULL,
direccion VARCHAR(85) NOT NULL,
id_resultado INT NOT NULL,
FOREIGN KEY (id_resultado) REFERENCES resultado (id_resultado) ON DELETE CASCADE
);
INSERT INTO evento (nombre_de_evento, fecha_de_evento, deporte, direccion, id_resultado)
VALUES
('Maratón Ciudadana', '2025-03-10', 'Maratón', 'Cl. 40h Sur #72r, Bogotá', 1),
('Final campeonato fut5', '2025-03-14', 'Fútbol', 'Av. La Esmeralda #57-1', 2),
('Partido PingPong', '2025-03-23', 'PingPong', 'CALLE 51A SUR # 82A-16', 3),
('Partido Tenis', '2025-03-26', 'Tenis', 'Parque Tímiza: Carrera 72 N Bis con calle 40 H Sur.', 4),
('Partido PingPong', '2025-03-23', 'PingPong', 'CALLE 51A SUR # 82A-16', 5),
('Partido Tenis', '2025-03-28', 'Tenis', 'Parque Tímiza: Carrera 72 N Bis con calle 40 H Sur.', 6),
('Partido PingPong', '2025-03-23', 'PingPong', 'CALLE 51A SUR # 82A-16', 7),
('Partido Tenis', '2025-03-30', 'Tenis', 'Parque Tímiza: Carrera 72 N Bis con calle 40 H Sur.', 8),
('Final campeonato basquetball', '2025-04-03', 'Basquetball', 'CALLE 51A SUR # 82A-17', 9),
('Final Campeonato Voleibol', '2025-04-05', 'Voleibol', 'Cl. 40h Sur #72r, Bogotá', 10);
CREATE TABLE inscripcion(
id_inscripcion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_usuario INT NOT NULL,
id_evento INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE,
FOREIGN KEY (id_evento) REFERENCES evento(id_evento) ON DELETE CASCADE
);
INSERT INTO inscripcion (id_usuario, id_evento) VALUES
(3, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(17, 3),
(18, 3),
(19, 4),
(20, 4),
(21, 3),
(22, 3),
(23, 4),
(24, 4),
(25, 3),
(26, 3),
(27, 4),
(28, 4),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6);