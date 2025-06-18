SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` decimal(10,0) NOT NULL,
  `iva` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `productoID` int(11) NOT NULL,
  `usuarioID` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `is_creado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `cantidad`, `importe`, `iva`, `total`, `productoID`, `usuarioID`, `status`, `is_deleted`, `is_creado`) VALUES
(13, 1, 500, 0, 500, 36, 9, 1, 1, '2024-03-11 23:36:23'),
(14, 1, 500, 0, 500, 36, 9, 1, 1, '2024-03-11 23:36:24'),
(15, 1, 500, 0, 500, 36, 9, 1, 1, '2024-03-11 23:36:26'),
(16, 1, 500, 0, 500, 36, 9, 1, 1, '2024-03-11 23:36:28'),
(17, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:29'),
(18, 6, 9600, 0, 9600, 57, 1, 1, 1, '2024-03-11 23:36:31'),
(19, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:32'),
(20, 3, 4800, 0, 4800, 57, 1, 1, 1, '2024-03-11 23:36:34'),
(21, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:35'),
(22, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:36'),
(23, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:38'),
(24, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:46'),
(25, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:47'),
(26, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:48'),
(27, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:50'),
(28, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:51'),
(29, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:53'),
(30, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:55'),
(31, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:56'),
(32, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:57'),
(33, 1, 1600, 0, 1600, 57, 1, 1, 1, '2024-03-11 23:36:58'),
(34, 1, 1800, 0, 1800, 46, 1, 1, 1, '2024-03-11 23:36:42'),
(35, 1, 500, 80, 580, 36, 1, 1, 1, '2024-03-11 23:37:00'),
(36, 8, 4000, 80, 4080, 36, 1, 1, 1, '2024-03-11 23:37:02'),
(37, 1, 2000, 320, 2320, 55, 1, 1, 1, '2024-03-19 18:25:17'),
(38, 2, 1600, 128, 1728, 28, 1, 1, 1, '2024-03-19 18:25:18'),
(39, 4, 3200, 128, 3328, 28, 1, 1, 1, '2024-03-19 18:30:03'),
(40, 1, 800, 128, 928, 28, 1, 1, 1, '2024-03-19 18:30:04'),
(41, 1, 800, 128, 928, 28, 1, 1, 1, '2024-03-19 18:30:06'),
(42, 1, 500, 80, 580, 36, 1, 1, 1, '2024-03-19 18:30:08'),
(43, 1, 800, 128, 928, 28, 1, 1, 1, '2024-03-19 18:47:42'),
(45, 1, 500, 80, 580, 36, 1, 1, 1, '2024-03-20 20:45:33'),
(46, 13, 6500, 80, 6580, 36, 1, 1, 1, '2024-03-19 18:47:44'),
(48, 4, 3200, 128, 3328, 28, 1, 1, 1, '2024-03-26 23:57:34'),
(49, 1, 500, 80, 580, 36, 1, 1, 1, '2024-04-08 20:40:47'),
(50, 18, 9000, 1440, 10440, 36, 1, 1, 1, '2024-04-08 20:40:49'),
(51, 2, 9996, 1599, 11595, 34, 1, 1, 1, '2024-04-08 20:52:26'),
(52, 2, 43798, 7008, 50806, 45, 1, 1, 1, '2024-04-08 20:52:28'),
(53, 1, 16199, 2592, 18791, 94, 1, 1, 0, '2024-04-12 23:02:18'),
(54, 1, 1000, 160, 1160, 76, 1, 1, 0, '2024-04-12 23:08:06'),
(55, 1, 21899, 3504, 25403, 42, 23, 1, 1, '2024-04-15 02:35:35'),
(56, 2, 700, 112, 812, 61, 23, 1, 1, '2024-04-14 05:55:27'),
(57, 1, 1999, 320, 2319, 116, 23, 1, 0, '2024-04-15 02:42:34'),
(58, 1, 1999, 320, 2319, 87, 23, 1, 0, '2024-04-15 02:43:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(4, 'Teléfonos móviles'),
(5, 'Laptops y computadoras'),
(7, 'Dispositivos de audio'),
(9, 'Accesorios electrónicos'),
(10, 'Dispositivos de almacenamiento'),
(12, 'Wearables'),
(13, 'Juegos y consolas'),
(14, 'Dispositivos Eco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_entrega`
--

CREATE TABLE `direccion_entrega` (
  `id` int(11) NOT NULL,
  `usuarioId` int(11) DEFAULT NULL,
  `nombreDestinatario` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codigoPostal` varchar(20) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direccion_entrega`
--

INSERT INTO `direccion_entrega` (`id`, `usuarioId`, `nombreDestinatario`, `direccion`, `ciudad`, `codigoPostal`, `pais`, `telefono`) VALUES
(1, NULL, '1', '1', '1', '1', '1', '1'),
(2, 7, 'John Doe', '123 Main St', 'Cityville', '12345', 'Countryland', '555-1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `importe` double NOT NULL,
  `iva` double NOT NULL,
  `total` double NOT NULL,
  `ProveedorFK` int(11) NOT NULL,
  `UsuarioFK` int(11) NOT NULL,
  `ProductoFK` int(11) DEFAULT NULL,
  `CreatedDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `status`, `importe`, `iva`, `total`, `ProveedorFK`, `UsuarioFK`, `ProductoFK`, `CreatedDate`) VALUES
(2, 0, 15999.9, 2559.984, 18559.884, 1, 1, NULL, '2023-08-09 05:25:03.298133'),
(3, 0, 13197.8, 2111.648, 15309.448, 1, 1, NULL, '2023-08-09 05:26:13.475879'),
(4, 0, 7979.95, 1276.792, 9256.742, 1, 1, NULL, '2023-08-09 05:26:39.374399'),
(5, 0, 0, 0, 0, 1, 1, NULL, '2023-08-09 06:18:04.326583');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada_has_producto`
--

CREATE TABLE `entrada_has_producto` (
  `entradaID` int(11) NOT NULL,
  `productoID` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` double NOT NULL,
  `iva` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entrada_has_producto`
--

INSERT INTO `entrada_has_producto` (`entradaID`, `productoID`, `id`, `cantidad`, `importe`, `iva`, `total`) VALUES
(1, 10, 1, 10, 1280, 204.8, 1484.8),
(2, 5, 2, 10, 15999.9, 2559.984, 18559.884),
(3, 8, 3, 20, 13197.8, 2111.648, 15309.448),
(4, 9, 4, 5, 7979.95, 1276.792, 9256.742),
(5, 12, 5, 10, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadopedido`
--

CREATE TABLE `estadopedido` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadopedido`
--

INSERT INTO `estadopedido` (`id`, `nombre`) VALUES
(1, 'Pendiente'),
(2, 'Preparando'),
(3, 'Enviado'),
(4, 'Entregado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_producto`
--

CREATE TABLE `imagenes_producto` (
  `id` int(11) NOT NULL,
  `url` varchar(5000) NOT NULL,
  `productoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes_producto`
--

INSERT INTO `imagenes_producto` (`id`, `url`, `productoID`) VALUES
(15, 'http://localhost:3000/uploads/20f04333-1fb7-44aa-8d41-800ab4337f7c.avif', 68),
(16, 'http://localhost:3000/uploads/d18bbb33-c437-413e-90b6-9f70aaa64ba8.webp', 68),
(17, 'http://localhost:3000/uploads/1dbcdb8d-286f-4374-b79f-8238b6f5cfc7.jpg', 68),
(18, 'http://localhost:3000/uploads/69015af8-518d-4660-ba81-1389b1a3ff94.jpg', 67),
(19, 'http://localhost:3000/uploads/668f5fd9-b8c2-44cf-8591-c74c64bdcb2c.jpg', 67),
(20, 'http://localhost:3000/uploads/80ec21df-39cc-4444-a0e2-69ce13ae7464.jpg', 67),
(21, 'http://localhost:3000/uploads/27f87845-471f-412e-897a-13a06b9416ae.jpg', 66),
(22, 'http://localhost:3000/uploads/7925b770-eed8-4185-bf40-1b921bc74cbc.jpg', 66),
(23, 'http://localhost:3000/uploads/53718760-bf48-4bbf-b491-90dfeb5df025.jpg', 66),
(24, 'http://localhost:3000/uploads/822dd0a5-be94-479d-87ba-0a2e237cf545.jpg', 64),
(25, 'http://localhost:3000/uploads/178e6ca0-e035-4a85-b8e3-85585e2c26e7.jpg', 64),
(26, 'http://localhost:3000/uploads/6fbc2614-e8a0-4765-bfbc-d95db5db2100.jpg', 64),
(27, 'http://localhost:3000/uploads/5a9ef780-427f-4b3f-a01b-a5c234f340ee.jpg', 64),
(28, 'http://localhost:3000/uploads/bf6c0fa1-c4f6-4e5d-b98b-0465a83f9c50.jpg', 61),
(29, 'http://localhost:3000/uploads/6054f28f-10ce-4518-a7f1-df7febcf3520.jpg', 61),
(30, 'http://localhost:3000/uploads/3dd7008b-65df-4c72-a1ed-c74c9d860134.jpg', 34),
(31, 'http://localhost:3000/uploads/d2668672-4084-4cf4-99ab-ebfb633c46a7.jpg', 34),
(32, 'http://localhost:3000/uploads/dd08e884-d0df-42b4-b785-9f61a59d3c77.jpg', 34),
(33, 'http://localhost:3000/uploads/94d68b5c-3575-480c-bdf4-8b0e12b21cd2.jpg', 62),
(34, 'http://localhost:3000/uploads/9c96d627-8934-4a45-aa2f-2ce78f5b2820.jpg', 62),
(35, 'http://localhost:3000/uploads/4382f40e-cead-4f90-89b6-6be4646af90d.jpg', 62),
(36, 'http://localhost:3000/uploads/9fe3b858-7edd-494c-910f-948bea32c5bf.jpg', 63),
(37, 'http://localhost:3000/uploads/bdff68a2-5375-44ec-a01d-5ee2365e5d9d.jpg', 63),
(38, 'http://localhost:3000/uploads/e49b62a9-ce02-4894-8c9f-564a3c2609ad.jpg', 63),
(39, 'http://localhost:3000/uploads/2ab576ed-28fb-4843-a4af-648eb0dd1cb0.jpg', 63),
(40, 'http://localhost:3000/uploads/7bf5d6f4-af0f-4842-bcdb-f95f8e229a39.jpg', 65),
(41, 'http://localhost:3000/uploads/26476813-5854-42b4-b57c-a09f556a7e79.jpg', 65),
(42, 'http://localhost:3000/uploads/e16e8f84-6681-44f3-b029-d94e80acbf30.jpg', 65),
(43, 'http://localhost:3000/uploads/ac9e01ee-814e-472d-a726-b3d5c408f3a2.jpg', 65),
(44, 'http://localhost:3000/uploads/26cebdf9-7916-4b7b-9800-1cb191e541b9.jpg', 76),
(45, 'http://localhost:3000/uploads/0b13c1fa-beb9-49e6-8aad-a83438b7b7d2.jpg', 76),
(49, 'http://localhost:3000/uploads/a7b21d3e-ad19-4120-bf0a-0c34c5e6b98f.jpg', 42),
(50, 'http://localhost:3000/uploads/92e70052-aed1-4ebc-adab-1beeb5ed1709.jpg', 42),
(51, 'http://localhost:3000/uploads/083a79bf-2177-4100-8d80-6728de414823.jpg', 42),
(52, 'http://localhost:3000/uploads/d810948e-da1b-4820-8717-11dea85d4991.jpg', 81),
(53, 'http://localhost:3000/uploads/9821b854-b4a2-4302-9c65-0b3187379f85.jpg', 81),
(54, 'http://localhost:3000/uploads/9086e700-c25e-4e1c-b9e5-bd1a5aa5f575.jpg', 36),
(55, 'http://localhost:3000/uploads/b8ef1a1e-2cc7-4c04-8a27-e79614a7dd4e.jpg', 45),
(56, 'http://localhost:3000/uploads/2046dd9d-faf3-486f-9f6c-75f5af471585.jpg', 45),
(57, 'http://localhost:3000/uploads/bb3cbd86-d838-4d81-87f0-a4257c2ea3ed.jpg', 45),
(65, 'http://localhost:3000/uploads/fc82f4ae-86fe-4813-aed3-4747df4d355a.jpg', 35),
(66, 'http://localhost:3000/uploads/af5ad22f-c48c-40bf-9ac1-f208a78a6a45.jpg', 35),
(71, 'http://localhost:3000/uploads/aab779aa-cc55-4f64-8c1d-66191bac3ab9.jpg', 35),
(72, 'http://localhost:3000/uploads/4ad15b5e-d25c-4cea-9581-894774f083fb.jpg', 39),
(73, 'http://localhost:3000/uploads/6970bbda-bbca-4c85-87fd-4ddaaaaef983.jpg', 29),
(74, 'http://localhost:3000/uploads/1aa7f1b7-bb6e-46db-ae96-b85cadbd2da9.jpg', 30),
(75, 'http://localhost:3000/uploads/380c62b2-f473-41ba-b49c-9c9b0748b6b2.jpg', 30),
(76, 'http://localhost:3000/uploads/9553e36f-1651-41ca-bb0c-cb2253dee5ee.jpg', 40),
(77, 'http://localhost:3000/uploads/0cdc2106-9fbc-484a-9220-d85275b797ca.jpg', 37),
(78, 'http://localhost:3000/uploads/16969527-fb4d-4e7e-afc5-69bb0ab5e413.jpg', 37),
(81, 'http://localhost:3000/uploads/0e97deee-306a-4c31-b56e-4aa1ed83418c.jpg', 32),
(92, 'http://localhost:3000/uploads/61433b51-3977-4dbf-bb4a-5ee16674f2b2.jpg', 58),
(93, 'http://localhost:3000/uploads/d34cbac9-2355-483f-89d3-52134077f576.jpg', 58),
(94, 'http://localhost:3000/uploads/83add33e-22d9-4c2f-9b13-8d9349a8b1ca.jpg', 58),
(95, 'http://localhost:3000/uploads/2b574314-544d-463b-bd36-74ea288bd4eb.jpg', 59),
(96, 'http://localhost:3000/uploads/1151de66-e608-4eb3-9e66-9ba1d30ed0e5.jpg', 59),
(97, 'http://localhost:3000/uploads/06fdeb1f-8dc3-495c-abb3-23e7e03718ec.jpg', 59),
(98, 'http://localhost:3000/uploads/7dcfa1f4-4b2c-4e63-81a0-f2b977044d4c.jpg', 60),
(99, 'http://localhost:3000/uploads/55c7368d-4665-44bb-96f2-fc4bb51207ed.jpg', 60),
(101, 'http://localhost:3000/uploads/adeada25-79cb-4d1f-bf32-e317d77b17f9.jpg', 69),
(106, 'http://localhost:3000/uploads/29dc6fa1-7ade-4323-a1f8-791059ef9e50.jpg', 69),
(107, 'http://localhost:3000/uploads/6a88da66-88e6-47af-af17-5e745f3c35bf.jpg', 69),
(108, 'http://localhost:3000/uploads/0e940b07-4f47-4a36-af62-95609243bb63.jpg', 70),
(109, 'http://localhost:3000/uploads/008a4e19-0415-4312-bcc7-216e64591283.jpg', 70),
(110, 'http://localhost:3000/uploads/64c4c4ec-3cf3-451e-87bd-346f647166fc.jpg', 70),
(111, 'http://localhost:3000/uploads/fa1bc721-fff6-48ee-a126-52cca243f423.jpg', 94),
(112, 'http://localhost:3000/uploads/2930bd55-5350-4518-89f0-0da55ce9dd25.jpg', 94),
(113, 'http://localhost:3000/uploads/93d3a196-a03f-43b6-a65b-fb362a01ca0e.jpg', 94),
(114, 'http://localhost:3000/uploads/bbca491d-eabd-4f96-94fd-d7fec4560acd.jpg', 94),
(115, 'http://localhost:3000/uploads/bf30c362-626d-42c1-a7ff-1007908aac79.jpg', 95),
(116, 'http://localhost:3000/uploads/e62b39ef-bd95-46b5-b851-e1029d192767.jpg', 95),
(117, 'http://localhost:3000/uploads/260ae38a-f9d5-4be4-a403-4766e4f949f5.jpg', 95),
(118, 'http://localhost:3000/uploads/a16d9083-b5db-4cb1-ae4a-761881dcaaaa.jpg', 96),
(119, 'http://localhost:3000/uploads/e64f70e3-0218-440d-b326-d0b3926218c8.jpg', 96),
(120, 'http://localhost:3000/uploads/987cf52c-9ddd-4697-8f07-51e3c20dadee.jpg', 96),
(121, 'http://localhost:3000/uploads/727fb721-f35d-4f05-9680-5f42d7a8aa68.jpg', 97),
(122, 'http://localhost:3000/uploads/d2c6e027-4146-41c9-bbe5-ef42699e3833.jpg', 97),
(123, 'http://localhost:3000/uploads/66c76ab5-bd31-498d-b658-7a660b9ebfbc.jpg', 98),
(124, 'http://localhost:3000/uploads/fe17a95a-6019-48b8-b62c-6d03742aed73.jpg', 98),
(125, 'http://localhost:3000/uploads/2ff03018-34a9-4950-b451-cf356d93cfd3.jpg', 99),
(126, 'http://localhost:3000/uploads/8f1c2889-c1d3-40ae-8432-6167ede4cfd6.jpg', 99),
(127, 'http://localhost:3000/uploads/046884ea-4343-46e2-a8be-d153ed2f6e92.jpg', 99),
(128, 'http://localhost:3000/uploads/f9b8c460-e2ba-4456-9af3-b81f1e56fca4.jpg', 100),
(129, 'http://localhost:3000/uploads/718784dd-2ac8-4828-896a-fe0a6f28d633.jpg', 100),
(130, 'http://localhost:3000/uploads/7aace0aa-dd30-4d58-9b03-0439b9347daf.jpg', 100),
(131, 'http://localhost:3000/uploads/9c3d165a-3bd7-4c91-bcab-9422d01095c3.jpg', 101),
(132, 'http://localhost:3000/uploads/1e8857bc-bed9-4417-bfe2-dbf29b2ff992.jpg', 101),
(133, 'http://localhost:3000/uploads/f09fdead-6b2f-4802-aa70-c8ae8b4c10f2.jpg', 101),
(134, 'http://localhost:3000/uploads/a2c98117-4419-4d1c-b963-d3ca4d11c3a0.jpg', 106),
(135, 'http://localhost:3000/uploads/720dcf0f-5e91-4886-8529-5e191994c8e2.jpg', 105),
(136, 'http://localhost:3000/uploads/1e3f32a5-9a48-46c4-af5f-347eb331566c.jpg', 104),
(137, 'http://localhost:3000/uploads/ad1fbc1c-87c9-4087-85b8-d12ecf814b6f.jpg', 102),
(138, 'http://localhost:3000/uploads/328923a4-162a-44d0-a4cf-fe4f7aef69f4.jpg', 103),
(139, 'http://localhost:3000/uploads/0c91c6a7-5fea-4613-9ed9-b93812eb5006.jpg', 107),
(140, 'http://localhost:3000/uploads/ed3ad638-4d3f-4642-8f7e-5683224ac031.jpg', 109),
(141, 'http://localhost:3000/uploads/b90a2bdc-7a19-4dfb-8069-513dd1982706.jpg', 110),
(142, 'http://localhost:3000/uploads/1762d73b-384a-4104-87a7-69764c74c380.jpg', 110),
(143, 'http://localhost:3000/uploads/ef4ffaad-689b-4fce-9ba1-14be8db6eaa2.jpg', 111),
(144, 'http://localhost:3000/uploads/edce2925-5709-4f75-b6c8-83c4bc1b5b5a.jpg', 111),
(145, 'http://localhost:3000/uploads/1e53c5c3-afde-49cd-adb6-da94cd9ac8e0.jpg', 112),
(146, 'http://localhost:3000/uploads/748fb191-5ddd-498d-8151-1e97c1ca1849.jpg', 113),
(147, 'http://localhost:3000/uploads/a44f6556-1b39-4765-ac7f-5c899686ed42.jpg', 114),
(148, 'http://localhost:3000/uploads/773c2ab2-7f1d-468d-bb94-f1ec56cd75b9.jpg', 114),
(149, 'http://localhost:3000/uploads/1ce0fa27-b562-4b76-9682-485e896a699b.jpg', 115),
(150, 'http://localhost:3000/uploads/7eda4d75-a030-4650-8796-cfa280d4b6c4.jpg', 115),
(151, 'http://localhost:3000/uploads/58b2eeef-a38d-42a4-9102-3d8105f451fb.jpg', 116),
(152, 'http://localhost:3000/uploads/e07b13f8-bcbe-4810-9caa-5455e1de5008.jpg', 116),
(153, 'http://localhost:3000/uploads/13809ed0-c3e8-466a-b3ed-b47eddf7401d.jpg', 117),
(154, 'http://localhost:3000/uploads/0da3039a-15b8-4a01-ad13-f86365a7e9fc.jpg', 117),
(155, 'http://localhost:3000/uploads/ea3070c7-5ff5-4c27-a17c-8b3d8d4fbd31.jpg', 117),
(156, 'http://localhost:3000/uploads/a7d42afc-bbaa-4fe9-9ed4-0cd84eeeee68.jpg', 118),
(158, 'http://localhost:3000/uploads/3d936073-5512-4126-aa9f-a49d90df1fd2.jpg', 119),
(159, 'http://localhost:3000/uploads/10f5696e-763e-47c3-94a6-95f13b728612.jpg', 119),
(160, 'http://localhost:3000/uploads/a407ebbd-e863-45b7-9207-2928072fcce3.jpg', 120),
(161, 'http://localhost:3000/uploads/c79f2463-7003-46a1-abe5-cf0c262324a9.jpg', 121),
(162, 'http://localhost:3000/uploads/abaf99a4-e8f9-4d58-979d-bde0c6a2f24c.jpg', 122),
(163, 'http://localhost:3000/uploads/dee69ea7-015b-4789-90b2-fa5026bbf8fa.jpg', 123),
(164, 'http://localhost:3000/uploads/6ec3c274-ebdb-4147-925f-e43c65cde67c.jpg', 124),
(165, 'http://localhost:3000/uploads/d1ff20f1-057f-44c1-8de9-c7cfe2dbc2f0.jpg', 125),
(166, 'http://localhost:3000/uploads/cfabd9dc-6974-403a-811c-167c89294977.jpg', 126),
(167, 'http://localhost:3000/uploads/c27845aa-015c-4897-8426-ade5a8956c6f.jpg', 127),
(168, 'http://localhost:3000/uploads/f2258d45-4da1-4631-ba5a-c17d0e0d7099.jpg', 128);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `usuarioID` int(11) DEFAULT NULL,
  `estadoPedidoID` int(11) DEFAULT 1,
  `direccionEntregaID` int(11) DEFAULT NULL,
  `fechaPedido` timestamp NOT NULL DEFAULT current_timestamp(),
  `importe` double NOT NULL,
  `iva` double NOT NULL,
  `total` double DEFAULT NULL,
  `payment_id` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuarioID`, `estadoPedidoID`, `direccionEntregaID`, `fechaPedido`, `importe`, `iva`, `total`, `payment_id`) VALUES
(1, 1, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(2, 1, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(5, 1, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(6, 1, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(7, 1, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(8, 1, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(9, 1, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(10, 1, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(11, NULL, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(12, NULL, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(13, NULL, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(14, NULL, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(15, NULL, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(16, NULL, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(17, NULL, 1, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(18, 9, NULL, NULL, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(19, 9, NULL, NULL, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(20, 9, NULL, NULL, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(21, 9, NULL, NULL, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(22, 9, NULL, NULL, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(23, 9, NULL, NULL, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(24, 9, NULL, NULL, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(25, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(26, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(27, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(28, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(29, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(30, 9, NULL, 1, '2024-03-06 23:19:07', 150, 25, 1, ''),
(31, 9, NULL, 1, '2024-03-06 23:20:04', 150, 25, 1, ''),
(32, 9, NULL, 1, '2024-03-06 23:20:21', 150, 25, 1, ''),
(33, 9, NULL, 1, '2024-03-06 23:20:22', 150, 25, 1, ''),
(34, 9, NULL, 1, '2024-03-06 23:20:22', 150, 25, 1, ''),
(35, 9, NULL, 1, '2024-03-06 23:20:29', 150, 25, 1, ''),
(36, 9, NULL, 1, '2024-03-06 23:20:32', 150, 25, 1, ''),
(37, 9, NULL, 1, '2024-03-06 23:23:29', 150, 25, 1, ''),
(38, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(39, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(40, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(41, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(42, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(43, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(44, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(45, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(46, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(47, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(48, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(49, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(50, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(51, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(52, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(53, 9, NULL, 1, '2024-02-23 12:34:56', 101, 10, 110.75, ''),
(54, NULL, NULL, 1, '2024-03-07 23:54:27', 150, 25, 1, ''),
(55, NULL, NULL, 1, '2024-03-07 23:56:27', 150, 25, 1, ''),
(56, NULL, NULL, 1, '2024-03-07 23:57:00', 150, 25, 1, ''),
(57, NULL, NULL, 1, '2024-03-07 23:57:05', 150, 25, 1, ''),
(58, NULL, NULL, 1, '2024-03-08 00:00:09', 150, 25, 1, ''),
(59, NULL, NULL, 1, '2024-03-08 00:01:00', 150, 25, 1, ''),
(60, NULL, NULL, 1, '2024-03-08 00:01:12', 150, 25, 1, ''),
(61, NULL, NULL, 1, '2024-03-08 00:01:42', 150, 25, 1, ''),
(62, NULL, NULL, 1, '2024-03-08 00:01:56', 150, 25, 1, ''),
(63, NULL, NULL, 1, '2024-03-08 00:02:03', 150, 25, 1, ''),
(64, NULL, NULL, 1, '2024-03-08 00:04:30', 150, 25, 1, ''),
(65, NULL, NULL, 1, '2024-03-08 00:04:42', 150, 25, 1, ''),
(66, NULL, NULL, 1, '2024-03-08 00:04:49', 150, 25, 1, ''),
(67, NULL, NULL, 1, '2024-03-08 00:05:29', 150, 25, 1, ''),
(68, NULL, NULL, 1, '2024-03-10 00:02:08', 150, 25, 1, ''),
(69, NULL, NULL, 1, '2024-03-19 18:25:26', 150, 25, 1, ''),
(70, NULL, NULL, 1, '2024-03-19 19:15:32', 150, 25, 1, ''),
(71, NULL, NULL, 1, '2024-03-19 19:15:38', 150, 25, 1, ''),
(72, NULL, NULL, 1, '2024-03-19 19:15:39', 150, 25, 1, ''),
(73, NULL, NULL, 1, '2024-03-19 19:15:39', 150, 25, 1, ''),
(74, NULL, NULL, 1, '2024-03-19 19:15:39', 150, 25, 1, ''),
(75, NULL, NULL, 1, '2024-03-19 19:15:39', 150, 25, 1, ''),
(76, NULL, NULL, 1, '2024-03-19 19:15:39', 150, 25, 1, ''),
(77, NULL, NULL, 1, '2024-03-19 19:15:40', 150, 25, 1, ''),
(78, NULL, NULL, 1, '2024-03-19 19:15:40', 150, 25, 1, ''),
(79, NULL, NULL, 1, '2024-03-19 19:15:40', 150, 25, 1, ''),
(80, NULL, NULL, 1, '2024-03-19 19:15:40', 150, 25, 1, ''),
(81, NULL, NULL, 1, '2024-03-20 20:12:14', 500, 80, 580, 'pi_3OwVUoBLBF0dttMQ3MIN3XUX_secret_WlPWFeMlkDQYJBDVhUTOZbhi3'),
(82, NULL, NULL, 1, '2024-03-20 20:13:40', 500, 80, 580, 'pi_3OwVWCBLBF0dttMQ4yz9Irtq_secret_MVJA4UhR5S6t8QK4w4pb3d3UO'),
(83, NULL, NULL, 1, '2024-03-20 20:14:24', 500, 80, 580, 'pi_3OwVWuBLBF0dttMQ1PpPWDd6_secret_Wyjp4pMa1QmIGaFfBegtY8b5t'),
(84, NULL, NULL, 1, '2024-03-20 20:17:33', 500, 80, 580, 'pi_3OwVZwBLBF0dttMQ0aByvGrg'),
(85, 23, NULL, 1, '2024-03-20 20:30:40', 500, 80, 580, 'pi_3OwVmfBLBF0dttMQ4Chd99D7'),
(86, 23, NULL, 1, '2024-03-20 20:35:45', 500, 80, 580, 'pi_3OwVrZBLBF0dttMQ1bagCI8y'),
(87, 23, NULL, 1, '2024-03-20 20:40:14', 500, 80, 580, 'pi_3OwVvvBLBF0dttMQ06I53XgO'),
(88, 23, 1, 1, '2024-03-20 20:42:20', 2300, 224, 2524, 'pi_3OwVxwBLBF0dttMQ4lydzJVT'),
(89, 23, 4, 1, '2024-03-20 20:42:38', 2300, 224, 2524, 'pi_3OwVyFBLBF0dttMQ2yJv1tnt'),
(90, 23, 3, 1, '2024-03-20 20:43:39', 2300, 224, 2524, 'pi_3OwVzEBLBF0dttMQ2aIiVEtQ'),
(91, 23, 2, 1, '2024-03-20 20:44:34', 2300, 224, 2524, 'pi_3OwW06BLBF0dttMQ2rqjjqpS'),
(92, 23, 1, 1, '2024-03-20 20:49:14', 1800, 144, 1944, 'pi_3OwW4cBLBF0dttMQ0EIAS1TY'),
(93, 23, 1, 1, '2024-03-20 20:49:16', 1800, 144, 1944, 'pi_3OwW4eBLBF0dttMQ2sHfjfWH'),
(94, 23, 1, 1, '2024-03-20 20:49:41', 1800, 144, 1944, 'pi_3OwW53BLBF0dttMQ1pRo0MvL'),
(95, 23, 1, 1, '2024-04-14 04:14:48', 22599, 3616, 26215, 'pi_3P5KTKBLBF0dttMQ0M1jGLYz'),
(96, 23, 1, 1, '2024-04-14 05:55:18', 22599, 3616, 26215, 'pi_3P5M2aBLBF0dttMQ4o10Nxr6'),
(97, 23, 1, 1, '2024-04-14 05:55:24', 22599, 3616, 26215, 'pi_3P5M2gBLBF0dttMQ0Ck4Egly'),
(98, 23, 1, 1, '2024-04-14 05:55:31', 21899, 3504, 25403, 'pi_3P5M2nBLBF0dttMQ0xYviJ8j');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_has_producto`
--

CREATE TABLE `pedido_has_producto` (
  `id` int(11) NOT NULL,
  `pedidoID` int(11) DEFAULT NULL,
  `productoID` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estadoProductoID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido_has_producto`
--

INSERT INTO `pedido_has_producto` (`id`, `pedidoID`, `productoID`, `cantidad`, `precio`, `importe`, `iva`, `total`, `estadoProductoID`) VALUES
(10, 18, NULL, 1, 1.00, 50.00, 5.25, 55.25, 1),
(11, 19, NULL, 1, 1.00, 50.00, 5.25, 55.25, 1),
(12, 20, NULL, 1, 1.00, 50.00, 5.25, 55.25, 1),
(13, 21, NULL, 1, 1.00, 50.00, 5.25, 55.25, 1),
(23, 31, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(24, 32, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(25, 33, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(26, 34, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(27, 35, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(28, 36, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(29, 37, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(46, 54, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(47, 55, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(48, 56, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(49, 57, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(50, 58, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(51, 59, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(52, 60, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(53, 61, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(54, 62, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(55, 63, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(56, 64, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(57, 65, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(58, 66, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(59, 67, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(60, 68, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(61, 69, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(62, 70, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(63, 71, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(64, 72, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(65, 73, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(66, 74, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(67, 75, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(68, 76, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(69, 77, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(70, 78, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(71, 79, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(72, 80, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(73, 81, 36, 1, 1.00, 1.00, 1.00, 1.00, 1),
(74, 82, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(75, 83, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(76, 84, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(77, 85, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(78, 86, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(79, 87, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(80, 88, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(82, 89, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(84, 90, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(86, 91, 36, 1, 1.00, 500.00, 80.00, 580.00, 1),
(91, 95, 42, 1, 1.00, 21899.00, 3504.00, 25403.00, 1),
(92, 95, 61, 2, 1.00, 700.00, 112.00, 812.00, 1),
(93, 96, 42, 1, 1.00, 21899.00, 3504.00, 25403.00, 1),
(94, 96, 61, 2, 1.00, 700.00, 112.00, 812.00, 1),
(95, 97, 42, 1, 1.00, 21899.00, 3504.00, 25403.00, 1),
(96, 97, 61, 2, 1.00, 700.00, 112.00, 812.00, 1),
(97, 98, 42, 1, 1.00, 21899.00, 3504.00, 25403.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `imagen` longtext NOT NULL,
  `codigo` longtext NOT NULL,
  `titulo` varchar(500) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `precio` double NOT NULL,
  `existencias` int(11) NOT NULL,
  `categoriaID` int(11) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `is_deleted` bit(2) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `status`, `imagen`, `codigo`, `titulo`, `descripcion`, `precio`, `existencias`, `categoriaID`, `CreatedDate`, `is_deleted`) VALUES
(28, 1, 'https://dlcdnwebimgs.asus.com/gain/1387056a-60c6-4579-a3f7-ccf65affd7fa/', 'AZUSTUF15', 'Asus Tuf Gaming F15', 'Asus Tuf Gaming F15', 799.99, 20, 5, '2024-03-03 14:30:38.000000', b'00'),
(29, 1, '', 'PLAY5', 'PlayStation 5 Slim ', 'Consola PlayStation 5 Slim - Versión Standard Nacional', 9479, 100, 13, '2024-03-03 14:30:38.000000', b'00'),
(30, 1, '', 'STEAMDECK', 'Steam Deck', 'Valve Steam Deck - Consola portátil de 512 GB - Windows', 11210.52, 10, 13, '2024-03-03 14:30:38.000000', b'00'),
(32, 1, '', 'MATE16', 'Huawei MateBook D16', 'HUAWEI Laptop Thin & Light MateBook D 16(Garantía en México) Intel 12th Core i5-12450H 8GB+512GB Win11, Type-C Fast Charging, Fingerprint', 12299, 25, 5, '2024-03-03 14:30:38.000000', b'00'),
(34, 1, 'https://sony.scene7.com/is/image/sonyglobalsolutions/Primary_image_black?$primaryshotPreset$&fmt=png-alpha&wid=440', 'WF1000XM5', 'Sony WF-1000XM5', 'Sony WF-1000XM5', 4998, 50, 7, '2024-03-03 14:30:38.000000', b'00'),
(35, 1, 'imagen10.jpg', 'NINTENDOSWITCH', 'Nintendo Switch', 'Nintendo Switch - OLED 64Gb Model: Mario Red Edition (Versión Internacional)', 4848, 8, 13, '2024-03-03 14:30:38.000000', b'00'),
(36, 1, 'https://m.media-amazon.com/images/I/81FFCoft1PL._AC_UF894,1000_QL80_.jpg', 'IPHONE15PROMAX', 'IPHONE 15 PRO MAX', 'iPhone 15 Pro MAX', 499.99, 91, 4, '2024-03-03 14:30:38.000000', b'00'),
(37, 1, '', 'LENOVOTHINKPADX1', 'Lenovo ThinkPad X1', 'Lenovo ThinkPad X1 Nano Business Laptop, 13” 2K Touchscreen, Intel Core i7-1180G7 Processor,16GB RAM, 256GB SSD, Backlit KB, Hybrid IR Webcam, Wi-Fi 6, Windows 10 Pro, Carbon Fiber (Renewed)', 11442.65, 20, 5, '2024-03-03 14:30:38.000000', b'00'),
(39, 1, '', 'XBOXSERIESX', 'Xbox Series X', 'Xbox Series X 1TB Consola - Versión Internacional', 8239, 60, 13, '2024-03-03 14:30:38.000000', b'00'),
(40, 1, '', 'MSIGF63', 'MSI Thin GF63', 'MSI Thin GF63 15.6\" 144Hz Gaming Laptop: 12th Gen Intel Core i7, NVIDIA GeForce RTX 4050, 16GB DDR4, 512GB NVMe SSD, Type-C, Cooler Boost 5, Win11 Home: Black 12VE-066US', 23999.99, 5, 5, '2024-03-03 14:30:38.000000', b'00'),
(42, 1, 'https://clevercel.mx/cdn/shop/products/apple-iphone-13-01_453x_92710f61-c8bf-46b1-b5db-14154f25662c.jpg?v=1671052119', 'IPHONE13', 'IPHONE 13', 'iPhone 13', 21899, 36, 4, '2024-03-03 16:43:05.000000', b'00'),
(43, 1, 'https://i5.walmartimages.com.mx/mg/gm/3pp/asr/095b6de6-fc8d-488d-9670-566bddf78cb2.8778f140296b59b0f1b76d4c31e59036.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 'GOOGLEPIXEL6', 'GOOGLE PIXEL 6', 'Google Pixel 6', 799.99, 30, 4, '2024-03-03 16:43:05.000000', b'00'),
(44, 1, 'https://m.media-amazon.com/images/I/51sr+MNAq7S._AC_UF894,1000_QL80_.jpg', 'ONEPLUS9', 'ONEPLUS 9', 'OnePlus 9', 699.99, 25, 4, '2024-03-03 16:43:05.000000', b'00'),
(45, 1, 'https://i5.walmartimages.com.mx/mg/gm/3pp/asr/b499a33c-1a19-48ef-888e-daaa55d35718.28f03daf36f49ab7947d5663219bec36.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 'S23ULTRA', 'SAMSUNG GALAXY S23 Ultra', 'Galaxy S23 Ultra', 599.99, 35, 4, '2024-03-03 16:43:05.000000', b'00'),
(46, 1, 'https://m.media-amazon.com/images/I/61pyhCHetuL._AC_UF894,1000_QL80_.jpg', 'GOOGLEPIXEL8', 'GOOGLE PIXEL 8', 'Google Pixel 8', 1799.99, 20, 4, '2024-03-03 16:43:05.000000', b'00'),
(47, 1, 'https://m.media-amazon.com/images/I/71x5ntU43-L._AC_UF894,1000_QL80_.jpg', 'NOTHING2', 'Nothing Phone 2 ', 'Nothing Phone 2', 499.99, 15, 4, '2024-03-03 16:43:05.000000', b'00'),
(48, 1, 'https://cdn1.coppel.com/images/catalog/pm/2193563-1.jpg', 'MOTOROLAEDGE30', 'Moto Edge 30 Neo ', 'Moto Edge 30 Neo Morado, Equipo Nacional, Desbloqueado, con 2 años de garantía\n', 599.99, 30, 4, '2024-03-03 16:43:05.000000', b'00'),
(49, 1, 'https://http2.mlstatic.com/D_NQ_NP_906956-MLA48319013969_112021-O.webp', 'ASUSROGPHONE', 'ASUS ROG PHONE 8 Pro', 'Asus ROG Phone 8 Pro Gen3 24GB RAM 1TB - Negro\n', 999.99, 10, 4, '2024-03-03 16:43:05.000000', b'00'),
(51, 1, 'https://m.media-amazon.com/images/I/71-Q5LSrC0S.jpg', 'DELLXPS15', 'Dell XPS 15', 'Dell XPS 15', 1799.99, 30, 5, '2024-03-03 17:19:36.000000', b'00'),
(52, 1, 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-space-gray-select-201810?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1664472289661', 'MACBOOKAIR', 'MacBook Air M1', 'MacBook Air M1', 1299.99, 25, 5, '2024-03-03 17:19:36.000000', b'00'),
(53, 1, 'https://i5.walmartimages.com.mx/mg/gm/3pp/asr/cd3dd8c0-c1c1-4168-b42e-5c34b0b4987b.b54b5f01bc2d71cc45c2ab0f36bd4e18.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 'ASUSROGZEPHYRUS', 'ASUS ROG Zephyrus', 'ASUS ROG Zephyrus', 2299.99, 15, 5, '2024-03-03 17:19:36.000000', b'00'),
(54, 1, 'https://storage.googleapis.com/catalog-pictures-carrefour-es/catalog/pictures/hd_510x_/8435632644445_1.jpg', 'LENOVOLEGION5', 'Lenovo Legion 5', 'Lenovo Legion 5', 1499.99, 20, 5, '2024-03-03 17:19:36.000000', b'00'),
(55, 1, 'https://m.media-amazon.com/images/I/51BNckWotKL.jpg', 'MSIGAMINGLAPTOP', 'MSI Gaming Laptop', 'MSI Gaming Laptop', 1999.99, 10, 5, '2024-03-03 17:19:36.000000', b'00'),
(56, 1, 'https://cdn.electroworld.cz/images/product-w510h463/1/2215781.jpg', 'MACBOOKPRO', 'MacBook Pro', 'MacBook Pro', 2399.99, 15, 5, '2024-03-03 17:19:36.000000', b'00'),
(57, 1, 'https://altatecmonterrey.com/5788-thickbox_default/portatil-laptop-huawei-matebook-x-pro-2020-139-pulgadas-procesador-intel-core-i5-memoria-16-gb-ddr-512-ssd-windows-10-home.jpg', 'MATEXPRO', 'MateBook X Pro', 'HUAWEI MateBook X Pro - Laptop de 13.9\" de Décima Generación Intel® Core™ i5-10210U, Windows 10 Home, Memoria de 512 GB ROM + 16 GB RAM, GPU Intel® UHD Graphics, Gris Espacial\n', 1599.99, 25, 5, '2024-03-03 17:19:36.000000', b'00'),
(58, 1, '', 'AIR3', ' AirPods Tercera generación', 'Apple AirPods (Tercera generación) con Estuche de Carga MagSafe', 3699, 20, 7, '2024-03-03 17:19:36.000000', b'00'),
(59, 1, '', 'A400', 'Kingston SSD A400', 'Kingston SSD A400, Capacidad: 480GB, Factor de Forma: SATA 2.5, Interfaz: SATA Rev. 3.0 (6Gb/s), Lectura: 500MB/s y Escritura: 450MB/s, Numero de Parte: SA400S37/480G', 594, 10, 10, '2024-03-03 17:19:36.000000', b'00'),
(60, 1, '', 'ADATA2U', 'ADATA Ultimate SU630 ', 'ADATA Ultimate SU630 Unidad de Estado sólido 2.5\" 480 GB SATA QLC 3D NAND - Disco Duro sólido (480 GB, 2.5\", 520 MB/s)', 570, 15, 10, '2024-03-03 17:19:36.000000', b'00'),
(61, 1, 'https://mxsonyb2c.vtexassets.com/arquivos/ids/308892/38ea5815d12ab90a45b9b1a35520b794.jpg?v=637640820708270000', 'SONYWH1000XM4', 'Sony WH-1000XM4', 'Sony WH-1000XM4', 349.99, 44, 7, '2024-03-03 21:03:33.000000', b'00'),
(62, 1, 'https://tiendasishop.com/media/catalog/product/a/i/airpods_pro_2nd_gen_pdp_image_position-1__usen.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700', 'AIRPODSPRO2', 'Apple AirPods Pro 2', 'AirPods Pro', 4999, 40, 7, '2024-03-03 21:03:33.000000', b'00'),
(63, 1, 'https://m.media-amazon.com/images/I/71o53boVN6L.jpg', 'BOSEQUIETCOMFORT45', 'Bose QuietComfort 45 ', 'Bose QuietComfort 45 Audífonos Inalámbricos con Cancelación de Ruido, White Smoke', 5389.3, 30, 7, '2024-03-03 21:03:33.000000', b'00'),
(64, 1, 'https://images-na.ssl-images-amazon.com/images/I/714dBVaYGJL._AC_UL600_SR600,600_.jpg', 'SENNHEISERHD660S2', 'Sennheiser HD 660 ', 'Sennheiser HD 660 S2 Negros', 9027.67, 25, 7, '2024-03-03 21:03:33.000000', b'00'),
(65, 1, 'https://i5.walmartimages.com.mx/mg/gm/3pp/asr/0540af6b-0521-47f1-b992-76ea1f33c7f4.2a0440041749242a328b7203b88d1ee9.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 'FREECLIP', 'HUAWEI FreeClip', 'HUAWEI FreeClip, Negro, Audífono, Diseño estético Innovador, Uso Ligero como una Pluma', 3177.98, 35, 7, '2024-03-03 21:03:33.000000', b'00'),
(66, 1, 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MX472?wid=1144&hei=1144&fmt=jpeg&qlt=95&.v=1686764364078', 'BEATSSOLO3', 'Beats Solo 3', 'Beats by Dr. Dre - Beats Solo3 - Auriculares inalámbricos en la oreja - Rojo', 299.99, 20, 7, '2024-03-03 21:03:33.000000', b'00'),
(67, 1, 'https://mx.sennheiser-hearing.com/cdn/shop/products/hd660s2_iso_final_480x480.jpg?v=1682024795', 'JABRAELITE75T', 'Jabra Elite 75t', 'Jabra Elite 75t', 149.99, 50, 7, '2024-03-03 21:03:33.000000', b'00'),
(68, 1, '', 'SAMSUNGGALAXYBUDSPRO', 'Samsung Galaxy Buds Pro', 'Samsung Galaxy Buds', 129.99, 40, 7, '2024-03-03 21:03:33.000000', b'00'),
(69, 1, '', 'DOT5', 'Echo Dot 5', 'Echo Dot (5.ª generación, modelo de 2022) | Bocina inteligente con Alexa | Negro', 1299, 300, 14, '2024-03-03 21:03:33.000000', b'00'),
(70, 1, '', 'POP', 'ECHO POP', 'Echo Pop | Bocina inteligente y compacta con sonido definido y Alexa | Negro', 999, 500, 14, '2024-03-03 21:03:33.000000', b'00'),
(71, 0, 'https://m.media-amazon.com/images/I/61h8kpNMqpL.__AC_SX300_SY300_QL70_ML2_.jpg', 'REDMAGIC8PRO', 'REDMAGIC 8 Pro', 'REDMAGIC 8 Pro Smartphone 5G, Teléfono Gaming 120Hz, Pantalla Completa 6.8\", Cámara Debajo de la Pantalla, Teléfono Android 6500mAh, Snapdragon 8 Gen 3, 16+512GB, Cargador 80W, Dual-Sim Transparent\n', 12899, 50, 4, '0000-00-00 00:00:00.000000', b'00'),
(72, 0, 'https://m.media-amazon.com/images/I/61h8kpNMqpL.__AC_SX300_SY300_QL70_ML2_.jpg', 'REDMAGIC9PRO', 'REDMAGIC 9 Pro', 'REDMAGIC 9 Pro Smartphone 5G, Teléfono Gaming 120Hz, Pantalla Completa 6.8\", Cámara Debajo de la Pantalla, Teléfono Android 6500mAh, Snapdragon 8 Gen 3, 16+512GB, Cargador 80W, Dual-Sim Transparent\r\n', 16899, 50, 4, '2024-03-16 17:54:09.000000', b'00'),
(73, 0, 'https://m.media-amazon.com/images/I/51ClQ5sgthL._AC_SX522_.jpg', 'POCOX6PRO', 'Xiaomi POCO X6 Pro', 'Xiaomi POCO X6 Pro Smartphone 12GB RAM 512GB ROM, Dimensity 8300-Ultra, 6.67” AMOLED Display, 5000mAh Battery 67W Turbo Charging, 64MP Triple Camera, Black\r\n', 6992, 50, 4, '2024-03-16 17:56:16.000000', b'00'),
(75, 0, 'https://m.media-amazon.com/images/I/51+02t1vkAL._AC_SX522_.jpg', 'SGalaxyA34', 'SAMSUNG Galaxy A34', 'qdqwd', 4383, 50, 4, '2024-03-16 17:57:39.000000', b'00'),
(76, 1, 'https://m.media-amazon.com/images/I/41+jLq6yJKL._AC_SX342_SY445_.jpg', 'IPHONE15', 'iPhone 15', 'El último iPhone de Apple con chip A15 Bionic y modo nocturno mejorado.', 999.99, 50, 4, '2024-03-16 18:01:41.000000', b'00'),
(77, 1, 'https://m.media-amazon.com/images/I/51UtM-A3fdL._AC_UL320_.jpg', 'IPHONE13PRO', 'iPhone 13 Pro', 'La versión Pro del iPhone 13 con pantalla ProMotion y sistema de triple cámara.', 1299.99, 40, 4, '2024-03-16 18:01:41.000000', b'00'),
(78, 1, 'https://m.media-amazon.com/images/I/51nGxi-shlL._AC_UL320_.jpg', 'IPHONE13MINI', 'iPhone 13 Mini', 'El iPhone 13 en un tamaño compacto, perfecto para quienes prefieren dispositivos más pequeños.', 799.99, 30, 4, '2024-03-16 18:01:41.000000', b'00'),
(80, 1, 'https://m.media-amazon.com/images/I/41bIlvE1rdL._AC_UL320_.jpg', 'IPHONE12', 'iPhone 12', 'El iPhone 12 con 5G, chip A14 Bionic y sistema de doble cámara.', 899.99, 35, 4, '2024-03-16 18:01:41.000000', b'00'),
(81, 1, 'https://m.media-amazon.com/images/I/81FFCoft1PL._AC_UL320_.jpg', 'IPHONE-15-PRO-MAX', 'IPHONE 15 PRO MAX', 'El iPhone 15 Pro Max es el teléfono más avanzado de Apple hasta la fecha. Cuenta con una pantalla Super Retina XDR de 6.7 pulgadas, un chip A17 Bionic ultra potente y un sistema de cámara trasera triple con sensores de 48MP.', 1299, 100, 4, '2024-03-16 18:05:38.000000', b'00'),
(82, 1, 'https://m.media-amazon.com/images/I/81ebvO7EZxL._AC_UL320_.jpg', 'IPHONE-15-PRO', 'IPHONE 15 PRO', 'El iPhone 15 Pro es una versión ligeramente menos potente del iPhone 15 Pro Max. Cuenta con una pantalla Super Retina XDR de 6.1 pulgadas, un chip A17 Bionic y un sistema de cámara trasera triple con sensores de 48MP.', 1199, 120, 4, '2024-03-16 18:05:38.000000', b'00'),
(84, 1, 'https://m.media-amazon.com/images/I/51uD1lmrV8L._AC_UL320_.jpg', 'IPHONE-14-PRO-MAX', 'IPHONE 14 PRO MAX', 'El iPhone 14 Pro Max sigue siendo un teléfono excelente. Cuenta con una pantalla Super Retina XDR de 6.7 pulgadas, un chip A16 Bionic y un sistema de cámara trasera triple con sensores de 48MP.', 1099, 80, 4, '2024-03-16 18:05:38.000000', b'00'),
(85, 1, 'https://m.media-amazon.com/images/I/41al5-lNvML._AC_UL320_.jpg', 'IPHONE-14-PRO', 'IPHONE 14 PRO', 'El iPhone 14 Pro es una versión ligeramente menos potente del iPhone 14 Pro Max. Cuenta con una pantalla Super Retina XDR de 6.1 pulgadas, un chip A16 Bionic y un sistema de cámara trasera triple con sensores de 48MP.', 999, 100, 4, '2024-03-16 18:05:38.000000', b'00'),
(86, 1, 'https://m.media-amazon.com/images/I/61-MT8AQAPL._AC_UL320_.jpg', 'IPHONE-SE-3', 'IPHONE SE 3', 'El iPhone SE (3ra generación) es una opción asequible para entrar en el ecosistema Apple. Cuenta con una pantalla Retina HD de 4.7 pulgadas, un chip A15 Bionic y un sistema de cámara trasera única de 12MP.', 499, 200, 4, '2024-03-16 18:05:38.000000', b'00'),
(87, 1, 'https://m.media-amazon.com/images/I/61wIBKEgTSL._AC_UL320_.jpg', 'SAMSUNG-GALAXY-Z-FOLD5', 'SAMSUNG GALAXY Z FOLD5', 'El Samsung Galaxy Z Fold 5 es un teléfono plegable con una pantalla AMOLED de 7.6 pulgadas y un chip Snapdragon 8 Gen 2.', 1999, 150, 4, '2024-03-16 18:10:40.000000', b'00'),
(88, 1, 'https://m.media-amazon.com/images/I/51Z6YhPOq2L._AC_UL320_.jpg', 'SAMSUNG-GALAXY-Z-FLIP5', 'SAMSUNG GALAXY Z FLIP5', 'El Samsung Galaxy Z Flip 5 es un teléfono plegable con una pantalla AMOLED de 6.7 pulgadas y un chip Snapdragon 8 Gen 2.', 1299, 200, 4, '2024-03-16 18:10:40.000000', b'00'),
(94, 0, '', 'APPLEWATCHULTRA', 'Apple Watch Ultra', 'Apple Watch Ultra 2 [GPS+Cellular] Caja de Titanio de 49 mm Muy Robusta y Correa Alpine Azul Chica (Smartwatch). GPS de precisión, Botón de Acción, batería para Varios días, Brillante Pantalla Retina', 16199.1, 1000, 12, '2024-04-08 21:59:45.060000', b'00'),
(95, 0, '', 'WATCH6', 'Galaxy Watch 6 44mm', 'SAMSUNG Watch 6 44 mm Grafito', 4272, 1000, 12, '2024-04-08 22:01:32.568000', b'00'),
(96, 0, 'http://localhost:3000/uploads/98ec71f8-a155-4be7-81fd-128dc3cec978.jpg', 'HWATCH4', 'Huawei Watch GT4', 'Huawei Watch GT4 (GPS) (Garantía en México) Smartwatch 46mm Negro Mate, hasta 7 Días de BaterÍa. Ayuda al Cuidado de la Salud Oxígenacion de la Sangre Resistente al Agua, Compatible con Android & iOS', 3383, 1000, 12, '2024-04-08 22:03:11.797000', b'00'),
(97, 0, 'http://localhost:3000/uploads/ff07cebc-f082-4282-8139-b7f5b869fcec.jpg', 'BAND8', 'HUAWEI Band 8', 'HUAWEI Band 8 (Garantía en México), Smartwatch Larga Duración de 2 semanas, SMS/Whatsapp de Respuesta rápida, Banda Inteligente, Compatible con Android & iOS, Rosa', 819, 1000, 12, '2024-04-08 22:04:17.887000', b'00'),
(98, 0, 'http://localhost:3000/uploads/a2381314-baaa-4544-9e0e-3c581d3fd8c9.jpg', 'MIBAND8', 'Xiaomi Mi Band 8', 'Xiaomi Mi Band 8 Pulsera inteligente con pantalla AMOLED, frecuencia cardíaca, oxígeno en sangre, reloj deportivo Bluetooth, rastreo Fitness, reloj inteligente (Versión China NFC Negro)', 799, 1000, 12, '2024-04-08 22:05:13.290000', b'00'),
(99, 0, 'http://localhost:3000/uploads/575cc83a-a6b5-43ae-a908-cf5a83564dea.jpg', 'APPLEWATCHSE2', 'Apple Watch SE 2023', 'Apple Watch SE 2023 (2a Gen) [GPS] Caja de Aluminio Blanco Estelar de 40 mm y Correa Deportiva Blanco Estelar S/M (Smartwatch).Detección de Choques,monitoreo de frecuencia Cardiaca,Resistente al Agua', 5299, 1000, 12, '2024-04-08 22:06:12.543000', b'00'),
(100, 0, 'http://localhost:3000/uploads/ec33c975-6ea6-450b-8112-876c33a3f223.jpg', 'SERIES9', 'Apple Watch Series 9', 'Apple Watch Series 9 [GPS] con Caja de Aluminio Color Plata de 41 mm y Correa Deportiva Azul tormenta S/M (Smartwatch).Apps ECG y Oxígeno en Sangre, Pantalla Retina Siempre Activa, Resistente al Agua', 8499, 1000, 12, '2024-04-08 22:08:05.569000', b'00'),
(101, 0, 'http://localhost:3000/uploads/cd518751-fc75-41dc-a555-c747dd772db8.jpg', 'GARMIN56', 'Garmin Vivoactive 5', 'Garmin Vivoactive 5 Orchid Metalic', 5986.82, 1000, 12, '2024-04-08 22:09:11.116000', b'00'),
(102, 0, 'http://localhost:3000/uploads/084b16a7-23a3-4509-9016-d59d23a3e263.jpg', 'Xbox Series S', 'Xbox Series S', 'Microsoft Game Studios - Consola Xbox Series S', 5999, 1000, 13, '2024-04-15 01:39:05.996000', b'00'),
(103, 0, 'http://localhost:3000/uploads/93b8b5bf-66f0-41a3-b64b-8bb979c73b6c.jpg', ' PlayStation 4', ' PlayStation 4', 'Sony PlayStation 4 Console vídeo juego [video game](Reacondicionado)', 4821.37, 1000, 13, '2024-04-15 01:39:48.419000', b'00'),
(104, 0, 'http://localhost:3000/uploads/832dd424-3b9f-4135-a136-30a02e5ddb31.jpg', 'Xbox 360', 'Xbox 360', 'Xbox 360 250GB Slim Console - (Reacondicionado)', 3577.42, 1000, 13, '2024-04-15 01:40:27.085000', b'00'),
(105, 0, 'http://localhost:3000/uploads/053394dd-2092-4abe-963e-a084e84dcd0a.jpg', 'Halo 4', 'Halo 4', 'Microsoft Halo 4 - Xbox 360 (Juego estándar) (Renovado)', 343.87, 100, 13, '2024-04-15 01:41:06.918000', b'00'),
(106, 0, 'http://localhost:3000/uploads/7755a7f2-1208-44df-b04a-03ce4e9f1d4f.jpg', 'CATHERINE FULL BODY', 'CATHERINE FULL BODY', 'PS4 CATHERINE FULL BODY (EUR)', 884.03, 100, 13, '2024-04-15 01:41:59.459000', b'00'),
(107, 0, 'http://localhost:3000/uploads/420b1117-54ea-4d8d-ab45-62cf5bb718fc.jpg', 'Gears of War 3 ', 'Gears of War 3 ', 'Microsoft Gears of War 3 (renovado)', 301.89, 100, 13, '2024-04-15 01:43:51.129000', b'00'),
(108, 0, 'http://localhost:3000/uploads/0b6d4977-3273-4e41-b999-db0366aa1252.jpg', 'wdd', 'qwdq', 'qdqwd', 3, 3, 4, '2024-04-15 01:45:30.152000', b'00'),
(109, 0, 'http://localhost:3000/uploads/ed3ad638-4d3f-4642-8f7e-5683224ac031.jpg', 'qwdqwd', 'qdqd', 'dqwd', 333, 33, 4, '2024-04-15 01:47:26.878000', b'00'),
(110, 0, 'http://localhost:3000/uploads/b90a2bdc-7a19-4dfb-8069-513dd1982706.jpg', 'Echo Show 5', 'Echo Show 5', 'Nuevo Echo Show 5 (3.ª generación, modelo de 2023) | Pantalla inteligente con graves más profundos y sonido más claro | Negro', 2049, 100, 14, '2024-04-15 01:48:29.220000', b'00'),
(111, 0, 'http://localhost:3000/uploads/ef4ffaad-689b-4fce-9ba1-14be8db6eaa2.jpg', 'Echo Show 10', 'Echo Show 10', 'Echo Show 10 - Pantalla inteligente HD con movimiento y Alexa - Negro', 6299, 100, 14, '2024-04-15 01:50:19.593000', b'00'),
(112, 0, 'http://localhost:3000/uploads/1e53c5c3-afde-49cd-adb6-da94cd9ac8e0.jpg', 'Echo Studio', 'Echo Studio', 'Echo Studio | Nuestra bocina inteligente con el mejor sonido, Dolby Atmos y Alexa | Blanco', 4499, 100, 14, '2024-04-15 01:52:25.181000', b'00'),
(113, 0, 'http://localhost:3000/uploads/748fb191-5ddd-498d-8151-1e97c1ca1849.jpg', 'Amazon Fire TV Stick', 'Amazon Fire TV Stick', 'Amazon Fire TV Stick con control remoto por voz Alexa (incluye control de TV), Dispositivo de streaming HD, edición 2021', 799, 100, 14, '2024-04-15 01:53:05.228000', b'00'),
(114, 0, 'http://localhost:3000/uploads/a44f6556-1b39-4765-ac7f-5c899686ed42.jpg', 'Echo Show 15', 'Echo Show 15', 'Echo Show 15 | Pantalla inteligente Full HD de 15.6\" con Alexa y Fire TV integrados | No incluye control remoto', 6299, 100, 14, '2024-04-15 01:55:11.689000', b'00'),
(115, 0, 'http://localhost:3000/uploads/1ce0fa27-b562-4b76-9682-485e896a699b.jpg', 'Echo Show 8', 'Echo Show 8', 'Echo Show 8 (2da Gen) Base ajustable - Blanco', 599, 100, 14, '2024-04-15 01:56:03.585000', b'00'),
(116, 0, 'http://localhost:3000/uploads/58b2eeef-a38d-42a4-9102-3d8105f451fb.jpg', 'Ring Video Doorbell', 'Ring Video Doorbell', 'Ring Video Doorbell – video HD 1080p, detección de movimiento mejorada y fácil instalación – Bronce veneciano (Edición 2020)', 1999, 100, 14, '2024-04-15 01:56:54.529000', b'00'),
(117, 0, 'http://localhost:3000/uploads/13809ed0-c3e8-466a-b3ed-b47eddf7401d.jpg', 'HUAWEI Band 8', 'HUAWEI Band 8', 'HUAWEI Band 8 (Garantía en México), Smartwatch Larga Duración de 2 semanas, SMS/Whatsapp de Respuesta rápida, Banda Inteligente, Compatible con Android & iOS, Negro', 734.92, 100, 12, '2024-04-15 01:58:21.318000', b'00'),
(118, 0, 'http://localhost:3000/uploads/a7d42afc-bbaa-4fe9-9ed4-0cd84eeeee68.jpg', 'HUAWEI Watch Fit 2 ', 'HUAWEI Watch Fit 2 ', 'HUAWEI Watch Fit 2 (GPS) (Garantía en México)- Reloj Inteligente, Pantalla AMOLED 1.74\'\', Bluetooth, Correa de Silicona, Compatible con Android & iOS, Negro', 2099, 100, 12, '2024-04-15 01:59:04.547000', b'00'),
(119, 0, 'http://localhost:3000/uploads/7d6d5f21-f9d6-4d8b-9f17-bbc2eb4ddded.jpg', 'Xiaomi Redmi Watch 3', 'Xiaomi Redmi Watch 3', 'Xiaomi Redmi Watch 3 Active 1.83\" Black', 845, 100, 12, '2024-04-15 01:59:49.874000', b'00'),
(120, 0, 'http://localhost:3000/uploads/a407ebbd-e863-45b7-9207-2928072fcce3.jpg', 'GTR 3 Pro', 'GTR 3 Pro', 'Amazfit Smartwatch GTR 3 Pro, con GPS, pantalla Ultra HD, batería de 12 días, Bluetooth 5.0, Negro.', 1599, 100, 12, '2024-04-15 02:00:54.764000', b'00'),
(121, 0, 'http://localhost:3000/uploads/c79f2463-7003-46a1-abe5-cf0c262324a9.jpg', 'SSDNV2', 'SSD NV2 1000 GB', 'Kingston SSD NV2, Capacidad: 1000 GB, Factor de Forma: M.2 2280, Interfaz: NVMe PCIe Gen 4.0 x 4 Carriles, Lectura: 3500MB/s y Escritura: 2100MB/s, Numero de Parte: SNV2S/1000G', 1126, 100, 10, '2024-04-15 02:16:01.736000', b'00'),
(122, 0, 'http://localhost:3000/uploads/abaf99a4-e8f9-4d58-979d-bde0c6a2f24c.jpg', 'SSD1TB', 'SSD de 1 TB', 'ADATA ASU800SS-1TT-C - Unidad de Estado sólido de 1 TB, Color Negro', 1420, 100, 10, '2024-04-15 02:16:49.159000', b'00'),
(123, 0, 'http://localhost:3000/uploads/dee69ea7-015b-4789-90b2-fa5026bbf8fa.jpg', 'WDS480G2G0A ', 'Disco SSD 480 GB', 'Western Digital WDS480G2G0A Disco SSD Interno, SATA III, 480 GB, 2.5\", Color Negro', 699, 100, 10, '2024-04-15 02:17:35.825000', b'00'),
(124, 0, 'http://localhost:3000/uploads/6ec3c274-ebdb-4147-925f-e43c65cde67c.jpg', 'XPG S40G 512GB', 'XPG S40G 512GB', 'XPG S40G 512GB RGB 3D NAND PCIe Gen3x4 NVMe 1.3 M.2 2280 SSD Interno (AS40G-512GT-C)', 709, 100, 10, '2024-04-15 02:18:10.835000', b'00'),
(125, 0, 'http://localhost:3000/uploads/d1ff20f1-057f-44c1-8de9-c7cfe2dbc2f0.jpg', 'Samsung 970 EVO Plus SSD 2TB', 'Samsung 970 EVO Plus SSD 2TB', 'Samsung 970 EVO Plus SSD 2TB NVMe M.2 Disco duro interno de estado sólido con tecnología V-NAND, almacenamiento y expansión de memoria para juegos, gráficos con control de calor, velocidad máxima, MZ-V7S2T0B/AM', 1399, 1000, 10, '2024-04-15 02:19:01.559000', b'00'),
(126, 0, 'http://localhost:3000/uploads/cfabd9dc-6974-403a-811c-167c89294977.jpg', 'HP SSD 120GB', 'HP SSD 120GB', 'HP Unidad de Estado Sólido de 2.5\", 560 MB/s Lectura, 500 MB/s Escritura, 120GB', 331.65, 100, 10, '2024-04-15 02:19:43.548000', b'00'),
(127, 0, 'http://localhost:3000/uploads/c27845aa-015c-4897-8426-ade5a8956c6f.jpg', 'Samsung 870', 'Samsung 870', 'Samsung 870 QVO SATA III 2.5\" SSD 2TB (MZ-77Q2T0B)', 3013.22, 100, 10, '2024-04-15 02:20:36.064000', b'00'),
(128, 0, 'http://localhost:3000/uploads/f2258d45-4da1-4631-ba5a-c17d0e0d7099.jpg', 'TEAMGROUP ', 'T-Force Vulcan Z 1TB', 'TEAMGROUP T-Force Vulcan Z 1TB SLC Cache 3D NAND TLC 2.5 Pulgadas SATA III Unidad Interna de Estado sólido SSD (R/W Velocidad de hasta 550/500 MB/s) T253TZ001T0C101', 1143.62, 100, 10, '2024-04-15 02:21:17.852000', b'00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nombre` longtext NOT NULL,
  `contacto` longtext NOT NULL,
  `empresa` longtext NOT NULL,
  `direccion` longtext NOT NULL,
  `telefono` longtext NOT NULL,
  `correo_electronico` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `contacto`, `empresa`, `direccion`, `telefono`, `correo_electronico`, `status`, `CreatedDate`) VALUES
(1, 'Oscar', 'Contacto', 'Empresa1', 'Dirección1', '123456789', 'oscar@empresa1.com', 1, '0001-01-01 00:00:00.000000'),
(2, 'Lucía', 'Contacto', 'Empresa2', 'Dirección2', '987654321', 'lucia@empresa2.com', 1, '0001-01-01 00:00:00.000000'),
(3, 'Carlos', 'Contacto', 'Empresa3', 'Dirección3', '456789123', 'carlos@empresa3.com', 1, '0001-01-01 00:00:00.000000'),
(4, 'Laura', 'Contacto', 'Empresa4', 'Dirección4', '789123456', 'laura@empresa4.com', 1, '0001-01-01 00:00:00.000000'),
(5, 'Miguel', 'Contacto', 'Empresa5', 'Dirección5', '321654987', 'miguel@empresa5.com', 1, '0001-01-01 00:00:00.000000'),
(6, 'Angel', '123', 'Nike', 'Av lakin', '998173829', 'Angel@gmail.com', 0, '0001-01-01 00:00:00.000000'),
(7, 'Lola', '3234234234234', 'Bepensa', 'Region 248', '9983170079', 'myoscompany@gmail.com', 0, '0001-01-01 00:00:00.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(1, 'Cliente'),
(2, 'Root'),
(3, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_session`
--

CREATE TABLE `user_session` (
  `id` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user_session`
--

INSERT INTO `user_session` (`id`, `expires_at`, `user_id`) VALUES
('4fvpurs1eif0l42tc2pg9vlehuwwqny3m92u8fc3', '2024-04-05 21:12:32', '9'),
('5ddrzt82m9ag4413pe1wqm2ju7bsaq2r61rbdnf6', '2024-04-05 16:07:59', '18'),
('68v4z971003q7jztrzml855lmn2sdr570rdqcxc6', '2024-04-05 18:13:04', '9'),
('6n0z7p7twhtkxhowak48q2avvo32n4410f3a36jv', '2024-04-05 15:33:39', '18'),
('7uuodgnozjm4sg6fdxkusifomoeou4m4vp05fr0g', '2024-04-03 16:37:22', '9'),
('95izgf0qzf824fs2iyjw30q4ic7n8fn7ab1x5kt4', '2024-04-05 16:08:38', '9'),
('c9nthv77syd5pg1yzvvigc3xxpbgukq2avoi81ls', '2024-04-01 10:52:50', '9'),
('d77y8bf5nbvx8gvu66y9uj6jsbayplivi2nn0d4f', '2024-03-31 23:51:46', '1'),
('hma0rv9rnn40qet715gy9z1xk00npdfzarrds3w0', '2024-04-05 16:10:36', '18'),
('hy2av9pnndbm8bgua97k0rhooe8lra5pfd71d8cd', '2024-03-31 23:55:22', '1'),
('id1pmw2mstc3zya4bma2zc79nh6m24pa60rwnekv', '2024-04-01 10:44:53', '1'),
('kl79zhi8969k9qdk0vee5udzv74vox3ockxrcp5a', '2024-04-01 09:34:48', '1'),
('lmee8y4fwki8w3ijj1p5fm90qz99qhac1zmraaxh', '2024-04-05 16:09:45', '18'),
('m7wwixwg4moyxkhi8dlxpvjj0n4mkklnfwhgy0ly', '2024-03-31 23:51:18', '1'),
('ng6zzwd6cc8bg6nmqzb7enxscwose335s9ari7iu', '2024-04-04 22:40:45', '9'),
('ockal6dt3phjx8g36bkelj1669bkssk2reuu8smb', '2024-04-01 09:47:15', '1'),
('s0f7h3wtvhlxppmhu7nkbax3s8munl016hb82lw1', '2024-04-01 10:43:03', '1'),
('sv51hkvz5mqn74hs7mgcamcvk4wis8xcdy7qgk9n', '2024-04-05 16:10:01', '18'),
('tjntw2d5p799yn1th3te5p7ab2yj8h13od8knb6s', '2024-04-05 16:08:16', '9'),
('xoin72siz5ffzamvqenlown44qo4chjftjvhk1dh', '2024-04-01 10:43:03', '1'),
('xy5ynm97nnx0954d5a4zlpuyevyvq6el7f8aemi0', '2024-04-06 18:54:04', '23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` longtext DEFAULT NULL,
  `apellidos` longtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `correo` longtext NOT NULL,
  `nombreUsuario` longtext NOT NULL,
  `Imagen` longtext NOT NULL,
  `RolID` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `password`, `correo`, `nombreUsuario`, `Imagen`, `RolID`, `is_deleted`) VALUES
(1, 'Alberto', 'Estrada', '$2a$10$y4ofLZWu7y89kYewz7REhOgvOSVTD5q06BxUySsYbZbJ/HGD6XJgq', 'prueba1@gmail.com', 'Furro1', '1', 1, 1),
(7, 'Edison', 'Roblez', '$2a$10$y4ofLZWu7y89kYewz7REhOgvOSVTD5q06BxUySsYbZbJ/HGD6XJgq', 'prueba11@gmail.com', '', '1', 1, 0),
(8, 'Angel', 'Mendez', '$2a$10$y4ofLZWu7y89kYewz7REhOgvOSVTD5q06BxUySsYbZbJ/HGD6XJgq', 'prueba1@gmail.com', '', '1', 1, 0),
(9, 'John', 'Doe', '$2a$10$y4ofLZWu7y89kYewz7REhOgvOSVTD5q06BxUySsYbZbJ/HGD6XJgq', 'root@gmail.com', 'john_doe', 'https://octodex.github.com/images/orderedlistocat.png', 2, 0),
(23, 'Marco', 'Catarino', '$2a$10$y4ofLZWu7y89kYewz7REhOgvOSVTD5q06BxUySsYbZbJ/HGD6XJgq', 'prueba@gmail.com', 'john_doe', 'https://avatars.githubusercontent.com/u/47135307?v=4', 1, 0),
(24, 'Miguel ', 'Angel', '$2a$10$lpELanUMKFPfy1G.NmmT.eWbck.pslXSELu/ZwvbiT5VpmhL3ERii', 'prueba4@gmail.com', '123', '123', 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarioFK` (`usuarioID`),
  ADD KEY `productoFK` (`productoID`) USING BTREE;

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccion_entrega`
--
ALTER TABLE `direccion_entrega`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarioFK` (`usuarioId`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UsuarioFK` (`UsuarioFK`),
  ADD KEY `ProveedorFK` (`ProveedorFK`),
  ADD KEY `ProductoFK` (`ProductoFK`);

--
-- Indices de la tabla `entrada_has_producto`
--
ALTER TABLE `entrada_has_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EntradaId` (`entradaID`,`productoID`),
  ADD KEY `ProductoId` (`productoID`);

--
-- Indices de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes_producto`
--
ALTER TABLE `imagenes_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoID` (`productoID`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clienteFK` (`usuarioID`),
  ADD KEY `direccionEntregaFK` (`direccionEntregaID`),
  ADD KEY `estadoPedidoFK` (`estadoPedidoID`);

--
-- Indices de la tabla `pedido_has_producto`
--
ALTER TABLE `pedido_has_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoFK` (`pedidoID`) USING BTREE,
  ADD KEY `productoFK` (`productoID`) USING BTREE,
  ADD KEY `estadoProductoFK` (`estadoProductoID`) USING BTREE;

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoriaFK` (`categoriaID`) USING BTREE;

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `RolFK` (`RolID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `direccion_entrega`
--
ALTER TABLE `direccion_entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `entrada_has_producto`
--
ALTER TABLE `entrada_has_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `imagenes_producto`
--
ALTER TABLE `imagenes_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `pedido_has_producto`
--
ALTER TABLE `pedido_has_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`productoID`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`usuarioID`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `direccion_entrega`
--
ALTER TABLE `direccion_entrega`
  ADD CONSTRAINT `direccion_entrega_ibfk_1` FOREIGN KEY (`usuarioId`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `entradas_ibfk_1` FOREIGN KEY (`ProveedorFK`) REFERENCES `proveedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entradas_ibfk_2` FOREIGN KEY (`ProductoFK`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entradas_ibfk_3` FOREIGN KEY (`UsuarioFK`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagenes_producto`
--
ALTER TABLE `imagenes_producto`
  ADD CONSTRAINT `imagenes_producto_ibfk_1` FOREIGN KEY (`productoID`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`usuarioID`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`direccionEntregaID`) REFERENCES `direccion_entrega` (`id`),
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`estadoPedidoID`) REFERENCES `estadopedido` (`id`);

--
-- Filtros para la tabla `pedido_has_producto`
--
ALTER TABLE `pedido_has_producto`
  ADD CONSTRAINT `pedido_has_producto_ibfk_1` FOREIGN KEY (`pedidoID`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_has_producto_ibfk_2` FOREIGN KEY (`productoID`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_has_producto_ibfk_3` FOREIGN KEY (`estadoProductoID`) REFERENCES `estadopedido` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoriaID`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`RolID`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
