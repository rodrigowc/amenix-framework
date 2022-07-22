-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Jul-2022 às 20:36
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
('Amenix Dev', 'https://localhost/erp', 'support@amenixdev.pt', '11 9999-9999', '0800 000 0000', '', '', 'Rua Arnold de Lima', '08072-217', 'São Paulo', 'SP', '225', '34567789000123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

CREATE TABLE `notifications` (
  `id-notifications` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `read` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `read-at` datetime DEFAULT NULL,
  `create-at` datetime NOT NULL,
  `authorization` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `notifications`
--

INSERT INTO `notifications` (`id-notifications`, `id`, `title`, `read`, `link`, `read-at`, `create-at`, `authorization`) VALUES
(125, 137, 'Peça ao administrador a liberação de todos os recursos.', 1, 'chat', '2022-06-28 22:45:20', '2022-06-28 22:43:29', 1),
(126, 131, 'Peça ao administrador a liberação de todos os recursos.', 1, 'chat', '2022-07-06 23:08:04', '2022-07-06 23:01:09', 0),
(127, 131, 'Parabéns pela venda de um produto.', 1, 'products', '2022-07-17 21:22:33', '2022-07-17 20:11:36', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_data`
--

CREATE TABLE `personal_data` (
  `id` int(11) NOT NULL,
  `cpf_cnpj` varchar(14) DEFAULT NULL,
  `tel1` varchar(14) NOT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `wtapp` varchar(3) NOT NULL,
  `modify_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `personal_data`
--

INSERT INTO `personal_data` (`id`, `cpf_cnpj`, `tel1`, `tel2`, `wtapp`, `modify_at`) VALUES
(131, '477.235.898-67', '', '(11) 94699-1934', 'on', '2022-01-25 23:16:21'),
(135, '', '', '', '', '2022-06-12 00:52:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `purchase_price` decimal(9,2) NOT NULL,
  `promotional_price` decimal(9,2) NOT NULL,
  `sale_price` decimal(9,2) NOT NULL,
  `categorie` varchar(50) DEFAULT NULL,
  `subcategorie` varchar(50) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `authorization` int(11) NOT NULL,
  `user_create` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `the_amount` int(11) NOT NULL,
  `bar_code` varchar(255) NOT NULL,
  `qr_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `color`, `type`, `size`, `purchase_price`, `promotional_price`, `sale_price`, `categorie`, `subcategorie`, `image`, `create_at`, `authorization`, `user_create`, `description`, `the_amount`, `bar_code`, `qr_code`) VALUES
('301562D41523A6250', 'Vestido  Gucci Fiiler Rosa - M', 'Gucci', 'Rosa', 'Vestido', 'M', '13.26', '16.49', '16.68', 'Vestidos', '', '0', '2022-07-17 10:56:51', 1, 131, '', 2, '0', '0'),
('457304262CB765CE22D2', 'Tênis  Nike Air max 90 Preto - 39', 'Nike', 'Preto', 'Tênis', '39', '230.00', '249.00', '397.00', 'Calçados', '', '0', '2022-07-09 20:32:14', 1, 131, 'Com a parte superior feita de lona reciclada, a paleta de cores naturais celebra a natureza e destaca a construção única com sobreposições costuradas e detalhes em TPU adicionam durabilidade, conforto e o visual icônico dos anos 90. ', 6, '0', '0'),
('509834262CB7689817CD', 'Tênis  Nike Air Max Lite Branco - 40', 'Nike', 'Branco', 'Tênis', '40', '252.00', '332.00', '549.00', 'Calçados', '', '0', '2022-07-10 20:29:31', 1, 131, 'Estilo esportivo renovado com o Tênis Nike Air Max Lite Masculino! O cabedal em têxtil fornece resistência e durabilidade, enquanto a entressola com a tecnologia Air Max apresenta amortecimento suave durante o dia a dia. O design esportivo dá o diferencial da peça.', 8, '0', '0'),
('532453962CB764BDE59B', 'Jaqueta Element Simple Logo Preta', 'Element', 'Preta', 'Blusa', 'M', '80.00', '199.90', '250.00', 'Jaquetas', '', '', '2022-07-03 17:54:15', 1, 134, 'Medidas da peça no tamanho M:\r\n• Ombro: 16cm\r\n• Ombro a ombro: 52cm\r\n• Comprimento da manga: 68cm\r\n• Largura da manga: 52cm\r\n• Comprimento da peça: 75cm\r\n• Tórax: 120cm\r\n\r\n(Medidas sem elasticidade)\r\n\r\nMedidas do Modelo: Altura: 1,89m/ Tórax: 96cm/ Manequim: 38.\r\n\r\nVERSÁTEIS E QUENTINHOS: No inverno, nada melhor do que um casaco ou jaqueta para se esquentar sem perder o estilo, né? Essas peças compõem looks com vestidos, calças e saias sem pesar! Você pode combinar com botas, coturnos, tricots para o frio ou mesmo em temperaturas mais amenas, com tênis e sandálias.\r\n\r\nA Element foi inspirada pelo movimento hip-hop, skate e por uma mistura de estilos urbanos, que deram à marca uma identidade única.', 18, '', ''),
('641154362CB78E864B67', 'Bermuda  Adidas Breaknet  Branco - 40', 'Adidas', 'Branco', 'Bermuda', '40', '80.00', '199.00', '279.00', 'Acessórios', '', '0', '2022-07-10 22:12:08', 1, 131, 'Com modelo clássico, o Tênis Adidas Feminino Breaknet traz as listras icônicas da marca em cores lisas e também animal print. É confeccionado com material macio e durável, perfuros para respirabilidade, forro acolchoado e solado resistente ao desgaste. Conte com a Adidas para complementar o seu look urbano em grande estilo!', 8, '0', '0'),
('645045562CB767005F42', 'Tênis  Nike Court Legacy Canvas Mid Maculino Preto - 40', 'Nike', 'Preto', 'Tênis', '40', '220.00', '339.00', '499.00', 'Calçados', '', '0', '2022-07-10 20:27:54', 1, 131, 'ELEVANDO UM CLÁSSICO INSPIRADO NAS QUADRAS.Homenageando sua história baseada na cultura do tênis, o Nike Court Legacy Canvas Mid leva o clássico a um novo patamar. Ele é feito com lona durável, costuras de herança e um grande Swoosh na lateral que atualiza a edição. A boca acolchoada proporciona uma ótima sensação e adiciona uma camada extra de conforto.BenefíciosA lona na parte de cima proporciona durabilidade e conforto.A entressola de espuma proporciona amortecimento leve e ágil.A sola de borracha de comprimento total com padrão de tração espinha de peixe proporciona tração em múltiplas superfícies.Detalhes do produtoPlaca de autenticidade Swoosh na parte de trás do calcanharEtiqueta da língua em tecido woven', 12, '0', '0'),
('659401862CB767F6414E', 'Blusa  Stussy Mas Jacquard Branco - M', 'Stussy', 'Branco', 'Blusa', 'M', '950.00', '1180.00', '1400.00', 'Blusas', '', '0', '2022-07-09 20:44:30', 1, 131, '', 6, '0', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `product_type`
--

INSERT INTO `product_type` (`id`, `type`) VALUES
(10, 'Bermuda'),
(1, 'Blusa'),
(2, 'Boina'),
(3, 'Bolsa'),
(4, 'Bota'),
(5, 'Brinco'),
(6, 'Cachecol'),
(8, 'Calça'),
(7, 'Calcinha'),
(12, 'Camisa'),
(13, 'Camiseta'),
(14, 'Camisola'),
(15, 'Capa de chuva'),
(16, 'Carteira'),
(17, 'Casaco'),
(18, 'Chapéu'),
(19, 'Cinta'),
(20, 'Cinto'),
(21, 'Colar'),
(9, 'Cueca'),
(22, 'Gorro / Boné'),
(23, 'Gravata'),
(24, 'Guarda-chuva'),
(25, 'Jaqueta'),
(26, 'Luvas'),
(27, 'Maleta'),
(28, 'Meias'),
(42, 'Óculos'),
(29, 'Pulseira'),
(30, 'Relógio'),
(31, 'Saia'),
(32, 'Sandália'),
(33, 'Sapato'),
(11, 'Shorts'),
(34, 'Sobretudo'),
(37, 'Suéter'),
(35, 'Sutiã'),
(36, 'Tênis'),
(38, 'Terno'),
(39, 'Traje de banho'),
(40, 'Uniforme'),
(41, 'Vestido');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id-user` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `create-data` datetime DEFAULT NULL,
  `authenticated` int(11) NOT NULL,
  `auth_master` int(11) NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `link_auth` varchar(255) NOT NULL,
  `cod_auth` varchar(10) NOT NULL,
  `create_at` date DEFAULT NULL,
  `modify-at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id-user`, `name`, `surname`, `user`, `pass`, `email`, `create-data`, `authenticated`, `auth_master`, `photo`, `link_auth`, `cod_auth`, `create_at`, `modify-at`) VALUES
(131, 'Igor Rodrigo Ferreira', 'Rodrigo', 'igor99_', '$2y$10$hZl3wMrsrfmJ.dqDWbAWHeyH/yRXEkdfzk.S2ONWLiCIEz3IddeX.', 'igor.winchester321@gmail.com', '2022-01-13 20:33:55', 2, 1, '55e8f072da39df0d83abbcda577f69c7.png', 'bbf8ba4bd99ed6d1af8baa7efef1de67', '', '0000-00-00', '2022-01-25 23:16:21'),
(135, 'Maria do Socorro ferreira', 'Maria', 'maria.dscf', '$2y$10$xG1REGlv9QYjSFvsWZz5wejec4jJwnzVTKwoEeCXU5AF1WVAfPyeq', 'maria.dscf@gmail.com', '2022-06-12 00:52:06', 1, 0, '0', '6535f8e643adf47ce71f709d5e9ba2cc', '', NULL, '2022-06-12 00:52:32'),
(137, 'Igor Rodrigo Ferreira', 'Rodrigo ', 'rodrigo.ferreira', '$2y$10$K3KR4AA42eLHx4rpfG9qb.PH0V4lrPpVI4H3LnzjIby3AjCRwTrjG', 'igor.rodrigo09@outlook.com', '2022-06-28 22:42:07', 3, 0, '0', 'c8aa1e3c3105104396cffb6b373fd505', '', NULL, '2022-06-28 22:43:13');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `init`
--
ALTER TABLE `init`
  ADD PRIMARY KEY (`project-name`);

--
-- Índices para tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id-notifications`),
  ADD KEY `id` (`id`);

--
-- Índices para tabela `personal_data`
--
ALTER TABLE `personal_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf_cnpj` (`cpf_cnpj`,`tel2`) USING BTREE;

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie` (`categorie`),
  ADD KEY `type` (`type`);

--
-- Índices para tabela `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id-user`),
  ADD UNIQUE KEY `user` (`user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id-notifications` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de tabela `personal_data`
--
ALTER TABLE `personal_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de tabela `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id-user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id-user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`categorie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`type`) REFERENCES `product_type` (`type`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
