-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2021 a las 00:13:26
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `artesanias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrusels`
--

CREATE TABLE `carrusels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carrusels`
--

INSERT INTO `carrusels` (`id`, `descripcion`, `urlfoto`, `link`, `orden`) VALUES
(1, 'GRAN DESCUENTO', 'artesanias_1604411091.jpeg', 'http://artesanias.com', 1),
(2, '¿Qué es Lorem Ipsum?', 'artesanias_1604411101.jpeg', 'https://es.lipsum.com/', 2),
(3, 'Slider 3 del proyecto', 'artesanias_1604443924.jpeg', 'http://artesania.cm', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(67) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto.jpg',
  `visitas` int(11) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `slug`, `title`, `description`, `nombre`, `descripcion`, `urlfoto`, `visitas`, `orden`) VALUES
(2, 'urnas', 'Urnas', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias des', 'Urnas', '<h2>&iquest;Qu&eacute; es Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documento</p>\r\n\r\n<h2>&iquest;Qu&eacute; es Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documento</p>', 'urnas.jpeg', 0, 1),
(3, 'cofres', 'Cofres', 'Cofres', 'Cofres', 'Cofres', 'cofres.jpeg', 0, 1),
(4, 'bandejas', 'Bandejas', 'Bandejas', 'Bandejas', 'Bandejas', 'bandejas.jpeg', 0, 1),
(5, 'cajas', 'Cajas', 'Cajas', 'Cajas', 'Cajas', 'cajas.jpeg', 0, 4),
(6, 'retablos', 'Retablos', 'Retablos', 'Retablos', 'Retablos', 'retablos.jpeg', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracions`
--

CREATE TABLE `configuracions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seo_title` varchar(67) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colorPrimario` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colorSecundario` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfavicon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urllogo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frase_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frase_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frase_3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razonsocial` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configuracions`
--

INSERT INTO `configuracions` (`id`, `seo_title`, `seo_description`, `seo_urlfoto`, `colorPrimario`, `colorSecundario`, `urlfavicon`, `urllogo`, `slogan`, `frase_1`, `frase_2`, `frase_3`, `razonsocial`, `direccion`, `celular`, `email`, `facebook`, `youtube`) VALUES
(1, 'ARTESANIAS para momentos especiales', 'Somos creadores de artesanías en Puebla, con materiales de calidad y resistencia, proveedores en diferentes puntos del mundo con nuestros diseños de antaño', 'artesanias-go.jpeg', '#FFC926', '#E57919', '_favicon.png', '.png', 'LAS HISTORIA ESTA ENTRE TUS MANOS', 'Entrega rápida', 'Productos de calidad', 'Diseño a pedido', 'Artesanías GO', 'Av. Los Artesanos 2302, Cercado', '51999333999', 'ventas@artesaniasgo.com', 'https://facebook.com/artesanias', 'https://youtube.com/artesanias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(67) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `somos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlsomos` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `historia` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlhistoria` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlmision` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlvision` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valores` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlvalores` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `title`, `description`, `somos`, `urlsomos`, `historia`, `urlhistoria`, `mision`, `urlmision`, `vision`, `urlvision`, `valores`, `urlvalores`) VALUES
(1, 'ARTESANIAS DEL PERÚ', 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de us', 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo u', 'somos_.jpeg', 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al h', 'historia_.jpeg', 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español q', 'mision_.jpeg', 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un esp', 'vision_.jpeg', 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo u', 'valores_.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_11_02_124208_create_categorias_table', 2),
(6, '2020_11_02_131730_create_productos_table', 3),
(7, '2020_11_02_135412_create_posts_table', 4),
(9, '2020_11_02_140648_create_carrucels_table', 5),
(10, '2020_11_02_141853_create_configuracions_table', 6),
(11, '2020_11_02_143501_create_empresas_table', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(67) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto.jpg',
  `visitas` int(11) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 0,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `description`, `nombre`, `descripcion`, `urlfoto`, `visitas`, `orden`, `categoria_id`, `created_at`, `updated_at`) VALUES
(2, 'como-disenamos-las-urnas-en-nuestros-talleres-de-trabajo', 'Cómo diseñamos las Urnas en nuestros talleres de trabajo', 'Cómo diseñamos las Urnas en nuestros talleres de trabajo Cómo diseñ', 'Cómo diseñamos las Urnas en nuestros talleres de trabajo', '<p>C&oacute;mo dise&ntilde;amos las Urnas en nuestros talleres de trabajo Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoed</p>\r\n\r\n<p>ici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer</p>\r\n\r\n<h3><strong>un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os,</strong></h3>\r\n\r\n<p>sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de</p>\r\n\r\n<ul>\r\n	<li>Lorem Ipsum.</li>\r\n	<li>asfsa</li>\r\n	<li>asfsaf</li>\r\n	<li>safsafsa</li>\r\n</ul>', 'como-disenamos-las.jpeg', 3, 1, 2, '2020-11-04 03:36:48', '2020-11-18 21:43:44'),
(3, 'que-es-lorem-ipsum', '¿Qué es Lorem Ipsum?', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y a', '¿Qué es Lorem Ipsum?', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y aLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\n\r\n\r\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\n\r\n\r\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 'que-es-lorem-ipsum.jpeg', 0, 1, 4, '2020-11-04 03:42:51', '2020-11-04 03:44:30'),
(4, 'por-que-lo-usamos', '¿Por qué lo usamos?', 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de us', '¿Por qué lo usamos?', 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).\r\n\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).', 'por-que-lo-usamos.jpeg', 0, 1, 3, '2020-11-04 03:45:18', '2020-11-04 03:45:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(67) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto.jpg',
  `visitas` int(11) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 0,
  `categoria_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `slug`, `title`, `description`, `nombre`, `descripcion`, `urlfoto`, `visitas`, `orden`, `categoria_id`) VALUES
(1, 'urna-a', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico', '¿Qué es Lorem Ipsum?\r\nLorem Ipsum es simplemente el texto de relleno', 'Urna A', '<h2>&iquest;Qu&eacute; es Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documento</p>\r\n\r\n<h3>&iquest;Qu&eacute; es Lorem Ipsum?</h3>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documento</p>\r\n\r\n<h3>&iquest;Qu&eacute; es Lorem Ipsum?</h3>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documento</p>', 'urna-a.jpeg', 0, 1, 2),
(2, 'urna-2', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual', 'Urna 2', '<p>Lorem ipsum es el texto que se usa habitualmente en dise&ntilde;o gr&aacute;fico en demostraciones de tipograf&iacute;as o de borradores de dise&ntilde;o para probar el dise&ntilde;o visual antes de insertar el te</p>\r\n\r\n<p>Lorem ipsum es el texto que se usa habitualmente en dise&ntilde;o gr&aacute;fico en demostraciones de tipograf&iacute;as o de borradores de dise&ntilde;o para probar el dise&ntilde;o visual antes de insertar el texto final.&nbsp;</p>\r\n\r\n<p>Lorem ipsum es el texto que se usa habitualmente en dise&ntilde;o gr&aacute;fico en demostraciones de tipograf&iacute;as o de borradores de dise&ntilde;o para probar el dise&ntilde;o visual antes de insertar el texto final</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'urna-2.jpeg', 0, 2, 2),
(3, 'cofre-1', 'Reference site about Lorem Ipsum, giving information on its origins', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.\r\nReference site about Lorem Ipsum, givin', 'cofre 1', '<p>Reference site about&nbsp;<em>Lorem</em>&nbsp;Ipsum, giving information on its origins, as w</p>\r\n\r\n<p>Reference site about&nbsp;<em>Lorem</em>&nbsp;Ipsum, giving information on its origins, as well as a random Lipsum generator.</p>\r\n\r\n<p>Reference site about&nbsp;<em>Lorem</em>&nbsp;Ipsum, giving information on its origins, as well as a random Lipsum generator.</p>\r\n\r\n<p>Reference site about&nbsp;<em>Lorem</em>&nbsp;Ipsum, giving information on its origins, as well as a random Lipsum generator.</p>\r\n\r\n<p>Reference site about&nbsp;<em>Lorem</em>&nbsp;Ipsum, giving information on its origins, as well as a random Lipsum generator.</p>', 'cofre-1.jpeg', 0, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_usuario` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `tipo_usuario`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'cliente', 'cliente@gmail.com', NULL, '$2y$10$9icMpOIxyjNIexAVmNovO.wHxKtnI117dqAzH3hLc.Tb7hY1gofyS', 1, NULL, '2020-11-02 16:11:25', '2020-11-02 16:11:25'),
(3, 'Anderson', 'anderson@gmail.com', NULL, '$2y$10$0yst8GnqzhTK4tlmcNVVJeEedtHLUTz9jXr87vFncXQBOLDNPme4i', 1, NULL, '2020-11-18 17:39:35', '2020-11-18 17:39:35');

--
-- user: anderson@gmail.com  password: dioner321
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrusels`
--
ALTER TABLE `carrusels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrusels`
--
ALTER TABLE `carrusels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
