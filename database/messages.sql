-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2022 às 13:22
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `flash_chat`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `sender_id` int(255) NOT NULL,
  `receiver_id` int(255) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `messages`
--

INSERT INTO `messages` (`msg_id`, `sender_id`, `receiver_id`, `message`) VALUES
(1, 488599664, 158404885, 'oiii'),
(2, 158404885, 488599664, '👊👊'),
(3, 488599664, 158404885, 'vai se fude'),
(4, 158404885, 488599664, 'kk tmnc'),
(5, 158404885, 488599664, 'aiai'),
(6, 488599664, 158404885, 'chato'),
(7, 1617574240, 158404885, 'kk eae man'),
(8, 1617574240, 158404885, 'Viado gay'),
(9, 488599664, 1617574240, 'sfd kk'),
(10, 1617574240, 488599664, 'hola'),
(11, 1617574240, 488599664, 'como vais?'),
(12, 488599664, 1617574240, 'pau no cu'),
(13, 1617574240, 488599664, 'fdp'),
(14, 1617574240, 488599664, 'arrombada'),
(15, 488599664, 1617574240, 'vem aqui pa eu te soca'),
(16, 1617574240, 488599664, 'vem vc'),
(17, 488599664, 1617574240, 'eu sei q vc gosta'),
(18, 1617574240, 488599664, 'gosto de bater em vc'),
(19, 488599664, 1617574240, 'e eu de te laca um piroca'),
(20, 1617574240, 488599664, 'isso ai é so o Luisão q gosta'),
(21, 1617574240, 488599664, 'fala com ele'),
(22, 488599664, 1617574240, 'chama ele ai'),
(23, 1617574240, 158404885, 'kk'),
(24, 158404885, 1617574240, 'ai eu sou idaai'),
(25, 158404885, 1617574240, 'tem preconceito?'),
(26, 1617574240, 158404885, 'no'),
(27, 488599664, 1211099603, 'oiii'),
(28, 158404885, 1211099603, 'oii'),
(29, 1211099603, 158404885, 'tmnc'),
(30, 1211099603, 1617574240, 'tmnc man'),
(31, 488599664, 462043095, 'kk eai men'),
(32, 462043095, 488599664, 'eai'),
(33, 488599664, 462043095, 'fala tu'),
(34, 577453965, 462043095, 'oi linda'),
(35, 462043095, 577453965, 'fala'),
(36, 577453965, 1617574240, 'el lobo cuida de su loba'),
(37, 577453965, 1617574240, 'AUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU'),
(38, 462043095, 1617574240, 'fala comigo polones'),
(39, 273927619, 462043095, 'gay'),
(40, 1617574240, 462043095, 'perdão'),
(41, 462043095, 273927619, 'tu é?'),
(42, 1617574240, 462043095, 'to mostrando meu site para a tia'),
(43, 273927619, 462043095, 'lá ele'),
(44, 1617574240, 1211099603, 'vai tu'),
(45, 273927619, 678167339, 'vai se fude kibia'),
(46, 678167339, 577453965, 'vai se fuder'),
(47, 989810214, 577453965, 'o seu corno'),
(48, 1617574240, 577453965, 'auuuuuuuuuuuuuuuuuuuuuuuuuuu'),
(49, 1141057597, 273927619, 'Oi ali'),
(50, 577453965, 678167339, 'VAI TU COMEDIA'),
(51, 273927619, 577453965, 'aii'),
(52, 678167339, 488599664, 'oiii'),
(53, 1141057597, 273927619, 'quem é voce?'),
(54, 488599664, 678167339, 'olaaa'),
(55, 577453965, 989810214, '?'),
(56, 462043095, 1141057597, 'eai LIma'),
(57, 273927619, 1141057597, 'gay'),
(58, 1239181899, 1617574240, 'gay'),
(59, 577453965, 273927619, 'aii messiii'),
(60, 678167339, 273927619, 'vai toma no seu cu ali'),
(61, 1141057597, 273927619, 'voce'),
(62, 1141057597, 273927619, 'vagabundo'),
(63, 273927619, 1141057597, 'corna'),
(64, 1141057597, 273927619, 'sou'),
(65, 1141057597, 273927619, 'faltou o emoji so'),
(66, 1141057597, 1617574240, 'gu gu'),
(67, 170408088, 678167339, 'VAI SE FUDER'),
(68, 170408088, 678167339, 'ESTRANHA'),
(69, 1239181899, 1141057597, 'oi linda'),
(70, 1141057597, 462043095, 'FABAO'),
(71, 844994035, 488599664, 'hiiiiii my frienddddddddddddddd'),
(72, 1141057597, 462043095, 'PEBAS PEBAS'),
(73, 844994035, 488599664, 'S2'),
(74, 678167339, 170408088, 'seu cu'),
(75, 844994035, 488599664, 'its jimin'),
(76, 170408088, 577453965, 'vai tomar no cu joao lucas'),
(77, 844994035, 488599664, 'kawwaaaiiii'),
(78, 1457508156, 678167339, 'oi'),
(79, 170408088, 488599664, 'BELO SITE'),
(80, 1457508156, 678167339, 'vagabunda'),
(81, 844994035, 273927619, 'hiiiiii'),
(82, 844994035, 273927619, 'my friend, its jimin'),
(83, 170408088, 678167339, '🤣🤣🤣🤣🤣🤣'),
(84, 462043095, 1141057597, 'kkkkkkkk'),
(85, 678167339, 1457508156, 'cachorra'),
(86, 844994035, 273927619, 'anionghaseo'),
(87, 462043095, 1141057597, 'como tá sua disponibilidade?'),
(88, 844994035, 678167339, 'hiiiiiiiiiiiiiii'),
(89, 844994035, 678167339, 'my friend'),
(90, 844994035, 678167339, 'its jimin'),
(91, 170408088, 1457508156, 'oi gatinha'),
(92, 844994035, 678167339, 'anionghaseo'),
(93, 170408088, 1457508156, 'fiufiu'),
(94, 170408088, 1457508156, '🤞'),
(95, 844994035, 989810214, 'hhhiiiiiiiii'),
(96, 871815664, 989810214, 'palhaça'),
(97, 844994035, 989810214, 'my friend'),
(98, 844994035, 989810214, 'its jimin'),
(99, 844994035, 989810214, 'anionghaseo'),
(100, 844994035, 1141057597, 'hhhhhhhhiiiiii'),
(101, 844994035, 1141057597, 'my friend'),
(102, 170408088, 1141057597, 'oi'),
(103, 989810214, 1211099603, 'braba'),
(104, 170408088, 1141057597, 'gabriuela'),
(105, 844994035, 1141057597, 'its jimin'),
(106, 844994035, 1141057597, 'anionghaseo'),
(107, 170408088, 1141057597, '😉'),
(108, 871815664, 158404885, 'site muito foda'),
(109, 844994035, 577453965, 'hhhhiiiii'),
(110, 678167339, 170408088, '🤢🤢🤢🤢'),
(111, 844994035, 577453965, 'my friend'),
(112, 170408088, 1141057597, '😎✌✌✌✌'),
(113, 844994035, 577453965, 'its jimin'),
(114, 844994035, 577453965, 'anionghaseo'),
(115, 989810214, 871815664, 'cornos'),
(116, 844994035, 1617574240, 'hiiiiiiii]'),
(117, 844994035, 1617574240, 'my friend'),
(118, 844994035, 1617574240, 'its jimin'),
(119, 844994035, 1617574240, 'anionghaseo'),
(120, 577453965, 170408088, 'vai tu'),
(121, 871815664, 989810214, '😡😡😡'),
(122, 577453965, 170408088, 'vai com tua loirinha'),
(123, 678167339, 844994035, 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk'),
(124, 488599664, 844994035, 'olaaaaaa'),
(125, 678167339, 844994035, 'doente'),
(126, 577453965, 170408088, '👩‍❤️‍💋‍👩💏👩‍❤️‍💋‍👩👩‍❤️‍💋‍👩👩‍❤️‍💋‍👩👩‍❤️‍💋‍👩👩‍❤️‍💋‍👩👩‍❤️‍💋‍👩👩‍❤️‍💋‍👩👩‍❤️‍💋‍👩👩‍❤️‍💋‍👩'),
(127, 170408088, 844994035, 'q isso neguinha'),
(128, 170408088, 844994035, 'kpop?????????'),
(129, 488599664, 170408088, 'bgduuuuu'),
(130, 577453965, 844994035, 'OLARRRRR'),
(131, 577453965, 844994035, 'QUE SAUDADEEES'),
(132, 871815664, 844994035, 'hi jimin from bts'),
(133, 844994035, 1617574240, 'e essa foto do legoshi? kkkkkkkkkk'),
(134, 989810214, 844994035, 'hello mi amiga'),
(135, 678167339, 871815664, 'q isso'),
(136, 844994035, 1239181899, 'hhhiiiiii'),
(137, 1141057597, 462043095, 'TODO DIA DISPONÍVEL PARA PEBAS'),
(138, 844994035, 1239181899, 'my friend'),
(139, 844994035, 1239181899, 'its jimin'),
(140, 989810214, 577453965, 'duvido'),
(141, 170408088, 577453965, 'KKKKKKKKKKKKKKKKKKKKKKKKKK'),
(142, 170408088, 577453965, 'CAPETA'),
(143, 1239181899, 844994035, 'ola senhora, te desejo um dia abensoado'),
(144, 844994035, 1239181899, 'anionghaseio'),
(145, 844994035, 170408088, 'hhhiiiiiii'),
(146, 844994035, 170408088, 'my friend'),
(147, 844994035, 170408088, 'its jimin'),
(148, 844994035, 170408088, 'anionghaseio'),
(149, 844994035, 1457508156, 'hhhhhhiiiii'),
(150, 844994035, 1457508156, 'my friend'),
(151, 844994035, 1457508156, 'its jimin'),
(152, 844994035, 1457508156, 'anionghaseio'),
(153, 844994035, 650729460, 'hhiiiiiiiiiiiiiiiiiii'),
(154, 844994035, 650729460, 'my friend'),
(155, 844994035, 650729460, 'its jimonnn'),
(156, 844994035, 650729460, 'anionghaseio'),
(157, 577453965, 989810214, '💎'),
(158, 462043095, 1141057597, '😂😂😂😂😂'),
(159, 844994035, 871815664, 'kkkkkkkkk'),
(160, 844994035, 871815664, 'hiiii my friend'),
(161, 871815664, 577453965, 'monkey tete'),
(162, 577453965, 170408088, 'KKKKKKKKKKKKKKK'),
(163, 844994035, 871815664, 'its jimon'),
(164, 844994035, 871815664, 'anionghaseio'),
(165, 844994035, 488599664, 'ola'),
(166, 844994035, 158404885, 'hiiii'),
(167, 844994035, 158404885, 'my friend'),
(168, 989810214, 871815664, 'fdp'),
(169, 844994035, 158404885, 'its jimon'),
(170, 844994035, 158404885, 'anionghaseio'),
(171, 871815664, 989810214, 'meu pau te cutuca'),
(172, 989810214, 871815664, 'meu pau na tua nuca'),
(173, 844994035, 577453965, 'kkkkkkk'),
(174, 578658744, 844994035, 'Heyy JIminnnnn'),
(175, 844994035, 989810214, 'helloooo'),
(176, 844994035, 989810214, 'you from Brasil?'),
(177, 844994035, 989810214, 'caipirinhahhh? sambahhh? neyynammar??'),
(178, 650729460, 844994035, 'Heyy Jiminnnn'),
(179, 650729460, 844994035, 'jimonn*'),
(180, 844994035, 678167339, 'cuzona'),
(181, 844994035, 678167339, 'you from Brasil?'),
(182, 650729460, 578658744, 'Namjon marry me'),
(183, 844994035, 678167339, 'anionghaseio'),
(184, 989810214, 577453965, 'meu pau no seu ouvido'),
(185, 844994035, 578658744, 'é jimmon cacete'),
(186, 844994035, 578658744, 'hummm'),
(187, 844994035, 578658744, 'sou n binare'),
(188, 578658744, 844994035, 'sorryyy'),
(189, 844994035, 578658744, 'genero fluido'),
(190, 989810214, 678167339, 'para de fumar'),
(191, 578658744, 844994035, 'jimmon'),
(192, 844994035, 578658744, 'e os cacetes a 4'),
(193, 578658744, 844994035, 'lol'),
(194, 844994035, 578658744, 'yessss, jimon'),
(195, 844994035, 578658744, 'kkkkkkkkkkkkk'),
(196, 844994035, 578658744, 'lol'),
(197, 578658744, 844994035, 'jimonnn'),
(198, 844994035, 578658744, 'hi'),
(199, 578658744, 844994035, 'hiiiiiiii'),
(200, 578658744, 844994035, 'its namjoon'),
(201, 844994035, 578658744, 'do you like a sammmbahh? caipirinhahh?'),
(202, 844994035, 578658744, 'neymarrhh?'),
(203, 578658744, 650729460, ':)'),
(204, 578658744, 844994035, 'yessssss'),
(205, 578658744, 844994035, 'i lovee'),
(206, 844994035, 650729460, 'kkkkkkkkkkkkkkkkkkkkkkkkk'),
(207, 844994035, 578658744, 'loooollllllll'),
(208, 577453965, 989810214, '👍'),
(209, 989810214, 577453965, 'teste'),
(210, 844994035, 578658744, 'uuuaaa, im am like também'),
(211, 844994035, 578658744, '-_-'),
(212, 578658744, 844994035, ':)'),
(213, 844994035, 578658744, 'do you likea dog ?'),
(214, 578658744, 844994035, 'yess'),
(215, 578658744, 844994035, 'i like'),
(216, 844994035, 578658744, 'aaaa comgratulation'),
(217, 844994035, 578658744, 'kkkkkkkkk'),
(218, 578658744, 844994035, 'lolllll]'),
(219, 844994035, 578658744, 'your spik portuguese?'),
(220, 844994035, 578658744, 'speak*'),
(221, 578658744, 844994035, 'wowww'),
(222, 578658744, 844994035, 'yes'),
(223, 578658744, 844994035, 'i spiko'),
(224, 844994035, 578658744, 'spika ai pra eu ver'),
(225, 989810214, 871815664, 'tewf'),
(226, 578658744, 844994035, 'ja spikei aqui o'),
(227, 844994035, 578658744, 'KKKKKKKKKKKKKKKKKKKK'),
(228, 844994035, 578658744, 'wwooowww'),
(229, 844994035, 578658744, 'comgratulation'),
(230, 844994035, 578658744, 'goooooddd'),
(231, 578658744, 844994035, 'loollll'),
(232, 578658744, 844994035, 'good'),
(233, 844994035, 578658744, 'very goodd'),
(234, 844994035, 578658744, 'by'),
(235, 578658744, 844994035, 'byeeee'),
(236, 844994035, 578658744, 'S2'),
(237, 578658744, 844994035, ';]'),
(238, 989810214, 844994035, 'sdaf'),
(239, 989810214, 844994035, 'no neguinha'),
(240, 844994035, 989810214, 'do you speak portuguise ?'),
(241, 989810214, 844994035, 'yo no hablo su lingua'),
(242, 989810214, 844994035, 'Im from korea'),
(243, 989810214, 844994035, 'jungkooook'),
(244, 577453965, 871815664, '?'),
(245, 844994035, 578658744, 'https://www.youtube.com/watch?v=Kofjzs0QOSY'),
(246, 989810214, 844994035, 'anyeong'),
(247, 844994035, 578658744, 'estresse, nunca mais'),
(248, 871815664, 577453965, 'coisa do seu namorade'),
(249, 871815664, 577453965, '🤷‍♂️'),
(250, 871815664, 678167339, 'euhein'),
(251, 871815664, 678167339, 'vai estudar'),
(252, 488599664, 722274852, 'oii'),
(253, 1617574240, 1141057597, 'oi'),
(254, 1617574240, 722274852, 'oi!!'),
(255, 1617574240, 844994035, 'deixa eu usar a foto que eu quiser'),
(256, 1617574240, 844994035, '0'),
(257, 1617574240, 844994035, '0'),
(258, 488599664, 722274852, 'oiii');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
