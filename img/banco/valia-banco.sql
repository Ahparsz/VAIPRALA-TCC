-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Dez-2021 às 01:34
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `valia-banco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ambiente`
--

CREATE TABLE `ambiente` (
  `cd_ambiente` int(1) UNSIGNED NOT NULL,
  `nm_ambiente` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ambiente`
--

INSERT INTO `ambiente` (`cd_ambiente`, `nm_ambiente`) VALUES
(1, 'Rural'),
(2, 'Urbano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `cd_cidade` int(3) UNSIGNED NOT NULL,
  `id_estado` int(20) UNSIGNED NOT NULL,
  `nm_cidade` varchar(20) NOT NULL,
  `info` text NOT NULL,
  `maps` varchar(999) NOT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`cd_cidade`, `id_estado`, `nm_cidade`, `info`, `maps`, `foto`) VALUES
(1, 1, 'Aruaña', 'Aruanã é uma cidade do estado de Goiás, situada na divisa do estado com o Mato Grosso, às margens do belo e grandioso Rio Araguaia. Localizada a 315 km da capital, Goiânia, e a 312 km de Pirenópolis, a cidade é um dos principais polos turísticos do estado, e prova que a frase “Goiás não tem praia” só é dita por quem nunca passou por lá.\r\n\r\nAlém de contar com diversas e belíssimas praias de água doce, que são típicas da região Norte do Brasil, como em Manaus; Aruanã também é um dos melhores locais para a prática da pesca esportiva, visto que até o nome da cidade homenageia um grande peixe encontrado por lá; ou simplesmente para quem busca se desligar um pouco da rotina e aproveitar um local repleto de natureza e cultura. ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61684.8656151499!2d-51.11030081885734!3d-14.920141587357703!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9368dc1f7b564c09%3A0x2a1d7e29f72ae41e!2sAruan%C3%A3%2C%20GO%2C%2076710-000!5e0!3m2!1spt-BR!2sbr!4v1638892539549!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(2, 1, 'Uruaçu', 'Uruaçu é um município brasileiro do estado de Goiás. Sua população estimada em 2021 pelo Instituto Brasileiro de Geografia e Estatística é de 41.150 habitantes. O município abriga um dos maiores lagos artificiais de usina hidrelétrica do Brasil.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30898.082201159214!2d-49.15830564764376!3d-14.527099300339856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93430eb7b400df55%3A0x59bc477cb6184215!2sUrua%C3%A7u%2C%20GO%2C%2076400-000!5e0!3m2!1spt-BR!2sbr!4v1638893115095!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(3, 1, 'Cidade de Goiás', 'O nome Goiás origina-se da denominação da tribo indígena “guaiás, que quer dizer “indivíduo igual, gente semelhante, da mesma raça”. A história do estado está na descoberta das suas primeiras minas de ouro, nos séculos XVII e XVIII, iniciada com a chegada dos bandeirantes, vindos de São Paulo em 1727. Seu maior ponto turístico é A Igreja de Santa Bárbara.\r\n\r\nO clima de Goiás, além de ser tropical semi-úmido, o que contribui, e muito, para as altas temperaturas, também está ligado às características do Cerrado, o ecossistema no qual o estado está inserido. Esse bioma é um dos maiores em todo território nacional, ocupando cerca de 22% do Brasil.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d491307.5761958823!2d-50.50112489868551!3d-15.83869463467883!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93677906642ac5b3%3A0xe6e026c23c64c9db!2sGoi%C3%A1s%20-%20GO%2C%2076600-000!5e0!3m2!1spt-BR!2sbr!4v1638892682792!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(4, 1, 'Porangatu', 'A cultura em Porangatu é muito ampla, têm diversos talentos na música, poesia, teatro e pintura. Academia Porangatuense de Artes e Letras é uma Instituição importante para a cultura de Porangatu, envolve vários artistas: poetas, escritores, pintores, escultores, músicos e compositores. Porangatu é uma cidade localizada no Norte de Goias.\r\n\r\nO município se situa a oeste da principal rodovia do estado, que é a BR-153, que liga Belém a Brasília e o sul do estado com o estado do Tocantins. Um dos mais importantes corredores rodoviários brasileiro, por onde escoa grande parte da produção agrícola e industrial brasileira. Os rios importantes são Santa Tereza, Cana Brava, Ouro Pintado, Santa Maria, Gregório e, principalmente, o Rio do Leite. O clima é quente, tropical úmido, com temperaturas que vão até 40 °C. Igrejinha Nossa Senhora da Piedade é um monumento tombado pelo patrimônio Histórico por sua importância na formação da cidade. A Lagoa Grande na sua orla acontece o mais antigo e animado carnaval de rua de Goiás, uma tradição com mais de 20 anos.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62088.28302141882!2d-49.18529377512604!3d-13.442154330263802!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9341111c91994da5%3A0x3421a0b2a88418a0!2sPorangatu%2C%20GO%2C%2076550-000!5e0!3m2!1spt-BR!2sbr!4v1638893954712!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(5, 1, 'Cocalzinho de Goiás', 'Relata que através da expedição Anhanguera (1722), e a existência de riqueza mineral nessa região, trouxeram no início do século XVIII, as bandeiras, que por sua vez fundaram diversos arraiais onde havia ouro em abundância e como resultado surgiu a antiga “Minas de Nossa Senhora do Rosário de Meya Ponte”, hoje Pirenópolis, Corumbá de Goiás que conservou o mesmo nome e a Fazenda Montes Claros, atual Santo Antônio do Descoberto, a qual, também não prosperou como Vila ou Povoado, em face da escassez de ouro, mas, como referência espiritual onde até os dias atuais ocorrem romarias em louvor a Santo Antônio de Lisboa.\r\n<br>\r\nO Município, de bioma Cerrado, é divisor de águas para duas importantes bacias hidrográficas continentais: bacia do Paranaíba e bacia do Tocantins, além de agregar paisagens altaneiras em sua geografia perfazendo um panorama de adorável contemplação.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d491798.2625713792!2d-48.83475870956989!3d-15.635724044825746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x935b9ad5c308b967%3A0xf2f69ebfef2e4cc1!2sCocalzinho%20de%20Goi%C3%A1s%20-%20GO%2C%2072975-000!5e0!3m2!1spt-BR!2sbr!4v1639088462509!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(6, 1, 'Goiânia', 'Também conhecida como Cidade Verde, por ser a mais arborizada do país, a capital goiana é famosa pela gastronomia regional e pela vida noturna agitada.\r\n<br>\r\nMuito procurada pelo público corporativo, Goiânia tem belos parques e boas opções de restaurantes, principalmente no Setor Marista (aqui, os bairros são chamados de “setores”). É uma cidade planejada, erguida nos anos 1930 – o que explica o grande número de edifícios no Centro. Para os forasteiros, se perder é praticamente inevitável.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244583.75652761062!2d-49.444358148159715!3d-16.69582877148198!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x935ef6bd58d80867%3A0xef692bad20d2678e!2zR29pw6JuaWEsIEdP!5e0!3m2!1spt-BR!2sbr!4v1639088509302!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(7, 1, 'Cristalina', 'Uma cidade muito boa para quem procura paz e calmaria nas festas de fim de ano. Um passeio bem rural e \"natureba\", para os fãs de meio ambiente.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61121.33436434013!2d-47.647325151041095!3d-16.772525911784154!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93583d29b2aa9011%3A0x9d039879fad265bc!2sCristalina%2C%20GO%2C%2073850-000!5e0!3m2!1spt-BR!2sbr!4v1639088747518!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(8, 1, 'Caldas Novas', 'As fontes termais com propriedades de cura são a atração principal de Caldas Novas, mas os encantos dessa cidade resort vão além da água quente e rica em minerais. Com os belos parques, o sol e o Lago de Corumbá, é um dos lugares mais relaxantes do centro-oeste brasileiro.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d121612.1374203679!2d-48.68551178551402!3d-17.72675873378525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94a736c10eb85f6b%3A0xb12b7b2d6ed28e1!2sCaldas%20Novas%2C%20GO!5e0!3m2!1spt-BR!2sbr!4v1639088895732!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(13, 1, 'Formosa', 'Um belo conjunto formado por altíssimas quedas d’água, grutas, lagoas, buracos e abismos compõem a maior atração de Formosa.\r\n<br>\r\nHá, também, o Vale do Paranã, que é um convite à aventura e ao prazer junto à natureza.\r\n<br>\r\nCidade histórica de grande importância, Formosa tem a sua herança cultural encravada nos casarões coloniais e nas construções religiosas como a Catedral de Nossa Senhora da Imaculada Conceição.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61501.788096775585!2d-47.352960766012686!3d-15.545539986670676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9350a2912067fad5%3A0x6a35994b2edf538b!2sFormosa%2C%20GO!5e0!3m2!1spt-BR!2sbr!4v1639089198912!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(14, 1, 'Chapado dos Veadeiro', 'De natureza exuberante, a região possui inúmeras trilhas com cachoeiras, poços de águas cristalina, montanhas, cânions, minas de cristal, campos de flores do cerrado, mirantes, rica fauna e um imperdível pôr do sol.\r\n<br>\r\nO Parque Nacional da Chapada dos Veadeiros foi criado em 1961 e possui área de aproximadamente 60 mil hectares. O principal rio que drena o Parque é o Rio Preto, afluente do Rio Tocantins, e ao longo do seu percurso podemos encontrar várias cachoeiras e paredões de até 300 metros de altura.\r\n<br>\r\nCristais de rocha surgem do solo entre a bela flora local e a variada vegetação do cerrado, enquanto a rica fauna da região abriga espécies ameaçadas de extinção, como o veado-campeiro, o cervo do Pantanal, a onça-pintada e o lobo-guará. Fora dos limites do Parque existem ainda diversas cachoeiras, pinturas rupestres e piscinas de águas quentes.\r\n<br>\r\nCom um solo rico em cristais de quartzo e localização bem no centro do país, a Chapada dos Veadeiros é considerada reduto de espiritualistas e esotéricos de todo Brasil. A explicação para a grande concentração de energia mística no local é de que a região está localizada no mesmo paralelo que atravessa a cidade de Machu Picchu, no Peru.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15479.5842752326!2d-47.47542148286831!3d-14.083312079292856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93458018d19fb589%3A0xaf41b0d78b11e654!2sChapada%20dos%20Veadeiros!5e0!3m2!1spt-BR!2sbr!4v1639090502051!5m2!1spt-BR!2sbr\" width=\"500\" height=\"600\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(17, 2, 'Cuiabá', 'A cidade é um centro comercial para uma extensa área pecuária e agrícola. A capital é uma das cidades de mais rápido crescimento no Brasil, seguida pelo crescimento do agronegócio em Mato Grosso, apesar da recessão que está afetando as indústrias brasileiras.\r\n<br>\r\nCuiabá é o coração de uma área urbana que também inclui a segunda maior cidade do estado, Várzea Grande. As usinas termelétricas e hidrelétricas localizadas na área foram ampliadas desde a conclusão de um gasoduto de Bolívia em 2000. A cidade é sede da Universidade Federal de Mato Grosso e do maior estádio de futebol do estado, Arena Pantanal.\r\n<br>\r\nA cidade é uma mistura rica de influências européias, africanas e nativas americanas e numerosos museus refletem isso. Cuiabá também é notável por sua gastronomia, dança , música e artesanato. Conhecido como o “portão do sul da Amazônia” , Cuiabá experimenta um clima tropical quente e úmido.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d245925.16901981228!2d-56.18189614668261!3d-15.61403226996193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x939da56670d84fc5%3A0x4e504e08900e510e!2sCuiab%C3%A1%20-%20Coxip%C3%B3%20da%20Ponte%2C%20Cuiab%C3%A1%20-%20MT!5e0!3m2!1spt-BR!2sbr!4v1639090589271!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(30, 2, 'Serra do Roncador', 'A Serra do Roncador é tão única e misteriosa, que boa parte dos brasileiros não conhece ou sequer ouviu falar desse localidade no centro do Brasil, estado do Mato Grosso.\r\n<br>\r\nUma região de aproximadamente 800 quilômetros de pura natureza, e muitas montanhas. É também cercada pela grandeza dos rios Xingu, Kuluene, Araguaia, e o rio das Mortes. \r\n<br>\r\nA Serra do Roncador é com certeza uma das regiões mais inexploradas da selva sul-americana. A sua extensão vai do município de Barra do Garças, no Mato Grosso, até a Serra do Cachimbo, no Pará.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15627382.395646796!2d-57.36851287381904!3d-17.00998416741435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9377b22a2be00db1%3A0x4f0880e6651615ee!2sSerra%20do%20Roncador!5e0!3m2!1spt-BR!2sbr!4v1639090777514!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(32, 3, 'Campo Grande', 'Situada na porção central do estado, sendo quase que passagem obrigatória para todos os turistas que vem a região, Campo Grande oferece uma infraestrutura de ótima qualidade além de uma rede hoteleira já bem estabelecida e opções de lazer bem diversificadas .\r\n<br>\r\nCom 100 anos de idade, a Cidade Morena está em crescimento ano após ano e já abriga cerca de 1 milhão de pessoas que usufruem de uma infra estrutura de lazer já definida com Bares, Boates, Casas de Shows, Centro de Exposições, Shopping, Museus, Pista de Motocross, Cartódramo e muito mais .\r\n<BR>\r\nConhecida pelo exuberante verde de suas ruas bem arborizadas, Campo Grande possUI belas praças e parques que dão um toque familiar a sua aparência.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d239207.29226849336!2d-54.77562450144109!3d-20.48104366322237!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9486e6726b2b9f27%3A0xf5a8469ebc84d2c1!2sCampo%20Grande%2C%20MS!5e0!3m2!1spt-BR!2sbr!4v1639090826646!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(34, 3, 'Bonito', '0Quem anda pelas estradas da região de Bonito, mesmo sendo um observador atento, jamais imagina o que a mata densa do cerrado esconde dos olhos de quem passa ao largo. Os atrativos turísticos de Bonito são verdadeiras joias da natureza! Rios de águas totalmente cristalinas, povoados de uma variedade enorme de vida, onde é possível realizar flutuação ou mergulho com cilindro.\r\n<br>\r\nEm alguns deles são encontradas mais de quarenta espécies de peixes e inúmeras espécies de plantas compõe a paisagem sub aquática. Outros, formam cachoeiras belíssimas, que pela grande quantidade de calcário dissolvido em suas águas e sua consequente deposição sobre rochas, troncos e folhas, conferem à cachoeira um aspecto muito peculiar e interessante.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d953770.1080646908!2d-57.04284001311192!3d-20.96598485765328!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x947c58d50c8407c7%3A0x4de9a9fbc7e1ac30!2sBonito%20-%20MS!5e0!3m2!1spt-BR!2sbr!4v1639090917994!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(39, 3, 'Pantanal', '0Estudos sobre a ocupação humana da área correspondente aos pantanais indicam que, no mínimo há 8000 A. P. (antes do presente), a região já era habitada por indígenas.\r\n<br>\r\nOs primeiros homens brancos chegaram em 1524, quando ocorreu a primeira expedição de reconhecimento da região. Subindo o rio Paraguai, chegaram até a barra do rio Miranda, no atual MS. Pelo Tratado de Tordesilhas, o Pantanal pertencia aos espanhóis. Estes depararam-se com um território ocupado por sociedades indígenas, Guarani em sua maioria. Entretanto, com as descobertas das minas de ouro e prata no Peru e no México, a colonização da região pantaneira não foi prioridade.\r\n<br>\r\nA partir da segunda metade do século XVI, os bandeirantes paulistas foram se interiorizando pelo Brasil, alcançando as áreas sob o domínio espanhol, desbravando essas terras com a finalidade de capturar indígenas para a escravização e em busca de pedras e metais preciosos. Deste modo, chegaram à chapada cuiabana no início do século XVIII, seguindo pelos rios Tietê, Paraná e afluentes do Paraguai.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30404.75045084725!2d-57.40092239383576!3d-17.716638624434243!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9384392ff2be9d51%3A0x4dba41d159d099ec!2sPantanal!5e0!3m2!1spt-BR!2sbr!4v1639090990193!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(52, 4, 'Rio Branco', 'Em 1882, o vapor sobe o rio Acre e desembarca os Irmãos Leite no seringal Bagaço. Neutel Maia decide ficar algumas milhas acima e no dia 28 de dezembro funda o Seringal Empreza, na volta do rio onde está situada a Gameleira. Depois o mesmo vapor ainda deixa Manuel Damasceno Girão na foz do Xapuri, onde fundou o seringal Xapuri.\r\n<br>\r\nNesse momento de expansão do extrativismo da borracha, quando o Acre era ainda considerado território boliviano, o Seringal Empresa, na rota entre Porto Acre e Xapuri, núcleo dinâmico da atividade econômica que dava a lógica à invasão da floresta, vai se constituindo no núcleo de um entreposto comercial.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4033887.048623915!2d-72.54904631731041!3d-9.123475410949515!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x917f8daa4e9106b9%3A0x25ec0ac5083607c1!2sAcre!5e0!3m2!1spt-BR!2sbr!4v1639091107955!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(54, 5, 'Macapá', 'Encravada na Amazônia, a capital do Amapá é lugar certo para o pouso de aves migratórias, que se somam aos flamingos, tucanos, guarás, tartarugas marinhas e de rio, jacarés-açu, peixes-boi, tamanduás-bandeira, tatus-canastra e tantos outros animais que completam a rica fauna da região e dão um colorido especial ao verde da floresta. Em Macapá , o rio Amazonas tem suas águas domadas nas praias da Fazendinha e do Araxá, permitindo deliciosos banhos.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d255347.9696789221!2d-51.23695219345115!3d0.10177199578773168!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8d61e5e06b4b1a37%3A0x56357df330df0f97!2zTWFjYXDDoSwgQVA!5e0!3m2!1spt-BR!2sbr!4v1639091348248!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(55, 5, 'Santana', 'Um local amistoso é muito bonito.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d510696.3323547911!2d-51.44216637327366!3d0.07283608306094015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8d61e34ffdbd2e5d%3A0x7ed1a28f4544de32!2sSantana%20-%20AP!5e0!3m2!1spt-BR!2sbr!4v1639091427614!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(56, 6, 'Alter do Chão', 'Alter do Chão é um dos distritos administrativos do município de Santarém, no estado do Pará. Localizado na margem direita do Rio Tapajós, dista do centro da cidade cerca de 37 quilômetros através da rodovia Everaldo Martins.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15943.968154064956!2d-54.96134324139897!3d-2.5094830207419694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x92885284fb3ebf99%3A0xcb08442fee6790c3!2sAlter%20do%20Ch%C3%A3o%2C%20Santar%C3%A9m%20-%20PA!5e0!3m2!1spt-BR!2sbr!4v1639091477432!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(57, 6, 'Belém', 'Na embocadura do rio Amazonas organizou-se historicamente a vida social e econômica e a entrada para o interland de expedições coloniais oficiais, de missionários de várias ordens religiosas, entre outros viajantes, disputando esse território de antiga ocupação e domínio, com as diversas etnias indígenas pré-colombianas ali existentes. E também aí se fizeram as primeiras tentativas de colonização portuguesa na Amazônia, registrando-se os primeiros povoamentos já no início do século XVII.\r\n<br>\r\nEm 1616, os colonizadores se estabeleceram na foz do Amazonas, inaugurando um processo de expansão a partir do povoado que daria origem à cidade de Belém. Essa região representou, por todos esses séculos, a passagem e a fixação de diferentes grupos sociais e de formas diversas de exploração econômica de recursos tais como as drogas do sertão, a madeira, a caça e a pesca, os minérios e os frutos.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d255278.40104890967!2d-48.59047298895269!3d-1.3413479419597338!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x92a461af84756ce1%3A0x570d540215864c35!2zQmVsw6ltLCBQQQ!5e0!3m2!1spt-BR!2sbr!4v1639091531888!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(58, 7, 'Porto Velho', 'Porto Velho é um município brasileiro e a capital do estado de Rondônia. Com uma população de 548 952 habitantes, conforme estimativas do Instituto Brasileiro de Geografia e Estatística, é o município mais populoso de Rondônia e o terceiro mais populoso da Região Norte, atrás apenas de Manaus e Belém.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4035481.3799428088!2d-66.76937513028601!3d-8.981368755733289!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x922d328ca4a88c47%3A0x4380950ed6230760!2sPorto%20Velho%20-%20RO!5e0!3m2!1spt-BR!2sbr!4v1639091616036!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(59, 7, 'Guarajará-Mirim', 'Guajará-Mirim é um município brasileiro do estado de Rondônia, Região Norte do país. É o segundo maior município do estado em extensão territorial, e o oitavo em população.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62712.49652088752!2d-65.35194448482675!3d-10.770580235221924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93d3c5b917ce000d%3A0xb35001b000e1400a!2sGuajar%C3%A1-Mirim%2C%20RO%2C%2076850-000!5e0!3m2!1spt-BR!2sbr!4v1639091680000!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(61, 8, 'Boa Vista', 'A cidade de Boa Vista se originou da sede de uma fazenda estabelecida no local no século XIX. Em torno da sede da fazenda, chamada Boa Vista do Rio Branco, surgiu um pequeno povoado, a Freguesia de Nossa Senhora do Carmo, que durante um bom tempo foi o único povoado em toda a região do alto Rio Branco.\r\n<br>\r\nEm 1890, o povoado foi elevado à condição de vila, e em 1926 passou a ser município, adotando o nome da antiga fazenda, Boa Vista.\r\n<br>\r\nCom a criação do Território Federal de Roraima, em 1940, a cidade foi escolhida para ser a capital.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127520.95767910757!2d-60.766602889876324!3d2.807368369829368!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8d9305cacbaaa4db%3A0xb72e65c7a9d75f45!2sBoa%20Vista%2C%20RR!5e0!3m2!1spt-BR!2sbr!4v1639092194095!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(62, 9, 'Palmas', 'Cidade planejada, localizada no centro de Tocantins, Palmas começou a ser construída em 1989 após o lançamento da pedra fundamental no dia 20 de maio do mesmo ano.\r\n<br>\r\nSeu território é formado pelo desmembramento de parte dos municípios Porto Nacional e Taquarassu do Porto. E seu nome foi escolhido em homenagem a Comarca de São João da Palma, sede do primeiro movimento separatista da região, instalada na barra do rio Palma com o rio rio Paranã, em 1809.\r\n<br>\r\nTorna-se capital definitiva de Tocantins em 1o de janeiro de 1990. Desde a criação do estado, em 1988, até então, Miracema de Tocantins era a capital provisória.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d251265.23287411482!2d-48.48732557955859!3d-10.260029682670075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x933b3439911f1257%3A0x93b8070d05c818f!2sPalmas%2C%20TO!5e0!3m2!1spt-BR!2sbr!4v1639092254382!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(63, 9, 'Araguaína', '0', '0', NULL),
(64, 9, 'Manaus', 'Manaus, nos bancos do Rio Negro no noroeste do Brasil, é a capital do vasto estado do Amazonas. Trata-se de um ponto de partida importante próximo à Floresta Amazônica. A leste da cidade, o Rio Negro, escuro, converge para o Rio Solimões, barrento, resultando em um fenômeno visual incrível chamado de \"Encontro das Águas\". A combinação dos afluentes forma o Rio Amazonas.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d254987.93395356025!2d-60.10719537017113!3d-3.0446529661673027!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x926c1bc8b37647b7%3A0x2b485c9ff765a9cc!2sManaus%2C%20AM!5e0!3m2!1spt-BR!2sbr!4v1639092399155!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(65, 10, 'Parintins', 'O Festival Folclórico de Parintins começou sua festa no formato atual em 1964, época aonde já se destacava a rivalidade entre a torcida do Boi Garantido e do Boi Caprichoso. A festa do boi, como é chamada pelo povo, acontece todos os dias no coração dos amazonenses.\r\n<br>\r\nOs ensaios, a confecção das alegorias, fantasias e coreografias têm início dois meses antes do grande evento celebrado no bumbódromo, com capacidade para 35 mil expectadores. A disputa baseia-se em lendas locais, que ano após ano, voltam a povoar o imaginário popular, representando a história do homem amazonense através de uma grande festa.\r\n<br>\r\nA rivalidade é ferrenha, mas os adversários se respeitam. Os integrantes do Caprichoso, ou do Garantido, limitam-se a chamar o rival de “contrário”. No Bumbódromo, construído em 1988 e considerado a maior obra cultural e desportiva do Estado do Amazonas, cada Boi se apresenta durante 3 horas nos três dias de festival. A ordem das apresentações é sempre definida por sorteio.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1020184.9782515881!2d-57.46961816073258!3d-2.7874645825095365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x926389ef8cb47ddd%3A0x7080e3ad4ceb94b3!2sParintins%20-%20AM!5e0!3m2!1spt-BR!2sbr!4v1639092487073!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(67, 14, 'Mongaguá', 'Mongaguá é um município da Região Metropolitana da Baixada Santista, no estado de São Paulo, no Brasil. A população estimada de 2018 foi de 55 731 habitantes e a área é de 143,90205 quilômetros quadrados, resultando em uma densidade demográfica de 387,28 habitantes por quilômetro quadrado.\r\n<br><br>\r\nUm dos maiores pontos turísticos de Mongaguá é além de sua Santa é o Poço das Antas, local com diversas cachoeiras para o divertimento da família. Além de um local para piquenique ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d116555.19164451897!2d-46.7437007825843!3d-24.089193329542912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce2883ba386b79%3A0x211da91fc6c0ccb9!2zTW9uZ2FndcOhLCBTUA!5e0!3m2!1spt-BR!2sbr!4v1638895621865!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(70, 13, 'Foz do Iguaçu', 'A cidade se encontra entre Argentina, Brasil e Paraguai, e lá, as cascatas mais famosas do país ficam em Foz do Iguaçu, um dos mais importantes pontos turísticos do Paraná, patrimônio histórico da humanidade e umas das 7 maravilhas naturais do mundo forma um conjunto de quedas d’água com cerca de 275 metros de altura, ela se localiza no parque nacional do Iguaçu, hoje, o parque é a maior reserva de floresta pluvial subtropical do mundo.<br>\r\nEm Foz do Iguaçu encontramos outras áreas turísticas, como o templo budista que fica em uma área de aproximadamente 17 hectares nas margens do Rio Paraná, podemos passear, também, no majestoso Parque das Aves. A cidade oferece ainda uma ótima gastronomia internacional e incríveis lugares de compras. Puerto Iguazu é a cidade argentina vizinha do município onde provém aproveitar as feirinhas da cidade, ou passar no Paraguai para fazer compras, entretanto encontramos preços mais em conta, comparados com os do Brasil, no Duty Free antes da fronteira com a Argentina. \r\nNa cidade, ainda se destaca a Itaipu Binacional, maior produtora de energia limpa do mundo, oferecendo um belíssimo percurso no coração da usina. Foz do Iguaçu não para por aí, suas atrações contemplam o passeio à noite para o espetáculo da Itaipu Iluminada, o Ecomuseu, O refúgio biológico e o polo astronômico, com planetário e plataforma de observações a olho nu.<br>\r\nA região contemplará você e sua família, tendo em vista o maior parque hoteleiro do país, o turismo da cidade é sua maior fonte de renda. <br>\r\nCaso deseje uma viagem romântica em meio às belas paisagem, Foz do Iguaçu é especial, há suítes perfeitas para a vista mais bem vista das cascatas, inclusive encontrará a disponibilidade de voar ao redor das cataratas de helicóptero, ou uma  caminha ao nascer do sol.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d115220.42136483794!2d-54.61700443999135!3d-25.5171112330431!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f690ebae530a43%3A0x21979473b4c4a952!2sFoz%20do%20Igua%C3%A7u%2C%20PR!5e0!3m2!1spt-BR!2sbr!4v1639092835622!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(71, 13, 'Palmeira', 'A cidade de Palmeira fica a 60km de distância da Capital. Apresenta muitas lojas de artesanato e culinária germânica, no município se encontra a Colônia Witmarsum, onde se manifesta um espaço muito harmônico semelhante a Alemanha. Ainda você poderá contemplar um passeio histórico indo de encontro com o museu de Witmarsum para ver fotos antigas, móveis e os cômodos da Fazenda Cancela, que foi onde toda a construção começou. Há aqui também o Recanto dos Papagaios, um lindo parque gratuito com piscinas naturais e riachos para tomar banho. ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28826.387648268985!2d-50.019044703877114!3d-25.428283604207166!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94dd581ac3fba967%3A0xee95167a28e5da99!2sPalmeira%2C%20PR%2C%2084130-000!5e0!3m2!1spt-BR!2sbr!4v1639092982779!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(72, 13, 'Morretes', 'Atravessando algumas das mais belas rodovias do Brasil, o percurso até Morretes já impressiona, com a oportunidade de tomar o trem expresso Serra Verde que vem de Curitiba pela Estrada da Graciosa. Essa trilha passa pela Mata Atlântica, picos de montanhas e cachoeiras, você pode tirar ótimas fotos e até fazer compras, além de parar no mirante que vende mel, cachaça e doce de banana. Os aventureiros podem conhecer o Parque Estadual do Marumbi, ponto turístico do Paraná, com trilhas acidentadas e verdadeiras recompensas.\r\nA natureza continua a ser uma atração na cidade, principalmente no  Ekôa Park e nos edifícios históricos e museus. <br>\r\nEdifícios com arquitetura colonial estão presentes nos casarões, mas também em ruas de paralelepípedos, praças e pontes, retrocedendo no tempo, e aproveitar as `\'irmãs\" de trem que sai de Curitiba. Aproveite para degustar iguarias locais, principalmente o Barreado, carne cozida por horas com farinha de mandioca, arroz, balas e sorvete de banana!\r\n<br>\r\nVale aproveitar para ressaltar os chalés na serra paranaense, as casinhas ficam em meio a natureza, as paisagens de Morretes contam com muita mata atlântica, cachoeiras e montanhas. \r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3601.7862401055354!2d-48.83373018600927!3d-25.478812283765944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94dc8f5169a95bf7%3A0x49083d0169547e8f!2sMorretes%20-%20PR!5e0!3m2!1spt-BR!2sbr!4v1639093180266!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(122, 14, 'Itanhaém', 'Localizada no litoral Sul de São Paulo, Itanhaém é uma das meninas dos olhos do setor imobiliário. \r\n<br>\r\nUnindo a delícia e a beleza dos atrativos naturais, proporciona uma estrutura bem desenvolvida para quem deseja fazer da praia a sua morada fixa ou veraneio.\r\n<br>\r\nSeus maiores pontos turísticos é a Cama de Anchieta, suas belas praias, como a Praia dos Sonhos; há também a estátua das Mulheres de Areia, local que foi gravada a novela. Também tem seu famoso Convento e a Igreja Matriz.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d465763.17430820514!2d-47.093094277745585!3d-24.214665570227872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94d1d57349fa6513%3A0x29b318df3a7ca782!2sItanha%C3%A9m%20-%20SP%2C%2011740-000!5e0!3m2!1spt-BR!2sbr!4v1638799791388!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(123, 14, 'Osasco', 'Conhecida como “Cidade-trabalho”, Osasco é destaque pelo empreendedorismo e pela força de vontade de seus moradores. \r\n<br>\r\nAinda de acordo com o mesmo censo, em 2014, Osasco possuía o 8º maior Produto Interno Bruto do Brasil e o 2º maior do Estado de São Paulo, ficando à frente de muitas capitais estaduais brasileiras, como Salvador, Fortaleza e Recife, sendo a cidade com o mais alto PIB da nação naquele ano.\r\n<br>\r\nOsasco é a terceira cidade do país em empreendedorismo. Seus pontos turísticos são seus parques, como Parque Chico Mendes, o Calçadão de Compras na Antônio Agú e além de seus variados shoppings.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d117055.10323249792!2d-46.854476376568286!3d-23.533510328333776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5583db0fdfef%3A0x90ee3c33b723aa9c!2sOsasco%20-%20SP!5e0!3m2!1spt-BR!2sbr!4v1638800526377!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL),
(124, 22, 'Chapada Diamantina', 'Chapada Diamantina é uma região de serras,  protegida na categoria de parque nacional, situada no centro do estado brasileiro da Bahia, onde nascem quase todos os rios das bacias do Paraguaçu, do Jacuípe e do Rio de Contas.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15557.7139911843!2d-41.380940079029486!3d-12.880145486771903!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x742223abc4785eb%3A0xdf9586310ce5dcfa!2sChapada%20Diamantina!5e0!3m2!1spt-BR!2sbr!4v1638915641611!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(125, 22, 'Lauro de Freitas', 'Lauro de Freitas é um município da Região Metropolitana  de Salvador, no Litoral Norte do estado da Bahia, no Brasil', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62235.865329651686!2d-38.36208600327702!3d-12.859960298100557!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7163e1a53f73969%3A0xdd9b017baf4d24c2!2sLauro%20de%20Freitas%20-%20Port%C3%A3o%2C%20Lauro%20de%20Freitas%20-%20BA!5e0!3m2!1spt-BR!2sbr!4v1638916015331!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(126, 4, 'Imbassaí', 'Imbassaí é um distrito do município baiano de Mata de São João, localizado no Litoral Norte do Estado na atual  Zona Turística de Costa dos Coqueiros.  Tem como principal acesso a linha verde,  situando-se a 10 km da Praia do Forte.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15581.337863345549!2d-37.97073643488228!3d-12.493976058726494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x71701f38ac5b7b5%3A0x66057eec379e058d!2zSW1iYXNzYcOtLCBNYXRhIGRlIFPDo28gSm_Do28gLSBCQQ!5e0!3m2!1spt-BR!2sbr!4v1638916361833!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(127, 28, 'Fortaleza', 'Fortaleza é a capital do estado do Ceará, no Nordeste brasileiro. A cidade é conhecida por suas praias, com falésias vermelhas, palmeiras, dunas e lagoas. As tradições folclóricas da cidade podem ser vistas em apresentações de dança no Theatro José de Alencar, construção em estilo art nouveau inaugurada em 1910. Outro destaque arquitetônico é a Catedral Metropolitana, em estilo neogótico.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d254788.957257271!2d-38.65970536680324!3d-3.793303144531691!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c74c3f464c783f%3A0x4661c60a0c6b37ca!2sFortaleza%20-%20CE!5e0!3m2!1spt-BR!2sbr!4v1638916614127!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(128, 28, 'Jericoacoara', 'Jericoacoara é uma cidade turística no estado do Ceará, no leste do Brasil. É conhecida pela ampla praia de Jericoacoara. Os restaurantes e bares preenchem as ruas arenosas. A Praça Principal fica no centro, na animada Rua Principal. A cidade está rodeada de lagoas de água doce, como a Lagoa do Paraíso e a Lagoa Azul, e do Parque Nacional de Jericoacoara, com vastas dunas de areia. A Duna do Pôr do Sol é um popular ponto de observação do pôr do sol.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127513.47384738574!2d-40.57386844496962!3d-2.875122451999364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7e98660f56abc49%3A0xca971859ed748a48!2sJijoca%20de%20Jericoacoara%20-%20CE!5e0!3m2!1spt-BR!2sbr!4v1638916883484!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(129, 28, 'Baturité', 'Baturité é um município brasileiro do estado do Ceará.  Localiza-se na microrregião de Baturité,mesorregião do Norte Cearense. Sua população estimada no último  censo é de 33.326 habitantes que representa cerca de  0,38% da população do estado de Ceará.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31827.35294813538!2d-38.89265356228671!3d-4.332132655249976!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7bf3b38243d50fb%3A0xcb67deed7d3b7fe3!2sBaturit%C3%A9%2C%20CE%2C%2062760-000!5e0!3m2!1spt-BR!2sbr!4v1638917220348!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(130, 28, 'Juazeiro do Norte', 'Juazeiro do Norte é um município brasileiro do estado do Ceará.  Localiza-se na Região Metropolitana do Cariri, do no sul estado, distante 491 km da capital, Fortaleza, a uma altitude de 377 metros acima do nível do mar.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63329.84844815557!2d-39.34932911115091!3d-7.227661764225512!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7a1789b9e348137%3A0x6fac36329d98a8ea!2sJuazeiro%20do%20Norte%2C%20CE!5e0!3m2!1spt-BR!2sbr!4v1638917406863!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(131, 29, 'Olinda', 'Olinda é uma cidade colonial na costa nordeste do Brasil, perto da cidade do Recife. Fundada em 1535 pelos portugueses, foi construída em encostas íngremes e distingue-se pela arquitetura do século XVIII, com igrejas barrocas, conventos, mosteiros e  casas de cores vivas. Originalmente um centro da indústria da  cana-de-açúcar, é agora conhecida como uma colónia de artistas, com diversas galerias, oficinas e museus.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63216.37290017119!2d-34.90704760953634!3d-7.996529825653464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7ab17fa77c07f29%3A0x78d856ff05dd791!2sOlinda%2C%20PE!5e0!3m2!1spt-BR!2sbr!4v1638917658722!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(132, 29, 'Recife', 'Recife, a capital do estado de Pernambuco, no nordeste do Brasil, distingue-se pelos seusvários rios, pontes, ilhéus e penínsulas. Recife Antigo, na própria ilha junto ao porto, é o centro histórico da cidade antiga que data do século XVI. A sul, a popular Praia de Boa Viagem é protegida por recifes e está ladeada de blocos de apartamentos elevados, hotéis modernos e restaurantes.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d252837.12790439784!2d-35.07793890090524!3d-8.04214982572186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7ab196f88c446e5%3A0x3c9ef52922447fd4!2sRecife%20-%20PE!5e0!3m2!1spt-BR!2sbr!4v1638917868322!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(133, 29, 'Fernando de Noronha', 'Fernando de Noronha é um arquipélago vulcânico situado a cerca de 350 quilómetros ao largo da costa nordeste do Brasil. Tem o nome da sua maior ilha, um parque marinho e santuário ecológico protegido com uma linha costeira recortada e vários ecossistemas. É reconhecida pelas suas praias pouco  urbanizadas e por atividades como mergulho e snorkeling.  As tartarugas marinhas, as raias, os golfinhos e os  tubarões dos recifes nadam nas águas quentes e cristalinas', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63693.5528541149!2d-32.46198236632613!3d-3.842991034320463!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x63652666d497a3d%3A0x83f652bfda978b15!2sFernando%20de%20Noronha%20-%20PE!5e0!3m2!1spt-BR!2sbr!4v1638918120563!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(135, 29, 'Caruaru', 'Caruaru é um município brasileiro do estado de  Pernambuco, situado na região nordeste do país. Pertence à Região geográfica intermediária de Caruaru.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d505491.42424529383!2d-36.29632750113091!3d-8.187464063895282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7a98bbebc94490f%3A0xdd09062168eb8b2b!2sCaruaru%20-%20PE!5e0!3m2!1spt-BR!2sbr!4v1638918551091!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(136, 29, 'São Benedito do Sul', 'São Benedito do Sul é um município brasileiro do estado de Pernambuco. Localizado na Mesorregião da Mata Pernambucana e na Microrregião da Mata Meridional  Pernambucana, é constituído pelos distritos Sede e Igarapeba. O município de São Benedito do Sul conta com quatro cachoeiras espalhadas pela zona da mata. A cachoeira do Peri Peri,  localizada no engenho de mesmo nome, não permite a entrada de veículos, porém, uma caminhada de apenas 500 metros é o necessário para contemplar a vista. O local conta com com um paredão de 27 metros de altura,  muito procurado pelos praticantes de rapel. Continuando no município,  encontramos a cachoeira do Poço do Caboclo, no Engenho Paraíso, localizada às margens da PE-126.  A entrada é gratuita e a vista das quedas d’água pode ser apreciada  acompanhada de um banho nas águas cristalinas.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15771.093078708584!2d-35.94224698554996!3d-8.807359148795815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7074ce28c3540cd%3A0x6d8303d2719bd342!2sS%C3%A3o%20Benedito%20do%20Sul%2C%20PE%2C%2055410-000!5e0!3m2!1spt-BR!2sbr!4v1638918861647!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array'),
(137, 29, 'Petrolina', 'Petrolina é um município brasileiro do interior do estado de Pernambuco, distante 712 km a oeste de Recife, capital estadual. Possui uma extensão territorial de 4 561,872 km², estando 244,8 km² em perímetro  urbano e os 4 317,072 km² restantes integrando a zona rural', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62984.845106042434!2d-40.54506905624218!3d-9.372780180330576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7737a8452b2d649%3A0xa0e71dc0c94e0aed!2sPetrolina%2C%20PE!5e0!3m2!1spt-BR!2sbr!4v1638919125493!5m2!1spt-BR!2sbr\" width=\"500\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Array');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidadeambiente`
--

CREATE TABLE `cidadeambiente` (
  `id_cidade` int(3) UNSIGNED NOT NULL,
  `id_ambiente` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cidadeambiente`
--

INSERT INTO `cidadeambiente` (`id_cidade`, `id_ambiente`) VALUES
(1, 1),
(30, 2),
(122, 1),
(19, 2),
(3, 2),
(4, 1),
(5, 2),
(123, 2),
(6, 2),
(7, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 2),
(14, 1),
(16, 2),
(17, 2),
(17, 2),
(18, 1),
(19, 2),
(20, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(27, 1),
(28, 1),
(29, 2),
(30, 1),
(31, 2),
(32, 2),
(33, 2),
(33, 2),
(34, 1),
(35, 2),
(36, 2),
(39, 2),
(43, 1),
(44, 1),
(47, 2),
(50, 1),
(52, 2),
(53, 1),
(54, 1),
(55, 1),
(56, 2),
(57, 2),
(58, 2),
(59, 1),
(60, 1),
(61, 2),
(63, 2),
(64, 2),
(65, 2),
(67, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(67, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidadeclima`
--

CREATE TABLE `cidadeclima` (
  `id_cidade` int(3) UNSIGNED NOT NULL,
  `id_clima` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cidadeclima`
--

INSERT INTO `cidadeclima` (`id_cidade`, `id_clima`) VALUES
(1, 2),
(34, 1),
(34, 2),
(30, 1),
(30, 2),
(122, 2),
(19, 2),
(3, 2),
(4, 2),
(5, 2),
(123, 1),
(123, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(35, 2),
(36, 2),
(39, 1),
(39, 2),
(43, 2),
(44, 2),
(47, 2),
(50, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(63, 2),
(64, 2),
(65, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(124, 1),
(125, 2),
(126, 1),
(127, 2),
(128, 1),
(129, 1),
(130, 2),
(131, 2),
(132, 2),
(133, 1),
(134, 2),
(135, 2),
(136, 1),
(137, 1),
(70, 2),
(71, 1),
(72, 2),
(67, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidadetipo`
--

CREATE TABLE `cidadetipo` (
  `id_cidade` int(20) UNSIGNED NOT NULL,
  `id_tipo` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cidadetipo`
--

INSERT INTO `cidadetipo` (`id_cidade`, `id_tipo`) VALUES
(1, 2),
(1, 7),
(30, 4),
(30, 5),
(122, 1),
(122, 2),
(122, 5),
(19, 2),
(3, 2),
(3, 6),
(3, 7),
(4, 2),
(123, 2),
(123, 4),
(123, 6),
(6, 6),
(7, 5),
(8, 6),
(8, 7),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(12, 7),
(13, 5),
(13, 7),
(14, 5),
(16, 2),
(17, 2),
(17, 6),
(17, 7),
(18, 2),
(18, 5),
(19, 5),
(21, 6),
(23, 5),
(24, 5),
(24, 7),
(25, 5),
(25, 7),
(27, 5),
(28, 6),
(28, 7),
(29, 1),
(30, 7),
(31, 7),
(32, 2),
(32, 4),
(32, 6),
(33, 2),
(33, 5),
(33, 6),
(33, 7),
(33, 2),
(33, 5),
(33, 6),
(33, 7),
(34, 2),
(34, 5),
(34, 7),
(35, 2),
(35, 6),
(36, 2),
(36, 4),
(39, 4),
(39, 5),
(43, 5),
(44, 5),
(44, 6),
(44, 7),
(47, 5),
(47, 6),
(47, 7),
(50, 6),
(50, 7),
(52, 6),
(53, 5),
(53, 7),
(54, 6),
(54, 7),
(55, 5),
(55, 6),
(56, 1),
(56, 2),
(56, 4),
(56, 6),
(56, 7),
(57, 4),
(57, 5),
(57, 6),
(57, 7),
(58, 6),
(59, 5),
(60, 5),
(61, 1),
(61, 7),
(63, 1),
(63, 5),
(64, 1),
(64, 2),
(64, 6),
(64, 7),
(65, 6),
(65, 7),
(3, 10),
(67, 1),
(67, 2),
(67, 4),
(67, 5),
(67, 7),
(67, 8),
(67, 10),
(124, 5),
(124, 8),
(125, 1),
(125, 6),
(125, 7),
(126, 1),
(126, 5),
(126, 7),
(127, 1),
(127, 2),
(127, 6),
(127, 7),
(127, 10),
(128, 1),
(128, 5),
(128, 7),
(129, 5),
(129, 6),
(129, 8),
(129, 10),
(130, 5),
(130, 6),
(130, 7),
(130, 10),
(131, 6),
(131, 10),
(132, 1),
(132, 2),
(132, 4),
(132, 6),
(132, 7),
(132, 10),
(133, 1),
(133, 5),
(135, 4),
(135, 5),
(135, 6),
(135, 7),
(136, 5),
(136, 8),
(137, 5),
(137, 6),
(137, 7),
(70, 5),
(70, 6),
(70, 7),
(70, 8),
(13, 10),
(71, 5),
(71, 6),
(71, 7),
(71, 9),
(71, 10),
(72, 5),
(72, 7),
(72, 9),
(72, 10),
(67, 1),
(67, 2),
(67, 4),
(67, 5),
(67, 7),
(67, 8),
(67, 10),
(122, 7),
(122, 8),
(122, 9),
(122, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clima`
--

CREATE TABLE `clima` (
  `cd_clima` int(1) UNSIGNED NOT NULL,
  `nm_clima` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clima`
--

INSERT INTO `clima` (`cd_clima`, `nm_clima`) VALUES
(1, 'Frio'),
(2, 'Calor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `cd_estado` int(3) UNSIGNED NOT NULL,
  `id_regiao` int(20) UNSIGNED NOT NULL,
  `nm_estado` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`cd_estado`, `id_regiao`, `nm_estado`) VALUES
(1, 5, 'Goiás'),
(2, 5, 'Mato Grosso'),
(3, 5, 'Mato Grosso do Sul'),
(4, 3, 'Acre'),
(5, 3, 'Amapá'),
(6, 3, 'Pará'),
(7, 3, 'Rondônia'),
(8, 3, 'Roraima'),
(9, 3, 'Tocantins'),
(10, 3, 'Amazonas'),
(11, 2, 'Santa Catarina'),
(12, 2, 'Rio Grande do Sul'),
(13, 2, 'Paraná'),
(14, 1, 'São Paulo'),
(15, 1, 'Rio de Janeiro'),
(16, 1, 'Minas Gerais'),
(17, 1, 'Espírito Santo'),
(22, 4, 'Bahia'),
(28, 4, 'Sergipe');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favorito`
--

CREATE TABLE `favorito` (
  `cd_favorito` int(10) UNSIGNED NOT NULL,
  `id_cidade` int(20) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `favorito`
--

INSERT INTO `favorito` (`cd_favorito`, `id_cidade`, `id_usuario`) VALUES
(1, 16, 5),
(2, 55, 5),
(3, 53, 2),
(5, 31, 5),
(8, 67, 5),
(16, 122, 5),
(19, 10, 5),
(39, 67, 18),
(41, 122, 2),
(63, 67, 1),
(65, 21, 1),
(71, 123, 1),
(72, 122, 1),
(73, 21, 5),
(74, 60, 5),
(76, 47, 5),
(78, 122, 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `regiao`
--

CREATE TABLE `regiao` (
  `cd_regiao` int(100) UNSIGNED NOT NULL,
  `nm_regiao` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `regiao`
--

INSERT INTO `regiao` (`cd_regiao`, `nm_regiao`, `info`, `foto`) VALUES
(1, 'Sudeste', 'O sudeste do Brasil é uma das cinco divisões regionais do nosso país.\r\nO sudeste é uma das menores regiões do Brasil, ocupando 11% do território. Entretanto, é a região mais povoada.\r\nÉ nela que estão grandes centros como São Paulo e Rio de Janeiro, duas cidades globais, que exercem influência sobre todo o território nacional.', NULL),
(2, 'Sul', 'A região Sul do Brasil tem como uma de suas características a forte presença europeia em seu processo de colonização e povoamento. Assim, possui traços europeus marcantes na arquitetura, na culinária, na população e até no clima, pois é a única do país cujos estados estão abaixo do Trópico de Capricórnio.', NULL),
(3, 'Norte', 'A Região Norte é uma região bem diferente das demais, podemos destacar já que ela é a maior região do Brasil em seu território e possui a maior diversidade biológica do país. Graças a nossa grande floresta Amazônica, a região Norte muitas comunidades vivem dentre estas paisagens, como por exemplo, as comunidades ribeirinhas.', NULL),
(4, 'Nordeste', 'Possui quase 50 milhões de habitantes e é a região geográfica do Brasil com o maior número de estados. É composta de nove estados, sendo que todos são banhados pelo oceano Atlântico. O Nordeste é bastante conhecido pelo calor e também pelas praias, que correspondem a uma extensão de 3.338 km.', NULL),
(5, 'Centro-Oeste', 'A região Centro-Oeste é formada pelos estados de Goiás, Mato Grosso, Mato Grosso do Sul e pelo Distrito Federal. Sua área é de 1.604.850 Km2, ocupando aproximadamente 18,8% do Brasil, tendo a segunda maior extensão territorial entre as regiões brasileiras, tornando-se inferior apenas à região Norte.', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `cd_tipo` int(3) UNSIGNED NOT NULL,
  `nm_tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`cd_tipo`, `nm_tipo`) VALUES
(1, 'Praia'),
(2, 'Carnaval'),
(3, 'Ano Novo'),
(4, 'Natal'),
(5, 'Natureza'),
(6, 'Cidade'),
(7, 'Casual'),
(8, 'Cachoeira'),
(9, 'Fazenda'),
(10, 'Histórico');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cd_usuario` int(11) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `user` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `nivel` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `ativo` int(1) NOT NULL DEFAULT 1,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cd_usuario`, `nome`, `user`, `email`, `senha`, `nivel`, `ativo`, `foto`) VALUES
(1, 'Ademiros', 'adm', 'adm@gmail.com', 'quinteto', 2, 1, ''),
(2, 'Nillie', 'nilie', 'nillie@gmail.com', '000000', 1, 1, ''),
(3, 'Aba', 'aba', 'aba', 'aba', 1, 1, ''),
(4, 'Nillie', 'NILIESW', 'nill@gmail.com', '12', 1, 1, ''),
(5, 'Yakko', 'yako', 'yako@gmail.com', '123', 1, 1, ''),
(9, 'QWE', 'qwe', 'qwe@gmail.com', '123', 1, 1, NULL),
(11, 'Dora Aventureira', 'dora', 'dora@gmail.com', 'mochila', 1, 1, NULL),
(14, 'mily', 'mily', 'mily@gmail.com', 'dog', 1, 1, NULL),
(15, '123', '123', '123@gmail.com', '456', 1, 1, NULL),
(16, 'uyghdj', 'koji', 'sdsd@gmail.com', 'sdwd', 1, 1, NULL),
(17, 'dwdsasc', 'qwerthj', 'lucienezanirato@gmail.com', '123', 1, 1, NULL),
(18, 'Ababa', 'ababa', 'ababa@gmail.com', '123', 1, 1, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ambiente`
--
ALTER TABLE `ambiente`
  ADD PRIMARY KEY (`cd_ambiente`);

--
-- Índices para tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`cd_cidade`);

--
-- Índices para tabela `cidadeambiente`
--
ALTER TABLE `cidadeambiente`
  ADD KEY `id_cidade` (`id_cidade`),
  ADD KEY `id_ambiente` (`id_ambiente`);

--
-- Índices para tabela `cidadeclima`
--
ALTER TABLE `cidadeclima`
  ADD KEY `id_cidade` (`id_cidade`),
  ADD KEY `id_clima` (`id_clima`);

--
-- Índices para tabela `cidadetipo`
--
ALTER TABLE `cidadetipo`
  ADD KEY `id_cidade` (`id_cidade`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Índices para tabela `clima`
--
ALTER TABLE `clima`
  ADD PRIMARY KEY (`cd_clima`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`cd_estado`),
  ADD UNIQUE KEY `cd_estado` (`cd_estado`),
  ADD KEY `fk_estadoregiao` (`id_regiao`);

--
-- Índices para tabela `favorito`
--
ALTER TABLE `favorito`
  ADD PRIMARY KEY (`cd_favorito`),
  ADD KEY `fk_cidadefavorito` (`id_cidade`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`cd_regiao`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`cd_tipo`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cd_usuario`),
  ADD UNIQUE KEY `user` (`user`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `nivel` (`nivel`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `cd_cidade` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `cd_estado` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `favorito`
--
ALTER TABLE `favorito`
  MODIFY `cd_favorito` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cd_usuario` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cidadetipo`
--
ALTER TABLE `cidadetipo`
  ADD CONSTRAINT `cidadetipo_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`cd_cidade`),
  ADD CONSTRAINT `cidadetipo_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`cd_tipo`);

--
-- Limitadores para a tabela `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `fk_estadoregiao` FOREIGN KEY (`id_regiao`) REFERENCES `regiao` (`cd_regiao`);

--
-- Limitadores para a tabela `favorito`
--
ALTER TABLE `favorito`
  ADD CONSTRAINT `favorito_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`cd_usuario`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_cidadefavorito` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`cd_cidade`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
