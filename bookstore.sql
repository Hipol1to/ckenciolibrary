-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2023 at 02:38 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `Customer` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Product` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Quantity` int(5) NOT NULL,
  PRIMARY KEY (`Customer`,`Product`),
  KEY `Product` (`Product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Customer`, `Product`, `Quantity`) VALUES
('suyashgulati', 'ENT-12', 1),
('suyash', 'NEW-4', 5),
('suyashgulati', 'ENT-1', 3),
('suyash', 'BIO-3', 5),
('suyashgulati', 'CHILD-1', 6),
('suyashgulati', 'NEW-1', 1),
('nimisha', 'NEW-2', 1),
('nimisha', 'ENT-7', 1),
('suyash', 'ENT-12', 1),
('suyashgulati', 'ENT-1222', 1),
('suyash', 'ENT-1', 1),
('si', 'NEW-2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `PID` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MRP` float NOT NULL,
  `Price` float NOT NULL,
  `Discount` int(11) DEFAULT NULL,
  `Available` int(11) NOT NULL,
  `Publisher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Edition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `Language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` int(5) DEFAULT NULL,
  `weight` int(4) DEFAULT '500',
  PRIMARY KEY (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PID`, `Title`, `Author`, `MRP`, `Price`, `Discount`, `Available`, `Publisher`, `Edition`, `Category`, `Description`, `Language`, `page`, `weight`) VALUES
('NEW-1', 'Seis ensayos en busca de nuestra expresión', 'Pedro Henríquez Ureña', 175, 113, 35, 12, 'Instituto Superior de Formación Docente Salomé Ureña', '1', 'New', 'Seis ensayos en busca de nuestro expresión (1928) explora los principios de la expresión (la identidad) hispanoamericana, en los inicios de la modernización y globalización del siglo XX. Por primera vez, una de las obras cumbres de Pedro Henríquez Ureña en edición crítica. Esta edición recupera la reseña hecha por Jorge Luis Borges de esta obra, hasta ahora desconocida.', 'Spanish', 280, 500),
('NEW-2', 'Ensayos de Isla Abierta', 'Aída Cartagena Portalatín', 129, 68, 43, 6, 'Biblioteca de la Literatura Dominicana', '9', 'new', 'Estos Ensayos de Isla Abierta de Aida Cartagena Portalatín constituyen una excelente vía de acceso al universo personal e intelectual de una de nuestras más entrañables escritoras dominicanas. No es posible leerlos sin verla articular pensamiento y sensibilidad, amplitud de miras y generosidad, firmeza de criterio y claridad. Escritos cuando las palabras todavía hallaban resonancia, estos textos nos muestran a una autora en conexión perpetua con su época. Manuel García Cartagena.', 'Spanish', 320, 500),
('NEW-3', 'Poesía Completa', 'Pedro Mir', 595, 400, 33, 15, 'Biblioteca de las Letras Dominicanas', '1', 'new', 'La obra poética reunida de un gran autor latinoamericano, el poeta dominicano Pedro Mir (San Pedro de Macorís, 3 de junio de 1913-Santo Domingo, 11 de julio del 2000).', 'Spanish', 280, 500),
('NEW-4', 'La otra Penelope', 'Andres L. Mateo', 435, 289, 34, 22, 'Espacio Colaborativo', '2', 'new', 'La novela La otra Penélope, en la que la prosa es un elemento de honda repercusión metafórica, ha sido construida con la maestría de un relator… En la novela la ciudad es casi un personaje.', 'Spanish', 1000, 500),
('LIT-13', 'Cien años de soledad', 'Gabriel García Márquez', 175, 113, 35, 8, 'Editorial Sudamericana', '1', 'Literature & Fiction', 'Concebida por Gabo en uno de sus peores momentos económicos, poco podía prever el autor que su obra, tras ser enviada a la editorial argentina Sudamericana en 1967, se convertiría en un éxito indiscutible. La historia de la familia Buendía, habitante del perdido pueblo de Macondo, no solo sirvió para narrar la historia de Latinoamérica a lo largo de varias generaciones, sino para acuñar el boom de un realismo mágico que imperó durante las décadas de las 60 y 70 para convertirse en una marca insignia de las letras iberoamericanas. De los 10 mejores libros de Gabriel García Márquez esta es su obra magna, sin duda.', 'Spanish', 248, 500),
('LIT-14', 'El amor en los tiempos del cólera', 'Gabriel García Márquez', 175, 113, 35, 7, 'La Oveja Negra Ltda', '1', 'Literature & Fiction', 'En más de una ocasión, Gabo reconoció que El amor en los tiempos del cólera era su novela favorita. Uno de los motivos reside en la historia de los propios padres del autor como fuente de inspiración para el romance de Fermina Daza, casada con el médico Juvenal Urbino, y el solitario Florentino Ariza en un pueblo portuario del Caribe colombiano. Desarrollada a lo largo de la vida de los tres protagonistas, El amor en los tiempos del cólero es como un bolero lento, uno que te sumerge en los pensamientos de unos personajes para los que el tiempo es la única esperanza. Publicada en 1985, la novela fue todo un éxito y (des)mereció una adaptación cinematográfica llevada a cabo en 2007.', 'Spanish', 288, 500),
('LIT-15', 'Crónica de una muerte anunciada', 'Gabriel García Márquez', 175, 113, 35, 8, 'Editorial Tirant Lo Blanch', '1', 'Literature & Fiction', 'Desde la primera página ya conoces el final, pero el gancho consiste en saber cómo encajan las piezas del puzzle que llevó a la muerte de Santiago Nasar, acusado por Ángela Vicario, recién casada con el médico Bayardo San Román, de ser el causante de la pérdida de su virginidad. La historia del crimen que todo el mundo conocía pero nadie se atrevió a detener está más cerca de novela policíaca y recibe varias influencias del Gabo más periodístico. Publicada en 1981, Crónica de una muerte anunciada está inspirada en el caso real de un hombre asesinado en un pueblo colombiano en 1951.', 'Spanish', 256, 500),
('LIT-16', 'El coronel no tiene quien le escriba', 'Gabriel Garcia Marquez', 175, 123, 30, 8, 'Alfaguara', '1', 'Literature & Fiction', 'La segunda obra publicada de García Márquez fue esta novela corta que a pesar de su extensión, encerraba una historia tan intensa como sutil. El protagonista, un coronel que cada mañana acude al puerto esperando la pensión por sus servicios en la Guerra de los Mil Días, se pasea por las calles de un pueblo colombiano, lidia con su esposa y trata de alimentar al gallo de pelea de su fallecido hijo en mitad de una pobreza creciente. La novela fue publicada en  1961 y Gabo lo consideraba su mejor libro.', 'Spanish', 256, 500),
('LIT-17', 'Hay un país en el mundo (1949)', 'Pedro Mir', 176, 114, 35, 8, 'Editora Taller, C. por A.', '1', 'Literature & Fiction', 'Obra dedicada a su patria, que le otorgó reconocimiento continental.', 'Spanish', 257, 500),
('LIT-18', 'El huracán Neruda (1975)', 'Pedro Mir', 176, 116, 35, 10, 'Editora Taller, C. por A.', '2', 'Literature & Fiction', 'La obra alude un canto a Pablo Neruda, el cual incluye una invocación a Bolívar, quien es apelado por el poeta dominicano como la raíz que reconoce en el pasado, de la cual tanto Neruda como él, son herederos.', 'Spanish', 267, 500),
('LIT-19', 'Amén de mariposas', 'Pedro Mir', 176, 132, 25, 12, 'Editora Taller, C. por A.', '2', 'Literature & Fiction', 'Pieza sustancial para entender la conmoción del crimen cometido contra las Hermanas Mirabal, Minerva, Patria y María Teresa, durante la dictadura de Rafael L. Trujillo.', 'Spanish', 296, 500),
('LIT-20', 'El viento frío y otros poemas', 'Rene Del Risco Bermudez', 499, 275, 35, 13, 'Editora Taller, C. por A.', '2', 'Literature & Fiction', '', 'Spanish', 672, 500),
('LIT-21', 'Cuentos y poemas completos', 'Rene Del Risco Bermudez', 300, 240, 20, 9, 'Editora Taller, C. por A.', '1', 'Literature & Fiction', '', 'Spanish', 245, 500),
('LIT-22', 'A Punto Largo', 'Americo Lugo', 175, 113, 35, 11, 'Editora Taller, C. por A.', '1', 'Literature & Fiction', NULL, 'Spanish', 224, 500),
('LIT-23', 'Camafeos', 'Americo Lugo', 175, 123, 30, 9, 'Editora Taller, C. por A.', '1', 'Literature & Fiction', '', 'Spanish', 240, 500),
('LIT-24', 'El nacionalismo dominicano', 'Americo Lugo', 175, 123, 30, 7, 'Editora Taller, C. por A.', '1', 'Literature & Fiction', '', 'Spanish', 272, 381);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `UserName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserName`, `Password`) VALUES
('si', 'compai');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
