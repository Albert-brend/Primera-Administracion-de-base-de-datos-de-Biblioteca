-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2026 a las 18:09:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `binaes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id_autor`, `nombre`) VALUES
(1, 'Gabriel García Márquez'),
(2, 'Mario Vargas Llosa'),
(3, 'Isabel Allende'),
(4, 'Jorge Luis Borges'),
(5, 'Pablo Neruda'),
(6, 'Octavio Paz'),
(7, 'Julio Cortázar'),
(8, 'Carlos Fuentes'),
(9, 'Juan Rulfo'),
(10, 'Ernesto Sabato'),
(11, 'Miguel de Cervantes'),
(12, 'Federico García Lorca'),
(13, 'Antonio Machado'),
(14, 'Benito Pérez Galdós'),
(15, 'Camilo José Cela'),
(16, 'Rubén Darío'),
(17, 'José Martí'),
(18, 'Alejo Carpentier'),
(19, 'Guillermo Cabrera Infante'),
(20, 'Reinaldo Arenas'),
(21, 'Roberto Bolaño'),
(22, 'Ricardo Palma'),
(23, 'Ciro Alegría'),
(24, 'José María Arguedas'),
(25, 'Augusto Roa Bastos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Novela'),
(2, 'Cuento'),
(3, 'Poesía'),
(4, 'Historia'),
(5, 'Ciencia Ficción'),
(6, 'Biografía'),
(7, 'Ensayo'),
(8, 'Teatro'),
(9, 'Crónica'),
(10, 'Aventura'),
(11, 'Romance'),
(12, 'Terror'),
(13, 'Misterio'),
(14, 'Filosofía'),
(15, 'Política'),
(16, 'Economía'),
(17, 'Psicología'),
(18, 'Autoayuda'),
(19, 'Infantil'),
(20, 'Juvenil'),
(21, 'Fantasia'),
(22, 'Thriller'),
(23, 'Humor'),
(24, 'Arte'),
(25, 'Tecnología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombres`, `apellidos`, `telefono`, `correo`) VALUES
(1, 'Juan', 'Pérez', '55512301', 'juan.perez@correo.com'),
(2, 'María', 'González', '55512302', 'maria.gonzalez@correo.com'),
(3, 'Carlos', 'Martínez', '55512303', 'carlos.martinez@correo.com'),
(4, 'Ana', 'López', '55512304', 'ana.lopez@correo.com'),
(5, 'Luis', 'Hernández', '55512305', 'luis.hernandez@correo.com'),
(6, 'Laura', 'Torres', '55512306', 'laura.torres@correo.com'),
(7, 'Pedro', 'Ramírez', '55512307', 'pedro.ramirez@correo.com'),
(8, 'Sofía', 'Flores', '55512308', 'sofia.flores@correo.com'),
(9, 'Diego', 'Díaz', '55512309', 'diego.diaz@correo.com'),
(10, 'Valentina', 'Cruz', '55512310', 'valentina.cruz@correo.com'),
(11, 'Andrés', 'Morales', '55512311', 'andres.morales@correo.com'),
(12, 'Camila', 'Ortega', '55512312', 'camila.ortega@correo.com'),
(13, 'Ricardo', 'Vargas', '55512313', 'ricardo.vargas@correo.com'),
(14, 'Patricia', 'Castillo', '55512314', 'patricia.castillo@correo.com'),
(15, 'Fernando', 'Reyes', '55512315', 'fernando.reyes@correo.com'),
(16, 'Gabriela', 'Mendoza', '55512316', 'gabriela.mendoza@correo.com'),
(17, 'Héctor', 'Silva', '55512317', 'hector.silva@correo.com'),
(18, 'Mónica', 'Ríos', '55512318', 'monica.rios@correo.com'),
(19, 'Sergio', 'Gutiérrez', '55512319', 'sergio.gutierrez@correo.com'),
(20, 'Daniela', 'Herrera', '55512320', 'daniela.herrera@correo.com'),
(21, 'Alejandro', 'Núñez', '55512321', 'alejandro.nunez@correo.com'),
(22, 'Verónica', 'Soto', '55512322', 'veronica.soto@correo.com'),
(23, 'Manuel', 'Jiménez', '55512323', 'manuel.jimenez@correo.com'),
(24, 'Natalia', 'Rojas', '55512324', 'natalia.rojas@correo.com'),
(25, 'Ernesto', 'Aguilar', '55512325', 'ernesto.aguilar@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `nombre`, `id_autor`, `id_categoria`) VALUES
(1, 'Cien años de soledad', 1, 1),
(2, 'La ciudad y los perros', 2, 1),
(3, 'La casa de los espíritus', 3, 1),
(4, 'Ficciones', 4, 2),
(5, 'Veinte poemas de amor', 5, 3),
(6, 'El laberinto de la soledad', 6, 7),
(7, 'Rayuela', 7, 1),
(8, 'La muerte de Artemio Cruz', 8, 1),
(9, 'Pedro Páramo', 9, 1),
(10, 'El túnel', 10, 1),
(11, 'Don Quijote de la Mancha', 11, 1),
(12, 'Bodas de sangre', 12, 8),
(13, 'Campos de Castilla', 13, 3),
(14, 'Fortunata y Jacinta', 14, 1),
(15, 'La familia de Pascual Duarte', 15, 1),
(16, 'Azul', 16, 3),
(17, 'Versos sencillos', 17, 3),
(18, 'El reino de este mundo', 18, 1),
(19, 'Tres tristes tigres', 19, 1),
(20, 'El mundo alucinante', 20, 1),
(21, 'Los detectives salvajes', 21, 1),
(22, 'Tradiciones peruanas', 22, 9),
(23, 'El mundo es ancho y ajeno', 23, 1),
(24, 'Los ríos profundos', 24, 1),
(25, 'Yo el Supremo', 25, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `penalizaciones`
--

CREATE TABLE `penalizaciones` (
  `id_penalizacion` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `multa` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `penalizaciones`
--

INSERT INTO `penalizaciones` (`id_penalizacion`, `id_cliente`, `multa`) VALUES
(1, 1, 5),
(2, 2, 10),
(3, 3, 3),
(4, 4, 8),
(5, 5, 15),
(6, 6, 3),
(7, 7, 8),
(8, 8, 12),
(9, 9, 5),
(10, 10, 6),
(11, 11, 9),
(12, 12, 11),
(13, 13, 2),
(14, 14, 6),
(15, 15, 7),
(16, 16, 13),
(17, 17, 4),
(18, 18, 9),
(19, 19, 4),
(20, 20, 7),
(21, 21, 11),
(22, 22, 3),
(23, 23, 10),
(24, 24, 14),
(25, 25, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_libro` int(11) DEFAULT NULL,
  `fecha_inicio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fecha_finalizacion` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_cliente`, `id_libro`, `fecha_inicio`, `fecha_finalizacion`) VALUES
(1, 1, 1, '2026-01-05 06:00:00', '2026-01-19 06:00:00'),
(2, 2, 2, '2026-01-08 06:00:00', '2026-01-22 06:00:00'),
(3, 3, 3, '2026-01-12 06:00:00', '2026-01-26 06:00:00'),
(4, 4, 4, '2026-01-15 06:00:00', '2026-01-29 06:00:00'),
(5, 5, 5, '2026-01-20 06:00:00', '2026-02-03 06:00:00'),
(6, 6, 6, '2026-02-01 06:00:00', '2026-02-15 06:00:00'),
(7, 7, 7, '2026-02-05 06:00:00', '2026-02-19 06:00:00'),
(8, 8, 8, '2026-02-10 06:00:00', '2026-02-24 06:00:00'),
(9, 9, 9, '2026-02-14 06:00:00', '2026-02-28 06:00:00'),
(10, 10, 10, '2026-02-18 06:00:00', '2026-03-04 06:00:00'),
(11, 11, 11, '2026-03-01 06:00:00', '2026-03-15 06:00:00'),
(12, 12, 12, '2026-03-05 06:00:00', '2026-03-19 06:00:00'),
(13, 13, 13, '2026-03-10 06:00:00', '2026-03-24 06:00:00'),
(14, 14, 14, '2026-03-14 06:00:00', '2026-03-28 06:00:00'),
(15, 15, 15, '2026-03-18 06:00:00', '2026-04-01 06:00:00'),
(16, 16, 16, '2026-04-01 06:00:00', '2026-04-15 06:00:00'),
(17, 17, 17, '2026-04-05 06:00:00', '2026-04-19 06:00:00'),
(18, 18, 18, '2026-04-10 06:00:00', '2026-04-24 06:00:00'),
(19, 19, 19, '2026-04-15 06:00:00', '2026-04-29 06:00:00'),
(20, 20, 20, '2026-04-20 06:00:00', '2026-05-04 06:00:00'),
(21, 21, 21, '2026-05-01 06:00:00', '2026-05-15 06:00:00'),
(22, 22, 22, '2026-05-06 06:00:00', '2026-05-20 06:00:00'),
(23, 23, 23, '2026-05-12 06:00:00', '2026-05-26 06:00:00'),
(24, 24, 24, '2026-05-18 06:00:00', '2026-06-01 06:00:00'),
(25, 25, 25, '2026-06-01 06:00:00', '2026-06-15 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `rol` enum('admin','user') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombres`, `apellidos`, `rol`) VALUES
(1, 'Admin', 'Principal', 'admin'),
(2, 'Bibliotecario', 'Uno', 'user'),
(3, 'Bibliotecario', 'Dos', 'user'),
(4, 'Bibliotecario', 'Tres', 'user'),
(5, 'Bibliotecario', 'Cuatro', 'user'),
(6, 'Bibliotecario', 'Cinco', 'user'),
(7, 'Asistente', 'Uno', 'user'),
(8, 'Asistente', 'Dos', 'user'),
(9, 'Asistente', 'Tres', 'user'),
(10, 'Asistente', 'Cuatro', 'user'),
(11, 'Asistente', 'Cinco', 'user'),
(12, 'Operador', 'Uno', 'user'),
(13, 'Operador', 'Dos', 'user'),
(14, 'Operador', 'Tres', 'user'),
(15, 'Operador', 'Cuatro', 'user'),
(16, 'Operador', 'Cinco', 'user'),
(17, 'Supervisor', 'Uno', 'user'),
(18, 'Supervisor', 'Dos', 'user'),
(19, 'Supervisor', 'Tres', 'user'),
(20, 'Supervisor', 'Cuatro', 'user'),
(21, 'Supervisor', 'Cinco', 'user'),
(22, 'Auxiliar', 'Uno', 'user'),
(23, 'Auxiliar', 'Dos', 'user'),
(24, 'Auxiliar', 'Tres', 'user'),
(25, 'Admin', 'Secundario', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `penalizaciones`
--
ALTER TABLE `penalizaciones`
  ADD PRIMARY KEY (`id_penalizacion`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_libro` (`id_libro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `penalizaciones`
--
ALTER TABLE `penalizaciones`
  MODIFY `id_penalizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`),
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `penalizaciones`
--
ALTER TABLE `penalizaciones`
  ADD CONSTRAINT `penalizaciones_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
