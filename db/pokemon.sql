
--
-- Base de datos: `pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bag`
--

USE `pokemon`

DROP TABLE IF EXISTS `bag`;
CREATE TABLE IF NOT EXISTS `bag` (
  `id` int(11) NOT NULL,
  `bagid` int(11) NOT NULL,
  `berry` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bag`
--

INSERT INTO `bag` (`id`, `bagid`, `berry`) VALUES
(0, 0, 'Zydra'),
(2, 0, 'Aranja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `berries`
--

DROP TABLE IF EXISTS `berries`;
CREATE TABLE IF NOT EXISTS `berries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_id` varchar(255) DEFAULT NULL,
  `ability` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_id` (`name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `berries`
--

INSERT INTO `berries` (`id`, `name_id`, `ability`) VALUES
(1, 'Aranja', 'Heal'),
(2, 'Caquic', 'Poison'),
(3, 'Zydra', 'Paralisis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons`
--

DROP TABLE IF EXISTS `pokemons`;
CREATE TABLE IF NOT EXISTS `pokemons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemons`
--

INSERT INTO `pokemons` (`id`, `name`, `estado`, `region_id`) VALUES
(0, 'Bulbasaur', 'Crazy', 'Kanto'),
(1, 'Charizard', 'Sad', 'Hoenn'),
(3, 'Charmander', 'Angry', 'Shinnoh'),
(2, 'Bulbasaur', 'Sad', 'Hoenn');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `name` varchar(255) NOT NULL,
  `cardinal_point` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `regions` (`name`, `cardinal_point`) VALUES
('Hoenn', 'North'),
('Shinnoh', 'West'),
('Kanto', 'South');
COMMIT;

CREATE USER 'root'@'%' IDENTIFIED BY '12345678'

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '12345678'

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
