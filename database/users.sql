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
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `unique_id`, `name`, `lastname`, `email`, `password`, `image`, `status`) VALUES
(1, 158404885, 'Luan', 'Gustavo', 'luan@gmail.com', '12345', '1669137498gato_chorando.jpg', 'Online'),
(3, 488599664, 'bia', 'matos', 'beatrizmattos290@gmail.com', 'bia123', '1669287526meme-crying-cat-2-1.jpg', 'Online'),
(4, 1617574240, 'Gustavo', 'Gimenez', 'gusta@gmail.com', '123', '1669287859poster,504x498,f8f8f8-pad,600x600,f8f8f8.jpg', 'Online'),
(5, 1211099603, 'Diovana', 'grandíssima', 'diovana@gmail.com', 'diovana', '1669288391perfil.jpg', 'Offline'),
(6, 462043095, 'Fabio', 'Vinicius', 'fabio@gmail.com', '1234567', '1669288630CR7-teria-se-oferecido-a-retornar-ao-Real-Madrid-scaled.jpg', 'Online'),
(7, 577453965, 'jão', 'Gostoso', 'lucas@gmail.com', '123', '1669288665jao.jpg', 'Offline'),
(8, 273927619, 'Ali', 'Chehade', 'ali.osmar.chehade@gmail.com', 'aliosmar', '16692887140e5143d7e3f9825c60ffa93667b7270a.jpg', 'Offline'),
(9, 989810214, 'Amanda', 'Lara', 'amanda.ifpr.edu@gmail.com', '123456', '1669288735luffy.png', 'Offline'),
(10, 678167339, 'kivia', 'nascimento', 'nascimentokivia40@gmail.com', 'bealfire', '1669288735download (1).jpg', 'Online'),
(11, 1141057597, 'Gabriela', 'Lima', 'gabriela.limaifpr@gmail.com', '123456', '1669288742295204022_735178450874832_4373210395398038617_n.jpg', 'Online'),
(12, 1239181899, 'Miguel', 'Back', 'miguelbackifpr@gmail.com', '1234567', '1669288777Bothrops_jararacussu-1.jpg', 'Offline'),
(13, 170408088, 'Julia', 'ZAP', 'julia_zpassos@hotmail.com', 'julia123', '1669288846baixados.jpg', 'Online'),
(14, 844994035, 'Ana', 'Carolina', 'anacaroldomeni@gmail.com', 'aninha29', '16692888536791ea11e2c5644c55a5b0fd393465fe.1000x1000x1.jpg', 'Offline'),
(15, 1457508156, 'debora', 'basilio', 'deeferreira0@gmail.com', '12345', '16692888822022-06-01 (1).png', 'Online'),
(16, 650729460, 'Maria Ester', 'Vieira Gomes', 'mariaester.mevg@gmail.com', 'marister19', '1669288954jeon-jungkook-bts-sobrenatural-20852433-271020200054.jpg', 'Online'),
(17, 871815664, 'Vinicius', 'Cortello', 'vinimedrado.2020@gmail.com', '4002 suiciniv', '1669288961noenaodaarca.jpg', 'Offline'),
(18, 578658744, 'Ingrid', 'kaori', 'ingridkaori2@gmail.com', 'kaori123', '1669289301c16d02bd6d24ca9319b4c3ce996ead18.jpg', 'Online'),
(19, 722274852, 'Rafael', 'Zottesso', 'zottesso@gmail.com', 'zottesso', '166929161739135214.jpg', 'Online');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
