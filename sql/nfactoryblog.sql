-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 19 jan. 2018 à 14:50
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nfactoryblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_articles`
--

CREATE TABLE `t_articles` (
  `ID_ARTICLE` int(11) NOT NULL,
  `ARTTITRE` varchar(45) NOT NULL,
  `ARTCHAPO` varchar(45) DEFAULT NULL,
  `ARTCONTENU` text NOT NULL,
  `ARTDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_articles`
--

INSERT INTO `t_articles` (`ID_ARTICLE`, `ARTTITRE`, `ARTCHAPO`, `ARTCONTENU`, `ARTDATE`) VALUES
(51, 'Salut', 'bonjour', '&lt;p&gt;&lt;span style&equals;\"text-align&colon; justify&semi;\"&gt;Voici mon premier article &comma;&amp;nbsp&semi; Bienvenu sur mon blog &comma; ici tu pourra trouver une tonne d\'article&amp;nbsp&semi;&lt;&sol;span&gt;&lt;&sol;p&gt;', '2018-01-18 00:00:00'),
(52, 'Mon Second article', 'Voici mon second article', '&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Lorem ipsum dolor sit amet&comma; consectetur adipiscing elit&period; Pellentesque vel lobortis neque&comma; at mollis eros&period; Suspendisse potenti&period; Integer tempor dapibus turpis in varius&period; Pellentesque congue vulputate consectetur&period; Aliquam bibendum orci non augue ullamcorper sollicitudin&period; In hac habitasse platea dictumst&period; Etiam sed quam vitae ipsum tincidunt rutrum&period; Fusce sit amet pretium quam&comma; eget vestibulum lorem&period; Phasellus enim justo&comma; hendrerit at arcu id&comma; volutpat ornare dui&period; Ut condimentum metus at urna dictum elementum a eu erat&period; Interdum et malesuada fames ac ante ipsum primis in faucibus&period; Sed at feugiat odio&period; Integer interdum suscipit interdum&period; Vivamus ut bibendum lacus&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Curabitur aliquam tortor magna&comma; eget ornare risus tempus vitae&period; Lorem ipsum dolor sit amet&comma; consectetur adipiscing elit&period; Ut in auctor justo&period; Nullam efficitur sed arcu eget dignissim&period; Etiam a neque at ante feugiat feugiat dapibus eget magna&period; Integer gravida&comma; dolor sed auctor vehicula&comma; ipsum odio condimentum odio&comma; at suscipit quam ipsum in arcu&period; Donec tempus urna eget congue efficitur&period; Suspendisse potenti&period; Fusce massa nisi&comma; eleifend nec molestie ac&comma; gravida sit amet nisi&period; Vestibulum dapibus quis sapien ut interdum&period; Morbi ultrices ornare risus&comma; et consectetur metus blandit ut&period; Etiam euismod porta leo&period;&lt;&sol;p&gt;', '2018-01-16 09:58:44'),
(53, 'Superarticle', 'Super-Sous article', '&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Curabitur iaculis odio a metus mattis tristique&period; Quisque malesuada ornare ex ac vulputate&period; Nulla eget diam commodo&comma; varius velit sed&comma; elementum metus&period; Cras id cursus ex&period; Nunc iaculis consequat libero eu posuere&period; Donec iaculis suscipit posuere&period; Proin eu tempus nunc&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Donec tempor tempus risus quis consectetur&period; Ut feugiat sapien a urna semper&comma; euismod fermentum leo tincidunt&period; Fusce id velit at eros ultricies laoreet&period; Aliquam erat volutpat&period; Duis id odio quis justo mollis facilisis&period; Fusce faucibus nisl euismod purus viverra&comma; ut facilisis nisi varius&period; Cras quis auctor metus&comma; ut ultricies mi&period; Vivamus feugiat accumsan lacus et iaculis&period; Mauris finibus venenatis dui&comma; ut venenatis ex feugiat id&period; Cras vitae tempus quam&period; Duis accumsan&comma; mauris at consequat posuere&comma; nunc mauris fermentum felis&comma; in vulputate risus quam a mauris&period; Etiam id arcu elit&period; Donec egestas gravida ligula&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Sed sed arcu turpis&period; Suspendisse bibendum aliquet ex&comma; at viverra lacus convallis et&period; Phasellus nulla neque&comma; porttitor ut ante eu&comma; vulputate vestibulum nibh&period; Donec venenatis tempus ex&period; Morbi eget rutrum elit&period; Duis bibendum augue tortor&comma; ut hendrerit metus ultrices ut&period; Maecenas erat neque&comma; mollis sit amet ligula sit amet&comma; molestie accumsan tortor&period; Suspendisse potenti&period; Pellentesque in mi vel ante faucibus maximus blandit non purus&period; Class aptent taciti sociosqu ad litora torquent per conubia nostra&comma; per inceptos himenaeos&period; Ut ut odio non felis cursus convallis&period; Morbi pellentesque augue congue nisl hendrerit porttitor&period; Integer vitae laoreet augue&period; Proin diam elit&comma; pharetra a imperdiet nec&comma; pellentesque non libero&period;&lt;&sol;p&gt;', '2018-01-16 10:00:56'),
(54, 'Salut', 'bonjour', '&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Curabitur iaculis odio a metus mattis tristique&period; Quisque malesuada ornare ex ac vulputate&period; Nulla eget diam commodo&comma; varius velit sed&comma; elementum metus&period; Cras id cursus ex&period; Nunc iaculis consequat libero eu posuere&period; Donec iaculis suscipit posuere&period; Proin eu tempus nunc&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Donec tempor tempus risus quis consectetur&period; Ut feugiat sapien a urna semper&comma; euismod fermentum leo tincidunt&period; Fusce id velit at eros ultricies laoreet&period; Aliquam erat volutpat&period; Duis id odio quis justo mollis facilisis&period; Fusce faucibus nisl euismod purus viverra&comma; ut facilisis nisi varius&period; Cras quis auctor metus&comma; ut ultricies mi&period; Vivamus feugiat accumsan lacus et iaculis&period; Mauris finibus venenatis dui&comma; ut venenatis ex feugiat id&period; Cras vitae tempus quam&period; Duis accumsan&comma; mauris at consequat posuere&comma; nunc mauris fermentum felis&comma; in vulputate risus quam a mauris&period; Etiam id arcu elit&period; Donec egestas gravida ligula&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Sed sed arcu turpis&period; Suspendisse bibendum aliquet ex&comma; at viverra lacus convallis et&period; Phasellus nulla neque&comma; porttitor ut ante eu&comma; vulputate vestibulum nibh&period; Donec venenatis tempus ex&period; Morbi eget rutrum elit&period; Duis bibendum augue tortor&comma; ut hendrerit metus ultrices ut&period; Maecenas erat neque&comma; mollis sit amet ligula sit amet&comma; molestie accumsan tortor&period; Suspendisse potenti&period; Pellentesque in mi vel ante faucibus maximus blandit non purus&period; Class aptent taciti sociosqu ad litora torquent per conubia nostra&comma; per inceptos himenaeos&period; Ut ut odio non felis cursus convallis&period; Morbi pellentesque augue congue nisl hendrerit porttitor&period; Integer vitae laoreet augue&period; Proin diam elit&comma; pharetra a imperdiet nec&comma; pellentesque non libero&period;&lt;&sol;p&gt;', '2018-01-16 10:01:35'),
(55, 'GAUTHIER', 'BOSSON', '&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Curabitur iaculis odio a metus mattis tristique&period; Quisque malesuada ornare ex ac vulputate&period; Nulla eget diam commodo&comma; varius velit sed&comma; elementum metus&period; Cras id cursus ex&period; Nunc iaculis consequat libero eu posuere&period; Donec iaculis suscipit posuere&period; Proin eu tempus nunc&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Donec tempor tempus risus quis consectetur&period; Ut feugiat sapien a urna semper&comma; euismod fermentum leo tincidunt&period; Fusce id velit at eros ultricies laoreet&period; Aliquam erat volutpat&period; Duis id odio quis justo mollis facilisis&period; Fusce faucibus nisl euismod purus viverra&comma; ut facilisis nisi varius&period; Cras quis auctor metus&comma; ut ultricies mi&period; Vivamus feugiat accumsan lacus et iaculis&period; Mauris finibus venenatis dui&comma; ut venenatis ex feugiat id&period; Cras vitae tempus quam&period; Duis accumsan&comma; mauris at consequat posuere&comma; nunc mauris fermentum felis&comma; in vulputate risus quam a mauris&period; Etiam id arcu elit&period; Donec egestas gravida ligula&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Sed sed arcu turpis&period; Suspendisse bibendum aliquet ex&comma; at viverra lacus convallis et&period; Phasellus nulla neque&comma; porttitor ut ante eu&comma; vulputate vestibulum nibh&period; Donec venenatis tempus ex&period; Morbi eget rutrum elit&period; Duis bibendum augue tortor&comma; ut hendrerit metus ultrices ut&period; Maecenas erat neque&comma; mollis sit amet ligula sit amet&comma; molestie accumsan tortor&period; Suspendisse potenti&period; Pellentesque in mi vel ante faucibus maximus blandit non purus&period; Class aptent taciti sociosqu ad litora torquent per conubia nostra&comma; per inceptos himenaeos&period; Ut ut odio non felis cursus convallis&period; Morbi pellentesque augue congue nisl hendrerit porttitor&period; Integer vitae laoreet augue&period; Proin diam elit&comma; pharetra a imperdiet nec&comma; pellentesque non libero&period;&lt;&sol;p&gt;', '2018-01-16 10:02:06'),
(56, 'CORDIER', 'RODOLPHE', '&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Curabitur iaculis odio a metus mattis tristique&period; Quisque malesuada ornare ex ac vulputate&period; Nulla eget diam commodo&comma; varius velit sed&comma; elementum metus&period; Cras id cursus ex&period; Nunc iaculis consequat libero eu posuere&period; Donec iaculis suscipit posuere&period; Proin eu tempus nunc&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Donec tempor tempus risus quis consectetur&period; Ut feugiat sapien a urna semper&comma; euismod fermentum leo tincidunt&period; Fusce id velit at eros ultricies laoreet&period; Aliquam erat volutpat&period; Duis id odio quis justo mollis facilisis&period; Fusce faucibus nisl euismod purus viverra&comma; ut facilisis nisi varius&period; Cras quis auctor metus&comma; ut ultricies mi&period; Vivamus feugiat accumsan lacus et iaculis&period; Mauris finibus venenatis dui&comma; ut venenatis ex feugiat id&period; Cras vitae tempus quam&period; Duis accumsan&comma; mauris at consequat posuere&comma; nunc mauris fermentum felis&comma; in vulputate risus quam a mauris&period; Etiam id arcu elit&period; Donec egestas gravida ligula&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Sed sed arcu turpis&period; Suspendisse bibendum aliquet ex&comma; at viverra lacus convallis et&period; Phasellus nulla neque&comma; porttitor ut ante eu&comma; vulputate vestibulum nibh&period; Donec venenatis tempus ex&period; Morbi eget rutrum elit&period; Duis bibendum augue tortor&comma; ut hendrerit metus ultrices ut&period; Maecenas erat neque&comma; mollis sit amet ligula sit amet&comma; molestie accumsan tortor&period; Suspendisse potenti&period; Pellentesque in mi vel ante faucibus maximus blandit non purus&period; Class aptent taciti sociosqu ad litora torquent per conubia nostra&comma; per inceptos himenaeos&period; Ut ut odio non felis cursus convallis&period; Morbi pellentesque augue congue nisl hendrerit porttitor&period; Integer vitae laoreet augue&period; Proin diam elit&comma; pharetra a imperdiet nec&comma; pellentesque non libero&period;&lt;&sol;p&gt;', '2018-01-16 10:02:24'),
(57, 'théo', 'même', '&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Curabitur iaculis odio a metus mattis tristique&period; Quisque malesuada ornare ex ac vulputate&period; Nulla eget diam commodo&comma; varius velit sed&comma; elementum metus&period; Cras id cursus ex&period; Nunc iaculis consequat libero eu posuere&period; Donec iaculis suscipit posuere&period; Proin eu tempus nunc&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Donec tempor tempus risus quis consectetur&period; Ut feugiat sapien a urna semper&comma; euismod fermentum leo tincidunt&period; Fusce id velit at eros ultricies laoreet&period; Aliquam erat volutpat&period; Duis id odio quis justo mollis facilisis&period; Fusce faucibus nisl euismod purus viverra&comma; ut facilisis nisi varius&period; Cras quis auctor metus&comma; ut ultricies mi&period; Vivamus feugiat accumsan lacus et iaculis&period; Mauris finibus venenatis dui&comma; ut venenatis ex feugiat id&period; Cras vitae tempus quam&period; Duis accumsan&comma; mauris at consequat posuere&comma; nunc mauris fermentum felis&comma; in vulputate risus quam a mauris&period; Etiam id arcu elit&period; Donec egestas gravida ligula&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"margin&colon; 0px 0px 15px&semi; padding&colon; 0px&semi; text-align&colon; justify&semi; font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi;\"&gt;Sed sed arcu turpis&period; Suspendisse bibendum aliquet ex&comma; at viverra lacus convallis et&period; Phasellus nulla neque&comma; porttitor ut ante eu&comma; vulputate vestibulum nibh&period; Donec venenatis tempus ex&period; Morbi eget rutrum elit&period; Duis bibendum augue tortor&comma; ut hendrerit metus ultrices ut&period; Maecenas erat neque&comma; mollis sit amet ligula sit amet&comma; molestie accumsan tortor&period; Suspendisse potenti&period; Pellentesque in mi vel ante faucibus maximus blandit non purus&period; Class aptent taciti sociosqu ad litora torquent per conubia nostra&comma; per inceptos himenaeos&period; Ut ut odio non felis cursus convallis&period; Morbi pellentesque augue congue nisl hendrerit porttitor&period; Integer vitae laoreet augue&period; Proin diam elit&comma; pharetra a imperdiet nec&comma; pellentesque non libero&period;&lt;&sol;p&gt;', '2018-01-16 10:16:45'),
(58, 'La fin du RodolpheGate', 'Paix', '&lt;p style&equals;\"text-align&colon; center&semi;\"&gt;&lt;strong&gt;Bonsoir&period; L\'heure est grave&period;&period;&lt;&sol;strong&gt;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"text-align&colon; center&semi;\"&gt;&amp;nbsp&semi;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"text-align&colon; left&semi;\"&gt;Un matin&comma; Rodolphe s\'enerva&comma; la classe le bolossa&comma; la r&amp;eacute&semi;conciliation eu lieu&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"text-align&colon; left&semi;\"&gt;&amp;nbsp&semi;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"text-align&colon; left&semi;\"&gt;Fin&period;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"text-align&colon; left&semi;\"&gt;&amp;nbsp&semi;&lt;&sol;p&gt;\r&NewLine;&lt;p style&equals;\"text-align&colon; left&semi;\"&gt;Paix et honneur&amp;nbsp&semi;&lt;&sol;p&gt;', '2018-01-19 12:27:52');

-- --------------------------------------------------------

--
-- Structure de la table `t_articles_has_t_users`
--

CREATE TABLE `t_articles_has_t_users` (
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL,
  `T_USERS_ID_USER` int(11) NOT NULL,
  `T_USERS_T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_categories`
--

CREATE TABLE `t_categories` (
  `ID_CATEGORIE` int(11) NOT NULL,
  `CATLIBELLE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_categories_has_t_articles`
--

CREATE TABLE `t_categories_has_t_articles` (
  `T_CATEGORIES_ID_CATEGORIE` int(11) NOT NULL,
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_roles`
--

CREATE TABLE `t_roles` (
  `ID_ROLE` int(11) NOT NULL,
  `ROLEDESI` varchar(45) NOT NULL,
  `ROLEDEF` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_roles`
--

INSERT INTO `t_roles` (`ID_ROLE`, `ROLEDESI`, `ROLEDEF`) VALUES
(1, 'ROLE_SUPERADMIN', NULL),
(2, 'ROLE_ADMIN', NULL),
(3, 'ROLE_MODERATEUR', NULL),
(4, 'ROLE_REDACTEUR', NULL),
(5, 'ROLE_UTILISATEUR', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `ID_USER` int(11) NOT NULL,
  `USERNAME` varchar(45) NOT NULL,
  `USERFNAME` varchar(45) DEFAULT NULL,
  `USERMAIL` varchar(255) NOT NULL,
  `USERPASSWORD` char(40) NOT NULL,
  `USERDATEINS` datetime DEFAULT NULL,
  `T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`ID_USER`, `USERNAME`, `USERFNAME`, `USERMAIL`, `USERPASSWORD`, `USERDATEINS`, `T_ROLES_ID_ROLE`) VALUES
(1, 'DA COSTA', 'Théo', 'theo.dacos@gmail.com', '1d00b455881af29f5db99e94a61bf7d1b139e0e4', NULL, 1),
(8, 'dededededede', 'supermoi', 'rorodu76', '1d00b455881af29f5db99e94a61bf7d1b139e0e4', NULL, 5),
(10, 'Cordier', 'Gauthier', 'gauthier@cordier.com', '5d65f5823dc94875c052a47898fadc89fdfece30', NULL, 5),
(11, 'Cordier', 'Gauthier', 'gauthier@cordier.com', '5d65f5823dc94875c052a47898fadc89fdfece30', NULL, 5),
(12, 'Cordier', 'Gauthier', 'gauthier@cordier.com', '5d65f5823dc94875c052a47898fadc89fdfece30', NULL, 5),
(13, 'Ratel', 'Rodolphe', 'rodolphe@ratel.com', 'f7d086583386f63075f1bd99c9fcb84ab2736967', NULL, 5),
(14, 'Bosson', 'Hugo', 'hugo@bosson.com', '52604c3007e72416f26d93f98e76b6d6d58d9064', NULL, 5),
(15, 'Cordier', 'Geoffrey', 'geoffrey@cordier. com', 'c3918f39022407dee6a0056ceca9b1aa80e8e4ce', NULL, 5),
(16, 'theo', 'dac', 'theo.dacos@gmail.com', '8d1c07b72465736e6278d72019572d5d74c56373', NULL, 5),
(17, 'ratel', 'bosson', 'bosson@ratel.com', 'e8f7b24bf6a656b0a5210a183af3ed78b6a14df0', NULL, 5),
(18, 'azeaze', 'eazea', 'eazeaze', 'c1046b56d2937e3d00f7dc2d286b05631d4b706d', NULL, 5),
(19, 'ezaeaz', 'ezaeza', 'terara', '4ec03890c34ef7e448dd1f124bd8ef9c2cf7480f', NULL, 5),
(20, 'aZEA', 'EAEA', 'EAZE', 'b2b5fc7aa1af15c8ddd0bec1dda2c2f9c3ae0966', NULL, 5),
(21, 'theo', 'dac', 'theo', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 5),
(22, 'theo', 'dacc', 'dacc', 'ad2b2a8ede430d1a2e95fecaf9e27a8f4b22dc97', NULL, 5),
(23, 'ezaz', 'EAaa', 'daa', 'c6f220a65156364bb8ada719a685abd37e55ac4e', NULL, 5),
(24, 'dez', '<p>theo</p>', 'tez@gmail.com', 'e3500705c5988a4385ceb5f63df2d38c647821ac', NULL, 5),
(25, 'theo', '<p>theo</p>', 'tez@gmail.FR', 'fedd1d1122aa65028c81e16ceb85d9c73790a2fa', NULL, 5),
(26, 'eza', '<p>theo</p>', 'dac@ae.fr', 'fedd1d1122aa65028c81e16ceb85d9c73790a2fa', NULL, 5),
(27, 'DAzda', '<p>theo</p>\"\"\"\"', 'dada@dada.da', 'fedd1d1122aa65028c81e16ceb85d9c73790a2fa', NULL, 5),
(28, 'theo', 'daa', 'theodac@gmail.com', '8d1c07b72465736e6278d72019572d5d74c56373', NULL, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`ID_ARTICLE`);

--
-- Index pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD PRIMARY KEY (`T_ARTICLES_ID_ARTICLE`,`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_USERS1_idx` (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`);

--
-- Index pour la table `t_categories`
--
ALTER TABLE `t_categories`
  ADD PRIMARY KEY (`ID_CATEGORIE`);

--
-- Index pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD PRIMARY KEY (`T_CATEGORIES_ID_CATEGORIE`,`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1_idx` (`T_CATEGORIES_ID_CATEGORIE`);

--
-- Index pour la table `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`ID_ROLE`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`ID_USER`,`T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_USERS_T_ROLES_idx` (`T_ROLES_ID_ROLE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `ID_CATEGORIE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `ID_ROLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_USERS1` FOREIGN KEY (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`) REFERENCES `t_users` (`ID_USER`, `T_ROLES_ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1` FOREIGN KEY (`T_CATEGORIES_ID_CATEGORIE`) REFERENCES `t_categories` (`ID_CATEGORIE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD CONSTRAINT `fk_T_USERS_T_ROLES` FOREIGN KEY (`T_ROLES_ID_ROLE`) REFERENCES `t_roles` (`ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
