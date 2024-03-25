-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 25-Mar-2024 às 00:55
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
(1, 'Admin', 'admin', 'codemaster', '22-03-2024 21:32:23');

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
(1, 'quem_somos', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerQuemSomos.png'),
(2, 'socios', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerSocios.png'),
(3, 'noticias', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerNoticias.png'),
(4, 'destaques', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerDestaques.png'),
(5, 'empreendimentos', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerEmpreendimentos.png'),
(6, 'ferias', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerFerias.png'),
(7, 'contactos', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerContactos.png'),
(8, 'destaque', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerDestaque1.png'),
(12, 'noticia', 'http://127.0.0.1/construcao_e_habitacao/static/img/BannerNoticias.png');

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
-- Estrutura da tabela `centroferias`
--

CREATE TABLE `centroferias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `centroferias`
--

INSERT INTO `centroferias` (`id`, `titulo`, `texto`) VALUES
(1, 'Centro de Férias', '<img style=\"padding:15px; float:left;\" height=\"500px\" src=\"http://127.0.0.1/construcao_e_habitacao/static/img/cf1.png\">\n<p>As armas e os Barões assinalados Que da Ocidental praia Lusitana Por mares nunca de antes navegados Passaram ainda além da Taprobana, Em perigos e guerras esforçados Mais do que prometia a força humana, E entre gente remota edificaram Novo Reino, que tanto sublimaram; E também as memórias gloriosas Daqueles Reis que foram dilatando A Fé, o Império, e as terras viciosas De África e de Ásia andaram devastando, E aqueles que por obras valorosos Se vão da lei da Morte libertando, Cantando espalharei por toda parte, Se a tanto me ajudar o engenho e arte. Cessem do sábio Grego e do Troiano As navegações grandes que fizeram; Cale-se de Alexandro e de Trajano A fama das vitórias que tiveram; Que eu canto o peito ilustre Lusitano, A quem Netuno e Marte obedeceram. Cesse tudo o que a Musa antiga canta, Que outro valor mais alto se levanta. E vós, Tágides minhas, pois criado Tendes em mi um novo engenho ardente, Se sempre em verso humilde celebrado Foi de mi vosso rio alegremente, Dai-me agora um som alto e sublimado, Um estilo grandíloco e corrente, Por que de vossas águas Febo ordene Que não tenham inveja às de Hipocrene</p>\n<p>As armas e os Barões assinalados Que da Ocidental praia Lusitana Por mares nunca de antes navegados Passaram ainda além da Taprobana, Em perigos e guerras esforçados Mais do que prometia a força humana, E entre gente remota edificaram Novo Reino, que tanto sublimaram; E também as memórias gloriosas Daqueles Reis que foram dilatando A Fé, o Império, e as terras viciosas De África e de Ásia andaram devastando, E aqueles que por obras valorosos Se vão da lei da Morte libertando, Cantando espalharei por toda parte, Se a tanto me ajudar o engenho e arte. Cessem do sábio Grego e do Troiano As navegações grandes que fizeram; Cale-se de Alexandro e de Trajano A fama das vitórias que tiveram; Que eu canto o peito ilustre Lusitano, A quem Netuno e Marte obedeceram. Cesse tudo o que a Musa antiga canta, Que outro valor mais alto se levanta. E vós, Tágides minhas, pois criado Tendes em mi um novo engenho ardente, Se sempre em verso humilde celebrado Foi de mi vosso rio alegremente, Dai-me agora um som alto e sublimado, Um estilo grandíloco e corrente, Por que de vossas águas Febo ordene Que não tenham inveja às de Hipocrene</p>\n<p>As armas e os Barões assinalados Que da Ocidental praia Lusitana Por mares nunca de antes navegados Passaram ainda além da Taprobana, Em perigos e guerras esforçados Mais do que prometia a força humana, E entre gente remota edificaram Novo Reino, que tanto sublimaram; E também as memórias gloriosas Daqueles Reis que foram dilatando A Fé, o Império, e as terras viciosas De África e de Ásia andaram devastando, E aqueles que por obras valorosos Se vão da lei da Morte libertando, Cantando espalharei por toda parte, Se a tanto me ajudar o engenho e arte. Cessem do sábio Grego e do Troiano As navegações grandes que fizeram; Cale-se de Alexandro e de Trajano A fama das vitórias que tiveram; Que eu canto o peito ilustre Lusitano, A quem Netuno e Marte obedeceram. Cesse tudo o que a Musa antiga canta, Que outro valor mais alto se levanta. E vós, Tágides minhas, pois criado Tendes em mi um novo engenho ardente, Se sempre em verso humilde celebrado Foi de mi vosso rio alegremente, Dai-me agora um som alto e sublimado, Um estilo grandíloco e corrente, Por que de vossas águas Febo ordene Que não tenham inveja às de Hipocrene</p>\n<img style=\"padding:15px;\" height=\"500px\" src=\"http://127.0.0.1/construcao_e_habitacao/static/img/cf2.png\">\n<img style=\"padding:15px;\" height=\"500px\" src=\"http://127.0.0.1/construcao_e_habitacao/static/img/cf3.png\">\n<img style=\"padding:15px;\" height=\"500px\" src=\"http://127.0.0.1/construcao_e_habitacao/static/img/cf4.png\">\n<img style=\"padding:15px;\" height=\"500px\" src=\"http://127.0.0.1/construcao_e_habitacao/static/img/cf5.png\">');

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
(6, 'http://127.0.0.1/construcao_e_habitacao/static/img/destaque6.png', 'Madalena - Vila Nova de Gaia', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sed dolore deleniti, aut quidem, adipisci aspernatur nisi... loreBarralha - Sº da Hora Matosinhos', 1),
(7, 'http://127.0.0.1/construcao_e_habitacao/static/img/destaque1.png', 'Canidelo - Vila Nova de Gaia', 'Canidelo é uma encantadora freguesia localizada no concelho de Vila Nova de Gaia, Portugal. Situada na margem sul do Rio Douro, Canidelo oferece uma mistura única de belezas naturais, riqueza histórica e vida moderna. Com uma atmosfera acolhedora e uma localização privilegiada, esta freguesia atrai tanto residentes quanto visitantes em busca de um ambiente tranquilo e qualidade de vida.\r\n\r\nO destaque de Canidelo é, sem dúvida, a sua deslumbrante costa atlântica. Com praias de areia dourada e águas cristalinas, como a Praia de Salgueiros, Praia de Lavadores e Praia de Canidelo, esta região é um paraíso para os amantes do mar e dos desportos aquáticos. As extensas praias proporcionam cenários idílicos para relaxar ao sol, dar um mergulho refrescante no mar ou desfrutar de um passeio tranquilo ao longo do passeio marítimo.\r\n\r\nAlém das suas belas praias, Canidelo possui uma rica história que remonta a tempos antigos. Vestígios arqueológicos indicam a presença humana na região desde a Idade do Bronze, e ao longo dos séculos, Canidelo foi habitada por diversos povos, incluindo os romanos e os mouros. Esta herança histórica pode ser explorada através de monumentos e locais de interesse, como a Capela do Senhor da Pedra, um antigo templo de origem pré-cristã, e as ruínas do Castro de São Paio, uma fortificação medieval.\r\n\r\nNo entanto, Canidelo não é apenas sobre história e praias deslumbrantes. A freguesia também oferece uma variedade de comodidades modernas e infraestruturas, tornando-a um local ideal para viver e visitar. Os seus diversos estabelecimentos comerciais, restaurantes e cafés proporcionam aos residentes e visitantes uma experiência gastronómica diversificada, com pratos tradicionais portugueses e cozinha internacional.\r\n\r\nAlém disso, Canidelo possui excelentes instalações desportivas e de lazer, como campos de ténis, piscinas e parques, que permitem aos seus habitantes desfrutar de um estilo de vida ativo e saudável. Os espaços verdes bem cuidados, como o Parque da Lavandeira, oferecem áreas de recreação ao ar livre e são locais populares para piqueniques em família e actividades ao ar livre.\r\n\r\nA qualidade de vida em Canidelo é complementada pela sua excelente rede de transportes e acessibilidade. A freguesia está bem servida por transportes públicos, incluindo autocarros e o metro do Porto, que proporcionam ligações rápidas e convenientes ao centro da cidade do Porto e a outras áreas circundantes.\r\n\r\nAlém disso, Canidelo é conhecida pela sua vibrante vida comunitária e pelas suas festas e eventos culturais ao longo do ano. Festivais de música, feiras gastronómicas e celebrações tradicionais são oportunidades para os residentes e visitantes se reunirem e celebrarem a rica herança cultural e as tradições locais.\r\n\r\nEm resumo, Canidelo é uma freguesia encantadora que combina o melhor do passado e do presente. Com as suas praias deslumbrantes, história fascinante, comodidades modernas e forte sentido de comunidade, Canidelo oferece um estilo de vida verdadeiramente único e uma experiência inesquecível para todos aqueles que a visitam.', 1),
(78, 'http://127.0.0.1/construcao_e_habitacao/static/img/destaque4.png', 'Vila do Conde', 'Vila do Conde, situada na região norte de Portugal, é uma encantadora cidade costeira com uma história rica, uma paisagem deslumbrante e uma vibrante cena cultural. Localizada no distrito do Porto, esta cidade combina o charme tradicional com a modernidade, oferecendo aos visitantes uma experiência única e memorável.\n\nUm dos destaques de Vila do Conde é a sua deslumbrante linha costeira, que se estende ao longo de várias praias de areias douradas e águas cristalinas. As praias, como a Praia de Mindelo, a Praia da Azurara e a Praia de Vila Chã, são populares entre os banhistas, surfistas e amantes do sol, proporcionando cenários idílicos para relaxar e desfrutar do clima ameno.\n\nAlém das praias, Vila do Conde é conhecida pelo seu patrimônio histórico bem preservado. O centro da cidade é marcado por ruas estreitas de paralelepípedos, praças pitorescas e edifícios históricos, como a Igreja Matriz e o Convento de Santa Clara. O destaque é o imponente Mosteiro de Santa Clara, um magnífico exemplo de arquitetura gótica que remonta ao século XIV e que oferece uma visão fascinante da história religiosa da região.\n\nA cidade também é famosa pelo seu artesanato tradicional, com destaque para a produção de rendas de bilros. Os visitantes podem explorar lojas locais e ateliês para adquirir peças únicas de renda, uma tradição que tem sido passada de geração em geração ao longo dos séculos.\n\nAlém disso, Vila do Conde é conhecida pelos seus eventos culturais animados, com destaque para o Festival Internacional de Curtas-Metragens, um dos mais importantes festivais de cinema do país. O festival atrai cineastas e entusiastas de todo o mundo, oferecendo uma plataforma para exibir obras inovadoras e promover o diálogo cultural.\n\nA gastronomia é outra atração imperdível de Vila do Conde. Os restaurantes locais oferecem uma variedade de pratos deliciosos, destacando-se os frutos do mar frescos e os pratos de peixe. Os visitantes podem saborear iguarias locais, como o peixe fresco grelhado, o arroz de marisco e os bolinhos de bacalhau, acompanhados por vinhos regionais de alta qualidade.\n\nEm resumo, Vila do Conde é uma cidade encantadora que combina a beleza natural com uma rica herança histórica e cultural. Com as suas praias deslumbrantes, patrimônio histórico bem preservado, eventos culturais vibrantes e deliciosa gastronomia, esta cidade cativa os corações daqueles que a visitam, oferecendo uma experiência verdadeiramente inesquecível.', 1);

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
-- Estrutura da tabela `mensagens_recebidas`
--

CREATE TABLE `mensagens_recebidas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensagem` longtext NOT NULL,
  `data_envio` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `mensagens_recebidas`
--

INSERT INTO `mensagens_recebidas` (`id`, `nome`, `assunto`, `email`, `mensagem`, `data_envio`) VALUES
(1, 'aaaa', 'ddd', 'bbb', 'eee', '2024-03-23 20:30:09'),
(2, 'aaaaaaaaaaaaa', 'teste', 'bbbbbbbbbbbbbb', 'teste', '2024-03-23 20:31:59'),
(3, 'aaaa', 'ddd', 'bbb', 'eee', '2024-03-23 20:30:09'),
(4, 'aaaaaaaaaaaaa', 'teste', 'bbbbbbbbbbbbbb', 'teste', '2024-03-23 20:31:59');

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
(1, 'Quem Somos', '\r\n\r\nAenean congue ornare ipsum, a interdum mi dictum ut. Pellentesque eu dui leo. Proin vitae egestas nibh, eu viverra augue. Cras convallis ex vel diam facilisis convallis. Mauris nec eros congue, interdum nibh ut, pharetra urna. Suspendisse potenti. Morbi sapien nisi, tempus nec gravida id, rhoncus sed tortor. Quisque elementum urna eget purus facilisis, a tincidunt tellus faucibus.\r\n\r\nFusce id ullamcorper metus. Donec vitae nisi ut lacus vestibulum lacinia. Donec accumsan elementum metus sit amet sollicitudin. Maecenas et velit a mi pretium mattis. Nullam cursus eleifend felis, viverra fringilla turpis venenatis in. Phasellus vehicula libero eget nisl placerat dignissim. Nulla eu ornare nibh, vitae malesuada dui. <br> <br>\r\n\r\n\r\n\r\nAenean congue ornare ipsum, a interdum mi dictum ut. Pellentesque eu dui leo. Proin vitae egestas nibh, eu viverra augue. Cras convallis ex vel diam facilisis convallis. Mauris nec eros congue, interdum nibh ut, pharetra urna. Suspendisse potenti. Morbi sapien nisi, tempus nec gravida id, rhoncus sed tortor. Quisque elementum urna eget purus facilisis, a tincidunt tellus faucibus.\r\n\r\nFusce id ullamcorper metus. Donec vitae nisi ut lacus vestibulum lacinia. Donec accumsan elementum metus sit amet sollicitudin. Maecenas et velit a mi pretium mattis. Nullam cursus eleifend felis, viverra fringilla turpis venenatis in. Phasellus vehicula libero eget nisl placerat dignissim. Nulla eu ornare nibh, vitae malesuada dui. \r\n'),
(2, 'Sócios', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed maximus maximus porta. Sed gravida malesuada dui vulputate congue. Donec fringilla dapibus mi, vitae suscipit lacus sodales vitae. Nam molestie arcu sed ligula elementum, consequat mattis nunc molestie. Vivamus tristique mauris quis nisi commodo iaculis. Suspendisse rutrum, lectus in vulputate posuere, lectus quam ultrices sapien, eu dapibus magna lacus ac turpis. Mauris congue tortor eu posuere faucibus. Suspendisse elementum, mi id tempus consequat, sem felis pulvinar sem, vitae lacinia ex leo id risus. Morbi faucibus, elit sodales finibus ullamcorper, ex nisi ornare diam, eu tincidunt neque ligula placerat purus. Donec mattis suscipit est vitae facilisis. Nam sit amet ligula vel mi feugiat consectetur. Praesent suscipit aliquet lacus ac condimentum. Duis fringilla ipsum non odio cursus, quis elementum ante malesuada. Suspendisse potenti. Sed porttitor orci velit, id pellentesque velit facilisis id.\r\n\r\nIn magna ligula, lacinia dapibus ex finibus, ultrices bibendum felis. Maecenas eros purus, tristique vitae mauris vitae, scelerisque maximus orci. Nullam in elementum arcu. Donec leo orci, mollis sed porta porta, luctus eu enim. Sed turpis nulla, laoreet sed lorem at, pulvinar blandit lacus. Morbi sodales orci at diam ultricies, quis sodales mauris laoreet. Curabitur interdum, ex et lacinia mattis, leo nunc venenatis mi, sit amet suscipit ligula augue tempus diam. Nunc et magna sapien. Nullam vestibulum vulputate erat, consectetur tincidunt magna cursus sed. Vestibulum rutrum erat erat, vitae posuere dui aliquam id. Praesent viverra, orci in bibendum luctus, dolor augue consectetur arcu, non dapibus odio dolor eu libero. Etiam egestas quam et tempor facilisis. Nullam vestibulum risus eu magna egestas egestas. Ut dolor risus, pretium at nisi at, ullamcorper molestie lectus. Integer volutpat sem nec mauris bibendum, et pharetra nisi scelerisque. Ut non ex diam.\r\n\r\nCras cursus sem eu lectus viverra elementum. Aenean eget interdum metus, aliquet volutpat sapien. Nullam congue viverra nisi, eu sagittis felis malesuada pellentesque. Curabitur efficitur sagittis odio, in lacinia felis iaculis id. Vivamus in elit et dui sodales venenatis vel id sapien. Nunc dolor mi, accumsan sit amet velit quis, vehicula sodales turpis. Suspendisse sed dui quis nibh condimentum finibus. Cras rhoncus interdum faucibus. Fusce ultrices tortor a sapien luctus, eget accumsan orci pharetra. Mauris nibh orci, porta sit amet posuere eget, ultrices quis nisi.\r\n\r\nAenean congue ornare ipsum, a interdum mi dictum ut. Pellentesque eu dui leo. Proin vitae egestas nibh, eu viverra augue. Cras convallis ex vel diam facilisis convallis. Mauris nec eros congue, interdum nibh ut, pharetra urna. Suspendisse potenti. Morbi sapien nisi, tempus nec gravida id, rhoncus sed tortor. Quisque elementum urna eget purus facilisis, a tincidunt tellus faucibus.\r\n\r\nFusce id ullamcorper metus. Donec vitae nisi ut lacus vestibulum lacinia. Donec accumsan elementum metus sit amet sollicitudin. Maecenas et velit a mi pretium mattis. Nullam cursus eleifend felis, viverra fringilla turpis venenatis in. Phasellus vehicula libero eget nisl placerat dignissim. Nulla eu ornare nibh, vitae malesuada dui.'),
(3, 'Centro de Férias', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed maximus maximus porta. Sed gravida malesuada dui vulputate congue. Donec fringilla dapibus mi, vitae suscipit lacus sodales vitae. Nam molestie arcu sed ligula elementum, consequat mattis nunc molestie. Vivamus tristique mauris quis nisi commodo iaculis. Suspendisse rutrum, lectus in vulputate posuere, lectus quam ultrices sapien, eu dapibus magna lacus ac turpis. Mauris congue tortor eu posuere faucibus. Suspendisse elementum, mi id tempus consequat, sem felis pulvinar sem, vitae lacinia ex leo id risus. Morbi faucibus, elit sodales finibus ullamcorper, ex nisi ornare diam, eu tincidunt neque ligula placerat purus. Donec mattis suscipit est vitae facilisis. Nam sit amet ligula vel mi feugiat consectetur. Praesent suscipit aliquet lacus ac condimentum. Duis fringilla ipsum non odio cursus, quis elementum ante malesuada. Suspendisse potenti. Sed porttitor orci velit, id pellentesque velit facilisis id.\r\n\r\nIn magna ligula, lacinia dapibus ex finibus, ultrices bibendum felis. Maecenas eros purus, tristique vitae mauris vitae, scelerisque maximus orci. Nullam in elementum arcu. Donec leo orci, mollis sed porta porta, luctus eu enim. Sed turpis nulla, laoreet sed lorem at, pulvinar blandit lacus. Morbi sodales orci at diam ultricies, quis sodales mauris laoreet. Curabitur interdum, ex et lacinia mattis, leo nunc venenatis mi, sit amet suscipit ligula augue tempus diam. Nunc et magna sapien. Nullam vestibulum vulputate erat, consectetur tincidunt magna cursus sed. Vestibulum rutrum erat erat, vitae posuere dui aliquam id. Praesent viverra, orci in bibendum luctus, dolor augue consectetur arcu, non dapibus odio dolor eu libero. Etiam egestas quam et tempor facilisis. Nullam vestibulum risus eu magna egestas egestas. Ut dolor risus, pretium at nisi at, ullamcorper molestie lectus. Integer volutpat sem nec mauris bibendum, et pharetra nisi scelerisque. Ut non ex diam.\r\n\r\nCras cursus sem eu lectus viverra elementum. Aenean eget interdum metus, aliquet volutpat sapien. Nullam congue viverra nisi, eu sagittis felis malesuada pellentesque. Curabitur efficitur sagittis odio, in lacinia felis iaculis id. Vivamus in elit et dui sodales venenatis vel id sapien. Nunc dolor mi, accumsan sit amet velit quis, vehicula sodales turpis. Suspendisse sed dui quis nibh condimentum finibus. Cras rhoncus interdum faucibus. Fusce ultrices tortor a sapien luctus, eget accumsan orci pharetra. Mauris nibh orci, porta sit amet posuere eget, ultrices quis nisi.\r\n\r\nAenean congue ornare ipsum, a interdum mi dictum ut. Pellentesque eu dui leo. Proin vitae egestas nibh, eu viverra augue. Cras convallis ex vel diam facilisis convallis. Mauris nec eros congue, interdum nibh ut, pharetra urna. Suspendisse potenti. Morbi sapien nisi, tempus nec gravida id, rhoncus sed tortor. Quisque elementum urna eget purus facilisis, a tincidunt tellus faucibus.\r\n\r\nFusce id ullamcorper metus. Donec vitae nisi ut lacus vestibulum lacinia. Donec accumsan elementum metus sit amet sollicitudin. Maecenas et velit a mi pretium mattis. Nullam cursus eleifend felis, viverra fringilla turpis venenatis in. Phasellus vehicula libero eget nisl placerat dignissim. Nulla eu ornare nibh, vitae malesuada dui.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `imagem` longtext NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `imagem`, `titulo`, `texto`) VALUES
(1, 'http://127.0.0.1/construcao_e_habitacao/static/img/Noticia1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas malesuada.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mi augue, dictum eget felis eu, tristique scelerisque arcu. Praesent at arcu id massa porta rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse elementum lacus leo, at venenatis dui maximus in. Nulla tincidunt risus in pretium viverra. Curabitur a posuere dui. Cras at commodo dui.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mi augue, dictum eget felis eu, tristique scelerisque arcu. Praesent at arcu id massa porta rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse elementum lacus leo, at venenatis dui maximus in. Nulla tincidunt risus in pretium viverra. Curabitur a posuere dui. Cras at commodo dui.\n'),
(2, 'http://127.0.0.1/construcao_e_habitacao/static/img/Noticia2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas malesuada.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mi augue, dictum eget felis eu, tristique scelerisque arcu. Praesent at arcu id massa porta rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse elementum lacus leo, at venenatis dui maximus in. Nulla tincidunt risus in pretium viverra. Curabitur a posuere dui. Cras at commodo dui.\n\nNunc ipsum tortor, fermentum et magna a, aliquam porta sem. Pellentesque eleifend tortor sodales, condimentum ligula et, facilisis orci. Praesent ullamcorper id lectus nec faucibus. In hac habitasse platea dictumst. In dignissim justo eget velit porta, congue lobortis arcu tincidunt. Quisque aliquet tellus eu lorem dignissim, vitae consectetur ante commodo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ornare ullamcorper nisi sit amet porta. Etiam accumsan augue dolor, in molestie tellus porttitor nec. Nulla urna dolor, accumsan semper neque ut, condimentum venenatis neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas sit amet feugiat augue, at tempor arcu. Fusce vulputate erat vel erat venenatis malesuada. Nunc et efficitur purus.\n\nMauris nec finibus sem. In tincidunt non lorem eget tempor. Fusce eu ligula quis metus lobortis tristique. Aliquam accumsan mi quis efficitur semper. Sed quis cursus leo, in ullamcorper orci. Etiam pretium ultrices neque, eu ultricies justo volutpat vel. Nam sit amet viverra augue, quis egestas nibh. Pellentesque porta interdum velit eu volutpat. Cras dictum lacus ac nulla mattis, quis accumsan quam imperdiet. Aliquam non ultrices justo. Integer mattis lorem sed faucibus ornare. Praesent condimentum dignissim lorem, ut facilisis risus accumsan eget. Mauris id metus laoreet, ornare nibh sit amet, vehicula tortor.'),
(3, 'http://127.0.0.1/construcao_e_habitacao/static/img/Noticia3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas malesuada.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mi augue, dictum eget felis eu, tristique scelerisque arcu. Praesent at arcu id massa porta rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse elementum lacus leo, at venenatis dui maximus in. Nulla tincidunt risus in pretium viverra. Curabitur a posuere dui. Cras at commodo dui.\r\n\r\nNunc ipsum tortor, fermentum et magna a, aliquam porta sem. Pellentesque eleifend tortor sodales, condimentum ligula et, facilisis orci. Praesent ullamcorper id lectus nec faucibus. In hac habitasse platea dictumst. In dignissim justo eget velit porta, congue lobortis arcu tincidunt. Quisque aliquet tellus eu lorem dignissim, vitae consectetur ante commodo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ornare ullamcorper nisi sit amet porta. Etiam accumsan augue dolor, in molestie tellus porttitor nec. Nulla urna dolor, accumsan semper neque ut, condimentum venenatis neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas sit amet feugiat augue, at tempor arcu. Fusce vulputate erat vel erat venenatis malesuada. Nunc et efficitur purus.\r\n\r\nMauris nec finibus sem. In tincidunt non lorem eget tempor. Fusce eu ligula quis metus lobortis tristique. Aliquam accumsan mi quis efficitur semper. Sed quis cursus leo, in ullamcorper orci. Etiam pretium ultrices neque, eu ultricies justo volutpat vel. Nam sit amet viverra augue, quis egestas nibh. Pellentesque porta interdum velit eu volutpat. Cras dictum lacus ac nulla mattis, quis accumsan quam imperdiet. Aliquam non ultrices justo. Integer mattis lorem sed faucibus ornare. Praesent condimentum dignissim lorem, ut facilisis risus accumsan eget. Mauris id metus laoreet, ornare nibh sit amet, vehicula tortor.'),
(4, 'http://127.0.0.1/construcao_e_habitacao/static/img/Noticia4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas malesuada.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mi augue, dictum eget felis eu, tristique scelerisque arcu. Praesent at arcu id massa porta rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse elementum lacus leo, at venenatis dui maximus in. Nulla tincidunt risus in pretium viverra. Curabitur a posuere dui. Cras at commodo dui.\r\n\r\nNunc ipsum tortor, fermentum et magna a, aliquam porta sem. Pellentesque eleifend tortor sodales, condimentum ligula et, facilisis orci. Praesent ullamcorper id lectus nec faucibus. In hac habitasse platea dictumst. In dignissim justo eget velit porta, congue lobortis arcu tincidunt. Quisque aliquet tellus eu lorem dignissim, vitae consectetur ante commodo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ornare ullamcorper nisi sit amet porta. Etiam accumsan augue dolor, in molestie tellus porttitor nec. Nulla urna dolor, accumsan semper neque ut, condimentum venenatis neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas sit amet feugiat augue, at tempor arcu. Fusce vulputate erat vel erat venenatis malesuada. Nunc et efficitur purus.\r\n\r\nMauris nec finibus sem. In tincidunt non lorem eget tempor. Fusce eu ligula quis metus lobortis tristique. Aliquam accumsan mi quis efficitur semper. Sed quis cursus leo, in ullamcorper orci. Etiam pretium ultrices neque, eu ultricies justo volutpat vel. Nam sit amet viverra augue, quis egestas nibh. Pellentesque porta interdum velit eu volutpat. Cras dictum lacus ac nulla mattis, quis accumsan quam imperdiet. Aliquam non ultrices justo. Integer mattis lorem sed faucibus ornare. Praesent condimentum dignissim lorem, ut facilisis risus accumsan eget. Mauris id metus laoreet, ornare nibh sit amet, vehicula tortor.'),
(5, 'http://127.0.0.1/construcao_e_habitacao/static/img/Noticia5.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas malesuada.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mi augue, dictum eget felis eu, tristique scelerisque arcu. Praesent at arcu id massa porta rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse elementum lacus leo, at venenatis dui maximus in. Nulla tincidunt risus in pretium viverra. Curabitur a posuere dui. Cras at commodo dui.\r\n\r\nNunc ipsum tortor, fermentum et magna a, aliquam porta sem. Pellentesque eleifend tortor sodales, condimentum ligula et, facilisis orci. Praesent ullamcorper id lectus nec faucibus. In hac habitasse platea dictumst. In dignissim justo eget velit porta, congue lobortis arcu tincidunt. Quisque aliquet tellus eu lorem dignissim, vitae consectetur ante commodo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ornare ullamcorper nisi sit amet porta. Etiam accumsan augue dolor, in molestie tellus porttitor nec. Nulla urna dolor, accumsan semper neque ut, condimentum venenatis neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas sit amet feugiat augue, at tempor arcu. Fusce vulputate erat vel erat venenatis malesuada. Nunc et efficitur purus.\r\n\r\nMauris nec finibus sem. In tincidunt non lorem eget tempor. Fusce eu ligula quis metus lobortis tristique. Aliquam accumsan mi quis efficitur semper. Sed quis cursus leo, in ullamcorper orci. Etiam pretium ultrices neque, eu ultricies justo volutpat vel. Nam sit amet viverra augue, quis egestas nibh. Pellentesque porta interdum velit eu volutpat. Cras dictum lacus ac nulla mattis, quis accumsan quam imperdiet. Aliquam non ultrices justo. Integer mattis lorem sed faucibus ornare. Praesent condimentum dignissim lorem, ut facilisis risus accumsan eget. Mauris id metus laoreet, ornare nibh sit amet, vehicula tortor.'),
(6, 'http://127.0.0.1/construcao_e_habitacao/static/img/Noticia6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas malesuada.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mi augue, dictum eget felis eu, tristique scelerisque arcu. Praesent at arcu id massa porta rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse elementum lacus leo, at venenatis dui maximus in. Nulla tincidunt risus in pretium viverra. Curabitur a posuere dui. Cras at commodo dui.\r\n\r\nNunc ipsum tortor, fermentum et magna a, aliquam porta sem. Pellentesque eleifend tortor sodales, condimentum ligula et, facilisis orci. Praesent ullamcorper id lectus nec faucibus. In hac habitasse platea dictumst. In dignissim justo eget velit porta, congue lobortis arcu tincidunt. Quisque aliquet tellus eu lorem dignissim, vitae consectetur ante commodo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ornare ullamcorper nisi sit amet porta. Etiam accumsan augue dolor, in molestie tellus porttitor nec. Nulla urna dolor, accumsan semper neque ut, condimentum venenatis neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas sit amet feugiat augue, at tempor arcu. Fusce vulputate erat vel erat venenatis malesuada. Nunc et efficitur purus.\r\n\r\nMauris nec finibus sem. In tincidunt non lorem eget tempor. Fusce eu ligula quis metus lobortis tristique. Aliquam accumsan mi quis efficitur semper. Sed quis cursus leo, in ullamcorper orci. Etiam pretium ultrices neque, eu ultricies justo volutpat vel. Nam sit amet viverra augue, quis egestas nibh. Pellentesque porta interdum velit eu volutpat. Cras dictum lacus ac nulla mattis, quis accumsan quam imperdiet. Aliquam non ultrices justo. Integer mattis lorem sed faucibus ornare. Praesent condimentum dignissim lorem, ut facilisis risus accumsan eget. Mauris id metus laoreet, ornare nibh sit amet, vehicula tortor.');

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
-- Índices para tabela `centroferias`
--
ALTER TABLE `centroferias`
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
-- Índices para tabela `mensagens_recebidas`
--
ALTER TABLE `mensagens_recebidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `menu_simples`
--
ALTER TABLE `menu_simples`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `centroferias`
--
ALTER TABLE `centroferias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `destaques`
--
ALTER TABLE `destaques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `empreendimentos`
--
ALTER TABLE `empreendimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `mensagens_recebidas`
--
ALTER TABLE `mensagens_recebidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `menu_simples`
--
ALTER TABLE `menu_simples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
