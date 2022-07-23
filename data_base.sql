-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Jul-2022 às 01:00
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `erp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `email-config`
--

CREATE TABLE `email-config` (
  `host` int(11) NOT NULL,
  `sm` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `init`
--

CREATE TABLE `init` (
  `project-name` varchar(10) NOT NULL,
  `url_base` varchar(255) NOT NULL,
  `email` varchar(80) NOT NULL,
  `tel1` varchar(25) NOT NULL,
  `tel2` varchar(25) NOT NULL,
  `tel3` varchar(25) NOT NULL,
  `tel4` varchar(25) NOT NULL,
  `street` varchar(155) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `cnpj` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `init`
--

INSERT INTO `init` (`project-name`, `url_base`, `email`, `tel1`, `tel2`, `tel3`, `tel4`, `street`, `zip`, `city`, `state`, `number`, `cnpj`) VALUES
('Seu Site', 'https://localhost/seusite', 'support@seusite.com', '11 9999-9999', '0800 000 0000', '', '', 'rua', '08000-000', 'São Paulo', 'SP', '', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `init`
--
ALTER TABLE `init`
  ADD PRIMARY KEY (`project-name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
