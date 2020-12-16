-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3300
-- Generation Time: 05-Out-2020 às 16:41
-- Versão do servidor: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sistemas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'Telefonia'),
(2, 'Eletrônicos'),
(3, 'Games'),
(4, 'Móveis');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'William Gates', 'bill@gates.com', '$2y$10$sW.T6tH0TM1f/EM8kt5lau.Lkt/HA4ltqtUrVuvBSrxavQEtJngNS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `descricao` text NOT NULL,
  `valor` double NOT NULL,
  `promo` double DEFAULT NULL,
  `imagem` varchar(50) NOT NULL,
  `ativo` char(1) DEFAULT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `produto`, `descricao`, `valor`, `promo`, `imagem`, `ativo`, `categoria_id`) VALUES
(1, 'Smartphone Samsung Galaxy A01 Core 32GB Azul - Quad-Core 2GB RAM Tela 5,3” Câm. 8MP + Selfie 5MP', 'Smartphone Samsung Galaxy A01 Core 32GB Azul - Quad-Core 2GB RAM Tela 5,3” Câm. 8MP + Selfie 5MP\r\nTenha uma solução para o seu dia a dia sem deixar nada para trás com o Galaxy A01 Core da Samsung. Realize fotos especiais e únicas com a câmera de 8MP na traseira. Divirta-se e compartilhe seus momentos especiais ao fotografar com a câmera de selfie de 5MP. A tela de 5,3\" e resolução HD+ deste smartphone trazem uma experiência de visualização imersiva, seja ao ver seus vídeos, fotos ou simplesmente acessar as redes sociais. Oferece um processador Quad-Core e 2GB de memória RAM para que você tenha tudo ao alcance dos dedos de maneira mais fácil. O armazenamento interno de 32GB entrega muita conveniência para salvar seus documentos de maneira segura. E se mesmo assim achar pouco, você pode usar um cartão MicroSD de até 512GB para aumentar essa capacidade. Fique sempre conectado com a tecnologia 4G em um aparelho dual chip! A cor azul destaca o design moderno do produto e combina perfeitamente com seu dia a dia.', 999.9, 720.98, '8f73927088c071e233ff7548f2ce3257.jpg', 'S', 1),
(2, 'Smartphone Samsung Galaxy A11 64GB Azul 4G - Octa-Core 3GB RAM 6,4” Câm. Tripla + Selfie 8MP', 'Tenha uma solução para o seu dia a dia sem deixar nada para trás com o Galaxy A11 da Samsung. Realize fotos especiais e únicas com a câmera tripla na traseira, que é repleta de recursos. Divirta-se e compartilhe seus momentos especiais ao fotografar com a câmera de selfie de 8MP. A tela de 6,4\" deste smartphone traz uma experiência de visualização imersiva, seja ao ver seus vídeos, fotos ou simplesmente acessar as redes sociais. Oferece um processador Octa-Core e 3GB de memória RAM para que você tenha tudo ao alcance dos dedos de maneira mais fácil. O armazenamento interno de 64GB entrega muita conveniência para salvar seus documentos, músicas ou vídeos! Permaneça sempre conectado com a tecnologia 4G em um aparelho dual chip! Conte com a segurança de um leitor de impressão digital neste smartphone. Graças a bateria de 4000mAh o aparelho consegue te acompanhar o dia todinho, além de contar com carregamento rápido de 15W. A cor azul destaca o design moderno do produto e combina perfeitamente com seu dia a dia.', 1699.9, 1040.67, '7b80d7b462794b1fca12f32a78e29369.jpg', 'S', 1),
(3, 'Smartphone xiaomi redmi 9a tela 6,53” 2gb/32gb 4g, azul', 'A série Redmi acaba de ganhar mais um aliado; conheça o Redmi 9A o smartphone que oferece mais tela, mais bateria e um design 3D único. São 6.53” de tela HD+ e Dot Drop Display para uma experiência imersiva em jogos e vídeos, com a proteção TÜV Rheinland contra luz azul. Jogue por horas seguidas, assista filmes, séries e garanta a saúde dos seus olhos. Personalize o brilho, contraste e cores da sua tela através do Modo Leitura e tenha uma experiência mais confortável. Se preferir mais praticidade, ative os Gestos em Tela Cheia e controle os comandos do seu smartphone com os movimentos do seu dedo. O Redmi 9A possui IA otimizada na câmera traseira, que captura rapidamente fotos nítidas e claras em uma variedade de cenários diferentes. A câmera principal de 13MP com abertura de foco e f/2.2 - AF, oferece flash único e efeitos caleidoscópio que mudam a dinâmica dos seus vídeos, deixando tudo mais divertido e criativo. A câmera frontal de 5MP com abertura de foco de f/2.2, registra selfies incríveis de forma prática. O desempenho sólido e estável do Redmi 9A fica por conta do processador MediaTek Helio G25 octa-core de até 2.0Ghz, com arquitetura de 12nm, que é otimizada para jogos. Ganhe fluidez e qualidade para todas as formas de uso, sem qualquer interrupção. A bateria de 5000mAh de alta capacidade, dá o suporte que você precisa para um dia inteiro de uso. O processo de desenvolvimento do Redmi 9A, aprimorou o tempo de vida útil da bateria para oferecer carregamentos com muita qualidade e eficácia. Ouça músicas com seu fone favorito, basta conectá-lo à entrada P2 e pronto. O Redmi 9A oferece tecnologia Dual 4G e Dual SIM com slot para MicroSD, expansível a até 512GB. ESPECIFICAÇÕES Tipo de Sistema Operacional: Android (MIUI). Sistema operacional devidamente personalizado e otimizado pela Xiaomi com funcionalidades exclusivasAndroid (MIUI). Sistema operacional devidamente personalizado e otimizado pela Xiaomi com funcionalidades exclusivas Versão: Android 10 Processador: MediaTek® Helio G25 Arquitetura da CPU: 8 x A53 2.0GHz Tipo de Processador: Octa Core Velocidade do Processador: 2.0 GHz GPU Gráfica: PowerVR GE8320, 650MHz Tamanho da Tela: 6,53\" Tecnologia: LCD IPS Resolução: HD+ (1600x720) Proporção: 20:9 Densidade de Pixels: 269ppi Recursos da Tela: - Alto contraste: 1500:1 - Gama de cores: 70.8% - Brilho: 400nit (typ) - Modo leitura - Certificação TÜV Rheinland com baixa luz azul Memória RAM: 2GB Memória Interna: 32GB Memória Expansível: Até 512GB Resolução da Câmera Frontal: 5MP, 1.12μm, abertura f/2.2, lentes 3P, com campo de visão de 83 graus. Resolução da Câmera Traseira: 13MP, 1.0μm, abertura f/2.2, lentes 5P, foco automático (AF), com campo de visão de 74 graus. Tipo de Foco(Traseiro): PDAF Zoom: 10 x Zoom digital Resolução em Gravação de Vídeos(Frontal): 1080p e 720p em 30fps Resolução em Gravação de Vídeos(Traseira): 1080p e 720p em 30fps Recursos da Camera Frontal: - Reconhecimento facial - HDR - Modo retrato - Modo embelezamento - Temporizador - Selfies automáticas acenando a palma da mão Recursos da Câmera Traseira: - Modo Pro - Modo caleidoscópio - Modo embelezamento - Modo retrato com ajuste de desfoque - Temporizador - Auto HDR Sensores: Acelerômetro, Proximidade, Sensor de Luz Ambiente e Motor de Vibração. Números de SIM: Dual Chip Conexões: 4G / 3G / 2G Conector de Entrada: Micro USB Localização: GPS / A-GPS / GLONASS / Beidou Conector de Fone de Ouvido: P2 3.5mm Versão do Bluetooth: Bluetooth 5.0 Protocolos de Wi-fi: IEEE 802.11 b/g/n Suporte Wi-Fi: 2.4GHz Suporte a OTG: Sim Bateria: 5000mAh Potência Máxima: 10W Conteúdo da embalagem: 1x Smartphone Redmi 9A, 1x cabo USB, 1x Carregador padrão BR , 1x Ferramenta Ejetora, 1x Manual e 1x Termo de Garantia.', 1399.9, NULL, '501c8174156cd7e5b58425e5ff19dceb.jpg', 'S', 1),
(4, 'Fritadeira Elétrica sem Óleo/Air Fryer Nell Smart - Preta 2,4L com Timer', 'A fritadeira elétrica Nell Smart é um eletroportátil que não pode faltar na sua cozinha. O produto proporciona uma alimentação mais saudável, pois não utiliza óleo/Air Fryer em seu processo de cozimento. A fritadeira na cor preta é compacta e produzida em PP, ocupando menos espaço, possui luz indicadora de funcionamento, controle de temperatura, cesta removível antiaderente, capacidade total de 3,4L e cesto com capacidade de 2,4L. Sua alça fria garante maior segurança ao manusear a fritadeira e além disso, ela possui timer de 30 minutos sonoro e com desligamento automático. Agora é só preparar batatinha frita, coxinha, bolinha de queijo e pastel na sua fritadeira elétrica!', 289.9, NULL, '1fad2079a4468ecafb1ad7e0afec2c74.jpg', 'S', 2),
(5, 'Smart TV HD LED 32” LG 32LM625BPSB Wi-Fi Bluetooth - HDR Inteligência Artificial 3 HDMI 2 USB', 'A Smart TV 32LM625BPSB da LG veio para deixar seu momento de lazer e descontração ainda melhores. Sua resolução HD em uma linda tela LED de 32\" deixam os filmes e as séries ainda mais incríveis para você assistir com sua família e seus amigos. Ela vem com sistema operacional WebOS 4.5, além de wi-fi e bluetooth, 03 Entradas HDMI, 02 Entradas USB, 01 Entrada RF para TV aberta/TV a Cabo, 01 Entrada AV/vídeo componente, 01 Entrada LAN RJ45, tudo isso para uma melhor imersão no mundo do entretenimento com muitas opção de programação. A função Clear Voice destaca a voz do ruído de fundo, entregando mais claridade sonora. O Virtual Surround Plus entrega mais imersão sonora e máximo envolvimento para todos os seus conteúdos. O Upscaler HD permite que você curta todos os seus conteúdos, mesmo os de baixa resolução, com a máxima qualidade do seu TV. Todos os televisores LG já vem com conversor digital integrado, pra você curtir seus conteúdos com altíssima qualidade. Ao captar e combinar imagens em diferentes exposições (maior e menor exposição), o conteúdo em HDR entrega uma qualidade de brilho e contraste superior, com uma riqueza de detalhes nunca vista antes. Com a Inteligência Artificial da LG e seu reconhecimento de voz, você consegue controlar sua TV sem complicações, procurar por qualquer informação ou conteúdo que quiser, basta apenas falar através do controle remoto Smart Magic (VENDIDO SEPARADAMENTE). Essa excelente inovação entrega ainda mais conveniência para seu lazer!', 1399.9, 1281.9, '2a8b80f68b8ab09179994e4533a0d234.jpg', 'S', 2),
(6, 'Smart TV Crystal UHD 4K LED 50” Samsung - 50TU8000 Wi-Fi Bluetooth HDR 3 HDMI 2 USB', 'Tenha uma tela de cinema no conforto da sua sala com a Smart TV, modelo 50TU8000, da Samsung. Ela traz resolução 4K, que oferece uma experiência única com imagens mais realistas para você não perder nenhum detalhe, além de frequência 60Hz e tecnologia Crystal UHD. Com o HDR 10+ ela oferece cores mais apuradas e vivas e design superior com cabos escondidos e a tela mais fina. Com a tecnologia da tela LED, com 50\", ela permite uma verdadeira imersão, independente da onde se olhe e a borda ultrafina com o design sofisticado com 3 bordas proporciona elegância ao ambiente. Suas 3 entradas HDMI, 2 de USB, Wi-Fi e Bluetooth possibilitam entretenimento ilimitados por horas e horas. Ela possui, ainda, múltiplos assistentes pessoais com compatibilidade com Alexia e Bixby e controle remoto único para controlar diversos aparelhos conectados à TV. Ela também é perfeita para você que gosta de jogar, pois como o modo game, oferece o melhor tempo de resposta possível!', 2699.9, NULL, '42cdf08f2cf47621e3c745ce17e3e69b.jpg', 'S', 2),
(7, 'Google Nest Mini - Cinza', 'A Google apresenta um novo produto que deve fazer com que você converse mais com ele do que com as outras pessoas da sua casa. Trata-se do Google Nest Mini, um aparelho que lembra uma caixa de som, mas é muito mais completa, tecnológica e surpreendente do que isso. O Google Nest Mini, como o próprio nome sugere, é destinado para ficar parado em um cômodo da sua residência. Ele é capaz de interagir via comandos de voz com você e, a partir de uma evoluída integração com plataformas, conectar-se com outros serviços e eletrônicos. O design do aparelho é moderno e elegante, mas discreto e pequeno o suficiente para que não se destaque muito na decoração das casas. Assim, você pode falar com o assistente enquanto cozinha, joga, lê e por aí vai. As tarefas mais cotidianas possíveis ficarão fáceis, já que o aparelho suportará ações como agenda, dispositivos da Internet das Coisas.', 499, NULL, '889d4c9ce772e4fbbef6acaae51c33de.jpg', 'S', 2),
(8, 'Projetor Led Espelhamento Celular Wifi T5+ Multi Interfaces Branco - Yieqin', 'Projetor Led Espelhamento Celular Wifi T5+ Multi Interfaces Branco', 899.9, NULL, 'd4a3957fb33290151ac7262b4fdb5c66.jpg', 'S', 1),
(9, 'Console PlayStation 5 PS5 - Sony', 'Jogar Não Tem Limites. O slogan do novo PlayStation 5 diz tudo sobre o console. Desfrute do carregamento extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation. Domine o poder de uma CPU e GPU personalizadas e o SSD com E/S integradasque redefinem as regras do que o console PlayStation pode fazer. Maximize suas sessões de jogo com tempos de carregamento praticamente instantâneos para jogos do PS5 instalados. A integração personalizada dos sistemas de console PS5 permite que os criadores extraiam dados do SSD tão rápido que eles podem desenvolver jogos de formas que antes seriam impossíveis. Mergulhe em mundos com um nível inédito de realismo enquanto os raios de luz são simulados individualmente, criando sombras e reflexos realistas em jogos compatíveis do PS5. Desfrute de fluidez e taxa de quadros de até 120qps em jogos compatíveis, com suporte a saída de 120Hz em telas 4K. Com uma TV HDR, os jogos compatíveis do PS5 exibem uma variedade de cores inacreditavelmente vibrante e realista. Os consoles PS5 oferecem suporte a saída 8K, para que você possa jogar na sua tela com resolução de 4320p em TV\'s que sejam compatíveis com a tecnologia.', 4999.99, NULL, '75ede8c14ef0d8c50a5b120067c5cb91.jpg', 'S', 3),
(10, 'PlayStation 4 Mega Pack V17 1TB 1 Controle Sony - com 3 Jogos 3 Meses PS Plus', 'Jogar videogame é muito bom, ainda mais para quem é fã do PlayStation 4! Tem disco rígido de 1TB para tudo o que há de melhor em jogos, músicas e muito mais! Acompanha 01 controle DualShock 4 para proporcionar uma precisão incomparável em cada movimento, além de compartilhar seus melhores momentos. O voucher de 3 meses da PlayStation Plus permite que você adicione competidores à sua lista de amigos para participar de batalhas épicas no modo multijogador. A Sony entrega o melhor pacote de entretenimento e com jogos exclusivos, tudo isso em apenas um único produto! O console acompanha os jogos Marvel\'s Spider-Man, Dreams e Infamous Second Son .', 2990, NULL, '3167e0f5bee8db73211927deb9dbb35b.jpg', 'S', 3),
(11, 'Game Retro Sonic The Hedgehog 3 Tiger Eletronics - Hasbro', 'Que tal voltar no tempo? Fãs antigos ou novos entusiastas de joguinhos eletrônicos vintage podem se divertir com este videogame retrô LCD Tiger Electronics Sonic the Hedgehog, inspirado no original dos anos 90. É uma aventura para derrotar o Dr. Robotnik em todas as 6 fases. O design e a tecnologia refletem o joguinho original portátil.\r\nMuita nostalgia e diversão estilo anos 90 com este joguinho eletrônico estilo vintage Tiger Electronics Sonic the Hedgehog 3 portátil. Para aquelas pessoas que se divertiram com joguinhos eletrônicos quando criança, trazemos de volta os jogos eletrônicos LCD, este inspirado em Sonic the Hedgehog 3 dos anos 90. PERSONAGENS DE SONIC THE HEDGEHOG: As crianças podem jogar como Sonic the Hedgehog e seu amigo Tails para lutar contra o Dr. Robotnik na Ilha Flutuante Idade: acima de 8 anos Para 1 jogador Requer 2 baterias AA LR6 de 1,5 V. (Não incluídas.) ATENÇÃO: Este brinquedo emite luzes que podem provocar epilepsia em pessoas propensas. Contém LCD videogame e instruções.', 169.9, NULL, '07a9e8142d24a068192e5a6c5028b068.jpg', 'S', 3),
(12, 'XBOX One X', 'Xbox One X O console mais poderoso do mundo. Experimente jogos imersivos reais em 4K, 40% mais potente que qualquer outro console. Os jogos ficam melhores no Xbox One X. Processamento mais rápido, jogabilidade mais suave. O CPU AMD personalizado 8 core possui velocidade de 2,3 GHz proporcionando uma inteligência artificial aprimorada, detalhes do mundo real e interações mais suaves para seu jogo. OS 12 GB GDDR5 de memória gráfica adicionam velocidade e potência no desempenho do jogo, possibilitando mundos maiores, horizontes mais amplos e tempos de carregamento mais rápidos. Detalhes realista, uma GPU Teraflop 6 possibilita ambientes em 4K e um realismo ainda maior dos personagens, com mais detalhes e animações mais suaves. Tempos de carregamento mais rápidos, os gráficos de jogos são mais rápidos e mais detalhados com largura de banda de memória de 326 GB/seg, para manter a fluidez do seu jogo. Características Modelo Xbox One X Marca Microsoft Memória e Armazenamento 8GB Memória flash 1TB Armazenamento interno HDD 12GB GDDR5 a 326 GB/s Recursos de Vídeo 4K Unidade de disco ótico UHD Blu ray HDMI 2.0b (externo), 2160p 60Hz, AMD FreeSync HDR10 Suporte Componentes de áudio DTS 5.1 DOLBY Digital 5.1, TrueHD com Atmos PCM 2.0, 5.1, 7.1 Recursos sem fio Wi-Fi Dual band wireless com Wi Fi Direct para redes domésticas IR Blaster Envio e recebimento de sinais Conectividade Porta de alimentação portas HDMI (1 HDMI 1.4b interno, HDMI 2.0b externo) 3 portas USB 3.0 IR externo S/PDIF Porta Ethernet Garantia 12 meses de garantia conforme certificado de garantia junto a nota fiscal Informações de Acordo com o Fabricante', 3890, NULL, 'c178c01e60b97136a12da9a35f8a99d9.jpg', 'S', 3),
(13, 'Nintendo Switch 32GB HAC-001-01 1 Controle Joy-Con - Vermelho e Azul', 'O Nintendo Switch foi projetado para se adequar à sua vida, transformando o console doméstico em um sistema portátil em um piscar de olhos. O console Nintendo Switch é tanto um console de mesa quanto portátil. Leve ele onde quiser e continue sua jogatina a hora que quiser. Com ele a diversão nunca para! Os jogos exclusivos do Switch são um espetáculo a parte, franquias como Mario, Zelda e Splatoon você só encontra aqui (jogos vendidos separadamente). Existem jogos para todos os gostos e para toda família. No Nintendo Switch você encontrará vários RPGs exclusivos, jogos de aventura, ação, FPS, plataforma e muito mais! Além disso tudo, o Nintendo Switch possui os controles Joy-Con que irão te proporcionar uma perspectiva de jogo diferente de qualquer outra que já teve.\r\n', 3290, 2999.9, 'd38296e874a7d5f3e06ff0d8704bb123.jpg', 'S', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `status` char(1) NOT NULL,
  `cliente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_has_produto`
--

CREATE TABLE `venda_has_produto` (
  `venda_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `valor` double NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produto_categoria1_idx` (`categoria_id`);

--
-- Indexes for table `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venda_cliente1_idx` (`cliente_id`);

--
-- Indexes for table `venda_has_produto`
--
ALTER TABLE `venda_has_produto`
  ADD PRIMARY KEY (`venda_id`,`produto_id`),
  ADD KEY `fk_venda_has_produto_produto1_idx` (`produto_id`),
  ADD KEY `fk_venda_has_produto_venda_idx` (`venda_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `venda`
--
ALTER TABLE `venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fk_venda_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `venda_has_produto`
--
ALTER TABLE `venda_has_produto`
  ADD CONSTRAINT `fk_venda_has_produto_produto1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venda_has_produto_venda` FOREIGN KEY (`venda_id`) REFERENCES `venda` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
