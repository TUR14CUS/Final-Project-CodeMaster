-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 22-Fev-2024 às 20:06
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `construcao_e_habitacao_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `backoffice`
--

CREATE TABLE `backoffice` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `data_ultimo_acesso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `backoffice`
--

INSERT INTO `backoffice` (`id`, `nome`, `login`, `senha`, `data_ultimo_acesso`) VALUES
(1, 'Admin', 'admin', 'codemaster', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `pagina` varchar(50) NOT NULL,
  `imagem` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`id`, `pagina`, `imagem`) VALUES
(1, 'quem_somos', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerQuemSomos.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `imagem` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `carousel`
--

INSERT INTO `carousel` (`id`, `imagem`) VALUES
(1, 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerDestaques.png'),
(2, 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerDestaque1.png'),
(3, 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerHome.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `telefone` varchar(250) NOT NULL,
  `morada` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `link_facebook` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `contactos`
--

INSERT INTO `contactos` (`id`, `telefone`, `morada`, `email`, `link_facebook`) VALUES
(1, '222 088 761\r\n', 'Rua Passo Manuel, 59-1.º 4000-384 porto\r\n', 'cooptripeira@mail.telepac.pt\r\n', 'https://www.facebook.com/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `destaques`
--

CREATE TABLE `destaques` (
  `id` int(11) NOT NULL,
  `imagem` varchar(1000) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `texto` longtext NOT NULL,
  `esta_na_home` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `destaques`
--

INSERT INTO `destaques` (`id`, `imagem`, `titulo`, `texto`, `esta_na_home`) VALUES
(1, 'http://127.0.0.1/construcao_e_habitacao/static/img/destaque1.png', 'Canidelo - Vila Nova de Gaia', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sed dolore deleniti, aut quidem, adipisci aspernatur nisi... lore', 1),
(2, 'http://127.0.0.1/construcao_e_habitacao/static/img/destaque2.png', 'Barralha - Sº da Hora Matosinhos', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sed dolore deleniti, aut quidem, adipisci aspernatur nisi... lore', 1),
(3, 'http://127.0.0.1/construcao_e_habitacao/static/img/destaque3.png', 'Contomil - Porto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sed dolore deleniti, aut quidem, adipisci aspernatur nisi... lore', 1),
(4, 'http://127.0.0.1/construcao_e_habitacao/static/img/destaque4.png', 'Vila do Conde', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sed dolore deleniti, aut quidem, adipisci aspernatur nisi... lore', 1),
(5, 'http://127.0.0.1/construcao_e_habitacao/static/img/destaque5.png', 'Famalição', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sed dolore deleniti, aut quidem, adipisci aspernatur nisi... lore', 1),
(6, 'http://127.0.0.1/construcao_e_habitacao/static/img/destaque6.png', 'Madalena - Vila Nova de Gaia', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sed dolore deleniti, aut quidem, adipisci aspernatur nisi... loreBarralha - Sº da Hora Matosinhos', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empreendimentos`
--

CREATE TABLE `empreendimentos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `texto` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `empreendimentos`
--

INSERT INTO `empreendimentos` (`id`, `titulo`, `texto`) VALUES
(1, 'Canidelo - Vila Nova de Gaia', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam alias totam, eligendi adipisci sint rem modi qui odit itaque, impedit, velit dolorem quos neque non asperiores? Consequatur exercitationem alias dicta officiis illo, culpa ullam tempore ipsam dolores quasi, nemo ipsum? Iusto esse nostrum, sed ea ex sint odit dolore placeat quos at animi error dolor sequi nihil laborum sapiente veritatis? Praesentium illum, qui, omnis quia tenetur consequatur sequi delectus odio aliquid dolorem eius optio ipsa, illo nemo vitae architecto itaque excepturi? Tempore repudiandae sed, aliquid quod ratione labore suscipit culpa a commodi odit voluptate facere expedita quibusdam iusto reprehenderit voluptates, vitae autem dolorem dolores quisquam accusantium! Eveniet voluptates vero rem accusamus commodi, dolore deleniti totam. Laudantium ad provident autem accusantium ex nemo possimus quisquam temporibus, assumenda sunt error corporis. Iure quaerat, exercitationem harum ratione ex illum eveniet dicta, soluta deleniti iste eius? Quod officia voluptatibus magni nesciunt voluptas consequuntur cupiditate? Maxime cumque vel obcaecati delectus doloribus iste est ut voluptate commodi deserunt ab temporibus similique placeat ad, ullam repudiandae possimus mollitia magnam? Aliquam quis enim itaque accusamus tenetur! Architecto aut dolores iusto corrupti laborum inventore libero tempora? Incidunt, ullam. Quia atque aperiam, doloremque quisquam ipsam quas tempora? Sit aut reprehenderit blanditiis eveniet eius quis culpa reiciendis quaerat beatae, incidunt quas, dolorum temporibus, numquam obcaecati. Blanditiis sunt, distinctio atque quisquam adipisci pariatur nisi. Nemo necessitatibus magni sapiente eius? Deserunt consectetur illo provident repellat alias architecto dignissimos iusto dolore veritatis asperiores similique eaque, dolores tempora nemo soluta qui? Debitis cumque minima, vel laboriosam, perspiciatis quod ipsum minus explicabo autem eveniet adipisci! Officiis vero tenetur ullam et, eaque optio libero aspernatur ratione ex repellendus esse veniam earum asperiores illo facere beatae assumenda, enim dolores corporis. Possimus soluta debitis vero sit, repellat rem eaque ut iure officiis dolorum enim eum quasi praesentium libero deleniti ad sint officia quidem laudantium magni corporis. Architecto voluptates fuga expedita suscipit iure ipsam vel eveniet quaerat esse qui. Sunt, voluptates aut. Rem, ut! Non illo earum blanditiis? Earum sint consequuntur consectetur corrupti voluptas dignissimos error! Molestias sunt eius praesentium quo itaque pariatur aperiam autem impedit fugit aspernatur neque architecto cumque, recusandae dolore atque? Dolorum nostrum at dolores voluptatibus veniam possimus assumenda, placeat ex quam, ipsam sapiente earum! Culpa iure voluptatum, tempore accusamus quas delectus similique molestias id fugiat incidunt minus inventore rerum, saepe vitae optio aut consectetur accusantium sequi expedita modi iusto? Numquam quibusdam facilis facere, impedit esse blanditiis quidem odio vitae dolore eius inventore placeat dolores perferendis ullam molestiae maxime iste tempore reiciendis? Eos labore harum tempora temporibus quam assumenda, sint porro itaque, soluta nobis laborum voluptatum facere. Autem dolorem beatae, vel earum quae placeat maiores ex, nihil quibusdam, adipisci molestiae numquam alias dolores culpa ratione assumenda fuga repellat ipsa architecto unde quod. Illo odio, placeat odit iste nemo aspernatur maiores dolores, repellat voluptates, itaque impedit quos? Saepe corrupti sunt veniam maxime molestias mollitia ipsa? Eos explicabo optio placeat inventore vitae molestiae numquam consequatur impedit dolor reiciendis, dignissimos ad dicta recusandae commodi ipsam totam cum cupiditate quidem a.'),
(2, 'Barralha - Sº da Hora Matosinhos', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam alias totam, eligendi adipisci sint rem modi qui odit itaque, impedit, velit dolorem quos neque non asperiores? Consequatur exercitationem alias dicta officiis illo, culpa ullam tempore ipsam dolores quasi, nemo ipsum? Iusto esse nostrum, sed ea ex sint odit dolore placeat quos at animi error dolor sequi nihil laborum sapiente veritatis? Praesentium illum, qui, omnis quia tenetur consequatur sequi delectus odio aliquid dolorem eius optio ipsa, illo nemo vitae architecto itaque excepturi? Tempore repudiandae sed, aliquid quod ratione labore suscipit culpa a commodi odit voluptate facere expedita quibusdam iusto reprehenderit voluptates, vitae autem dolorem dolores quisquam accusantium! Eveniet voluptates vero rem accusamus commodi, dolore deleniti totam. Laudantium ad provident autem accusantium ex nemo possimus quisquam temporibus, assumenda sunt error corporis. Iure quaerat, exercitationem harum ratione ex illum eveniet dicta, soluta deleniti iste eius? Quod officia voluptatibus magni nesciunt voluptas consequuntur cupiditate? Maxime cumque vel obcaecati delectus doloribus iste est ut voluptate commodi deserunt ab temporibus similique placeat ad, ullam repudiandae possimus mollitia magnam? Aliquam quis enim itaque accusamus tenetur! Architecto aut dolores iusto corrupti laborum inventore libero tempora? Incidunt, ullam. Quia atque aperiam, doloremque quisquam ipsam quas tempora? Sit aut reprehenderit blanditiis eveniet eius quis culpa reiciendis quaerat beatae, incidunt quas, dolorum temporibus, numquam obcaecati. Blanditiis sunt, distinctio atque quisquam adipisci pariatur nisi. Nemo necessitatibus magni sapiente eius? Deserunt consectetur illo provident repellat alias architecto dignissimos iusto dolore veritatis asperiores similique eaque, dolores tempora nemo soluta qui? Debitis cumque minima, vel laboriosam, perspiciatis quod ipsum minus explicabo autem eveniet adipisci! Officiis vero tenetur ullam et, eaque optio libero aspernatur ratione ex repellendus esse veniam earum asperiores illo facere beatae assumenda, enim dolores corporis. Possimus soluta debitis vero sit, repellat rem eaque ut iure officiis dolorum enim eum quasi praesentium libero deleniti ad sint officia quidem laudantium magni corporis. Architecto voluptates fuga expedita suscipit iure ipsam vel eveniet quaerat esse qui. Sunt, voluptates aut. Rem, ut! Non illo earum blanditiis? Earum sint consequuntur consectetur corrupti voluptas dignissimos error! Molestias sunt eius praesentium quo itaque pariatur aperiam autem impedit fugit aspernatur neque architecto cumque, recusandae dolore atque? Dolorum nostrum at dolores voluptatibus veniam possimus assumenda, placeat ex quam, ipsam sapiente earum! Culpa iure voluptatum, tempore accusamus quas delectus similique molestias id fugiat incidunt minus inventore rerum, saepe vitae optio aut consectetur accusantium sequi expedita modi iusto? Numquam quibusdam facilis facere, impedit esse blanditiis quidem odio vitae dolore eius inventore placeat dolores perferendis ullam molestiae maxime iste tempore reiciendis? Eos labore harum tempora temporibus quam assumenda, sint porro itaque, soluta nobis laborum voluptatum facere. Autem dolorem beatae, vel earum quae placeat maiores ex, nihil quibusdam, adipisci molestiae numquam alias dolores culpa ratione assumenda fuga repellat ipsa architecto unde quod. Illo odio, placeat odit iste nemo aspernatur maiores dolores, repellat voluptates, itaque impedit quos? Saepe corrupti sunt veniam maxime molestias mollitia ipsa? Eos explicabo optio placeat inventore vitae molestiae numquam consequatur impedit dolor reiciendis, dignissimos ad dicta recusandae commodi ipsam totam cum cupiditate quidem a.'),
(3, 'Contomil - Porto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam alias totam, eligendi adipisci sint rem modi qui odit itaque, impedit, velit dolorem quos neque non asperiores? Consequatur exercitationem alias dicta officiis illo, culpa ullam tempore ipsam dolores quasi, nemo ipsum? Iusto esse nostrum, sed ea ex sint odit dolore placeat quos at animi error dolor sequi nihil laborum sapiente veritatis? Praesentium illum, qui, omnis quia tenetur consequatur sequi delectus odio aliquid dolorem eius optio ipsa, illo nemo vitae architecto itaque excepturi? Tempore repudiandae sed, aliquid quod ratione labore suscipit culpa a commodi odit voluptate facere expedita quibusdam iusto reprehenderit voluptates, vitae autem dolorem dolores quisquam accusantium! Eveniet voluptates vero rem accusamus commodi, dolore deleniti totam. Laudantium ad provident autem accusantium ex nemo possimus quisquam temporibus, assumenda sunt error corporis. Iure quaerat, exercitationem harum ratione ex illum eveniet dicta, soluta deleniti iste eius? Quod officia voluptatibus magni nesciunt voluptas consequuntur cupiditate? Maxime cumque vel obcaecati delectus doloribus iste est ut voluptate commodi deserunt ab temporibus similique placeat ad, ullam repudiandae possimus mollitia magnam? Aliquam quis enim itaque accusamus tenetur! Architecto aut dolores iusto corrupti laborum inventore libero tempora? Incidunt, ullam. Quia atque aperiam, doloremque quisquam ipsam quas tempora? Sit aut reprehenderit blanditiis eveniet eius quis culpa reiciendis quaerat beatae, incidunt quas, dolorum temporibus, numquam obcaecati. Blanditiis sunt, distinctio atque quisquam adipisci pariatur nisi. Nemo necessitatibus magni sapiente eius? Deserunt consectetur illo provident repellat alias architecto dignissimos iusto dolore veritatis asperiores similique eaque, dolores tempora nemo soluta qui? Debitis cumque minima, vel laboriosam, perspiciatis quod ipsum minus explicabo autem eveniet adipisci! Officiis vero tenetur ullam et, eaque optio libero aspernatur ratione ex repellendus esse veniam earum asperiores illo facere beatae assumenda, enim dolores corporis. Possimus soluta debitis vero sit, repellat rem eaque ut iure officiis dolorum enim eum quasi praesentium libero deleniti ad sint officia quidem laudantium magni corporis. Architecto voluptates fuga expedita suscipit iure ipsam vel eveniet quaerat esse qui. Sunt, voluptates aut. Rem, ut! Non illo earum blanditiis? Earum sint consequuntur consectetur corrupti voluptas dignissimos error! Molestias sunt eius praesentium quo itaque pariatur aperiam autem impedit fugit aspernatur neque architecto cumque, recusandae dolore atque? Dolorum nostrum at dolores voluptatibus veniam possimus assumenda, placeat ex quam, ipsam sapiente earum! Culpa iure voluptatum, tempore accusamus quas delectus similique molestias id fugiat incidunt minus inventore rerum, saepe vitae optio aut consectetur accusantium sequi expedita modi iusto? Numquam quibusdam facilis facere, impedit esse blanditiis quidem odio vitae dolore eius inventore placeat dolores perferendis ullam molestiae maxime iste tempore reiciendis? Eos labore harum tempora temporibus quam assumenda, sint porro itaque, soluta nobis laborum voluptatum facere. Autem dolorem beatae, vel earum quae placeat maiores ex, nihil quibusdam, adipisci molestiae numquam alias dolores culpa ratione assumenda fuga repellat ipsa architecto unde quod. Illo odio, placeat odit iste nemo aspernatur maiores dolores, repellat voluptates, itaque impedit quos? Saepe corrupti sunt veniam maxime molestias mollitia ipsa? Eos explicabo optio placeat inventore vitae molestiae numquam consequatur impedit dolor reiciendis, dignissimos ad dicta recusandae commodi ipsam totam cum cupiditate quidem a.'),
(4, 'Vila do Conde', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam alias totam, eligendi adipisci sint rem modi qui odit itaque, impedit, velit dolorem quos neque non asperiores? Consequatur exercitationem alias dicta officiis illo, culpa ullam tempore ipsam dolores quasi, nemo ipsum? Iusto esse nostrum, sed ea ex sint odit dolore placeat quos at animi error dolor sequi nihil laborum sapiente veritatis? Praesentium illum, qui, omnis quia tenetur consequatur sequi delectus odio aliquid dolorem eius optio ipsa, illo nemo vitae architecto itaque excepturi? Tempore repudiandae sed, aliquid quod ratione labore suscipit culpa a commodi odit voluptate facere expedita quibusdam iusto reprehenderit voluptates, vitae autem dolorem dolores quisquam accusantium! Eveniet voluptates vero rem accusamus commodi, dolore deleniti totam. Laudantium ad provident autem accusantium ex nemo possimus quisquam temporibus, assumenda sunt error corporis. Iure quaerat, exercitationem harum ratione ex illum eveniet dicta, soluta deleniti iste eius? Quod officia voluptatibus magni nesciunt voluptas consequuntur cupiditate? Maxime cumque vel obcaecati delectus doloribus iste est ut voluptate commodi deserunt ab temporibus similique placeat ad, ullam repudiandae possimus mollitia magnam? Aliquam quis enim itaque accusamus tenetur! Architecto aut dolores iusto corrupti laborum inventore libero tempora? Incidunt, ullam. Quia atque aperiam, doloremque quisquam ipsam quas tempora? Sit aut reprehenderit blanditiis eveniet eius quis culpa reiciendis quaerat beatae, incidunt quas, dolorum temporibus, numquam obcaecati. Blanditiis sunt, distinctio atque quisquam adipisci pariatur nisi. Nemo necessitatibus magni sapiente eius? Deserunt consectetur illo provident repellat alias architecto dignissimos iusto dolore veritatis asperiores similique eaque, dolores tempora nemo soluta qui? Debitis cumque minima, vel laboriosam, perspiciatis quod ipsum minus explicabo autem eveniet adipisci! Officiis vero tenetur ullam et, eaque optio libero aspernatur ratione ex repellendus esse veniam earum asperiores illo facere beatae assumenda, enim dolores corporis. Possimus soluta debitis vero sit, repellat rem eaque ut iure officiis dolorum enim eum quasi praesentium libero deleniti ad sint officia quidem laudantium magni corporis. Architecto voluptates fuga expedita suscipit iure ipsam vel eveniet quaerat esse qui. Sunt, voluptates aut. Rem, ut! Non illo earum blanditiis? Earum sint consequuntur consectetur corrupti voluptas dignissimos error! Molestias sunt eius praesentium quo itaque pariatur aperiam autem impedit fugit aspernatur neque architecto cumque, recusandae dolore atque? Dolorum nostrum at dolores voluptatibus veniam possimus assumenda, placeat ex quam, ipsam sapiente earum! Culpa iure voluptatum, tempore accusamus quas delectus similique molestias id fugiat incidunt minus inventore rerum, saepe vitae optio aut consectetur accusantium sequi expedita modi iusto? Numquam quibusdam facilis facere, impedit esse blanditiis quidem odio vitae dolore eius inventore placeat dolores perferendis ullam molestiae maxime iste tempore reiciendis? Eos labore harum tempora temporibus quam assumenda, sint porro itaque, soluta nobis laborum voluptatum facere. Autem dolorem beatae, vel earum quae placeat maiores ex, nihil quibusdam, adipisci molestiae numquam alias dolores culpa ratione assumenda fuga repellat ipsa architecto unde quod. Illo odio, placeat odit iste nemo aspernatur maiores dolores, repellat voluptates, itaque impedit quos? Saepe corrupti sunt veniam maxime molestias mollitia ipsa? Eos explicabo optio placeat inventore vitae molestiae numquam consequatur impedit dolor reiciendis, dignissimos ad dicta recusandae commodi ipsam totam cum cupiditate quidem a.'),
(5, 'Famalição', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam alias totam, eligendi adipisci sint rem modi qui odit itaque, impedit, velit dolorem quos neque non asperiores? Consequatur exercitationem alias dicta officiis illo, culpa ullam tempore ipsam dolores quasi, nemo ipsum? Iusto esse nostrum, sed ea ex sint odit dolore placeat quos at animi error dolor sequi nihil laborum sapiente veritatis? Praesentium illum, qui, omnis quia tenetur consequatur sequi delectus odio aliquid dolorem eius optio ipsa, illo nemo vitae architecto itaque excepturi? Tempore repudiandae sed, aliquid quod ratione labore suscipit culpa a commodi odit voluptate facere expedita quibusdam iusto reprehenderit voluptates, vitae autem dolorem dolores quisquam accusantium! Eveniet voluptates vero rem accusamus commodi, dolore deleniti totam. Laudantium ad provident autem accusantium ex nemo possimus quisquam temporibus, assumenda sunt error corporis. Iure quaerat, exercitationem harum ratione ex illum eveniet dicta, soluta deleniti iste eius? Quod officia voluptatibus magni nesciunt voluptas consequuntur cupiditate? Maxime cumque vel obcaecati delectus doloribus iste est ut voluptate commodi deserunt ab temporibus similique placeat ad, ullam repudiandae possimus mollitia magnam? Aliquam quis enim itaque accusamus tenetur! Architecto aut dolores iusto corrupti laborum inventore libero tempora? Incidunt, ullam. Quia atque aperiam, doloremque quisquam ipsam quas tempora? Sit aut reprehenderit blanditiis eveniet eius quis culpa reiciendis quaerat beatae, incidunt quas, dolorum temporibus, numquam obcaecati. Blanditiis sunt, distinctio atque quisquam adipisci pariatur nisi. Nemo necessitatibus magni sapiente eius? Deserunt consectetur illo provident repellat alias architecto dignissimos iusto dolore veritatis asperiores similique eaque, dolores tempora nemo soluta qui? Debitis cumque minima, vel laboriosam, perspiciatis quod ipsum minus explicabo autem eveniet adipisci! Officiis vero tenetur ullam et, eaque optio libero aspernatur ratione ex repellendus esse veniam earum asperiores illo facere beatae assumenda, enim dolores corporis. Possimus soluta debitis vero sit, repellat rem eaque ut iure officiis dolorum enim eum quasi praesentium libero deleniti ad sint officia quidem laudantium magni corporis. Architecto voluptates fuga expedita suscipit iure ipsam vel eveniet quaerat esse qui. Sunt, voluptates aut. Rem, ut! Non illo earum blanditiis? Earum sint consequuntur consectetur corrupti voluptas dignissimos error! Molestias sunt eius praesentium quo itaque pariatur aperiam autem impedit fugit aspernatur neque architecto cumque, recusandae dolore atque? Dolorum nostrum at dolores voluptatibus veniam possimus assumenda, placeat ex quam, ipsam sapiente earum! Culpa iure voluptatum, tempore accusamus quas delectus similique molestias id fugiat incidunt minus inventore rerum, saepe vitae optio aut consectetur accusantium sequi expedita modi iusto? Numquam quibusdam facilis facere, impedit esse blanditiis quidem odio vitae dolore eius inventore placeat dolores perferendis ullam molestiae maxime iste tempore reiciendis? Eos labore harum tempora temporibus quam assumenda, sint porro itaque, soluta nobis laborum voluptatum facere. Autem dolorem beatae, vel earum quae placeat maiores ex, nihil quibusdam, adipisci molestiae numquam alias dolores culpa ratione assumenda fuga repellat ipsa architecto unde quod. Illo odio, placeat odit iste nemo aspernatur maiores dolores, repellat voluptates, itaque impedit quos? Saepe corrupti sunt veniam maxime molestias mollitia ipsa? Eos explicabo optio placeat inventore vitae molestiae numquam consequatur impedit dolor reiciendis, dignissimos ad dicta recusandae commodi ipsam totam cum cupiditate quidem a.'),
(6, 'Madalena - Vila Nova de Gaia', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam alias totam, eligendi adipisci sint rem modi qui odit itaque, impedit, velit dolorem quos neque non asperiores? Consequatur exercitationem alias dicta officiis illo, culpa ullam tempore ipsam dolores quasi, nemo ipsum? Iusto esse nostrum, sed ea ex sint odit dolore placeat quos at animi error dolor sequi nihil laborum sapiente veritatis? Praesentium illum, qui, omnis quia tenetur consequatur sequi delectus odio aliquid dolorem eius optio ipsa, illo nemo vitae architecto itaque excepturi? Tempore repudiandae sed, aliquid quod ratione labore suscipit culpa a commodi odit voluptate facere expedita quibusdam iusto reprehenderit voluptates, vitae autem dolorem dolores quisquam accusantium! Eveniet voluptates vero rem accusamus commodi, dolore deleniti totam. Laudantium ad provident autem accusantium ex nemo possimus quisquam temporibus, assumenda sunt error corporis. Iure quaerat, exercitationem harum ratione ex illum eveniet dicta, soluta deleniti iste eius? Quod officia voluptatibus magni nesciunt voluptas consequuntur cupiditate? Maxime cumque vel obcaecati delectus doloribus iste est ut voluptate commodi deserunt ab temporibus similique placeat ad, ullam repudiandae possimus mollitia magnam? Aliquam quis enim itaque accusamus tenetur! Architecto aut dolores iusto corrupti laborum inventore libero tempora? Incidunt, ullam. Quia atque aperiam, doloremque quisquam ipsam quas tempora? Sit aut reprehenderit blanditiis eveniet eius quis culpa reiciendis quaerat beatae, incidunt quas, dolorum temporibus, numquam obcaecati. Blanditiis sunt, distinctio atque quisquam adipisci pariatur nisi. Nemo necessitatibus magni sapiente eius? Deserunt consectetur illo provident repellat alias architecto dignissimos iusto dolore veritatis asperiores similique eaque, dolores tempora nemo soluta qui? Debitis cumque minima, vel laboriosam, perspiciatis quod ipsum minus explicabo autem eveniet adipisci! Officiis vero tenetur ullam et, eaque optio libero aspernatur ratione ex repellendus esse veniam earum asperiores illo facere beatae assumenda, enim dolores corporis. Possimus soluta debitis vero sit, repellat rem eaque ut iure officiis dolorum enim eum quasi praesentium libero deleniti ad sint officia quidem laudantium magni corporis. Architecto voluptates fuga expedita suscipit iure ipsam vel eveniet quaerat esse qui. Sunt, voluptates aut. Rem, ut! Non illo earum blanditiis? Earum sint consequuntur consectetur corrupti voluptas dignissimos error! Molestias sunt eius praesentium quo itaque pariatur aperiam autem impedit fugit aspernatur neque architecto cumque, recusandae dolore atque? Dolorum nostrum at dolores voluptatibus veniam possimus assumenda, placeat ex quam, ipsam sapiente earum! Culpa iure voluptatum, tempore accusamus quas delectus similique molestias id fugiat incidunt minus inventore rerum, saepe vitae optio aut consectetur accusantium sequi expedita modi iusto? Numquam quibusdam facilis facere, impedit esse blanditiis quidem odio vitae dolore eius inventore placeat dolores perferendis ullam molestiae maxime iste tempore reiciendis? Eos labore harum tempora temporibus quam assumenda, sint porro itaque, soluta nobis laborum voluptatum facere. Autem dolorem beatae, vel earum quae placeat maiores ex, nihil quibusdam, adipisci molestiae numquam alias dolores culpa ratione assumenda fuga repellat ipsa architecto unde quod. Illo odio, placeat odit iste nemo aspernatur maiores dolores, repellat voluptates, itaque impedit quos? Saepe corrupti sunt veniam maxime molestias mollitia ipsa? Eos explicabo optio placeat inventore vitae molestiae numquam consequatur impedit dolor reiciendis, dignissimos ad dicta recusandae commodi ipsam totam cum cupiditate quidem a.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_simples`
--

CREATE TABLE `menu_simples` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `menu_simples`
--

INSERT INTO `menu_simples` (`id`, `titulo`, `texto`) VALUES
(1, 'Quem Somos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed maximus maximus porta. Sed gravida malesuada dui vulputate congue. Donec fringilla dapibus mi, vitae suscipit lacus sodales vitae. Nam molestie arcu sed ligula elementum, consequat mattis nunc molestie. Vivamus tristique mauris quis nisi commodo iaculis. Suspendisse rutrum, lectus in vulputate posuere, lectus quam ultrices sapien, eu dapibus magna lacus ac turpis. Mauris congue tortor eu posuere faucibus. Suspendisse elementum, mi id tempus consequat, sem felis pulvinar sem, vitae lacinia ex leo id risus. Morbi faucibus, elit sodales finibus ullamcorper, ex nisi ornare diam, eu tincidunt neque ligula placerat purus. Donec mattis suscipit est vitae facilisis. Nam sit amet ligula vel mi feugiat consectetur. Praesent suscipit aliquet lacus ac condimentum. Duis fringilla ipsum non odio cursus, quis elementum ante malesuada. Suspendisse potenti. Sed porttitor orci velit, id pellentesque velit facilisis id.\r\n\r\nIn magna ligula, lacinia dapibus ex finibus, ultrices bibendum felis. Maecenas eros purus, tristique vitae mauris vitae, scelerisque maximus orci. Nullam in elementum arcu. Donec leo orci, mollis sed porta porta, luctus eu enim. Sed turpis nulla, laoreet sed lorem at, pulvinar blandit lacus. Morbi sodales orci at diam ultricies, quis sodales mauris laoreet. Curabitur interdum, ex et lacinia mattis, leo nunc venenatis mi, sit amet suscipit ligula augue tempus diam. Nunc et magna sapien. Nullam vestibulum vulputate erat, consectetur tincidunt magna cursus sed. Vestibulum rutrum erat erat, vitae posuere dui aliquam id. Praesent viverra, orci in bibendum luctus, dolor augue consectetur arcu, non dapibus odio dolor eu libero. Etiam egestas quam et tempor facilisis. Nullam vestibulum risus eu magna egestas egestas. Ut dolor risus, pretium at nisi at, ullamcorper molestie lectus. Integer volutpat sem nec mauris bibendum, et pharetra nisi scelerisque. Ut non ex diam.\r\n\r\nCras cursus sem eu lectus viverra elementum. Aenean eget interdum metus, aliquet volutpat sapien. Nullam congue viverra nisi, eu sagittis felis malesuada pellentesque. Curabitur efficitur sagittis odio, in lacinia felis iaculis id. Vivamus in elit et dui sodales venenatis vel id sapien. Nunc dolor mi, accumsan sit amet velit quis, vehicula sodales turpis. Suspendisse sed dui quis nibh condimentum finibus. Cras rhoncus interdum faucibus. Fusce ultrices tortor a sapien luctus, eget accumsan orci pharetra. Mauris nibh orci, porta sit amet posuere eget, ultrices quis nisi.\r\n\r\nAenean congue ornare ipsum, a interdum mi dictum ut. Pellentesque eu dui leo. Proin vitae egestas nibh, eu viverra augue. Cras convallis ex vel diam facilisis convallis. Mauris nec eros congue, interdum nibh ut, pharetra urna. Suspendisse potenti. Morbi sapien nisi, tempus nec gravida id, rhoncus sed tortor. Quisque elementum urna eget purus facilisis, a tincidunt tellus faucibus.\r\n\r\nFusce id ullamcorper metus. Donec vitae nisi ut lacus vestibulum lacinia. Donec accumsan elementum metus sit amet sollicitudin. Maecenas et velit a mi pretium mattis. Nullam cursus eleifend felis, viverra fringilla turpis venenatis in. Phasellus vehicula libero eget nisl placerat dignissim. Nulla eu ornare nibh, vitae malesuada dui.'),
(2, 'Sócios', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed maximus maximus porta. Sed gravida malesuada dui vulputate congue. Donec fringilla dapibus mi, vitae suscipit lacus sodales vitae. Nam molestie arcu sed ligula elementum, consequat mattis nunc molestie. Vivamus tristique mauris quis nisi commodo iaculis. Suspendisse rutrum, lectus in vulputate posuere, lectus quam ultrices sapien, eu dapibus magna lacus ac turpis. Mauris congue tortor eu posuere faucibus. Suspendisse elementum, mi id tempus consequat, sem felis pulvinar sem, vitae lacinia ex leo id risus. Morbi faucibus, elit sodales finibus ullamcorper, ex nisi ornare diam, eu tincidunt neque ligula placerat purus. Donec mattis suscipit est vitae facilisis. Nam sit amet ligula vel mi feugiat consectetur. Praesent suscipit aliquet lacus ac condimentum. Duis fringilla ipsum non odio cursus, quis elementum ante malesuada. Suspendisse potenti. Sed porttitor orci velit, id pellentesque velit facilisis id.\r\n\r\nIn magna ligula, lacinia dapibus ex finibus, ultrices bibendum felis. Maecenas eros purus, tristique vitae mauris vitae, scelerisque maximus orci. Nullam in elementum arcu. Donec leo orci, mollis sed porta porta, luctus eu enim. Sed turpis nulla, laoreet sed lorem at, pulvinar blandit lacus. Morbi sodales orci at diam ultricies, quis sodales mauris laoreet. Curabitur interdum, ex et lacinia mattis, leo nunc venenatis mi, sit amet suscipit ligula augue tempus diam. Nunc et magna sapien. Nullam vestibulum vulputate erat, consectetur tincidunt magna cursus sed. Vestibulum rutrum erat erat, vitae posuere dui aliquam id. Praesent viverra, orci in bibendum luctus, dolor augue consectetur arcu, non dapibus odio dolor eu libero. Etiam egestas quam et tempor facilisis. Nullam vestibulum risus eu magna egestas egestas. Ut dolor risus, pretium at nisi at, ullamcorper molestie lectus. Integer volutpat sem nec mauris bibendum, et pharetra nisi scelerisque. Ut non ex diam.\r\n\r\nCras cursus sem eu lectus viverra elementum. Aenean eget interdum metus, aliquet volutpat sapien. Nullam congue viverra nisi, eu sagittis felis malesuada pellentesque. Curabitur efficitur sagittis odio, in lacinia felis iaculis id. Vivamus in elit et dui sodales venenatis vel id sapien. Nunc dolor mi, accumsan sit amet velit quis, vehicula sodales turpis. Suspendisse sed dui quis nibh condimentum finibus. Cras rhoncus interdum faucibus. Fusce ultrices tortor a sapien luctus, eget accumsan orci pharetra. Mauris nibh orci, porta sit amet posuere eget, ultrices quis nisi.\r\n\r\nAenean congue ornare ipsum, a interdum mi dictum ut. Pellentesque eu dui leo. Proin vitae egestas nibh, eu viverra augue. Cras convallis ex vel diam facilisis convallis. Mauris nec eros congue, interdum nibh ut, pharetra urna. Suspendisse potenti. Morbi sapien nisi, tempus nec gravida id, rhoncus sed tortor. Quisque elementum urna eget purus facilisis, a tincidunt tellus faucibus.\r\n\r\nFusce id ullamcorper metus. Donec vitae nisi ut lacus vestibulum lacinia. Donec accumsan elementum metus sit amet sollicitudin. Maecenas et velit a mi pretium mattis. Nullam cursus eleifend felis, viverra fringilla turpis venenatis in. Phasellus vehicula libero eget nisl placerat dignissim. Nulla eu ornare nibh, vitae malesuada dui.'),
(3, 'Centro de Férias', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed maximus maximus porta. Sed gravida malesuada dui vulputate congue. Donec fringilla dapibus mi, vitae suscipit lacus sodales vitae. Nam molestie arcu sed ligula elementum, consequat mattis nunc molestie. Vivamus tristique mauris quis nisi commodo iaculis. Suspendisse rutrum, lectus in vulputate posuere, lectus quam ultrices sapien, eu dapibus magna lacus ac turpis. Mauris congue tortor eu posuere faucibus. Suspendisse elementum, mi id tempus consequat, sem felis pulvinar sem, vitae lacinia ex leo id risus. Morbi faucibus, elit sodales finibus ullamcorper, ex nisi ornare diam, eu tincidunt neque ligula placerat purus. Donec mattis suscipit est vitae facilisis. Nam sit amet ligula vel mi feugiat consectetur. Praesent suscipit aliquet lacus ac condimentum. Duis fringilla ipsum non odio cursus, quis elementum ante malesuada. Suspendisse potenti. Sed porttitor orci velit, id pellentesque velit facilisis id.\r\n\r\nIn magna ligula, lacinia dapibus ex finibus, ultrices bibendum felis. Maecenas eros purus, tristique vitae mauris vitae, scelerisque maximus orci. Nullam in elementum arcu. Donec leo orci, mollis sed porta porta, luctus eu enim. Sed turpis nulla, laoreet sed lorem at, pulvinar blandit lacus. Morbi sodales orci at diam ultricies, quis sodales mauris laoreet. Curabitur interdum, ex et lacinia mattis, leo nunc venenatis mi, sit amet suscipit ligula augue tempus diam. Nunc et magna sapien. Nullam vestibulum vulputate erat, consectetur tincidunt magna cursus sed. Vestibulum rutrum erat erat, vitae posuere dui aliquam id. Praesent viverra, orci in bibendum luctus, dolor augue consectetur arcu, non dapibus odio dolor eu libero. Etiam egestas quam et tempor facilisis. Nullam vestibulum risus eu magna egestas egestas. Ut dolor risus, pretium at nisi at, ullamcorper molestie lectus. Integer volutpat sem nec mauris bibendum, et pharetra nisi scelerisque. Ut non ex diam.\r\n\r\nCras cursus sem eu lectus viverra elementum. Aenean eget interdum metus, aliquet volutpat sapien. Nullam congue viverra nisi, eu sagittis felis malesuada pellentesque. Curabitur efficitur sagittis odio, in lacinia felis iaculis id. Vivamus in elit et dui sodales venenatis vel id sapien. Nunc dolor mi, accumsan sit amet velit quis, vehicula sodales turpis. Suspendisse sed dui quis nibh condimentum finibus. Cras rhoncus interdum faucibus. Fusce ultrices tortor a sapien luctus, eget accumsan orci pharetra. Mauris nibh orci, porta sit amet posuere eget, ultrices quis nisi.\r\n\r\nAenean congue ornare ipsum, a interdum mi dictum ut. Pellentesque eu dui leo. Proin vitae egestas nibh, eu viverra augue. Cras convallis ex vel diam facilisis convallis. Mauris nec eros congue, interdum nibh ut, pharetra urna. Suspendisse potenti. Morbi sapien nisi, tempus nec gravida id, rhoncus sed tortor. Quisque elementum urna eget purus facilisis, a tincidunt tellus faucibus.\r\n\r\nFusce id ullamcorper metus. Donec vitae nisi ut lacus vestibulum lacinia. Donec accumsan elementum metus sit amet sollicitudin. Maecenas et velit a mi pretium mattis. Nullam cursus eleifend felis, viverra fringilla turpis venenatis in. Phasellus vehicula libero eget nisl placerat dignissim. Nulla eu ornare nibh, vitae malesuada dui.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `backoffice`
--
ALTER TABLE `backoffice`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pagina` (`pagina`);

--
-- Índices para tabela `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `destaques`
--
ALTER TABLE `destaques`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `empreendimentos`
--
ALTER TABLE `empreendimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `menu_simples`
--
ALTER TABLE `menu_simples`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `backoffice`
--
ALTER TABLE `backoffice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `destaques`
--
ALTER TABLE `destaques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `empreendimentos`
--
ALTER TABLE `empreendimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `menu_simples`
--
ALTER TABLE `menu_simples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
