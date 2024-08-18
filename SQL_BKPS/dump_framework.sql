/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `FRAMEWORK` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `FRAMEWORK`;

CREATE TABLE IF NOT EXISTS `FINANCEIRO__MOVIMENTO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` bigint(25) DEFAULT NULL,
  `DE_QUEM` bigint(25) DEFAULT NULL,
  `PARA_QUEM` bigint(25) DEFAULT NULL,
  `VALOR` decimal(18,2) DEFAULT NULL,
  `JUSTIFICATIVA` varchar(500) DEFAULT NULL,
  `USER_VALIDADOR` bigint(25) DEFAULT NULL,
  `STATUS` int(11) DEFAULT 0,
  `TIPO` int(11) DEFAULT 0,
  `LINK_PAG` varchar(500) DEFAULT NULL,
  `UID_CARRINHO` bigint(25) DEFAULT NULL,
  `CRIADO_EM` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MODIFICADO_EM` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FINANCEIRO__MOVIMENTO` DISABLE KEYS */;
/*!40000 ALTER TABLE `FINANCEIRO__MOVIMENTO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `FINANCEIRO__STATUS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NOT NULL,
  `STATUS` varchar(200) NOT NULL,
  `DESCRICAO` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FINANCEIRO__STATUS` DISABLE KEYS */;
INSERT INTO `FINANCEIRO__STATUS` (`ID`, `CODE`, `STATUS`, `DESCRICAO`) VALUES
	(46, 1, 'sucesso', 'Pronto, seu pagamento foi aprovado! Você poderá encontrar este valor em suas faturas do perfil selecionado.'),
	(47, 2, 'pendente', 'Estamos aguardando a confirmação do pagamento.\nNão se preocupe, assim que for confirmado, o saldo será creditado em  sua conta.'),
	(57, 3, 'similaridade', 'Você realizou um pagamento similar há poucos instantes.\nTente novamente em alguns minutos.'),
	(61, 4, 'max de tentativas', 'Você atingiu o limite de tentativas permitido. Tente novamente amanhã'),
	(90, 5, 'limite diário', 'Você atingiu o limite diário desta operação. Tente novamente amanhã'),
	(93, 6, 'erro no processo', 'Não pudemos processar seu pagamento'),
	(94, 7, 'auth inválido', 'Código de dois fatores está incorreto');
/*!40000 ALTER TABLE `FINANCEIRO__STATUS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `FINANCEIRO__TIPO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(4) DEFAULT NULL,
  `TYPE` varchar(400) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FINANCEIRO__TIPO` DISABLE KEYS */;
INSERT INTO `FINANCEIRO__TIPO` (`ID`, `CODE`, `TYPE`) VALUES
	(1, 1, 'RECARGA'),
	(2, 2, 'SAQUE'),
	(5, 3, 'COMPRA NA LOJA'),
	(6, 4, 'ENTRADA DE SALDO'),
	(7, 5, 'SAÍDA DE SALDO'),
	(8, 6, 'RECARGA DE SALDO'),
	(9, 7, 'RECOMPENSA'),
	(10, 8, 'ATIVAÇÃO DE PLANO'),
	(11, 9, 'RENTABILIZAÇÃO POR CICLO'),
	(12, 10, 'TRANSBORDO DE BTC RENTAL');
/*!40000 ALTER TABLE `FINANCEIRO__TIPO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `FRANQUIAS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` bigint(25) DEFAULT NULL,
  `UID_PAI` bigint(25) DEFAULT NULL,
  `TIPO` int(11) NOT NULL,
  `NOME` varchar(300) NOT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CEP` varchar(50) NOT NULL,
  `UF` varchar(4) NOT NULL,
  `CIDADE` varchar(150) NOT NULL,
  `COMPLEMENTO` varchar(300) NOT NULL,
  `NUMERO` int(6) NOT NULL,
  `LOGRADOURO` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UID` (`UID`),
  KEY `REL_FRANQUIA_TIPO` (`TIPO`),
  KEY `REL_FRANQUIA_STATUS` (`STATUS`),
  KEY `REL_FRANQUIA_UID_MATRIZ` (`UID_PAI`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FRANQUIAS` DISABLE KEYS */;
INSERT INTO `FRANQUIAS` (`ID`, `UID`, `UID_PAI`, `TIPO`, `NOME`, `STATUS`, `CEP`, `UF`, `CIDADE`, `COMPLEMENTO`, `NUMERO`, `LOGRADOURO`) VALUES
	(41, 12516983936090, 16574974373518, 1, 'Nova Franquia', 1, '', 'fd', '', '', 0, ''),
	(42, 16574974373518, 12516983936090, 1, 'Nova Franquia', 3, '', '', '', '', 0, '');
/*!40000 ALTER TABLE `FRANQUIAS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `FRANQUIAS__ESTOQUE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRODUTO` int(11) DEFAULT NULL,
  `ID_FRANQUIA` int(11) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `VALOR_UNITARIO_COMPRA` decimal(18,2) DEFAULT NULL,
  `VALOR_UNITARIO_VENDA` decimal(18,2) DEFAULT NULL,
  `DATA_COMPRA` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FRANQUIAS__ESTOQUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FRANQUIAS__ESTOQUE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `FRANQUIAS__LINIK_USER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID_USER` bigint(25) NOT NULL,
  `UID_FRANQUIA` bigint(25) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `REL_FRANQUIA_LINK_FRANQUIA` (`UID_FRANQUIA`),
  KEY `UID_USER` (`UID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FRANQUIAS__LINIK_USER` DISABLE KEYS */;
INSERT INTO `FRANQUIAS__LINIK_USER` (`ID`, `UID_USER`, `UID_FRANQUIA`) VALUES
	(5, 99860182833561704, 12516983936090),
	(6, 99860182833561703, 12516983936090),
	(7, 99860182833561702, 12516983936090);
/*!40000 ALTER TABLE `FRANQUIAS__LINIK_USER` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `FRANQUIAS__STATUS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) DEFAULT NULL,
  `STATUS` varchar(100) NOT NULL,
  `DESCRICAO` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FRANQUIAS__STATUS` DISABLE KEYS */;
INSERT INTO `FRANQUIAS__STATUS` (`ID`, `CODE`, `STATUS`, `DESCRICAO`) VALUES
	(1, 1, 'ATIVA', 'FRANQUIA ATIVA E DENTRO DOS PADRÕES'),
	(2, 2, 'INATIVA', 'FRANQUIA INATIVA'),
	(3, 3, 'BLOQUEADA', 'FRANQUIA BLOQUEADA'),
	(4, 4, 'EXCLUÍDA', 'FRANQUIA EXCLUIDA'),
	(5, 5, 'EDIÇÃO', 'EM CRIAÇÃO/EDIÇÃO');
/*!40000 ALTER TABLE `FRANQUIAS__STATUS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `FRANQUIAS__TIPO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NOT NULL,
  `TIPO` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FRANQUIAS__TIPO` DISABLE KEYS */;
INSERT INTO `FRANQUIAS__TIPO` (`ID`, `CODE`, `TIPO`) VALUES
	(1, 1, 'MATRIZ'),
	(2, 2, 'FILIAL'),
	(3, 3, 'FRANQUIA');
/*!40000 ALTER TABLE `FRANQUIAS__TIPO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `FRANQUIAS__TIPO_VINCULO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NOT NULL,
  `VINCULO` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FRANQUIAS__TIPO_VINCULO` DISABLE KEYS */;
INSERT INTO `FRANQUIAS__TIPO_VINCULO` (`ID`, `CODE`, `VINCULO`) VALUES
	(1, 1, 'RESPONSAVEL'),
	(2, 2, 'ADMIN');
/*!40000 ALTER TABLE `FRANQUIAS__TIPO_VINCULO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `GALERIAS__GALERIAS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` bigint(25) DEFAULT NULL,
  `UID_PLUGIN` bigint(25) DEFAULT NULL COMMENT 'REFERENCIA DO PLUGIN',
  `TITULO` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `REL_GALERIAS_PLUGIN` (`UID_PLUGIN`),
  KEY `UID` (`UID`),
  CONSTRAINT `REL_GALERIAS_PLUGIN` FOREIGN KEY (`UID_PLUGIN`) REFERENCES `GALERIAS__PLUGIN` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `GALERIAS__GALERIAS` DISABLE KEYS */;
INSERT INTO `GALERIAS__GALERIAS` (`ID`, `UID`, `UID_PLUGIN`, `TITULO`) VALUES
	(21, 4899293551239047, 674105368613986, 'CLIENTES E PARCEIROS');
/*!40000 ALTER TABLE `GALERIAS__GALERIAS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `GALERIAS__IMAGENS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` bigint(25) DEFAULT NULL,
  `UID_PLUGIN` bigint(25) DEFAULT NULL,
  `UID_GALERIA` bigint(25) DEFAULT NULL,
  `FILENAME` varchar(500) DEFAULT NULL COMMENT 'NOME DO ARQUIVO',
  `ORIGINAL_NAME` varchar(500) DEFAULT NULL COMMENT 'NOME ORIGINAL DO ARQUIVO',
  `MIME` varchar(300) DEFAULT NULL,
  `TITULO` varchar(255) DEFAULT '',
  `DESCRICAO` varchar(255) DEFAULT '',
  `PESO` int(11) DEFAULT NULL,
  `50x50` varchar(255) DEFAULT NULL,
  `100x100` varchar(255) DEFAULT NULL,
  `300x300` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY ` GALERIAS__IMAGENS_PLUGIN` (`UID_PLUGIN`),
  KEY `GALERIAS__IMAGENS_GALERIAS` (`UID_GALERIA`),
  CONSTRAINT ` GALERIAS__IMAGENS_PLUGIN` FOREIGN KEY (`UID_PLUGIN`) REFERENCES `GALERIAS__PLUGIN` (`UID`),
  CONSTRAINT `GALERIAS__IMAGENS_GALERIAS` FOREIGN KEY (`UID_GALERIA`) REFERENCES `GALERIAS__GALERIAS` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `GALERIAS__IMAGENS` DISABLE KEYS */;
INSERT INTO `GALERIAS__IMAGENS` (`ID`, `UID`, `UID_PLUGIN`, `UID_GALERIA`, `FILENAME`, `ORIGINAL_NAME`, `MIME`, `TITULO`, `DESCRICAO`, `PESO`, `50x50`, `100x100`, `300x300`) VALUES
	(85, 6653622370602429, 674105368613986, 4899293551239047, 'abe603d387d815cb4f6500290f5d9797.png', '3.jpg', 'image/jpeg', 'playboy', 'www.playboy.com', 152348, 'abe603d387d815cb4f6500290f5d9797-50x50x100.png', 'abe603d387d815cb4f6500290f5d9797-100x100x100.png', 'abe603d387d815cb4f6500290f5d9797-300x300x100.png'),
	(86, 5794711244790025, 674105368613986, 4899293551239047, '0d089caa77ce30b79df6a2ab494dbd6c.png', '4.jpg', 'image/jpeg', 'mais outro cliente', 'www.gmagazine.com', 83334, '0d089caa77ce30b79df6a2ab494dbd6c-50x50x100.png', '0d089caa77ce30b79df6a2ab494dbd6c-100x100x100.png', '0d089caa77ce30b79df6a2ab494dbd6c-300x300x100.png'),
	(87, 5490134225914, 674105368613986, 4899293551239047, '0d7cf23eaa9821ad39577da72f888c18.png', '5.jpg', 'image/jpeg', '1111', 'https://google.com', 92960, '0d7cf23eaa9821ad39577da72f888c18-50x50x100.png', '0d7cf23eaa9821ad39577da72f888c18-100x100x100.png', '0d7cf23eaa9821ad39577da72f888c18-300x300x100.png');
/*!40000 ALTER TABLE `GALERIAS__IMAGENS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `GALERIAS__PLUGIN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` bigint(25) DEFAULT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  `SLUG` varchar(255) DEFAULT NULL,
  `MULTIPLAS` tinyint(1) DEFAULT 1,
  `TAMANHO_THUMB` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UID_2` (`UID`),
  KEY `UID` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `GALERIAS__PLUGIN` DISABLE KEYS */;
INSERT INTO `GALERIAS__PLUGIN` (`ID`, `UID`, `TITULO`, `SLUG`, `MULTIPLAS`, `TAMANHO_THUMB`) VALUES
	(10, 7598884166302868, '11111', '456x678', 3, '50x50,100x100,300x300'),
	(11, 6474601582035575, '222222', '', 2, '50x50,100x100,300x300'),
	(13, 674105368613986, 'Clientes', '', 2, '50x50,100x100,300x300');
/*!40000 ALTER TABLE `GALERIAS__PLUGIN` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `MIDIA__BANNER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PLUGIN` int(11) DEFAULT NULL,
  `LINK` varchar(300) DEFAULT NULL,
  `TARGET` set('_Self','_Blank') DEFAULT '_Self',
  `ANALITYCS` tinyint(1) NOT NULL DEFAULT 0,
  `CLICKTAG` varchar(300) DEFAULT NULL,
  `TITULO` varchar(300) DEFAULT NULL,
  `DESCRICAO` varchar(700) DEFAULT NULL,
  `STATUS` int(11) DEFAULT 4,
  `INICIA` datetime DEFAULT NULL,
  `TERMINA` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `REL_BANNER_PLUGIN` (`ID_PLUGIN`),
  KEY `REL_BANNER_STATUS` (`STATUS`),
  CONSTRAINT `REL_MIDIA_BANNER__PLUGIN` FOREIGN KEY (`ID_PLUGIN`) REFERENCES `MIDIA__PLUGIN` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `MIDIA__BANNER` DISABLE KEYS */;
INSERT INTO `MIDIA__BANNER` (`ID`, `ID_PLUGIN`, `LINK`, `TARGET`, `ANALITYCS`, `CLICKTAG`, `TITULO`, `DESCRICAO`, `STATUS`, `INICIA`, `TERMINA`) VALUES
	(71, 23, NULL, '_Self', 0, NULL, 'Novo Banner', 'Novo Banner', 4, NULL, NULL);
/*!40000 ALTER TABLE `MIDIA__BANNER` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `MIDIA__FILES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_BANNER` int(11) NOT NULL,
  `ID_PLUGIN` int(11) NOT NULL,
  `NOME_ORIGINAL` varchar(400) NOT NULL,
  `PATH` varchar(400) NOT NULL,
  `FILENAME` varchar(300) NOT NULL,
  `MEDIA_QUERY` int(5) NOT NULL,
  `SIZE` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `REL_FILE_PLUGIN` (`ID_PLUGIN`),
  KEY `REL_FILE_BANNER` (`ID_BANNER`),
  CONSTRAINT `REL_FILES_UID_MIDIA_BANNER` FOREIGN KEY (`ID_BANNER`) REFERENCES `MIDIA__BANNER` (`ID`),
  CONSTRAINT `REL_FILES_UID_MIDIA_PLUGIN` FOREIGN KEY (`ID_PLUGIN`) REFERENCES `MIDIA__PLUGIN` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `MIDIA__FILES` DISABLE KEYS */;
INSERT INTO `MIDIA__FILES` (`ID`, `ID_BANNER`, `ID_PLUGIN`, `NOME_ORIGINAL`, `PATH`, `FILENAME`, `MEDIA_QUERY`, `SIZE`, `TYPE`) VALUES
	(286, 71, 23, '425.png', 'PLUGIN_23/BANNER_71', 'fcb555600f85869e7c1f80bd71212098.png', 425, '185710', 'image/png'),
	(287, 71, 23, '768.png', 'PLUGIN_23/BANNER_71', '63cc9c9d7c9cee4a8f5f00df89c36599.png', 768, '409255', 'image/png'),
	(288, 71, 23, '1024.png', 'PLUGIN_23/BANNER_71', '3e069b6a958330825e92b7e246bc0a1c.png', 1024, '535506', 'image/png'),
	(289, 71, 23, '1440.png', 'PLUGIN_23/BANNER_71', '53dac973d7c33c52ea805d1126dcb792.png', 1440, '734627', 'image/png'),
	(290, 71, 23, '1920.png', 'PLUGIN_23/BANNER_71', 'e4582ff852a7cbe6d11e2e12d823e475.png', 1920, '820746', 'image/png');
/*!40000 ALTER TABLE `MIDIA__FILES` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `MIDIA__PLUGIN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(200) NOT NULL,
  `DESCRICAO` varchar(300) NOT NULL,
  `SLUG` varchar(200) NOT NULL,
  `RESPONSIVO` tinyint(1) NOT NULL DEFAULT 1,
  `MULTIPLOS` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  KEY `SLUG` (`SLUG`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `MIDIA__PLUGIN` DISABLE KEYS */;
INSERT INTO `MIDIA__PLUGIN` (`ID`, `TITULO`, `DESCRICAO`, `SLUG`, `RESPONSIVO`, `MULTIPLOS`) VALUES
	(23, 'HOME TOPO PT', '', 'DP_HOME_PT', 1, 1);
/*!40000 ALTER TABLE `MIDIA__PLUGIN` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `MIDIA__STATUS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `MIDIA__STATUS` DISABLE KEYS */;
INSERT INTO `MIDIA__STATUS` (`ID`, `STATUS`) VALUES
	(1, 'ATIVO'),
	(2, 'INATIVO'),
	(3, 'EXCLUIDO'),
	(4, 'EM EDIÇÃO');
/*!40000 ALTER TABLE `MIDIA__STATUS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `NEWSLETTER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(300) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `NEWSLETTER` DISABLE KEYS */;
INSERT INTO `NEWSLETTER` (`ID`, `EMAIL`) VALUES
	(1, 'DDDDDDDDDD@SFSADF.COM'),
	(2, 'DDDDDDDDDD@SFSADF.COM');
/*!40000 ALTER TABLE `NEWSLETTER` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `NOTIFICACOES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID_USER` bigint(25) NOT NULL,
  `UID_EMPREENDIMENTO` bigint(25) NOT NULL,
  `REMETENTE` bigint(25) NOT NULL,
  `PARAMS` text DEFAULT NULL,
  `TEMPLATE` int(3) DEFAULT NULL,
  `TITULO` varchar(200) NOT NULL,
  `MENSAGEM` text NOT NULL,
  `VISUALIZADO` tinyint(1) NOT NULL DEFAULT 0,
  `CRIADO_EM` datetime NOT NULL DEFAULT current_timestamp(),
  `EXCLUIDO` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `DESTINO` (`UID_USER`),
  KEY `REMETENTE` (`REMETENTE`),
  KEY `TEMPLATE` (`TEMPLATE`),
  CONSTRAINT `DESTINO` FOREIGN KEY (`UID_USER`) REFERENCES `USUARIOS` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `REMETENTE` FOREIGN KEY (`REMETENTE`) REFERENCES `USUARIOS` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TEMPLATE` FOREIGN KEY (`TEMPLATE`) REFERENCES `NOTIFICACOES_TEMPLATES` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `NOTIFICACOES` DISABLE KEYS */;
/*!40000 ALTER TABLE `NOTIFICACOES` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `NOTIFICACOES__TEMPLATES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(400) NOT NULL,
  `CODE` int(3) NOT NULL,
  `TEMPLATE` text NOT NULL,
  `NOME_VAR` varchar(300) NOT NULL,
  `BALAO_TOPO` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `NOTIFICACOES__TEMPLATES` DISABLE KEYS */;
INSERT INTO `NOTIFICACOES__TEMPLATES` (`ID`, `TITULO`, `CODE`, `TEMPLATE`, `NOME_VAR`, `BALAO_TOPO`) VALUES
	(1, 'SOBE COMISSÃO DE REVENDA', 1, 'Olá <b style="color:#FFF;font-weight: 500;">{VENDEDOR_NOME}</b> você recebeu de \n <b style="color:#FFF;font-weight: 500;">{COMPRADOR_NOME}</b> uma comissão de vendas no valor de R$ {VALOR}', 'sobe_remuneracao', 'Você recebeu de <b style="font-weight: 700;">{{COMPRADOR_NOME}} R$ {{VALOR}}</b>'),
	(2, 'SOBE COMISSÃO DE MERECIMENTO', 2, 'Olá <b style="color:#FFF;font-weight: 500;">{VENDEDOR_NOME}</b> o seu(sua) afiliado(a)  <b style="color:#FFF;font-weight: 500;">{COMPRADOR_NOME}</b> está participando de uma campanha, e por esse motivo, subiu uma comissão de vendas no valor de R$ {VALOR} para você!<br>Gostaria de retribuir? <a href="#" style="color: #FFF;">Clique aqui</a> e participe com o link dele(a) para que todos ganhem!', 'sobe_merecimento', 'MAIS UM {{NOME}} KKKK'),
	(3, 'CACHÊ DO TICKER', 3, 'Olá Ticker, você recebeu de {NOME} o valor de R${VALOR} referente ao seu evento.\n', 'sobe_cache_ticker', 'Olá Ticker, você recebeu de {{NOME}} o valor de R${{VALOR}} referente ao seu evento.\n'),
	(4, 'RECARGA EFETUADA COM SUCESSO', 4, 'Olá <b style="color:#FFF;font-weight: 500;">{NOME}</b>, você recarregou o valor de R$ {VALOR} com sucesso', 'ativa_fatura_recarga', 'Olá <b style="color:#FFF;font-weight: 500;">{{NOME}}</b>, você recarregou o valor de R$ {{VALOR}} com sucesso');
/*!40000 ALTER TABLE `NOTIFICACOES__TEMPLATES` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` bigint(25) DEFAULT NULL,
  `NOME` varchar(200) NOT NULL,
  `DESCRICAO` text NOT NULL,
  `OLD_VALOR` decimal(18,2) NOT NULL,
  `VALOR` decimal(18,2) NOT NULL,
  `STATUS` int(11) DEFAULT 1,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE_2` (`CODE`),
  KEY `REL_PROD_STATUS` (`STATUS`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO` DISABLE KEYS */;
INSERT INTO `PRODUTO` (`ID`, `CODE`, `NOME`, `DESCRICAO`, `OLD_VALOR`, `VALOR`, `STATUS`) VALUES
	(4, 99871033581895680, 'Produto 3', 'Minha descrição 2', 0.00, 50.00, 1),
	(5, 99871033581895681, 'Produto 3', 'Minha descrição 2', 0.00, 50.00, 1),
	(6, 99871033581895682, 'Produto 3', 'Minha descrição 2', 0.00, 50.00, 1);
/*!40000 ALTER TABLE `PRODUTO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__ADICIONAIS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADICIONAL` varchar(300) NOT NULL,
  `VALOR` decimal(18,2) NOT NULL,
  `EXCLUIDO` int(1) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__ADICIONAIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUTO__ADICIONAIS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__CARRINHO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIPO` int(11) DEFAULT 1,
  `UID_FRANQUIA` bigint(25) DEFAULT NULL,
  `UID_USER` bigint(25) DEFAULT NULL,
  `UID_PRODUTO` int(11) DEFAULT NULL,
  `ID_VARIACAO` int(11) DEFAULT NULL,
  `QTDD` int(11) NOT NULL,
  `VALOR` decimal(18,2) NOT NULL,
  `REGRA` int(11) NOT NULL,
  `ADICIONADO_EM` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `REL_PRODUTO__CARRINHO_TIPO` (`TIPO`),
  KEY `REL_PRODUTO__CARRINHO_USER` (`UID_USER`),
  CONSTRAINT `REL_PRODUTO__CARRINHO_TIPO` FOREIGN KEY (`TIPO`) REFERENCES `PRODUTO__TIPO` (`CODE`),
  CONSTRAINT `REL_PRODUTO__CARRINHO_USER` FOREIGN KEY (`UID_USER`) REFERENCES `USUARIOS` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__CARRINHO` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUTO__CARRINHO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__CARRINHO_ADICIONAIS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID_FRANQUIA` bigint(25) NOT NULL,
  `UID_USER` bigint(25) NOT NULL,
  `ID_ITEM_CARRINHO` int(11) NOT NULL,
  `ID_PRODUTO` int(11) NOT NULL,
  `ID_VARIACAO` int(11) NOT NULL,
  `ID_ADICIONAL` int(11) NOT NULL,
  `QTDD` int(11) NOT NULL,
  `VALOR` decimal(18,2) NOT NULL,
  `AVATAR` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__CARRINHO_ADICIONAIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUTO__CARRINHO_ADICIONAIS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__CATEGORIAS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID_FRANQUIA` bigint(25) NOT NULL,
  `UID_CATPAI` int(11) DEFAULT 0,
  `CATEGORIA` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__CATEGORIAS` DISABLE KEYS */;
INSERT INTO `PRODUTO__CATEGORIAS` (`ID`, `UID_FRANQUIA`, `UID_CATPAI`, `CATEGORIA`) VALUES
	(4, 0, 0, 'CATEGORIA 1'),
	(5, 0, 0, 'CATEGORIA 2'),
	(6, 0, 0, 'CATEGORIA 3');
/*!40000 ALTER TABLE `PRODUTO__CATEGORIAS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__IMAGENS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PROD` int(11) NOT NULL,
  `ID_VARIACAO` int(11) NOT NULL,
  `ID_ADICIONAL` int(11) NOT NULL,
  `PATH` varchar(500) NOT NULL,
  `HASH` varchar(40) NOT NULL,
  `FILE` varchar(400) NOT NULL,
  `ORIGINAL_NOME` varchar(500) NOT NULL,
  `SIZE` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__IMAGENS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUTO__IMAGENS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__LINK_ADICIONAIS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRODUTO` int(11) NOT NULL,
  `ID_ADICIONAL` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__LINK_ADICIONAIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUTO__LINK_ADICIONAIS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__LINK_CAT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID_FRANQUIA` bigint(11) NOT NULL,
  `UID_PROD` bigint(25) NOT NULL,
  `UID_CAT` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__LINK_CAT` DISABLE KEYS */;
INSERT INTO `PRODUTO__LINK_CAT` (`ID`, `UID_FRANQUIA`, `UID_PROD`, `UID_CAT`) VALUES
	(10, 0, 4, 4),
	(11, 0, 4, 5),
	(12, 0, 4, 3);
/*!40000 ALTER TABLE `PRODUTO__LINK_CAT` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__STATUS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) DEFAULT NULL,
  `STATUS` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__STATUS` DISABLE KEYS */;
INSERT INTO `PRODUTO__STATUS` (`ID`, `CODE`, `STATUS`) VALUES
	(1, 1, 'ATIVO'),
	(2, 2, 'INATIVO'),
	(3, 3, 'EXCLUIDO');
/*!40000 ALTER TABLE `PRODUTO__STATUS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__TIPO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NOT NULL,
  `TIPO` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__TIPO` DISABLE KEYS */;
INSERT INTO `PRODUTO__TIPO` (`ID`, `CODE`, `TIPO`) VALUES
	(1, 1, 'PRODUTO'),
	(2, 2, 'KIT'),
	(3, 3, 'PLANO'),
	(4, 4, 'FRANQUIA'),
	(6, 6, 'INVOICE PLANO'),
	(7, 7, 'INVOICE PRODUTO');
/*!40000 ALTER TABLE `PRODUTO__TIPO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `PRODUTO__VARIACOES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID_PRODUTO` int(11) NOT NULL,
  `COR` varchar(10) NOT NULL DEFAULT '#FFFFFF',
  `VARIACAO` varchar(250) NOT NULL,
  `DESCRICAO` text NOT NULL,
  `VALOR` decimal(18,2) NOT NULL,
  `STATUS` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `PRODUTO__VARIACOES` DISABLE KEYS */;
INSERT INTO `PRODUTO__VARIACOES` (`ID`, `UID_PRODUTO`, `COR`, `VARIACAO`, `DESCRICAO`, `VALOR`, `STATUS`) VALUES
	(10, 4, '#FFFFFF', 'Variação 7', 'Minha descrição 7', 10.00, 0),
	(11, 4, '#FFFFFF', 'Variação 8', 'Minha descrição 8', 20.00, 0),
	(12, 4, '#FFFFFF', 'Variação 9', 'Minha descrição 9', 30.00, 0);
/*!40000 ALTER TABLE `PRODUTO__VARIACOES` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `QUEMSOMOS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESSAO` varchar(255) NOT NULL,
  `TITULO` varchar(255) NOT NULL,
  `TEXTO` text NOT NULL,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `QUEMSOMOS` DISABLE KEYS */;
INSERT INTO `QUEMSOMOS` (`ID`, `SESSAO`, `TITULO`, `TEXTO`, `FW_LANG`) VALUES
	(1, 'SESSAO', 'QUEM SOMOS', 'SOMOS ASSIM MESMO', 'pt');
/*!40000 ALTER TABLE `QUEMSOMOS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `QUEMSOMOS__TRANSLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  `ID_FW_PAI` int(11) DEFAULT NULL,
  `SESSAO` varchar(255) NOT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  `TEXTO` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `QUEMSOMOS__TRANSLATE` DISABLE KEYS */;
INSERT INTO `QUEMSOMOS__TRANSLATE` (`ID`, `FW_LANG`, `ID_FW_PAI`, `SESSAO`, `TITULO`, `TEXTO`) VALUES
	(1, 'pt', 1, 'SESSAO', 'QUEM SOMOS', 'SOMOS ASSIM MESMO'),
	(2, 'en', 1, 'hahahaha', '111111', '11111111111'),
	(3, 'es', 1, 'teste es', 'dddddd', 'ddddddddddd'),
	(4, 'fr', 1, '', 'gggggggg', 'ffffffffff'),
	(5, 'ch', 1, '', '9999999999', '99999999999999');
/*!40000 ALTER TABLE `QUEMSOMOS__TRANSLATE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `SYSTEM__LGPD` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CONTEUDO` text NOT NULL,
  `ACTIVE` int(11) DEFAULT 1,
  `CREATED` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `SYSTEM__LGPD` DISABLE KEYS */;
INSERT INTO `SYSTEM__LGPD` (`ID`, `CONTEUDO`, `ACTIVE`, `CREATED`) VALUES
	(2, 'kkkkkkkk', 1, '2023-09-17 14:58:18'),
	(3, '<p class="ql-align-center"><strong style="background-color: rgb(230, 0, 0); color: rgb(255, 255, 0);">TERMO DE CONSENTIMENTO PARA TRATAMENTO DE DADOS PESSOAIS</strong></p><p><br></p><p class="ql-align-justify"><strong style="background-color: transparent; color: rgb(0, 0, 0);">NOME</strong><span style="background-color: transparent; color: rgb(0, 0, 0);">, (dados da empresa), representada pela sua sócia, NONONONONON, brasileira, casada, empresária, portadora da cédula de identidade RG nº. 00.000.000-0 SSP/SP, inscrita no CPF/MF nº 000.000.000-00, com endereço profissional a Rua da Cidade, 00-00 - Centro, CEP 00000-000, cidade de SUA CIDADE, estado de SEU ESTADO doravante denominado(a) </span><strong style="background-color: transparent; color: rgb(0, 0, 0);">CONTROLADORA</strong><span style="background-color: transparent; color: rgb(0, 0, 0);">.</span></p><p><br></p><p class="ql-align-justify"><strong style="background-color: transparent; color: rgb(0, 0, 0);">NOME</strong><span style="background-color: transparent; color: rgb(0, 0, 0);">, nacionalidade, estado civil, profissão, portadora da cédula de identidade RG nº., inscrito(a) CPF/MF nº (...), residente e domiciliado(a) (...). doravante denominado(a) </span><strong style="background-color: transparent; color: rgb(0, 0, 0);">TITULAR.</strong></p><p><br></p><p class="ql-align-justify"><em style="background-color: transparent; color: rgb(0, 0, 0);">Este termo de consentimento foi elaborado em conformidade com a lei geral de proteção de dados. Consoante ao artigo 5º inciso XII da Lei 13.709, este documento viabiliza a manifestação livre, informada e inequívoca, pela qual o titular/ responsável concorda com o tratamento de seus dados pessoais e os dados do menor sob os seus cuidados, para as finalidades a seguir determinadas</em><span style="background-color: transparent; color: rgb(0, 0, 0);">:</span></p><p class="ql-align-justify"><span style="background-color: transparent; color: rgb(0, 0, 0);">	</span></p><p><br></p><p class="ql-align-justify"><strong style="background-color: transparent; color: rgb(0, 0, 0);">PARÁGRAFO PRIMEIRO - DO CONSENTIMENTO</strong></p><p><br></p><p class="ql-align-justify">	<span style="background-color: transparent; color: rgb(0, 0, 0);">Ao assinar este termo o </span><strong style="background-color: transparent; color: rgb(0, 0, 0);">TITULAR </strong><span style="background-color: transparent; color: rgb(0, 0, 0);">concorda que a </span><strong style="background-color: transparent; color: rgb(0, 0, 0);">CONTROLADORA</strong><span style="background-color: transparent; color: rgb(0, 0, 0);">, proceda com o </span><strong style="background-color: transparent; color: rgb(0, 0, 0);">tratamento</strong><span style="background-color: transparent; color: rgb(0, 0, 0);"> de seus dados.</span></p><p><br></p><p class="ql-align-justify">	<span style="background-color: transparent; color: rgb(0, 0, 0);">Entende-se por tratamento de acordo com o artigo 5º inciso X, a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, distribuição, processamento, arquivamento, armazenamento, eliminação, avaliação ou controle da informação, modificação, comunicação, transferência, difusão ou extração.</span></p><p><br></p><p><br></p><p class="ql-align-justify"><strong style="background-color: transparent; color: rgb(0, 0, 0);">PARÁGRAFO SEGUNDO - DADOS PESSOAIS</strong></p><p><br></p><p class="ql-align-justify">	<span style="background-color: transparent; color: rgb(0, 0, 0);">Poderão ser tratados mediante anuência expressa do titular/ responsável os seguintes dados pessoais, pelo(a) controlador(a):</span></p><p><br></p><ul><li class="ql-align-justify"><strong style="background-color: transparent;">Nome, endereço, status civil, e-mail, telefone, histórico escolar, histórico médico (complementar com mais informações)</strong></li></ul><p><br></p><p><br></p><p class="ql-align-justify"><strong style="background-color: transparent; color: rgb(0, 0, 0);">PARÁGRAFO TERCEIRO - FINALIDADE DO TRATAMENTO</strong></p><p><br></p><p class="ql-align-justify">	<span style="background-color: transparent; color: rgb(0, 0, 0);">Em atendimento ao artigo 8º §4 este termo guarda finalidade determinada, sendo que os dados serão utilizados especificamente para fins de:</span></p><p><br></p><ul><li class="ql-align-justify"><span style="background-color: transparent;">Cadastro.</span></li><li class="ql-align-justify"><span style="background-color: transparent;">Diagnóstico técnico inicial em seu aspecto pedagógico, cognitivo, físico e social.</span></li><li class="ql-align-justify"><span style="background-color: transparent;">Elaboração a aplicação de testes de aptidão.&nbsp;</span></li><li class="ql-align-justify"><span style="background-color: transparent;">Elaboração de relatórios e pareceres informativos.&nbsp;&nbsp;</span></li><li class="ql-align-justify"><span style="background-color: transparent;">(Complementar com mais informações)</span></li></ul><p><br></p><p><br></p><p class="ql-align-justify"><strong style="background-color: transparent; color: rgb(0, 0, 0);">PARÁGRAFO QUARTO - SEGURANÇA DOS DADOS</strong></p><p><br></p><p class="ql-align-justify">	<span style="background-color: transparent; color: rgb(0, 0, 0);">A Controladora responsabiliza-se pela manutenção de medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.</span></p><p><br></p><p><br></p><p class="ql-align-justify"><span style="background-color: transparent; color: rgb(0, 0, 0);">Local, data.</span></p><p><br></p><p><br></p><p class="ql-align-justify"><span style="background-color: transparent; color: rgb(0, 0, 0);">_________________________________</span></p><p class="ql-align-justify"><strong style="background-color: transparent; color: rgb(0, 0, 0);">CONTROLADORA</strong></p><p><br></p><p><br></p><p><span style="background-color: transparent; color: rgb(0, 0, 0);">_________________________________</span></p><p><strong style="background-color: transparent; color: rgb(0, 0, 0);">TITULAR</strong></p>', 1, '2023-09-17 15:10:39'),
	(4, '<h2 class="ql-align-center"><strong>TERMO DE CONSENTIMENTO PARA TRATAMENTO DE DADOS PESSOAIS</strong></h2><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">NOME</strong><span style="color: rgb(0, 0, 0); background-color: transparent;">, (dados da empresa), representada pela sua sócia, _________________, brasileira, casada, empresária, portadora da cédula de identidade RG nº. 00.000.000-0 SSP/SP, inscrita no CPF/MF nº 000.000.000-00, com endereço profissional a Rua da Cidade, 00-00 - Centro, CEP 00000-000, cidade de SUA CIDADE, estado de SEU ESTADO doravante denominado(a) </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">CONTROLADORA</strong><span style="color: rgb(0, 0, 0); background-color: transparent;">.</span></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">NOME</strong><span style="color: rgb(0, 0, 0); background-color: transparent;">, nacionalidade, estado civil, profissão, portadora da cédula de identidade RG nº., inscrito(a) CPF/MF nº (...), residente e domiciliado(a) (...). doravante denominado(a) </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">TITULAR.</strong></p><p><br></p><p class="ql-align-justify"><em style="color: rgb(0, 0, 0); background-color: transparent;">Este termo de consentimento foi elaborado em conformidade com a lei geral de proteção de dados. Consoante ao artigo 5º inciso XII da Lei 13.709, este documento viabiliza a manifestação livre, informada e inequívoca, pela qual o titular/ responsável concorda com o tratamento de seus dados pessoais e os dados do menor sob os seus cuidados, para as finalidades a seguir determinadas</em><span style="color: rgb(0, 0, 0); background-color: transparent;">:</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">	</span></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">PARÁGRAFO PRIMEIRO - DO CONSENTIMENTO</strong></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Ao assinar este termo o </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">TITULAR </strong><span style="color: rgb(0, 0, 0); background-color: transparent;">concorda que a </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">CONTROLADORA</strong><span style="color: rgb(0, 0, 0); background-color: transparent;">, proceda com o </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">tratamento</strong><span style="color: rgb(0, 0, 0); background-color: transparent;"> de seus dados.</span></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Entende-se por tratamento de acordo com o artigo 5º inciso X, a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, distribuição, processamento, arquivamento, armazenamento, eliminação, avaliação ou controle da informação, modificação, comunicação, transferência, difusão ou extração.</span></p><p><br></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">PARÁGRAFO SEGUNDO - DADOS PESSOAIS</strong></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Poderão ser tratados mediante anuência expressa do titular/ responsável os seguintes dados pessoais, pelo(a) controlador(a):</span></p><p><br></p><ul><li class="ql-align-justify"><strong style="background-color: transparent;">Nome, endereço, status civil, e-mail, telefone, histórico escolar, histórico médico (complementar com mais informações)</strong></li></ul><p><br></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">PARÁGRAFO TERCEIRO - FINALIDADE DO TRATAMENTO</strong></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Em atendimento ao artigo 8º §4 este termo guarda finalidade determinada, sendo que os dados serão utilizados especificamente para fins de:</span></p><p><br></p><ul><li class="ql-align-justify"><span style="background-color: transparent;">Cadastro.</span></li><li class="ql-align-justify"><span style="background-color: transparent;">Diagnóstico técnico inicial em seu aspecto pedagógico, cognitivo, físico e social.</span></li><li class="ql-align-justify"><span style="background-color: transparent;">Elaboração a aplicação de testes de aptidão.&nbsp;</span></li><li class="ql-align-justify"><span style="background-color: transparent;">Elaboração de relatórios e pareceres informativos.&nbsp;&nbsp;</span></li><li class="ql-align-justify"><span style="background-color: transparent;">(Complementar com mais informações)</span></li></ul><p><br></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">PARÁGRAFO QUARTO - SEGURANÇA DOS DADOS</strong></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">A Controladora responsabiliza-se pela manutenção de medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.</span></p><p><br></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Local, data.</span></p><p><br></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">_________________________________</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">CONTROLADORA</strong></p><p><br></p><p><br></p><p><span style="color: rgb(0, 0, 0); background-color: transparent;">_________________________________</span></p><p><strong style="color: rgb(0, 0, 0); background-color: transparent;">TITULAR</strong></p>', 1, '2023-09-17 15:12:35'),
	(5, '<h2 class="ql-align-center"><strong>TERMO DE CONSENTIMENTO PARA TRATAMENTO DE DADOS PESSOAIS</strong></h2><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">NOME</strong><span style="color: rgb(0, 0, 0); background-color: transparent;">, (dados da empresa), representada pela sua sócia, _________________, brasileira, casada, empresária, portadora da cédula de identidade RG nº. 00.000.000-0 SSP/SP, inscrita no CPF/MF nº 000.000.000-00, com endereço profissional a Rua da Cidade, 00-00 - Centro, CEP 00000-000, cidade de SUA CIDADE, estado de SEU ESTADO doravante denominado(a) </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">CONTROLADORA</strong><span style="color: rgb(0, 0, 0); background-color: transparent;">.</span></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">NOME</strong><span style="color: rgb(0, 0, 0); background-color: transparent;">, nacionalidade, estado civil, profissão, portadora da cédula de identidade RG nº., inscrito(a) CPF/MF nº (...), residente e domiciliado(a) (...). doravante denominado(a) </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">TITULAR.</strong></p><p><br></p><p class="ql-align-justify"><em style="color: rgb(0, 0, 0); background-color: transparent;">Este termo de consentimento foi elaborado em conformidade com a lei geral de proteção de dados. Consoante ao artigo 5º inciso XII da Lei 13.709, este documento viabiliza a manifestação livre, informada e inequívoca, pela qual o titular/ responsável concorda com o tratamento de seus dados pessoais e os dados do menor sob os seus cuidados, para as finalidades a seguir determinadas</em><span style="color: rgb(0, 0, 0); background-color: transparent;">:</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">	</span></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">PARÁGRAFO PRIMEIRO - DO CONSENTIMENTO</strong></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Ao assinar este termo o </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">TITULAR </strong><span style="color: rgb(0, 0, 0); background-color: transparent;">concorda que a </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">CONTROLADORA</strong><span style="color: rgb(0, 0, 0); background-color: transparent;">, proceda com o </span><strong style="color: rgb(0, 0, 0); background-color: transparent;">tratamento</strong><span style="color: rgb(0, 0, 0); background-color: transparent;"> de seus dados.</span></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Entende-se por tratamento de acordo com o artigo 5º inciso X, a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, distribuição, processamento, arquivamento, armazenamento, eliminação, avaliação ou controle da informação, modificação, comunicação, transferência, difusão ou extração.</span></p><p><br></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">PARÁGRAFO SEGUNDO - DADOS PESSOAIS</strong></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Poderão ser tratados mediante anuência expressa do titular/ responsável os seguintes dados pessoais, pelo(a) controlador(a):</span></p><p><br></p><ul><li class="ql-align-justify"><strong style="background-color: transparent;">Nome, endereço, status civil, e-mail, telefone, histórico escolar, histórico médico (complementar com mais informações)</strong></li></ul><p><br></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">PARÁGRAFO TERCEIRO - FINALIDADE DO TRATAMENTO</strong></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Em atendimento ao artigo 8º §4 este termo guarda finalidade determinada, sendo que os dados serão utilizados especificamente para fins de:</span></p><p><br></p><ul><li class="ql-align-justify"><span style="background-color: transparent;">Cadastro.</span></li><li class="ql-align-justify"><span style="background-color: transparent;">Diagnóstico técnico inicial em seu aspecto pedagógico, cognitivo, físico e social.</span></li><li class="ql-align-justify"><span style="background-color: transparent;">Elaboração a aplicação de testes de aptidão.&nbsp;</span></li><li class="ql-align-justify"><span style="background-color: transparent;">Elaboração de relatórios e pareceres informativos.&nbsp;&nbsp;</span></li><li class="ql-align-justify"><span style="background-color: transparent;">(Complementar com mais informações)</span></li></ul><p><br></p><p><br></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">PARÁGRAFO QUARTO - SEGURANÇA DOS DADOS</strong></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">A Controladora responsabiliza-se pela manutenção de medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.</span></p><p><br></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">Local, data.</span></p><p><br></p><p><br></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0); background-color: transparent;">_________________________________</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0); background-color: transparent;">CONTROLADORA</strong></p><p><br></p><p><br></p><p><span style="color: rgb(0, 0, 0); background-color: transparent;">_________________________________</span></p><p><strong style="color: rgb(0, 0, 0); background-color: transparent;">TITULAR</strong></p>', 1, '2023-09-17 15:12:50');
/*!40000 ALTER TABLE `SYSTEM__LGPD` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `SYSTEM__LIMIT_ACCESS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ASSINATURA` varchar(100) NOT NULL,
  `DATA_HORA` timestamp NOT NULL DEFAULT current_timestamp(),
  `CONGELA_ATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `SYSTEM__LIMIT_ACCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEM__LIMIT_ACCESS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `SYSTEM__REGRAS_DE_TAXAS_E_BONUS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VIGENTE` tinyint(1) NOT NULL,
  `CRIADO_EM` timestamp NOT NULL DEFAULT current_timestamp(),
  `TICKS_CLUB` float NOT NULL,
  `MEMBROS` float NOT NULL,
  `PRODUTOR` float NOT NULL,
  `REDE` float NOT NULL,
  `VIP` float NOT NULL,
  `MERECIMENTO` float NOT NULL,
  `APOS_META` float NOT NULL,
  `ALCANCE` float NOT NULL,
  `ALCANCE_1` float NOT NULL,
  `ALCANCE_2` float NOT NULL,
  `ALCANCE_3` float NOT NULL,
  `1_NIVEL` float NOT NULL,
  `2_NIVEL` float NOT NULL,
  `3_NIVEL` float NOT NULL,
  `4_NIVEL` float NOT NULL,
  `5_NIVEL` float NOT NULL,
  `6_NIVEL` float NOT NULL,
  `7_NIVEL` float NOT NULL,
  `8_NIVEL` float NOT NULL,
  `TAXA_SAQUE` float NOT NULL,
  `TAXA_RECARGA` float NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  KEY `CRIADO_EM` (`CRIADO_EM`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `SYSTEM__REGRAS_DE_TAXAS_E_BONUS` DISABLE KEYS */;
INSERT INTO `SYSTEM__REGRAS_DE_TAXAS_E_BONUS` (`ID`, `VIGENTE`, `CRIADO_EM`, `TICKS_CLUB`, `MEMBROS`, `PRODUTOR`, `REDE`, `VIP`, `MERECIMENTO`, `APOS_META`, `ALCANCE`, `ALCANCE_1`, `ALCANCE_2`, `ALCANCE_3`, `1_NIVEL`, `2_NIVEL`, `3_NIVEL`, `4_NIVEL`, `5_NIVEL`, `6_NIVEL`, `7_NIVEL`, `8_NIVEL`, `TAXA_SAQUE`, `TAXA_RECARGA`) VALUES
	(1, 1, '2021-07-10 15:28:06', 36.35, 18.6, 45, 25, 2, 50, 5, 10, 50, 30, 20, 40, 30, 15, 5, 3, 3, 2, 2, 2, 1);
/*!40000 ALTER TABLE `SYSTEM__REGRAS_DE_TAXAS_E_BONUS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `SYSTEM__REGRAS_PCT_COMISSAO_REVENDA` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `NIVEL` int(11) NOT NULL,
  `PCT` int(11) NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `SYSTEM__REGRAS_PCT_COMISSAO_REVENDA` DISABLE KEYS */;
INSERT INTO `SYSTEM__REGRAS_PCT_COMISSAO_REVENDA` (`UID`, `NIVEL`, `PCT`) VALUES
	(1, 1, 40),
	(2, 2, 30),
	(3, 3, 15),
	(4, 4, 5),
	(5, 5, 3),
	(6, 6, 3),
	(7, 7, 2),
	(8, 8, 2);
/*!40000 ALTER TABLE `SYSTEM__REGRAS_PCT_COMISSAO_REVENDA` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `SYSTEM__TOKEN_ACCESS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HASH` varchar(280) DEFAULT NULL,
  `JSON` text DEFAULT NULL,
  `TIPO` int(11) NOT NULL,
  `CRIADO_EM` timestamp NOT NULL DEFAULT current_timestamp(),
  `EXPIRE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `HASH` (`HASH`),
  KEY `REL_TOKEN_ACCESS_TYPE` (`TIPO`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `SYSTEM__TOKEN_ACCESS` DISABLE KEYS */;
INSERT INTO `SYSTEM__TOKEN_ACCESS` (`ID`, `HASH`, `JSON`, `TIPO`, `CRIADO_EM`, `EXPIRE`) VALUES
	(258, 'f2b79a586f49ba147b99bbd86edfef2a', '[\n    {\n        "EMAIL": "israel@feats.com.br",\n        "DATAUSER": {\n            "ASSINATURA": "1f885f97-7421-43b2-851e-56ac8af07b2f",\n            "NAVEGADOR": {\n                "vendorSub": "",\n                "productSub": "20030107",\n                "vendor": "Google Inc.",\n                "maxTouchPoints": "0",\n                "userActivation": {\n                    "hasBeenActive": "true",\n                    "isActive": "true"\n                },\n                "doNotTrack": "1",\n                "plugins": {\n                    "0": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "1": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "Chrome PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "2": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "Chromium PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "3": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "Microsoft Edge PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "4": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "WebKit built-in PDF",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "length": "5"\n                },\n                "mimeTypes": {\n                    "0": {\n                        "type": "application/pdf",\n                        "suffixes": "pdf",\n                        "description": "Portable Document Format"\n                    },\n                    "1": {\n                        "type": "text/pdf",\n                        "suffixes": "pdf",\n                        "description": "Portable Document Format"\n                    },\n                    "length": "2"\n                },\n                "pdfViewerEnabled": "true",\n                "hardwareConcurrency": "8",\n                "cookieEnabled": "true",\n                "appCodeName": "Mozilla",\n                "appName": "Netscape",\n                "appVersion": "5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0",\n                "platform": "Win32",\n                "product": "Gecko",\n                "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0",\n                "language": "pt-BR",\n                "languages": [\n                    "pt-BR",\n                    "pt",\n                    "en",\n                    "en-GB",\n                    "en-US"\n                ],\n                "onLine": "true",\n                "webdriver": "false",\n                "virtualKeyboard": {\n                    "boundingRect": {\n                        "x": "0",\n                        "y": "0",\n                        "width": "0",\n                        "height": "0",\n                        "top": "0",\n                        "right": "0",\n                        "bottom": "0",\n                        "left": "0"\n                    },\n                    "overlaysContent": "false"\n                },\n                "deviceMemory": "8",\n                "gpu": {\n                    "wgslLanguageFeatures": {\n                        "size": "0"\n                    }\n                },\n                "mediaSession": {\n                    "playbackState": "none"\n                },\n                "windowControlsOverlay": {\n                    "visible": "false"\n                },\n                "userAgentData": {\n                    "brands": [\n                        {\n                            "brand": "Not_A Brand",\n                            "version": "8"\n                        },\n                        {\n                            "brand": "Chromium",\n                            "version": "120"\n                        },\n                        {\n                            "brand": "Microsoft Edge",\n                            "version": "120"\n                        }\n                    ],\n                    "mobile": "false",\n                    "platform": "Windows"\n                }\n            }\n        }\n    },\n    {\n        "UID": 45678707865467,\n        "TIPO_PROFILE": 1,\n        "LEVEL_PERMISSION": null,\n        "FIRSTACCESS": 1,\n        "UID_EMPRESA": null,\n        "STATUS": 1,\n        "BLACKLIST": 0,\n        "NOME": "Israel Nogueira",\n        "EMAIL": "israel@feats.com.br",\n        "LOGIN": "admin",\n        "SENHA": "b20bf2ccedc4d9af8e1259909e0b81245caa16fcd43399a09b670e191af8c145",\n        "SALT": "",\n        "NOVA_SENHA": null,\n        "TIPO_DOCUMENTO": 2,\n        "TIPO_PESSOA": 1,\n        "2FA": null,\n        "2FA_ACTIVE": 0,\n        "EMAIL_VALIDADO": 1,\n        "CRIADO_EM": "2023-05-28 01:58:37",\n        "EXCLUIDO": 0,\n        "CPF": null,\n        "RG": null,\n        "LISTA_UPLOAD": null,\n        "DESCRICAO": null,\n        "ATENDIDO_IMOBILIARIA": null,\n        "CORRETOR_NOME": null,\n        "INSTAGRAM": null,\n        "NACIONALIDADE": null,\n        "PERFIL_INVESTIDOR": null,\n        "PROFISSAO": null,\n        "REGIME_BENS": null,\n        "RENDA_ATE": null,\n        "RENDA_DE": null,\n        "TIPO_CONTA_TRADICIONAL": 0,\n        "TIPO_CONTA_DIGITAL": 0,\n        "TIPO_CONTA_EXCHANGE": 0,\n        "UNIDADE": null,\n        "VEICULO_REPASSE": null,\n        "TELEFONE": null,\n        "WHATSAPP": null,\n        "DATA_INSERT": "2023-10-30 16:16:38",\n        "OBS": null,\n        "LOGRADOURO": null,\n        "CIDADE": null,\n        "ESTADO": null,\n        "CEP": null,\n        "NUMERO": null,\n        "COMPLEMENTO": null\n    }\n]', 2, '2023-12-18 17:12:10', '2023-12-18 17:14:10'),
	(259, '4b6bb62db5ab56b24f2ab65029e8bea9', '[\n    {\n        "EMAIL": "israel@feats.com.br",\n        "DATAUSER": {\n            "ASSINATURA": "1f885f97-7421-43b2-851e-56ac8af07b2f",\n            "NAVEGADOR": {\n                "vendorSub": "",\n                "productSub": "20030107",\n                "vendor": "Google Inc.",\n                "maxTouchPoints": "0",\n                "userActivation": {\n                    "hasBeenActive": "true",\n                    "isActive": "true"\n                },\n                "doNotTrack": "1",\n                "plugins": {\n                    "0": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "1": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "Chrome PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "2": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "Chromium PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "3": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "Microsoft Edge PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "4": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "WebKit built-in PDF",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "length": "5"\n                },\n                "mimeTypes": {\n                    "0": {\n                        "type": "application/pdf",\n                        "suffixes": "pdf",\n                        "description": "Portable Document Format"\n                    },\n                    "1": {\n                        "type": "text/pdf",\n                        "suffixes": "pdf",\n                        "description": "Portable Document Format"\n                    },\n                    "length": "2"\n                },\n                "pdfViewerEnabled": "true",\n                "hardwareConcurrency": "8",\n                "cookieEnabled": "true",\n                "appCodeName": "Mozilla",\n                "appName": "Netscape",\n                "appVersion": "5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0",\n                "platform": "Win32",\n                "product": "Gecko",\n                "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0",\n                "language": "pt-BR",\n                "languages": [\n                    "pt-BR",\n                    "pt",\n                    "en",\n                    "en-GB",\n                    "en-US"\n                ],\n                "onLine": "true",\n                "webdriver": "false",\n                "virtualKeyboard": {\n                    "boundingRect": {\n                        "x": "0",\n                        "y": "0",\n                        "width": "0",\n                        "height": "0",\n                        "top": "0",\n                        "right": "0",\n                        "bottom": "0",\n                        "left": "0"\n                    },\n                    "overlaysContent": "false"\n                },\n                "deviceMemory": "8",\n                "gpu": {\n                    "wgslLanguageFeatures": {\n                        "size": "0"\n                    }\n                },\n                "mediaSession": {\n                    "playbackState": "none"\n                },\n                "windowControlsOverlay": {\n                    "visible": "false"\n                },\n                "userAgentData": {\n                    "brands": [\n                        {\n                            "brand": "Not_A Brand",\n                            "version": "8"\n                        },\n                        {\n                            "brand": "Chromium",\n                            "version": "120"\n                        },\n                        {\n                            "brand": "Microsoft Edge",\n                            "version": "120"\n                        }\n                    ],\n                    "mobile": "false",\n                    "platform": "Windows"\n                }\n            }\n        }\n    },\n    {\n        "UID": 45678707865467,\n        "TIPO_PROFILE": 1,\n        "LEVEL_PERMISSION": null,\n        "FIRSTACCESS": 1,\n        "UID_EMPRESA": null,\n        "STATUS": 1,\n        "BLACKLIST": 0,\n        "NOME": "Israel Nogueira",\n        "EMAIL": "israel@feats.com.br",\n        "LOGIN": "admin",\n        "SENHA": "b20bf2ccedc4d9af8e1259909e0b81245caa16fcd43399a09b670e191af8c145",\n        "SALT": "",\n        "NOVA_SENHA": null,\n        "TIPO_DOCUMENTO": 2,\n        "TIPO_PESSOA": 1,\n        "2FA": null,\n        "2FA_ACTIVE": 0,\n        "EMAIL_VALIDADO": 1,\n        "CRIADO_EM": "2023-05-28 01:58:37",\n        "EXCLUIDO": 0,\n        "CPF": null,\n        "RG": null,\n        "LISTA_UPLOAD": null,\n        "DESCRICAO": null,\n        "ATENDIDO_IMOBILIARIA": null,\n        "CORRETOR_NOME": null,\n        "INSTAGRAM": null,\n        "NACIONALIDADE": null,\n        "PERFIL_INVESTIDOR": null,\n        "PROFISSAO": null,\n        "REGIME_BENS": null,\n        "RENDA_ATE": null,\n        "RENDA_DE": null,\n        "TIPO_CONTA_TRADICIONAL": 0,\n        "TIPO_CONTA_DIGITAL": 0,\n        "TIPO_CONTA_EXCHANGE": 0,\n        "UNIDADE": null,\n        "VEICULO_REPASSE": null,\n        "TELEFONE": null,\n        "WHATSAPP": null,\n        "DATA_INSERT": "2023-10-30 16:16:38",\n        "OBS": null,\n        "LOGRADOURO": null,\n        "CIDADE": null,\n        "ESTADO": null,\n        "CEP": null,\n        "NUMERO": null,\n        "COMPLEMENTO": null\n    }\n]', 2, '2023-12-18 17:13:39', '2023-12-18 17:15:39'),
	(260, '3b4296c76357703eeb28b4bbeb488f1f', '[\n    {\n        "EMAIL": "israel@feats.com.br",\n        "DATAUSER": {\n            "ASSINATURA": "1f885f97-7421-43b2-851e-56ac8af07b2f",\n            "NAVEGADOR": {\n                "vendorSub": "",\n                "productSub": "20030107",\n                "vendor": "Google Inc.",\n                "maxTouchPoints": "0",\n                "userActivation": {\n                    "hasBeenActive": "true",\n                    "isActive": "true"\n                },\n                "doNotTrack": "1",\n                "plugins": {\n                    "0": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "1": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "Chrome PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "2": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "Chromium PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "3": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "Microsoft Edge PDF Viewer",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "4": {\n                        "0": {\n                            "type": "application/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "1": {\n                            "type": "text/pdf",\n                            "suffixes": "pdf",\n                            "description": "Portable Document Format"\n                        },\n                        "name": "WebKit built-in PDF",\n                        "filename": "internal-pdf-viewer",\n                        "description": "Portable Document Format",\n                        "length": "2"\n                    },\n                    "length": "5"\n                },\n                "mimeTypes": {\n                    "0": {\n                        "type": "application/pdf",\n                        "suffixes": "pdf",\n                        "description": "Portable Document Format"\n                    },\n                    "1": {\n                        "type": "text/pdf",\n                        "suffixes": "pdf",\n                        "description": "Portable Document Format"\n                    },\n                    "length": "2"\n                },\n                "pdfViewerEnabled": "true",\n                "hardwareConcurrency": "8",\n                "cookieEnabled": "true",\n                "appCodeName": "Mozilla",\n                "appName": "Netscape",\n                "appVersion": "5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0",\n                "platform": "Win32",\n                "product": "Gecko",\n                "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0",\n                "language": "pt-BR",\n                "languages": [\n                    "pt-BR",\n                    "pt",\n                    "en",\n                    "en-GB",\n                    "en-US"\n                ],\n                "onLine": "true",\n                "webdriver": "false",\n                "virtualKeyboard": {\n                    "boundingRect": {\n                        "x": "0",\n                        "y": "0",\n                        "width": "0",\n                        "height": "0",\n                        "top": "0",\n                        "right": "0",\n                        "bottom": "0",\n                        "left": "0"\n                    },\n                    "overlaysContent": "false"\n                },\n                "deviceMemory": "8",\n                "gpu": {\n                    "wgslLanguageFeatures": {\n                        "size": "0"\n                    }\n                },\n                "mediaSession": {\n                    "playbackState": "none"\n                },\n                "windowControlsOverlay": {\n                    "visible": "false"\n                },\n                "userAgentData": {\n                    "brands": [\n                        {\n                            "brand": "Not_A Brand",\n                            "version": "8"\n                        },\n                        {\n                            "brand": "Chromium",\n                            "version": "120"\n                        },\n                        {\n                            "brand": "Microsoft Edge",\n                            "version": "120"\n                        }\n                    ],\n                    "mobile": "false",\n                    "platform": "Windows"\n                }\n            }\n        }\n    },\n    {\n        "UID": 45678707865467,\n        "TIPO_PROFILE": 1,\n        "LEVEL_PERMISSION": null,\n        "FIRSTACCESS": 1,\n        "UID_EMPRESA": null,\n        "STATUS": 1,\n        "BLACKLIST": 0,\n        "NOME": "Israel Nogueira",\n        "EMAIL": "israel@feats.com.br",\n        "LOGIN": "admin",\n        "SENHA": "b20bf2ccedc4d9af8e1259909e0b81245caa16fcd43399a09b670e191af8c145",\n        "SALT": "",\n        "NOVA_SENHA": null,\n        "TIPO_DOCUMENTO": 2,\n        "TIPO_PESSOA": 1,\n        "2FA": null,\n        "2FA_ACTIVE": 0,\n        "EMAIL_VALIDADO": 1,\n        "CRIADO_EM": "2023-05-28 01:58:37",\n        "EXCLUIDO": 0,\n        "CPF": null,\n        "RG": null,\n        "LISTA_UPLOAD": null,\n        "DESCRICAO": null,\n        "ATENDIDO_IMOBILIARIA": null,\n        "CORRETOR_NOME": null,\n        "INSTAGRAM": null,\n        "NACIONALIDADE": null,\n        "PERFIL_INVESTIDOR": null,\n        "PROFISSAO": null,\n        "REGIME_BENS": null,\n        "RENDA_ATE": null,\n        "RENDA_DE": null,\n        "TIPO_CONTA_TRADICIONAL": 0,\n        "TIPO_CONTA_DIGITAL": 0,\n        "TIPO_CONTA_EXCHANGE": 0,\n        "UNIDADE": null,\n        "VEICULO_REPASSE": null,\n        "TELEFONE": null,\n        "WHATSAPP": null,\n        "DATA_INSERT": "2023-10-30 16:16:38",\n        "OBS": null,\n        "LOGRADOURO": null,\n        "CIDADE": null,\n        "ESTADO": null,\n        "CEP": null,\n        "NUMERO": null,\n        "COMPLEMENTO": null\n    }\n]', 2, '2023-12-18 17:15:02', '2023-12-18 17:17:02');
/*!40000 ALTER TABLE `SYSTEM__TOKEN_ACCESS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `SYSTEM__TYPE_TOKEN_ACCESS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) DEFAULT NULL,
  `TIPO` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `SYSTEM__TYPE_TOKEN_ACCESS` DISABLE KEYS */;
INSERT INTO `SYSTEM__TYPE_TOKEN_ACCESS` (`ID`, `CODE`, `TIPO`) VALUES
	(1, 1, 'DISPOSITIVO DESCONHECIDO'),
	(3, 2, 'ALTERAÇÃO DE SENHA'),
	(4, 3, 'EMAIL NÃO CONFIRMADO');
/*!40000 ALTER TABLE `SYSTEM__TYPE_TOKEN_ACCESS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `SYSTEM__VERSION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` float NOT NULL,
  `LABEL` varchar(500) NOT NULL,
  `RESET` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `SYSTEM__VERSION` DISABLE KEYS */;
INSERT INTO `SYSTEM__VERSION` (`ID`, `VERSION`, `LABEL`, `RESET`) VALUES
	(69, 4567, 'thrthetrh', 1),
	(70, 4567, 'thrthetrh', 1),
	(71, 4567, 'thrthetrh', 1),
	(72, 4356, 'thrthetrh', 1),
	(73, 3456, 'kkkkkk', 1);
/*!40000 ALTER TABLE `SYSTEM__VERSION` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDIOMA` enum('pt','en','es') DEFAULT 'pt',
  `FOOTER` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `HEADER` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE` DISABLE KEYS */;
INSERT INTO `TEMPLATE` (`ID`, `IDIOMA`, `FOOTER`, `HEADER`) VALUES
	(1, 'pt', '', ''),
	(2, 'en', '{\n    "NEWSLETTER_TITULO": "aaaaa",\n    "NEWSLETTER_DESC": "bbbb",\n    "PLACEHOLDER": "cccc",\n    "ABOUT_TITULO": "ffff",\n    "ABOUT_DESC": "gggg",\n    "TELEFONE": "hhhhhhhh",\n    "ENDERECO": "IIIIIII",\n    "NEWSLETTER_BUTTON": "jjjjj",\n    "COPYRIGHT": null,\n    "LINKS": [\n        {\n            "LABEL": "dddddddddd",\n            "LINK": "dddd"\n        },\n        {\n            "LABEL": "dfffffffff",\n            "LINK": "ffffffffffff"\n        },\n        {\n            "LABEL": "ggggggg",\n            "LINK": "ggggggggggggggg"\n        },\n        {\n            "LABEL": "hhhhhhh",\n            "LINK": "hhhhhhhhh"\n        },\n        {\n            "LABEL": "eeeee",\n            "LINK": "eeeeeeeee"\n        },\n        {\n            "LABEL": "rrrrrrr",\n            "LINK": "rrrrrrrrrr"\n        },\n        {\n            "LABEL": "ttttttt",\n            "LINK": "ttttttttttt"\n        }\n    ]\n}', '{\n    "NEWSLETTER_TITULO": "aaaaa",\n    "NEWSLETTER_DESC": "bbbb",\n    "PLACEHOLDER": "cccc",\n    "ABOUT_TITULO": "ffff",\n    "ABOUT_DESC": "gggg",\n    "TELEFONE": "hhhhhhhh",\n    "ENDERECO": "IIIIIII",\n    "NEWSLETTER_BUTTON": "jjjjj",\n    "COPYRIGHT": null,\n    "LINKS": [\n        {\n            "LABEL": "dddddddddd",\n            "LINK": "dddd"\n        },\n        {\n            "LABEL": "dfffffffff",\n            "LINK": "ffffffffffff"\n        },\n        {\n            "LABEL": "ggggggg",\n            "LINK": "ggggggggggggggg"\n        },\n        {\n            "LABEL": "hhhhhhh",\n            "LINK": "hhhhhhhhh"\n        },\n        {\n            "LABEL": "eeeee",\n            "LINK": "eeeeeeeee"\n        },\n        {\n            "LABEL": "rrrrrrr",\n            "LINK": "rrrrrrrrrr"\n        },\n        {\n            "LABEL": "ttttttt",\n            "LINK": "ttttttttttt"\n        }\n    ]\n}'),
	(3, 'es', '{\r\n    "NEWSLETTER_TITULO": "aaaaa",\r\n    "NEWSLETTER_DESC": "bbbb",\r\n    "PLACEHOLDER": "cccc",\r\n    "ABOUT_TITULO": "ffff",\r\n    "ABOUT_DESC": "gggg",\r\n    "TELEFONE": "hhhhhhhh",\r\n    "ENDERECO": "IIIIIII",\r\n    "NEWSLETTER_BUTTON": "jjjjj",\r\n    "COPYRIGHT": null,\r\n    "LINKS": [\r\n        {\r\n            "LABEL": "dddddddddd",\r\n            "LINK": "dddd"\r\n        },\r\n        {\r\n            "LABEL": "dfffffffff",\r\n            "LINK": "ffffffffffff"\r\n        },\r\n        {\r\n            "LABEL": "ggggggg",\r\n            "LINK": "ggggggggggggggg"\r\n        },\r\n        {\r\n            "LABEL": "hhhhhhh",\r\n            "LINK": "hhhhhhhhh"\r\n        },\r\n        {\r\n            "LABEL": "eeeee",\r\n            "LINK": "eeeeeeeee"\r\n        },\r\n        {\r\n            "LABEL": "rrrrrrr",\r\n            "LINK": "rrrrrrrrrr"\r\n        },\r\n        {\r\n            "LABEL": "ttttttt",\r\n            "LINK": "ttttttttttt"\r\n        }\r\n    ]\r\n}', '{\r\n    "NEWSLETTER_TITULO": "aaaaa",\r\n    "NEWSLETTER_DESC": "bbbb",\r\n    "PLACEHOLDER": "cccc",\r\n    "ABOUT_TITULO": "ffff",\r\n    "ABOUT_DESC": "gggg",\r\n    "TELEFONE": "hhhhhhhh",\r\n    "ENDERECO": "IIIIIII",\r\n    "NEWSLETTER_BUTTON": "jjjjj",\r\n    "COPYRIGHT": null,\r\n    "LINKS": [\r\n        {\r\n            "LABEL": "dddddddddd",\r\n            "LINK": "dddd"\r\n        },\r\n        {\r\n            "LABEL": "dfffffffff",\r\n            "LINK": "ffffffffffff"\r\n        },\r\n        {\r\n            "LABEL": "ggggggg",\r\n            "LINK": "ggggggggggggggg"\r\n        },\r\n        {\r\n            "LABEL": "hhhhhhh",\r\n            "LINK": "hhhhhhhhh"\r\n        },\r\n        {\r\n            "LABEL": "eeeee",\r\n            "LINK": "eeeeeeeee"\r\n        },\r\n        {\r\n            "LABEL": "rrrrrrr",\r\n            "LINK": "rrrrrrrrrr"\r\n        },\r\n        {\r\n            "LABEL": "ttttttt",\r\n            "LINK": "ttttttttttt"\r\n        }\r\n    ]\r\n}');
/*!40000 ALTER TABLE `TEMPLATE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__AREAS_ATUACAO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(255) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `TIPO_ATUACAO` int(1) DEFAULT NULL COMMENT '1 = SERVIÇO\r\n2 = DOCUMENTAÇÃO',
  `FW_LANG` varchar(5) DEFAULT 'pt',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO` DISABLE KEYS */;
INSERT INTO `TEMPLATE__AREAS_ATUACAO` (`ID`, `TITULO`, `DESCRICAO`, `TIPO_ATUACAO`, `FW_LANG`) VALUES
	(1, 'GGGGGG', 'DDDDDD', NULL, 'pt');
/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__AREAS_ATUACAO_CONSULTORIA` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(255) DEFAULT '',
  `DESCRICAO` varchar(255) DEFAULT '',
  `FW_LANG` varchar(5) DEFAULT 'pt',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO_CONSULTORIA` DISABLE KEYS */;
INSERT INTO `TEMPLATE__AREAS_ATUACAO_CONSULTORIA` (`ID`, `TITULO`, `DESCRICAO`, `FW_LANG`) VALUES
	(1, 'aaaaaa', 'bbbbbbbbb', 'pt');
/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO_CONSULTORIA` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  `ID_FW_PAI` int(11) DEFAULT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE` DISABLE KEYS */;
INSERT INTO `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE` (`ID`, `FW_LANG`, `ID_FW_PAI`, `TITULO`, `DESCRICAO`) VALUES
	(1, 'pt', 1, 'aaaaaa', 'bbbbbbbbb'),
	(2, 'en', 1, NULL, NULL),
	(3, 'es', 1, NULL, NULL);
/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__AREAS_ATUACAO_PRODUTOS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(255) DEFAULT '',
  `DESCRICAO` varchar(255) DEFAULT '',
  `FW_LANG` varchar(5) DEFAULT 'pt',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO_PRODUTOS` DISABLE KEYS */;
INSERT INTO `TEMPLATE__AREAS_ATUACAO_PRODUTOS` (`ID`, `TITULO`, `DESCRICAO`, `FW_LANG`) VALUES
	(1, 'AAAAAA', 'BBBBBB', 'pt');
/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO_PRODUTOS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  `ID_FW_PAI` int(11) DEFAULT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE` DISABLE KEYS */;
INSERT INTO `TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE` (`ID`, `FW_LANG`, `ID_FW_PAI`, `TITULO`, `DESCRICAO`) VALUES
	(1, 'pt', 1, 'AAAAAA', 'BBBBBB'),
	(2, 'en', 1, NULL, NULL),
	(3, 'es', 1, NULL, NULL);
/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__AREAS_ATUACAO__TRANSLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  `ID_FW_PAI` int(11) DEFAULT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `TIPO_ATUACAO` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO__TRANSLATE` DISABLE KEYS */;
INSERT INTO `TEMPLATE__AREAS_ATUACAO__TRANSLATE` (`ID`, `FW_LANG`, `ID_FW_PAI`, `TITULO`, `DESCRICAO`, `TIPO_ATUACAO`) VALUES
	(1, 'pt', 1, 'GGGGGG', 'DDDDDD', NULL),
	(2, 'en', 1, NULL, NULL, NULL),
	(3, 'es', 1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `TEMPLATE__AREAS_ATUACAO__TRANSLATE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__CONTATO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TOP_TITLE` varchar(244) NOT NULL,
  `TITULO_FORM` varchar(255) DEFAULT NULL,
  `ADRESS_TITLE` varchar(255) DEFAULT NULL,
  `ADRESS_TEXT` varchar(255) DEFAULT NULL,
  `HORARIOS_TITLE` varchar(255) DEFAULT NULL,
  `HORARIOS_TEXT` varchar(255) DEFAULT NULL,
  `EMAILS_TITLE` varchar(255) DEFAULT NULL,
  `EMAILS_TEXT` varchar(255) DEFAULT NULL,
  `TEXTO_BOTAO` varchar(244) DEFAULT NULL,
  `PLACEHOLDER_NOME` varchar(255) DEFAULT NULL,
  `PLACEHOLDER_EMAIL` varchar(255) DEFAULT NULL,
  `PLACEHOLDER_TELEFONE` varchar(255) DEFAULT NULL,
  `PLACEHOLDER_ASSUNTO` varchar(255) DEFAULT NULL,
  `PLACEHOLDER_TEXTO` varchar(255) DEFAULT NULL,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__CONTATO` DISABLE KEYS */;
INSERT INTO `TEMPLATE__CONTATO` (`ID`, `TOP_TITLE`, `TITULO_FORM`, `ADRESS_TITLE`, `ADRESS_TEXT`, `HORARIOS_TITLE`, `HORARIOS_TEXT`, `EMAILS_TITLE`, `EMAILS_TEXT`, `TEXTO_BOTAO`, `PLACEHOLDER_NOME`, `PLACEHOLDER_EMAIL`, `PLACEHOLDER_TELEFONE`, `PLACEHOLDER_ASSUNTO`, `PLACEHOLDER_TEXTO`, `FW_LANG`) VALUES
	(1, 'fffffff', 'getrert', 'sssssss', 'aaaaaaaaa', 'rrrrrrrrrr', 'rrrrrrrr', 'rrrrrrrrrr', 'reqawer', 'fsdf', 'fdgfds', 'vzxcv', 'qweqwe', 'mvbvmnb', 'fghjghj', 'pt');
/*!40000 ALTER TABLE `TEMPLATE__CONTATO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__CONTATO__TRANSLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  `ID_FW_PAI` int(11) DEFAULT NULL,
  `TOP_TITLE` varchar(244) DEFAULT NULL,
  `TITULO_FORM` varchar(255) DEFAULT NULL,
  `ADRESS_TITLE` varchar(255) DEFAULT NULL,
  `ADRESS_TEXT` varchar(255) DEFAULT NULL,
  `HORARIOS_TITLE` varchar(255) DEFAULT NULL,
  `HORARIOS_TEXT` varchar(255) DEFAULT NULL,
  `EMAILS_TITLE` varchar(255) DEFAULT NULL,
  `EMAILS_TEXT` varchar(255) DEFAULT NULL,
  `TEXTO_BOTAO` varchar(244) DEFAULT NULL,
  `PLACEHOLDER_NOME` varchar(255) DEFAULT NULL,
  `PLACEHOLDER_EMAIL` varchar(255) DEFAULT NULL,
  `PLACEHOLDER_TELEFONE` varchar(255) DEFAULT NULL,
  `PLACEHOLDER_ASSUNTO` varchar(255) DEFAULT NULL,
  `PLACEHOLDER_TEXTO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__CONTATO__TRANSLATE` DISABLE KEYS */;
INSERT INTO `TEMPLATE__CONTATO__TRANSLATE` (`ID`, `FW_LANG`, `ID_FW_PAI`, `TOP_TITLE`, `TITULO_FORM`, `ADRESS_TITLE`, `ADRESS_TEXT`, `HORARIOS_TITLE`, `HORARIOS_TEXT`, `EMAILS_TITLE`, `EMAILS_TEXT`, `TEXTO_BOTAO`, `PLACEHOLDER_NOME`, `PLACEHOLDER_EMAIL`, `PLACEHOLDER_TELEFONE`, `PLACEHOLDER_ASSUNTO`, `PLACEHOLDER_TEXTO`) VALUES
	(1, 'pt', 1, 'fffffff', 'getrert', 'sssssss', 'aaaaaaaaa', 'rrrrrrrrrr', 'rrrrrrrr', 'rrrrrrrrrr', 'reqawer', 'fsdf', 'fdgfds', 'vzxcv', 'qweqwe', 'mvbvmnb', 'fghjghj'),
	(2, 'en', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'es', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `TEMPLATE__CONTATO__TRANSLATE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__HOME` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OUTRAS_SOLUCOES` varchar(256) DEFAULT NULL,
  `OUTRAS_SOLUCOES_TXT` text DEFAULT NULL,
  `ANOS_EXP_NUM` int(11) NOT NULL DEFAULT 0,
  `ANOS_EXP_TXT` varchar(256) DEFAULT NULL,
  `ANOS_EXP_DESC` text DEFAULT NULL,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__HOME` DISABLE KEYS */;
INSERT INTO `TEMPLATE__HOME` (`ID`, `OUTRAS_SOLUCOES`, `OUTRAS_SOLUCOES_TXT`, `ANOS_EXP_NUM`, `ANOS_EXP_TXT`, `ANOS_EXP_DESC`, `FW_LANG`) VALUES
	(1, 'Soluções industriais', 'Vivamus sit amet dui nisi. Cras in quam accumsan, aliquet ex at, pellentesque nunc. Aliquam cursus enim nec augue porta porta. Quisque enim tellus, condimentum', 33, 'experiência', 'Vivamus sit amet dui nisi. Cras in quam accumsan, aliquet ex at, pellentesque nunc. Aliquam cursus enim nec augue porta porta. Quisque enim tellus, condimentum', 'pt');
/*!40000 ALTER TABLE `TEMPLATE__HOME` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__HOME__TRANSLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  `ID_FW_PAI` int(11) DEFAULT NULL,
  `OUTRAS_SOLUCOES` varchar(256) DEFAULT NULL,
  `OUTRAS_SOLUCOES_TXT` text DEFAULT NULL,
  `ANOS_EXP_NUM` int(11) DEFAULT NULL,
  `ANOS_EXP_TXT` varchar(256) DEFAULT NULL,
  `ANOS_EXP_DESC` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__HOME__TRANSLATE` DISABLE KEYS */;
INSERT INTO `TEMPLATE__HOME__TRANSLATE` (`ID`, `FW_LANG`, `ID_FW_PAI`, `OUTRAS_SOLUCOES`, `OUTRAS_SOLUCOES_TXT`, `ANOS_EXP_NUM`, `ANOS_EXP_TXT`, `ANOS_EXP_DESC`) VALUES
	(1, 'pt', 1, 'Soluções industriais', 'Vivamus sit amet dui nisi. Cras in quam accumsan, aliquet ex at, pellentesque nunc. Aliquam cursus enim nec augue porta porta. Quisque enim tellus, condimentum', 33, 'experiência', 'Vivamus sit amet dui nisi. Cras in quam accumsan, aliquet ex at, pellentesque nunc. Aliquam cursus enim nec augue porta porta. Quisque enim tellus, condimentum'),
	(2, 'en', 1, NULL, NULL, NULL, NULL, NULL),
	(3, 'es', 1, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `TEMPLATE__HOME__TRANSLATE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__SOBRE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESSAO` varchar(255) DEFAULT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  `CONTEUDO` text DEFAULT NULL,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__SOBRE` DISABLE KEYS */;
INSERT INTO `TEMPLATE__SOBRE` (`ID`, `SESSAO`, `TITULO`, `CONTEUDO`, `FW_LANG`) VALUES
	(1, 'SOBRE NÓS', 'SOBRE NÓS', 'Proin blandit, odio non mattis dignissim, tellus est tempus augue, et rutrum est tortor ac urna. Duis vitae tellus enim. Sed pellentesque sapien vel purus pulvinar, eget consectetur eros tempus. Cras id justo vulputate, euismod lectus nec, viverra ante. Mauris molestie fermentum arcu. Curabitur tempor consequat leo in fringilla. Duis id porttitor erat, quis pellentesque sapien. Aenean viverra tristique nisi eu pretium.\n\nMorbi vestibulum est nec felis aliquam imperdiet. Aliquam ac mi viverra purus facilisis rutrum. Phasellus hendrerit nulla lorem, in sollicitudin lorem mattis a. Suspendisse egestas aliquet suscipit. Nullam congue consequat ligula, at iaculis nisi euismod eget. Nullam auctor sapien quis finibus porta. Nunc dapibus erat diam, ac cursus lectus pharetra in. Sed vestibulum nibh arcu, eu sollicitudin purus vehicula ac. Nulla euismod efficitur lorem id ornare. Sed eget lectus sed turpis aliquet imperdiet a quis sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque ultricies, est a maximus fermentum, velit turpis interdum metus, in faucibus libero sem eget lectus. Nunc in risus eu quam ornare luctus. Duis at risus in odio imperdiet ornare dictum vel nisl. Curabitur vel sapien tincidunt, iaculis leo id, volutpat lacus. Nunc nec tincidunt sem, laoreet fringilla sapien', 'pt');
/*!40000 ALTER TABLE `TEMPLATE__SOBRE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__SOBRE__TRANSLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  `ID_FW_PAI` int(11) DEFAULT NULL,
  `SESSAO` varchar(255) DEFAULT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  `CONTEUDO` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__SOBRE__TRANSLATE` DISABLE KEYS */;
INSERT INTO `TEMPLATE__SOBRE__TRANSLATE` (`ID`, `FW_LANG`, `ID_FW_PAI`, `SESSAO`, `TITULO`, `CONTEUDO`) VALUES
	(1, 'pt', 1, 'SOBRE NÓS', 'SOBRE NÓS', 'Proin blandit, odio non mattis dignissim, tellus est tempus augue, et rutrum est tortor ac urna. Duis vitae tellus enim. Sed pellentesque sapien vel purus pulvinar, eget consectetur eros tempus. Cras id justo vulputate, euismod lectus nec, viverra ante. Mauris molestie fermentum arcu. Curabitur tempor consequat leo in fringilla. Duis id porttitor erat, quis pellentesque sapien. Aenean viverra tristique nisi eu pretium.\n\nMorbi vestibulum est nec felis aliquam imperdiet. Aliquam ac mi viverra purus facilisis rutrum. Phasellus hendrerit nulla lorem, in sollicitudin lorem mattis a. Suspendisse egestas aliquet suscipit. Nullam congue consequat ligula, at iaculis nisi euismod eget. Nullam auctor sapien quis finibus porta. Nunc dapibus erat diam, ac cursus lectus pharetra in. Sed vestibulum nibh arcu, eu sollicitudin purus vehicula ac. Nulla euismod efficitur lorem id ornare. Sed eget lectus sed turpis aliquet imperdiet a quis sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque ultricies, est a maximus fermentum, velit turpis interdum metus, in faucibus libero sem eget lectus. Nunc in risus eu quam ornare luctus. Duis at risus in odio imperdiet ornare dictum vel nisl. Curabitur vel sapien tincidunt, iaculis leo id, volutpat lacus. Nunc nec tincidunt sem, laoreet fringilla sapien'),
	(2, 'en', 1, 'AAAAAA', 'SSSSSSSS', 'consectetur adipiscing elit. Nullam efficitur tempor leo, nec egestas felis rhoncus non. Curabitur ornare scelerisque enim vel'),
	(3, 'es', 1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `TEMPLATE__SOBRE__TRANSLATE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__STATIC` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MENU_LABEL_HOME` varchar(100) DEFAULT NULL,
  `MENU_LABEL_EMPRESA` varchar(100) DEFAULT NULL,
  `MENU_LABEL_ATUACAO` varchar(100) DEFAULT NULL,
  `MENU_LABEL_DOC` varchar(100) DEFAULT NULL,
  `MENU_LABEL_CLIENTES` varchar(100) DEFAULT NULL,
  `MENU_LABEL_CASES` varchar(100) DEFAULT NULL,
  `MENU_LABEL_CONTATO` varchar(100) DEFAULT NULL,
  `MENU_LINK_HOME` varchar(250) DEFAULT NULL,
  `MENU_LINK_EMPRESA` varchar(250) DEFAULT NULL,
  `MENU_LINK_ATUACAO` varchar(250) DEFAULT NULL,
  `MENU_LINK_DOC` varchar(250) DEFAULT NULL,
  `MENU_LINK_CLIENTES` varchar(250) DEFAULT NULL,
  `MENU_LINK_CASES` varchar(250) DEFAULT NULL,
  `MENU_LINK_CONTATO` varchar(250) DEFAULT NULL,
  `MENU_LABEL_ATUACAO_DOC` varchar(255) DEFAULT '',
  `MENU_LINK_ATUACAO_DOC` varchar(255) DEFAULT '',
  `MENU_LABEL_ATUACAO_PROD` varchar(255) DEFAULT '',
  `MENU_LINK_ATUACAO_PROD` varchar(255) DEFAULT '',
  `MENU_LABEL_ATUACAO_CONS` varchar(255) DEFAULT '',
  `MENU_LINK_ATUACAO_CONS` varchar(255) DEFAULT '',
  `HEADER_NEWSLETTER_TITULO` varchar(250) DEFAULT NULL,
  `HEADER_NEWSLETTER_DESC` varchar(250) DEFAULT NULL,
  `HEADER_PLACEHOLDER` varchar(250) DEFAULT NULL,
  `HEADER_ABOUT_TITULO` varchar(250) DEFAULT NULL,
  `HEADER_ABOUT_DESC` varchar(250) DEFAULT NULL,
  `HEADER_TELEFONE` varchar(250) DEFAULT NULL,
  `HEADER_ENDERECO` varchar(250) DEFAULT NULL,
  `HEADER_NEWSLETTER_BUTTON` varchar(250) DEFAULT NULL,
  `HEADER_COPYRIGHT` varchar(250) DEFAULT NULL,
  `FOOTER_NEWSLETTER_TITULO` varchar(250) DEFAULT NULL,
  `FOOTER_NEWSLETTER_DESC` varchar(250) DEFAULT NULL,
  `FOOTER_PLACEHOLDER` varchar(250) DEFAULT NULL,
  `FOOTER_ABOUT_TITULO` varchar(250) DEFAULT NULL,
  `FOOTER_ABOUT_DESC` varchar(250) DEFAULT NULL,
  `FOOTER_TELEFONE` varchar(250) DEFAULT NULL,
  `FOOTER_ENDERECO` varchar(250) DEFAULT NULL,
  `FOOTER_NEWSLETTER_BUTTON` varchar(250) DEFAULT NULL,
  `FOOTER_COPYRIGHT` varchar(250) DEFAULT NULL,
  `FOOTER_LINK_COPYRIGHT` varchar(250) DEFAULT NULL,
  `TITULO_AREAS` varchar(255) DEFAULT NULL,
  `TITULO_CLIENTES` varchar(255) DEFAULT '',
  `TITULO_ATUACAO_CONSULT` varchar(255) DEFAULT '',
  `TITULO_ATUACAO_DOC` varchar(255) DEFAULT '',
  `TITULO_ATUACAO_PROD` varchar(255) DEFAULT '',
  `TITULO_SOBRE_NOS` varchar(255) DEFAULT '',
  `TITULO_CONTATOS` varchar(255) DEFAULT '',
  `FW_LANG` varchar(5) DEFAULT 'pt',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__STATIC` DISABLE KEYS */;
INSERT INTO `TEMPLATE__STATIC` (`ID`, `MENU_LABEL_HOME`, `MENU_LABEL_EMPRESA`, `MENU_LABEL_ATUACAO`, `MENU_LABEL_DOC`, `MENU_LABEL_CLIENTES`, `MENU_LABEL_CASES`, `MENU_LABEL_CONTATO`, `MENU_LINK_HOME`, `MENU_LINK_EMPRESA`, `MENU_LINK_ATUACAO`, `MENU_LINK_DOC`, `MENU_LINK_CLIENTES`, `MENU_LINK_CASES`, `MENU_LINK_CONTATO`, `MENU_LABEL_ATUACAO_DOC`, `MENU_LINK_ATUACAO_DOC`, `MENU_LABEL_ATUACAO_PROD`, `MENU_LINK_ATUACAO_PROD`, `MENU_LABEL_ATUACAO_CONS`, `MENU_LINK_ATUACAO_CONS`, `HEADER_NEWSLETTER_TITULO`, `HEADER_NEWSLETTER_DESC`, `HEADER_PLACEHOLDER`, `HEADER_ABOUT_TITULO`, `HEADER_ABOUT_DESC`, `HEADER_TELEFONE`, `HEADER_ENDERECO`, `HEADER_NEWSLETTER_BUTTON`, `HEADER_COPYRIGHT`, `FOOTER_NEWSLETTER_TITULO`, `FOOTER_NEWSLETTER_DESC`, `FOOTER_PLACEHOLDER`, `FOOTER_ABOUT_TITULO`, `FOOTER_ABOUT_DESC`, `FOOTER_TELEFONE`, `FOOTER_ENDERECO`, `FOOTER_NEWSLETTER_BUTTON`, `FOOTER_COPYRIGHT`, `FOOTER_LINK_COPYRIGHT`, `TITULO_AREAS`, `TITULO_CLIENTES`, `TITULO_ATUACAO_CONSULT`, `TITULO_ATUACAO_DOC`, `TITULO_ATUACAO_PROD`, `TITULO_SOBRE_NOS`, `TITULO_CONTATOS`, `FW_LANG`) VALUES
	(1, 'Inicio', 'Sobre nós', 'Áreas de atuação ', 'Documentação', 'Clientes', 'Cases', 'Contato', '', 'sobre-nos', 'areas-de-atuacao', 'documentacao', 'clientes', 'cases-de-sucesso', 'contato', 'Documentação', 'areas-atuacao-documentacao', 'Produtos', 'areas-atuacao-produtos', 'Consultoria', 'areas-atuacao-consultoria', '11111', '222222', '3333333', '4444444', '555555', '6666666', '77777', '888888', '9999999', 'CADASTRE-SE', 'Receba nossa newsletter especial', 'Seu melhor e-mail', 'Fale conosco', 'Mauris non nisi semper, lacinia neque in, dapibus leo. Curabitur sagittis libero tincidunt tempor finibus. Mauris at dignissim ligula, nec tristique orci.Quisque vitae metus', '1800-121-3637 +91 555 234-8765', '380 St Kilda Road, Melbourne VIC 3004, Australia', 'Cadastre-se já', 'NJ2 Company', '', 'AREAS DE<BR>ATUAÇÃO', 'CLIENTES', 'CONSULTORIA', 'DOCUMENTAÇÃO', 'PRODUTOS', 'SOBRE NÓS', 'CONTATOS', 'pt');
/*!40000 ALTER TABLE `TEMPLATE__STATIC` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `TEMPLATE__STATIC__TRANSLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FW_LANG` varchar(5) DEFAULT 'pt',
  `ID_FW_PAI` int(11) DEFAULT NULL,
  `MENU_LABEL_HOME` varchar(100) DEFAULT NULL,
  `MENU_LABEL_EMPRESA` varchar(100) DEFAULT NULL,
  `MENU_LABEL_ATUACAO` varchar(100) DEFAULT NULL,
  `MENU_LABEL_DOC` varchar(100) DEFAULT NULL,
  `MENU_LABEL_CLIENTES` varchar(100) DEFAULT NULL,
  `MENU_LABEL_CASES` varchar(100) DEFAULT NULL,
  `MENU_LABEL_CONTATO` varchar(100) DEFAULT NULL,
  `MENU_LINK_HOME` varchar(250) DEFAULT NULL,
  `MENU_LINK_EMPRESA` varchar(250) DEFAULT NULL,
  `MENU_LINK_ATUACAO` varchar(250) DEFAULT NULL,
  `MENU_LINK_DOC` varchar(250) DEFAULT NULL,
  `MENU_LINK_CLIENTES` varchar(250) DEFAULT NULL,
  `MENU_LINK_CASES` varchar(250) DEFAULT NULL,
  `MENU_LINK_CONTATO` varchar(250) DEFAULT NULL,
  `MENU_LABEL_ATUACAO_DOC` varchar(255) DEFAULT NULL,
  `MENU_LINK_ATUACAO_DOC` varchar(255) DEFAULT NULL,
  `MENU_LABEL_ATUACAO_PROD` varchar(255) DEFAULT NULL,
  `MENU_LINK_ATUACAO_PROD` varchar(255) DEFAULT NULL,
  `MENU_LABEL_ATUACAO_CONS` varchar(255) DEFAULT NULL,
  `MENU_LINK_ATUACAO_CONS` varchar(255) DEFAULT NULL,
  `HEADER_NEWSLETTER_TITULO` varchar(250) DEFAULT NULL,
  `HEADER_NEWSLETTER_DESC` varchar(250) DEFAULT NULL,
  `HEADER_PLACEHOLDER` varchar(250) DEFAULT NULL,
  `HEADER_ABOUT_TITULO` varchar(250) DEFAULT NULL,
  `HEADER_ABOUT_DESC` varchar(250) DEFAULT NULL,
  `HEADER_TELEFONE` varchar(250) DEFAULT NULL,
  `HEADER_ENDERECO` varchar(250) DEFAULT NULL,
  `HEADER_NEWSLETTER_BUTTON` varchar(250) DEFAULT NULL,
  `HEADER_COPYRIGHT` varchar(250) DEFAULT NULL,
  `FOOTER_NEWSLETTER_TITULO` varchar(250) DEFAULT NULL,
  `FOOTER_NEWSLETTER_DESC` varchar(250) DEFAULT NULL,
  `FOOTER_PLACEHOLDER` varchar(250) DEFAULT NULL,
  `FOOTER_ABOUT_TITULO` varchar(250) DEFAULT NULL,
  `FOOTER_ABOUT_DESC` varchar(250) DEFAULT NULL,
  `FOOTER_TELEFONE` varchar(250) DEFAULT NULL,
  `FOOTER_ENDERECO` varchar(250) DEFAULT NULL,
  `FOOTER_NEWSLETTER_BUTTON` varchar(250) DEFAULT NULL,
  `FOOTER_COPYRIGHT` varchar(250) DEFAULT NULL,
  `FOOTER_LINK_COPYRIGHT` varchar(250) DEFAULT NULL,
  `TITULO_AREAS` varchar(255) DEFAULT NULL,
  `TITULO_CLIENTES` varchar(255) DEFAULT NULL,
  `TITULO_ATUACAO_CONSULT` varchar(255) DEFAULT NULL,
  `TITULO_ATUACAO_DOC` varchar(255) DEFAULT NULL,
  `TITULO_ATUACAO_PROD` varchar(255) DEFAULT NULL,
  `TITULO_SOBRE_NOS` varchar(255) DEFAULT NULL,
  `TITULO_CONTATOS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `TEMPLATE__STATIC__TRANSLATE` DISABLE KEYS */;
INSERT INTO `TEMPLATE__STATIC__TRANSLATE` (`ID`, `FW_LANG`, `ID_FW_PAI`, `MENU_LABEL_HOME`, `MENU_LABEL_EMPRESA`, `MENU_LABEL_ATUACAO`, `MENU_LABEL_DOC`, `MENU_LABEL_CLIENTES`, `MENU_LABEL_CASES`, `MENU_LABEL_CONTATO`, `MENU_LINK_HOME`, `MENU_LINK_EMPRESA`, `MENU_LINK_ATUACAO`, `MENU_LINK_DOC`, `MENU_LINK_CLIENTES`, `MENU_LINK_CASES`, `MENU_LINK_CONTATO`, `MENU_LABEL_ATUACAO_DOC`, `MENU_LINK_ATUACAO_DOC`, `MENU_LABEL_ATUACAO_PROD`, `MENU_LINK_ATUACAO_PROD`, `MENU_LABEL_ATUACAO_CONS`, `MENU_LINK_ATUACAO_CONS`, `HEADER_NEWSLETTER_TITULO`, `HEADER_NEWSLETTER_DESC`, `HEADER_PLACEHOLDER`, `HEADER_ABOUT_TITULO`, `HEADER_ABOUT_DESC`, `HEADER_TELEFONE`, `HEADER_ENDERECO`, `HEADER_NEWSLETTER_BUTTON`, `HEADER_COPYRIGHT`, `FOOTER_NEWSLETTER_TITULO`, `FOOTER_NEWSLETTER_DESC`, `FOOTER_PLACEHOLDER`, `FOOTER_ABOUT_TITULO`, `FOOTER_ABOUT_DESC`, `FOOTER_TELEFONE`, `FOOTER_ENDERECO`, `FOOTER_NEWSLETTER_BUTTON`, `FOOTER_COPYRIGHT`, `FOOTER_LINK_COPYRIGHT`, `TITULO_AREAS`, `TITULO_CLIENTES`, `TITULO_ATUACAO_CONSULT`, `TITULO_ATUACAO_DOC`, `TITULO_ATUACAO_PROD`, `TITULO_SOBRE_NOS`, `TITULO_CONTATOS`) VALUES
	(1, 'pt', 1, 'Inicio', 'Sobre nós', 'Áreas de atuação ', 'Documentação', 'Clientes', 'Cases', 'Contato', '', 'sobre-nos', 'areas-de-atuacao', 'documentacao', 'clientes', 'cases-de-sucesso', 'contato', 'Documentação', 'areas-atuacao-documentacao', 'Produtos', 'areas-atuacao-produtos', 'Consultoria', 'areas-atuacao-consultoria', '11111', '222222', '3333333', '4444444', '555555', '6666666', '77777', '888888', '9999999', 'CADASTRE-SE', 'Receba nossa newsletter especial', 'Seu melhor e-mail', 'Fale conosco', 'Mauris non nisi semper, lacinia neque in, dapibus leo. Curabitur sagittis libero tincidunt tempor finibus. Mauris at dignissim ligula, nec tristique orci.Quisque vitae metus', '1800-121-3637 +91 555 234-8765', '380 St Kilda Road, Melbourne VIC 3004, Australia', 'Cadastre-se já', 'NJ2 Company', '', 'AREAS DE<BR>ATUAÇÃO', 'CLIENTES', 'CONSULTORIA', 'DOCUMENTAÇÃO', 'PRODUTOS', 'SOBRE NÓS', 'CONTATOS');
/*!40000 ALTER TABLE `TEMPLATE__STATIC__TRANSLATE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `USUARIOS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` bigint(25) DEFAULT NULL,
  `TIPO_PROFILE` int(11) DEFAULT 0,
  `LEVEL_PERMISSION` int(11) DEFAULT NULL,
  `FIRSTACCESS` tinyint(1) NOT NULL DEFAULT 1,
  `UID_EMPRESA` int(11) DEFAULT NULL,
  `STATUS` int(10) DEFAULT 0,
  `BLACKLIST` tinyint(1) NOT NULL DEFAULT 0,
  `NOME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `LOGIN` varchar(50) DEFAULT NULL,
  `SENHA` varchar(256) DEFAULT NULL,
  `SALT` varchar(100) NOT NULL,
  `NOVA_SENHA` varchar(300) DEFAULT NULL,
  `TIPO_DOCUMENTO` int(11) DEFAULT NULL,
  `TIPO_PESSOA` int(11) DEFAULT NULL,
  `2FA` varchar(256) DEFAULT NULL,
  `2FA_ACTIVE` tinyint(1) NOT NULL DEFAULT 0,
  `EMAIL_VALIDADO` tinyint(1) NOT NULL DEFAULT 0,
  `CRIADO_EM` timestamp NOT NULL DEFAULT current_timestamp(),
  `EXCLUIDO` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `UID` (`UID`),
  KEY `REL_TIPO_PESSOA` (`TIPO_PESSOA`),
  KEY `REL_TIPO_DOC` (`TIPO_DOCUMENTO`),
  KEY `REL_USER_STATUS` (`STATUS`),
  KEY `REL_USER_TIPO_PROFILE` (`TIPO_PROFILE`),
  CONSTRAINT `REL_TIPO_DOC` FOREIGN KEY (`TIPO_DOCUMENTO`) REFERENCES `USUARIOS__TIPO_DOCUMENTO` (`CODE`),
  CONSTRAINT `REL_TIPO_PESSOA` FOREIGN KEY (`TIPO_PESSOA`) REFERENCES `USUARIOS__TIPO_PESSOA` (`CODE`),
  CONSTRAINT `REL_USER_STATUS` FOREIGN KEY (`STATUS`) REFERENCES `USUARIOS__STATUS` (`CODE`),
  CONSTRAINT `REL_USER_TIPO_PROFILE` FOREIGN KEY (`TIPO_PROFILE`) REFERENCES `USUARIOS__TIPO_PROFILE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `USUARIOS` DISABLE KEYS */;
INSERT INTO `USUARIOS` (`ID`, `UID`, `TIPO_PROFILE`, `LEVEL_PERMISSION`, `FIRSTACCESS`, `UID_EMPRESA`, `STATUS`, `BLACKLIST`, `NOME`, `EMAIL`, `LOGIN`, `SENHA`, `SALT`, `NOVA_SENHA`, `TIPO_DOCUMENTO`, `TIPO_PESSOA`, `2FA`, `2FA_ACTIVE`, `EMAIL_VALIDADO`, `CRIADO_EM`, `EXCLUIDO`) VALUES
	(3, 45678707865467, 1, NULL, 1, NULL, 1, 0, 'Israel Nogueira', 'israel@feats.com.br', 'admin', 'b20bf2ccedc4d9af8e1259909e0b81245caa16fcd43399a09b670e191af8c145', '', NULL, 2, 1, NULL, 0, 1, '2023-05-28 01:58:37', 0),
	(5, 371930116259840, 1, NULL, 1, NULL, 1, 0, 'Israel Nogueira', 'israel2@feats.com.br', 'admin2', '@Gratis100ml', '', NULL, 2, 1, NULL, 0, 1, '2023-05-28 01:58:37', 0),
	(89, 5875323418934861, 0, NULL, 1, NULL, 0, 0, 'Rogerio Santos', 'rogerio@feats.com.br', 'bbbb', '30bb0aff9ec60709f2b885efcfe0ab51de37d60e79f1a1d9dfe2955e7d8bdbc3', '6wwj*-9_oz*w8%gnm%4cn&3l#mnqo6h..8qcfwes!dko&cbdpr', NULL, NULL, NULL, NULL, 0, 0, '2023-07-07 12:00:23', 0),
	(90, 5348062957142052, 0, NULL, 1, NULL, 0, 0, 'Rogerio Santos', 'rogerio@feats.com.br', 'cccc', 'ffb5b4d08b397503781050d020ef6a34e016c5bf698c8a5d0b12bb630c9e56dd', 'h0k-8#c50!8#_mjxnnkw08d_%lcc#u_7%t4hbz$dbhhj&u2&.!', NULL, NULL, NULL, NULL, 0, 0, '2023-07-07 12:01:47', 0),
	(91, 107145550988748, 0, NULL, 1, NULL, 0, 0, 'Rogerio Santos', 'rogerio@feats.com.br', 'ddddd', '2d654fef58d93c2657fe481eadf87818863d2e08dbf8a66bc4d7a2f3c7db0aea', 'f9w&j0_km$&5ryzf15d_o0_9_wyfwvzdtx&$o8t35rqd1%t2%&', NULL, NULL, NULL, NULL, 0, 0, '2023-07-07 12:03:16', 0),
	(92, 2505937669823629, 0, NULL, 1, NULL, 0, 0, 'Rogerio Santos', 'rogerio@feats.com.br', 'eeee', '589a0faa86b2610e03024d25d32c1daa687997e0c634211629ebca0651003f46', 'ey%lsp-&y*&t!xylkzdwx#t1m10ut10w_8wne@zdl1s#m@5.6e', NULL, NULL, NULL, NULL, 0, 0, '2023-07-07 12:11:38', 0),
	(93, 3201052718234973, 0, NULL, 1, NULL, 0, 0, 'Rogerio Santos', 'israel@feats.com', 'ffff', '9af96b3063d321ab4acdf365c64ef2081d8b2c4e966402fff8e52dd2576e9b7d', 'ywb&p99g7dkoa9tzi9dz#%@0j_ocdtk!tpigq08-hvme6!e99o', NULL, NULL, NULL, NULL, 0, 0, '2023-07-08 19:23:46', 0),
	(94, 8487450858528043, 0, NULL, 1, 78295070, 1, 0, 'Ricardo da Silva', 'mricardodasilva@hotmail.com', 'Maia', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:35', 0),
	(95, 5812498650536383, 0, NULL, 1, 90739114, 1, 0, 'Mathias da Silveira', 'macedo_mathiasdasilveira@yahoo.com', 'Macedo', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(96, 3600140953921853, 0, NULL, 1, 88150492, 1, 0, 'Caetano Das Neves', 'caetanodasnevesdematos@hotmail.com', 'de Matos', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(97, 563209094824178, 0, NULL, 1, 60567427, 1, 0, 'Carlos Eduardo de Brito', 'c-borges@outlook.com', 'Borges', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(98, 1022822143920386, 0, NULL, 1, 47899422, 1, 0, 'Enzo Carvalho', 'esouza1264@yahoo.com', 'Souza', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(99, 3424483711953459, 0, NULL, 1, 2350906, 1, 0, 'Arthur Henrique de Campos', 'arthurhenriquedecampos_lopes@hotmail.com', 'Lopes', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(100, 5046753150089211, 0, NULL, 1, 53674926, 1, 0, 'Luan Guimaraes', 'f-luanguimaraes9980@outlook.com', 'Fernandes', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(101, 5953115636668751, 0, NULL, 1, 96701064, 1, 0, 'Paulo Henrique Gonçalves', 'costapaulohenriquegonalves5732@hotmail.com', 'Costa', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(102, 5618119755159194, 0, NULL, 1, 86520007, 1, 0, 'Bruno Freitas', 'brunofreitas.xavier6420@google.com', 'Xavier', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(103, 1224052887872788, 0, NULL, 1, 39544767, 1, 0, 'Kaique Alves', 'dematos-kaiquealves9917@hotmail.com', 'de Matos', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(104, 7280303960192407, 0, NULL, 1, 85405112, 1, 0, 'Henry de Andrade', 'h.simoes6886@yahoo.com', 'Simoes', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(105, 5707763649944761, 0, NULL, 1, 5759447, 1, 0, 'João Lucca Candido', 'jooluccacandido_nascimento8622@outlook.com', 'Nascimento', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(106, 6697906645970648, 0, NULL, 1, 52554886, 1, 0, 'João Henrique de Fatima', 'joohenriquedefatima-furtado7288@google.com', 'Furtado', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(107, 7359043302102027, 0, NULL, 1, 60465092, 1, 0, 'João Paulo Pinheiro', 'joopaulopinheiropinheiro@hotmail.com', 'Pinheiro', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(108, 7694297594681265, 0, NULL, 1, 18286579, 1, 0, 'Valentim Fernandes', 'v.messias4777@google.com', 'Messias', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(109, 7387159089183316, 0, NULL, 1, 21652452, 1, 0, 'Rodrigo Campos', 'rmendes6784@yahoo.com', 'Mendes', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(110, 4845703683955857, 0, NULL, 1, 93571326, 1, 0, 'João Antônio Firmino', 'mendoncajooantniofirmino@yahoo.com', 'Mendonca', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(111, 2067041429053403, 0, NULL, 1, 79817378, 1, 0, 'Lucas Gabriel Pinto', 'lucasgabrielpinto.maia1365@outlook.com', 'Maia', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(112, 4805295624964496, 0, NULL, 1, 51915134, 1, 0, 'Davi Matias', 'azevedodavimatias5764@yahoo.com', 'Azevedo', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:36', 0),
	(113, 8818154859745347, 0, NULL, 1, 41091542, 1, 0, 'Valentim Lopes', 'v_dacosta@yahoo.com', 'da Costa', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(114, 2653289936434333, 0, NULL, 1, 35026059, 1, 0, 'Lorenzo Cruz', 'l_bastos9831@hotmail.com', 'Bastos', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(115, 4826383889241672, 0, NULL, 1, 48747543, 1, 0, 'Vitor Gabriel Aparecido', 'barros_vitorgabrielaparecido@outlook.com', 'Barros', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(116, 7164850658988435, 0, NULL, 1, 8317651, 1, 0, 'Théo Henrique Borges', 'd-thohenriqueborges@yahoo.com', 'da Silveira', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(117, 3330703394559240, 0, NULL, 1, 81509325, 1, 0, 'Gael Pereira', 'n.gaelpereira@hotmail.com', 'Nogueira', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(118, 4166164527395947, 0, NULL, 1, 78789110, 1, 0, 'Luan Morais', 'l.dealmeida4759@outlook.com', 'de Almeida', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(119, 1831513475385090, 0, NULL, 1, 14958816, 1, 0, 'Pedro Miguel Bento', 'aguiar.pedromiguelbento@outlook.com', 'Aguiar', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(120, 5666273326302664, 0, NULL, 1, 81848945, 1, 0, 'Pedro Lucas Barboza', 'n.pedrolucasbarboza123@google.com', 'Nascimento', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(121, 4822427972700132, 0, NULL, 1, 48578634, 1, 0, 'Davi Lucca de Abreu', 'ddacruz@hotmail.com', 'da Cruz', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(122, 7113320161416732, 0, NULL, 1, 91455193, 1, 0, 'Pedro Augusto Garcia', 'p-darosa2596@google.com', 'da Rosa', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(123, 3084918656325343, 0, NULL, 1, 12349737, 1, 0, 'Lorenzo Henrique Lopes', 'l.dosreis@yahoo.com', 'dos Reis', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(124, 3091832328941573, 0, NULL, 1, 42820608, 1, 0, 'Caleb Pereira', 'machado.calebpereira@outlook.com', 'Machado', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(125, 6204405952555903, 0, NULL, 1, 89459788, 1, 0, 'Ítalo Amorim', 'guimaraestaloamorim8477@outlook.com', 'Guimaraes', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(126, 3732134543296877, 0, NULL, 1, 99189641, 1, 0, 'Christopher Franco', 'mchristopherfranco@hotmail.com', 'Machado', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(127, 47455135640741, 0, NULL, 1, 66959292, 1, 0, 'Luiz Felipe Aparecido', 'dasgracas_luizfelipeaparecido@outlook.com', 'Das Gracas', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(128, 7055270834619117, 0, NULL, 1, 1237926, 1, 0, 'Pedro Henrique Peixoto', 'pcorrea6717@yahoo.com', 'Correa', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(129, 8112391278774453, 0, NULL, 1, 51253594, 1, 0, 'Bryan Henrique da Cunha', 'b-dasdores2255@outlook.com', 'Das Dores', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:37', 0),
	(130, 1381745657356995, 0, NULL, 1, 72985801, 1, 0, 'Rael Xavier', 'daschagasraelxavier@google.com', 'Das Chagas', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(131, 585953236767664, 0, NULL, 1, 49618737, 1, 0, 'Guilherme dos Santos', 'ggaldino@hotmail.com', 'Galdino', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(132, 7791728743332389, 0, NULL, 1, 14202284, 1, 0, 'José Lucas Monteiro', 'jmaciel@google.com', 'Maciel', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(133, 1171987264219051, 0, NULL, 1, 47104672, 1, 0, 'Gabriel Henrique Rezende', 'cgabrielhenriquerezende@outlook.com', 'Camargo', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(134, 499148877404133, 0, NULL, 1, 77006689, 1, 0, 'Frederico Nonato', 'bfredericononato@hotmail.com', 'Braz', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(135, 7986982125928569, 0, NULL, 1, 88719186, 1, 0, 'Heitor Henrique Barbosa', 'h_cordeiro1500@hotmail.com', 'Cordeiro', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(136, 2408667255290542, 0, NULL, 1, 89319194, 1, 0, 'Marcelo Farias', 'batista-marcelofarias6848@outlook.com', 'Batista', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(137, 6096788684973053, 0, NULL, 1, 79910908, 1, 0, 'Francisco Leite', 'f.dutra7544@hotmail.com', 'Dutra', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(138, 5243543426335718, 0, NULL, 1, 50195845, 1, 0, 'William Lima', 'wcastro@yahoo.com', 'Castro', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(139, 7927351353583497, 0, NULL, 1, 91714718, 1, 0, 'Saulo de Brito', 's.demoura@hotmail.com', 'de Moura', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(140, 5891728256252412, 0, NULL, 1, 64025293, 1, 0, 'Álvaro Santiago', 'lvarosantiago-gonalves2672@outlook.com', 'Gonçalves', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(141, 5676587497335630, 0, NULL, 1, 28253801, 1, 0, 'Nicolas Gabriel Araujo', 'n-garcia4608@outlook.com', 'Garcia', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(142, 1700553740003988, 0, NULL, 1, 90178724, 1, 0, 'Bento Lemos', 'bcastro@outlook.com', 'Castro', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(143, 480205739578107, 0, NULL, 1, 78584304, 1, 0, 'Gustavo de Azevedo', 'g.antunes@hotmail.com', 'Antunes', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(144, 6306567009443624, 0, NULL, 1, 4200433, 1, 0, 'Luiz Gustavo Muniz', 'matos_luizgustavomuniz@yahoo.com', 'Matos', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(145, 3070620341084890, 0, NULL, 1, 7196707, 1, 0, 'Tomás Barboza', 'tomsbarboza_mota@hotmail.com', 'Mota', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(146, 5440600208658634, 0, NULL, 1, 10479861, 1, 0, 'Davi Henrique Faria', 'davihenriquefaria_moura7473@yahoo.com', 'Moura', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:38', 0),
	(147, 8983941042121571, 0, NULL, 1, 2453429, 1, 0, 'William Moura', 'w.debrito@hotmail.com', 'de Brito', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(148, 1576307097233043, 0, NULL, 1, 27842053, 1, 0, 'Caio Souza', 'ccaiosouza2967@hotmail.com', 'Cardoso', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(149, 7951310400847539, 0, NULL, 1, 4074721, 1, 0, 'Abner Macedo', 'tabnermacedo260@hotmail.com', 'Torres', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(150, 8006033225139655, 0, NULL, 1, 21513329, 1, 0, 'Richard Fernandes', 'r-cavalcante6523@outlook.com', 'Cavalcante', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(151, 7169035945238733, 0, NULL, 1, 5419005, 1, 0, 'Hugo Correia', 'torres.hugocorreia@google.com', 'Torres', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(152, 2819881072857771, 0, NULL, 1, 28387824, 1, 0, 'Benjamin Paulino', 'dasdoresbenjaminpaulino@google.com', 'Das Dores', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(153, 1599497060137712, 0, NULL, 1, 93434658, 1, 0, 'Matheus Coutinho', 'm_candido@hotmail.com', 'Candido', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(154, 8545041613680302, 0, NULL, 1, 89187043, 1, 0, 'Yago Bastos', 'dantas-yagobastos@google.com', 'Dantas', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(155, 1897920145848472, 0, NULL, 1, 29036238, 1, 0, 'Fernando do Carmo', 'nonato-fernandodocarmo3724@outlook.com', 'Nonato', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(156, 1868874674507502, 0, NULL, 1, 5436397, 1, 0, 'Samuel Lima', 's.messias@outlook.com', 'Messias', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(157, 3650613211816155, 0, NULL, 1, 52432337, 1, 0, 'Benjamin Matos', 'benjaminmatosferreira@google.com', 'Ferreira', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(158, 3639243057641341, 0, NULL, 1, 33789883, 1, 0, 'Israel Aparecido', 'trindade_israelaparecido6970@google.com', 'Trindade', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(159, 7244375929582307, 0, NULL, 1, 34261385, 1, 0, 'Bryan Henrique Bispo', 'evangelista-bryanhenriquebispo9766@hotmail.com', 'Evangelista', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(160, 7289752242329591, 0, NULL, 1, 40732740, 1, 0, 'José Augusto de Fatima', 'gomes-josaugustodefatima9110@yahoo.com', 'Gomes', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(161, 5708434444984106, 0, NULL, 1, 49306411, 1, 0, 'Bryan Castro', 'bryancastrocordeiro7414@hotmail.com', 'Cordeiro', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(162, 6672915774755821, 0, NULL, 1, 70183166, 1, 0, 'Lorenzo Henrique Amorim', 'm_lorenzohenriqueamorim9281@hotmail.com', 'Matias', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:39', 0),
	(163, 7232076560909860, 0, NULL, 1, 91389248, 1, 0, 'João Paulo Campos', 'jdasilva@outlook.com', 'da Silva', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(164, 7134436502364910, 0, NULL, 1, 8162632, 1, 0, 'Henry Diniz', 'henrydiniz-decampos@google.com', 'de Campos', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(165, 4968753851178041, 0, NULL, 1, 97529788, 1, 0, 'João Emanuel Machado', 'jooemanuelmachado-campos7452@hotmail.com', 'Campos', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(166, 3440460025619538, 0, NULL, 1, 37516816, 1, 0, 'Anthony Antunes', 'anthonyantunes.henrique4941@hotmail.com', 'Henrique', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(167, 2296038851387633, 0, NULL, 1, 52140120, 1, 0, 'Lorenzo Gabriel Correia', 'marinho-lorenzogabrielcorreia@yahoo.com', 'Marinho', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(168, 1158814456903614, 0, NULL, 1, 59545671, 1, 0, 'João Vitor Franca', 'barbozajoovitorfranca@google.com', 'Barboza', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(169, 7913155261920228, 0, NULL, 1, 10994006, 1, 0, 'Pedro da Luz', 'maiapedrodaluz5903@google.com', 'Maia', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(170, 60536196750395, 0, NULL, 1, 21177301, 1, 0, 'Davi Pacheco', 'b.davipacheco4761@hotmail.com', 'Barbosa', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(171, 3584813239038330, 0, NULL, 1, 91508788, 1, 0, 'Gabriel Henrique Franca', 'dacruz_gabrielhenriquefranca9171@yahoo.com', 'da Cruz', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(172, 8735258627023536, 0, NULL, 1, 35714710, 1, 0, 'Anthony Gabriel Braz', 'r_anthonygabrielbraz@hotmail.com', 'Reis', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(173, 5900255930603778, 0, NULL, 1, 80015135, 1, 0, 'Martin Pinto', 'mdebrito6467@outlook.com', 'de Brito', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(174, 3295504048772346, 0, NULL, 1, 36572901, 1, 0, 'João Miguel Santana', 'joomiguelsantana.dasilveira5623@outlook.com', 'da Silveira', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(175, 7783951983615450, 0, NULL, 1, 25686009, 1, 0, 'Ryan Nonato', 'd-ryannonato770@yahoo.com', 'de Araujo', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(176, 2011650284361304, 0, NULL, 1, 42398787, 1, 0, 'Pedro Augusto Cruz', 's_pedroaugustocruz@hotmail.com', 'Sousa', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(177, 4720794257266214, 0, NULL, 1, 99063027, 1, 0, 'Bento Figueiredo', 'd-bentofigueiredo9560@hotmail.com', 'de Assis', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(178, 8561821455330234, 0, NULL, 1, 28085081, 1, 0, 'Igor de Fatima', 'i_lopes3478@hotmail.com', 'Lopes', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:40', 0),
	(179, 1625127017453614, 0, NULL, 1, 21834326, 1, 0, 'Pedro Miguel Santiago', 'p.furtado6696@outlook.com', 'Furtado', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(180, 454569507583415, 0, NULL, 1, 85553974, 1, 0, 'Carlos Eduardo da Conceiçao', 'c.pereira3545@yahoo.com', 'Pereira', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(181, 6404666017121290, 0, NULL, 1, 88470537, 1, 0, 'Theodoro Bezerra', 'daluz_theodorobezerra@hotmail.com', 'da Luz', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(182, 3638024075457294, 0, NULL, 1, 94752357, 1, 0, 'Davi Henrique Freire', 'davihenriquefreire_docarmo@outlook.com', 'do Carmo', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(183, 7983321857487656, 0, NULL, 1, 65718288, 1, 0, 'Arthur Felipe Neves', 'a-firmino@yahoo.com', 'Firmino', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(184, 1980939573667486, 0, NULL, 1, 82643750, 1, 0, 'Nathan de Paula', 'nathandepaulaaraujo@hotmail.com', 'Araujo', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(185, 3969131082180510, 0, NULL, 1, 52960395, 1, 0, 'João Lucas Henrique', 'joolucashenrique.candido6207@hotmail.com', 'Candido', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(186, 4895637711983162, 0, NULL, 1, 43501733, 1, 0, 'Levi do Nascimento', 'furtadolevidonascimento7495@yahoo.com', 'Furtado', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(187, 3563596335457354, 0, NULL, 1, 51482341, 1, 0, 'Vicente de Fatima', 'm-vicentedefatima7200@outlook.com', 'Matos', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(188, 3131068818161347, 0, NULL, 1, 71403804, 1, 0, 'Nicolas de Moura', 'dosreisnicolasdemoura6879@yahoo.com', 'dos Reis', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(189, 4964555361258738, 0, NULL, 1, 13545641, 1, 0, 'José Miguel Santos', 'jtrindade@yahoo.com', 'Trindade', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:41', 0),
	(190, 6422371373892723, 0, NULL, 1, 24340246, 1, 0, 'João Henrique de Freitas', 'dejesusjoohenriquedefreitas@yahoo.com', 'de Jesus', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:42', 0),
	(191, 8210991807770474, 0, NULL, 1, 34643600, 1, 0, 'Pedro Augusto Domingues', 'candido-pedroaugustodomingues6397@yahoo.com', 'Candido', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:42', 0),
	(192, 3773446684516280, 0, NULL, 1, 13194875, 1, 0, 'Luigi Pinheiro', 'machado-luigipinheiro3551@hotmail.com', 'Machado', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:42', 0),
	(193, 3241457530835035, 0, NULL, 1, 27011948, 1, 0, 'Ezequiel Feitosa', 'decampos-ezequielfeitosa@yahoo.com', 'de Campos', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2023-07-26 23:23:42', 0),
	(209, 8673463543480800, 3, NULL, 1, NULL, 1, 0, 'AA SSSSSSS', 'tetseeeee@feats.com.br', '', '2d6138f2f266a35c79b14ea6ddd6aaef591bcb883a093caa476be573912d652b', 's-m3o2.bhabz8t0', NULL, NULL, NULL, NULL, 0, 1, '2023-12-12 10:39:38', 0),
	(210, 7579297144091987, 3, NULL, 1, NULL, 1, 0, 'marquinho silva sauro', 'marquinhos@feats.com.br', '', '108a30c516f73543cb1a4ee4ddc55242382cc92e68dd03c37efb0113da8b6a6d', '-kbq97cyk.k#bg4', NULL, NULL, NULL, NULL, 0, 1, '2023-12-12 10:54:44', 0);
/*!40000 ALTER TABLE `USUARIOS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `USUARIOS__DADOS_PROJETO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID_USER` bigint(25) DEFAULT NULL,
  `CPF` varchar(50) DEFAULT NULL,
  `RG` varchar(50) DEFAULT NULL,
  `LISTA_UPLOAD` text DEFAULT NULL,
  `DESCRICAO` varchar(300) DEFAULT NULL,
  `ATENDIDO_IMOBILIARIA` varchar(300) DEFAULT NULL,
  `CORRETOR_NOME` varchar(300) DEFAULT NULL,
  `INSTAGRAM` varchar(300) DEFAULT NULL,
  `NACIONALIDADE` varchar(50) DEFAULT NULL,
  `PERFIL_INVESTIDOR` varchar(50) DEFAULT NULL,
  `PROFISSAO` varchar(100) DEFAULT NULL,
  `REGIME_BENS` varchar(50) DEFAULT NULL,
  `RENDA_ATE` varchar(50) DEFAULT NULL,
  `RENDA_DE` varchar(50) DEFAULT NULL,
  `TIPO_CONTA_TRADICIONAL` int(1) DEFAULT 0,
  `TIPO_CONTA_DIGITAL` int(1) DEFAULT 0,
  `TIPO_CONTA_EXCHANGE` int(1) DEFAULT 0,
  `UNIDADE` varchar(200) DEFAULT NULL,
  `VEICULO_REPASSE` varchar(5) DEFAULT NULL,
  `TELEFONE` varchar(50) DEFAULT NULL,
  `WHATSAPP` varchar(50) DEFAULT NULL,
  `DATA_INSERT` timestamp NOT NULL DEFAULT current_timestamp(),
  `OBS` text DEFAULT NULL,
  `LOGRADOURO` varchar(300) DEFAULT NULL,
  `CIDADE` varchar(100) DEFAULT NULL,
  `ESTADO` varchar(50) DEFAULT NULL,
  `CEP` varchar(50) DEFAULT NULL,
  `NUMERO` varchar(50) DEFAULT NULL,
  `COMPLEMENTO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `REL_UUSER_DATA_ID_USER` (`UID_USER`),
  CONSTRAINT `REL_UUSER_DATA_ID_USER` FOREIGN KEY (`UID_USER`) REFERENCES `USUARIOS` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=665 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `USUARIOS__DADOS_PROJETO` DISABLE KEYS */;
INSERT INTO `USUARIOS__DADOS_PROJETO` (`ID`, `UID_USER`, `CPF`, `RG`, `LISTA_UPLOAD`, `DESCRICAO`, `ATENDIDO_IMOBILIARIA`, `CORRETOR_NOME`, `INSTAGRAM`, `NACIONALIDADE`, `PERFIL_INVESTIDOR`, `PROFISSAO`, `REGIME_BENS`, `RENDA_ATE`, `RENDA_DE`, `TIPO_CONTA_TRADICIONAL`, `TIPO_CONTA_DIGITAL`, `TIPO_CONTA_EXCHANGE`, `UNIDADE`, `VEICULO_REPASSE`, `TELEFONE`, `WHATSAPP`, `DATA_INSERT`, `OBS`, `LOGRADOURO`, `CIDADE`, `ESTADO`, `CEP`, `NUMERO`, `COMPLEMENTO`) VALUES
	(541, 45678707865467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(542, 47455135640741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(543, 60536196750395, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(544, 107145550988748, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(545, 371930116259840, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(546, 454569507583415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(547, 480205739578107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(548, 499148877404133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(549, 563209094824178, 'ggggggg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '2023-10-30 16:16:38', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(550, 585953236767664, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(551, 1022822143920386, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(552, 1158814456903614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(553, 1171987264219051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(554, 1224052887872788, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(555, 1381745657356995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(556, 1576307097233043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(557, 1599497060137712, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(558, 1625127017453614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(559, 1700553740003988, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(560, 1831513475385090, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(561, 1868874674507502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(562, 1897920145848472, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(563, 1980939573667486, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(564, 2011650284361304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(565, 2067041429053403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(566, 2296038851387633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(567, 2408667255290542, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(568, 2505937669823629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(569, 2653289936434333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(570, 2819881072857771, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(571, 3070620341084890, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(572, 3084918656325343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(573, 3091832328941573, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(574, 3131068818161347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(575, 3201052718234973, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(576, 3241457530835035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(577, 3295504048772346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(578, 3330703394559240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(579, 3424483711953459, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(580, 3440460025619538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(581, 3563596335457354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(582, 3584813239038330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(583, 3600140953921853, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(584, 3638024075457294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(585, 3639243057641341, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(586, 3650613211816155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(587, 3732134543296877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(588, 3773446684516280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(589, 3969131082180510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(590, 4166164527395947, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(591, 4720794257266214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(592, 4805295624964496, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(593, 4822427972700132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(594, 4826383889241672, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(595, 4845703683955857, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(596, 4895637711983162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(597, 4964555361258738, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(598, 4968753851178041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(599, 5046753150089211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(600, 5243543426335718, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(601, 5348062957142052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(602, 5440600208658634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(603, 5618119755159194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(604, 5666273326302664, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(605, 5676587497335630, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(606, 5707763649944761, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(607, 5708434444984106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(608, 5812498650536383, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(609, 5875323418934861, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(610, 5891728256252412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(611, 5900255930603778, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(612, 5953115636668751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(613, 6096788684973053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(614, 6204405952555903, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(615, 6306567009443624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(616, 6404666017121290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(617, 6422371373892723, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(618, 6672915774755821, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(619, 6697906645970648, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(620, 7055270834619117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(621, 7113320161416732, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(622, 7134436502364910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(623, 7164850658988435, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(624, 7169035945238733, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(625, 7232076560909860, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(626, 7244375929582307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(627, 7280303960192407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(628, 7289752242329591, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(629, 7359043302102027, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(630, 7387159089183316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(631, 7694297594681265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(632, 7783951983615450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(633, 7791728743332389, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(634, 7913155261920228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(635, 7927351353583497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(636, 7951310400847539, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(637, 7983321857487656, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(638, 7986982125928569, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(639, 8006033225139655, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(640, 8112391278774453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(641, 8210991807770474, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(642, 8487450858528043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(643, 8545041613680302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(644, 8561821455330234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(645, 8735258627023536, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(646, 8818154859745347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(647, 8983941042121571, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(663, 8673463543480800, '241234', '12341234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-12-12 10:39:38', NULL, '', '', NULL, '', '', ''),
	(664, 7579297144091987, '3452345', '23452345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-12-12 10:54:44', NULL, '', '', NULL, '', '', '');
/*!40000 ALTER TABLE `USUARIOS__DADOS_PROJETO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `USUARIOS__DISPOSITIVOS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID_USER` bigint(25) NOT NULL,
  `ASSINATURA` varchar(256) DEFAULT NULL,
  `JSON_RESPONSE` text DEFAULT NULL,
  `AUTORIZADO` int(1) NOT NULL DEFAULT 0,
  `CONGELA_ATE` datetime DEFAULT NULL,
  `MODO_SEGURO` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `USUARIOS__DISPOSITIVOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `USUARIOS__DISPOSITIVOS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `USUARIOS__STATUS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(10) NOT NULL,
  `TITULO` varchar(100) NOT NULL,
  `DESCRICAO` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `USUARIOS__STATUS` DISABLE KEYS */;
INSERT INTO `USUARIOS__STATUS` (`ID`, `CODE`, `TITULO`, `DESCRICAO`) VALUES
	(1, 1, 'CONTA ATIVA', 'jjjjddddd'),
	(2, 2, 'CONTA INATIVA', 'BBBBB'),
	(3, 3, 'CONTA EXCLUÍDA', ''),
	(4, 4, 'AGUARDANDO CONFIRMAÇÃO DE CONTA', ''),
	(5, 5, 'CONTA SUSPENSA', ''),
	(11, 0, 'QPVQ97LY4cu6IXAWfF+wOvOZFR1hItpTWiwa4m3ntak=', 'NCUB1pM9/orreKyzctvaVg=='),
	(12, 0, 'a45EqjRSU0RRrmTEFQifvA==', ''),
	(13, 0, 'GzyoLLlKpFpVm9cABluZkzgEwyyiVnAZzj3TMuRGX2w=', '');
/*!40000 ALTER TABLE `USUARIOS__STATUS` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `USUARIOS__TIPO_DOCUMENTO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NOT NULL,
  `TIPO` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `USUARIOS__TIPO_DOCUMENTO` DISABLE KEYS */;
INSERT INTO `USUARIOS__TIPO_DOCUMENTO` (`ID`, `CODE`, `TIPO`) VALUES
	(1, 1, 'CPF'),
	(2, 2, 'CNPJ'),
	(3, 3, 'PASSAPORTE');
/*!40000 ALTER TABLE `USUARIOS__TIPO_DOCUMENTO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `USUARIOS__TIPO_PESSOA` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NOT NULL,
  `TIPO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `USUARIOS__TIPO_PESSOA` DISABLE KEYS */;
INSERT INTO `USUARIOS__TIPO_PESSOA` (`ID`, `CODE`, `TIPO`) VALUES
	(1, 1, 'FISICA'),
	(2, 2, 'JURIDICA');
/*!40000 ALTER TABLE `USUARIOS__TIPO_PESSOA` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `USUARIOS__TIPO_PROFILE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) DEFAULT NULL,
  `NOME` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `USUARIOS__TIPO_PROFILE` DISABLE KEYS */;
INSERT INTO `USUARIOS__TIPO_PROFILE` (`ID`, `CODE`, `NOME`) VALUES
	(0, 0, 'SYSTEM'),
	(1, 1, 'ADMIN'),
	(2, 2, 'PRODUTOR'),
	(3, 3, 'USUARIO'),
	(4, 4, 'PERFIL');
/*!40000 ALTER TABLE `USUARIOS__TIPO_PROFILE` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `USUARIOS__VINCULO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USUARIO_A` bigint(25) DEFAULT NULL COMMENT 'segue | de quem | paga | pai',
  `USUARIO_B` bigint(25) DEFAULT NULL COMMENT 'seguido | pra quem | recebe | filho',
  `REFERENCIA` varchar(100) DEFAULT NULL,
  `TIPO` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `INDICE_REFERENCIA` (`REFERENCIA`),
  KEY `USUARIO_A` (`USUARIO_A`),
  KEY `USUARIO_B` (`USUARIO_B`),
  KEY `REL-USER-VINCULO__TIPO` (`TIPO`),
  CONSTRAINT `REL-USER-VINCULO__TIPO` FOREIGN KEY (`TIPO`) REFERENCES `USUARIOS__VINCULO_TIPO` (`CODE`),
  CONSTRAINT `REL-USER-VINCULO__USER-A` FOREIGN KEY (`USUARIO_A`) REFERENCES `USUARIOS` (`UID`),
  CONSTRAINT `REL-USER-VINCULO__USER-B` FOREIGN KEY (`USUARIO_B`) REFERENCES `USUARIOS` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `USUARIOS__VINCULO` DISABLE KEYS */;
INSERT INTO `USUARIOS__VINCULO` (`ID`, `USUARIO_A`, `USUARIO_B`, `REFERENCIA`, `TIPO`, `STATUS`) VALUES
	(1, 45678707865467, 5812498650536383, NULL, 3, NULL),
	(2, 45678707865467, 3600140953921853, NULL, 2, NULL);
/*!40000 ALTER TABLE `USUARIOS__VINCULO` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `USUARIOS__VINCULO_TIPO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NOT NULL,
  `TIPO` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `USUARIOS__VINCULO_TIPO` DISABLE KEYS */;
INSERT INTO `USUARIOS__VINCULO_TIPO` (`ID`, `CODE`, `TIPO`) VALUES
	(1, 1, 'AMIGO'),
	(2, 2, 'SEGUINDO'),
	(3, 3, 'BLOQUEIO'),
	(4, 4, 'CURTIU'),
	(5, 5, 'PATROCINIO'),
	(6, 6, 'AFILIADO'),
	(7, 7, 'CADASTRADO'),
	(8, 8, 'DENUNCIA');
/*!40000 ALTER TABLE `USUARIOS__VINCULO_TIPO` ENABLE KEYS */;

DELIMITER //
CREATE  PROCEDURE `SP_GET_CICLOS_USUARIO`(IN UID_USER_PARAM BIGINT)
BEGIN
    SELECT
        AJUDA__USER_NIVEL.CICLO_COMPLETO,
        CICLO.UID_CICLO,
        AJUDA__USER_NIVEL.UID_USER,
        AJUDA__USER_NIVEL.NIVEL,
        AJUDA__USER_NIVEL.LUGAR_FILA,
        AJUDA__NIVEIS.VALOR_ENTRADA,
        (AJUDA__NIVEIS.VALOR_ENTRADA * AJUDA__NIVEIS.MULTIPLICA_FATOR) as META,
        SUM(CICLO.VALOR) AS TOTAL
    FROM
        AJUDA__CICLO CICLO
        LEFT JOIN
        AJUDA__USER_NIVEL ON AJUDA__USER_NIVEL.UID_CICLO=CICLO.UID_CICLO
        LEFT JOIN
        AJUDA__NIVEIS ON AJUDA__NIVEIS.NIVEL=AJUDA__USER_NIVEL.NIVEL
    WHERE 
        AJUDA__USER_NIVEL.UID_USER = UID_USER_PARAM
    GROUP BY 
        CICLO.UID_CICLO
    ORDER BY 
        AJUDA__USER_NIVEL.CICLO_COMPLETO, AJUDA__USER_NIVEL.LUGAR_FILA;
END//
DELIMITER ;

DELIMITER //
CREATE  FUNCTION `FN_GET_JSON_BANNERS_BY_PLUGIN`(`P_ID` BIGINT) RETURNS text CHARSET utf8mb4
RETURN (
    SELECT CONCAT("[",GROUP_CONCAT('{
        "LINK":"',LINK,'",
        "TARGET":"',TARGET,'",
        "ANALITYCS":"',ANALITYCS,'",
        "CLICKTAG":"',CLICKTAG,'",
        "TITULO":"',TITULO,'",
        "DESCRICAO":"',DESCRICAO,'",
        "STATUS":"',STATUS,'"
    }'),']')
    AS JSON
    FROM MIDIA__BANNER
    WHERE	ID_PLUGIN=P_ID 
)//
DELIMITER ;

DELIMITER //
CREATE  FUNCTION `FN_GET_JSON_FILES_BY_BANNERS`(`P_ID` BIGINT) RETURNS text CHARSET utf8mb4
RETURN (
    SELECT CONCAT("[{",GROUP_CONCAT(
        '"',MEDIA_QUERY,'":{
            "ID_BANNER":"',ID_BANNER,'",
            "ID_PLUGIN":"',ID_PLUGIN,'",
            "NOME_ORIGINAL":"',NOME_ORIGINAL,'",
            "PATH":"',PATH,'",
            "FILENAME":"',FILENAME,'",
            "SIZE":"',SIZE,'",
            "TYPE":"',TYPE,'",
            "MEDIA_QUERY":"',MEDIA_QUERY,'"
        }'  
    ),'}]') 
    AS JSON
    FROM        MIDIA__FILES
    WHERE	    ID_BANNER   =   P_ID 
    ORDER BY    MEDIA_QUERY     ASC
)


-- SELECT FN_GET_JSON_FILES_BY_BANNERS(4)//
DELIMITER ;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `DELETE_USUARIO_DADOS_PROJETO` AFTER DELETE ON `USUARIOS` FOR EACH ROW DELETE FROM USUARIOS__DADOS_PROJETO WHERE UID_USER = OLD.UID//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `DELETE__TEMPLATE__AREAS_ATUACAO` AFTER DELETE ON `TEMPLATE__AREAS_ATUACAO` FOR EACH ROW BEGIN 
	SET @permitir_atualizacao=1;
	DELETE FROM TEMPLATE__AREAS_ATUACAO__TRANSLATE WHERE ID_FW_PAI=OLD.ID; 
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `DELETE__TEMPLATE__AREAS_ATUACAO_CONSULTORIA` AFTER DELETE ON `TEMPLATE__AREAS_ATUACAO_CONSULTORIA` FOR EACH ROW BEGIN 
	SET @permitir_atualizacao=1;
	DELETE FROM TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE WHERE ID_FW_PAI=OLD.ID; 
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `DELETE__TEMPLATE__AREAS_ATUACAO_PRODUTOS` AFTER DELETE ON `TEMPLATE__AREAS_ATUACAO_PRODUTOS` FOR EACH ROW BEGIN 
	SET @permitir_atualizacao=1;
	DELETE FROM TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE WHERE ID_FW_PAI=OLD.ID; 
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `DELETE__TEMPLATE__CONTATO` AFTER DELETE ON `TEMPLATE__CONTATO` FOR EACH ROW BEGIN 
	SET @permitir_atualizacao=1;
	DELETE FROM TEMPLATE__CONTATO__TRANSLATE WHERE ID_FW_PAI=OLD.ID; 
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `DELETE__TEMPLATE__HOME` AFTER DELETE ON `TEMPLATE__HOME` FOR EACH ROW BEGIN 
	SET @permitir_atualizacao=1;
	DELETE FROM TEMPLATE__HOME__TRANSLATE WHERE ID_FW_PAI=OLD.ID; 
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `DELETE__TEMPLATE__SOBRE` AFTER DELETE ON `TEMPLATE__SOBRE` FOR EACH ROW BEGIN 
	SET @permitir_atualizacao=1;
	DELETE FROM TEMPLATE__SOBRE__TRANSLATE WHERE ID_FW_PAI=OLD.ID; 
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `DELETE__TEMPLATE__STATIC` AFTER DELETE ON `TEMPLATE__STATIC` FOR EACH ROW BEGIN 
	SET @permitir_atualizacao=1;
	DELETE FROM TEMPLATE__STATIC__TRANSLATE WHERE ID_FW_PAI=OLD.ID; 
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `INSERE_USUARIO_DADOS_PROJETO` AFTER INSERT ON `USUARIOS` FOR EACH ROW INSERT INTO USUARIOS__DADOS_PROJETO (UID_USER) VALUES (new.UID)//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `INSERT__TEMPLATE__AREAS_ATUACAO` AFTER INSERT ON `TEMPLATE__AREAS_ATUACAO` FOR EACH ROW BEGIN
			SET @permitir_atualizacao= 1;
			INSERT INTO TEMPLATE__AREAS_ATUACAO__TRANSLATE (TITULO,DESCRICAO,TIPO_ATUACAO, ID_FW_PAI, FW_LANG) VALUES (NEW.TITULO,NEW.DESCRICAO,NEW.TIPO_ATUACAO, NEW.ID, 'pt');
			INSERT INTO TEMPLATE__AREAS_ATUACAO__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'en');
			INSERT INTO TEMPLATE__AREAS_ATUACAO__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'es');
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `INSERT__TEMPLATE__AREAS_ATUACAO_CONSULTORIA` AFTER INSERT ON `TEMPLATE__AREAS_ATUACAO_CONSULTORIA` FOR EACH ROW BEGIN
			SET @permitir_atualizacao= 1;
			INSERT INTO TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE (TITULO,DESCRICAO, ID_FW_PAI, FW_LANG) VALUES (NEW.TITULO,NEW.DESCRICAO, NEW.ID, 'pt');
			INSERT INTO TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'en');
			INSERT INTO TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'es');
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `INSERT__TEMPLATE__AREAS_ATUACAO_PRODUTOS` AFTER INSERT ON `TEMPLATE__AREAS_ATUACAO_PRODUTOS` FOR EACH ROW BEGIN
			SET @permitir_atualizacao= 1;
			INSERT INTO TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE (TITULO,DESCRICAO, ID_FW_PAI, FW_LANG) VALUES (NEW.TITULO,NEW.DESCRICAO, NEW.ID, 'pt');
			INSERT INTO TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'en');
			INSERT INTO TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'es');
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `INSERT__TEMPLATE__CONTATO` AFTER INSERT ON `TEMPLATE__CONTATO` FOR EACH ROW BEGIN
			SET @permitir_atualizacao= 1;
			INSERT INTO TEMPLATE__CONTATO__TRANSLATE (TOP_TITLE,TITULO_FORM,ADRESS_TITLE,ADRESS_TEXT,HORARIOS_TITLE,HORARIOS_TEXT,EMAILS_TITLE,EMAILS_TEXT,TEXTO_BOTAO,PLACEHOLDER_NOME,PLACEHOLDER_EMAIL,PLACEHOLDER_TELEFONE,PLACEHOLDER_ASSUNTO,PLACEHOLDER_TEXTO, ID_FW_PAI, FW_LANG) VALUES (NEW.TOP_TITLE,NEW.TITULO_FORM,NEW.ADRESS_TITLE,NEW.ADRESS_TEXT,NEW.HORARIOS_TITLE,NEW.HORARIOS_TEXT,NEW.EMAILS_TITLE,NEW.EMAILS_TEXT,NEW.TEXTO_BOTAO,NEW.PLACEHOLDER_NOME,NEW.PLACEHOLDER_EMAIL,NEW.PLACEHOLDER_TELEFONE,NEW.PLACEHOLDER_ASSUNTO,NEW.PLACEHOLDER_TEXTO, NEW.ID, 'pt');
			INSERT INTO TEMPLATE__CONTATO__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'en');
			INSERT INTO TEMPLATE__CONTATO__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'es');
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `INSERT__TEMPLATE__HOME` AFTER INSERT ON `TEMPLATE__HOME` FOR EACH ROW BEGIN
			SET @permitir_atualizacao= 1;
			INSERT INTO TEMPLATE__HOME__TRANSLATE (OUTRAS_SOLUCOES,OUTRAS_SOLUCOES_TXT,ANOS_EXP_NUM,ANOS_EXP_TXT,ANOS_EXP_DESC, ID_FW_PAI, FW_LANG) VALUES (NEW.OUTRAS_SOLUCOES,NEW.OUTRAS_SOLUCOES_TXT,NEW.ANOS_EXP_NUM,NEW.ANOS_EXP_TXT,NEW.ANOS_EXP_DESC, NEW.ID, 'pt');
			INSERT INTO TEMPLATE__HOME__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'en');
			INSERT INTO TEMPLATE__HOME__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'es');
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `INSERT__TEMPLATE__SOBRE` AFTER INSERT ON `TEMPLATE__SOBRE` FOR EACH ROW BEGIN
			SET @permitir_atualizacao= 1;
			INSERT INTO TEMPLATE__SOBRE__TRANSLATE (SESSAO,TITULO,CONTEUDO, ID_FW_PAI, FW_LANG) VALUES (NEW.SESSAO,NEW.TITULO,NEW.CONTEUDO, NEW.ID, 'pt');
			INSERT INTO TEMPLATE__SOBRE__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'en');
			INSERT INTO TEMPLATE__SOBRE__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'es');
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `INSERT__TEMPLATE__STATIC` AFTER INSERT ON `TEMPLATE__STATIC` FOR EACH ROW BEGIN
			SET @permitir_atualizacao= 1;
			INSERT INTO TEMPLATE__STATIC__TRANSLATE (MENU_LABEL_HOME,MENU_LABEL_EMPRESA,MENU_LABEL_ATUACAO,MENU_LABEL_DOC,MENU_LABEL_CLIENTES,MENU_LABEL_CASES,MENU_LABEL_CONTATO,MENU_LINK_HOME,MENU_LINK_EMPRESA,MENU_LINK_ATUACAO,MENU_LINK_DOC,MENU_LINK_CLIENTES,MENU_LINK_CASES,MENU_LINK_CONTATO,MENU_LABEL_ATUACAO_DOC,MENU_LINK_ATUACAO_DOC,MENU_LABEL_ATUACAO_PROD,MENU_LINK_ATUACAO_PROD,MENU_LABEL_ATUACAO_CONS,MENU_LINK_ATUACAO_CONS,HEADER_NEWSLETTER_TITULO,HEADER_NEWSLETTER_DESC,HEADER_PLACEHOLDER,HEADER_ABOUT_TITULO,HEADER_ABOUT_DESC,HEADER_TELEFONE,HEADER_ENDERECO,HEADER_NEWSLETTER_BUTTON,HEADER_COPYRIGHT,FOOTER_NEWSLETTER_TITULO,FOOTER_NEWSLETTER_DESC,FOOTER_PLACEHOLDER,FOOTER_ABOUT_TITULO,FOOTER_ABOUT_DESC,FOOTER_TELEFONE,FOOTER_ENDERECO,FOOTER_NEWSLETTER_BUTTON,FOOTER_COPYRIGHT,FOOTER_LINK_COPYRIGHT,TITULO_AREAS,TITULO_CLIENTES,TITULO_ATUACAO_CONSULT,TITULO_ATUACAO_DOC,TITULO_ATUACAO_PROD,TITULO_SOBRE_NOS,TITULO_CONTATOS, ID_FW_PAI, FW_LANG) VALUES (NEW.MENU_LABEL_HOME,NEW.MENU_LABEL_EMPRESA,NEW.MENU_LABEL_ATUACAO,NEW.MENU_LABEL_DOC,NEW.MENU_LABEL_CLIENTES,NEW.MENU_LABEL_CASES,NEW.MENU_LABEL_CONTATO,NEW.MENU_LINK_HOME,NEW.MENU_LINK_EMPRESA,NEW.MENU_LINK_ATUACAO,NEW.MENU_LINK_DOC,NEW.MENU_LINK_CLIENTES,NEW.MENU_LINK_CASES,NEW.MENU_LINK_CONTATO,NEW.MENU_LABEL_ATUACAO_DOC,NEW.MENU_LINK_ATUACAO_DOC,NEW.MENU_LABEL_ATUACAO_PROD,NEW.MENU_LINK_ATUACAO_PROD,NEW.MENU_LABEL_ATUACAO_CONS,NEW.MENU_LINK_ATUACAO_CONS,NEW.HEADER_NEWSLETTER_TITULO,NEW.HEADER_NEWSLETTER_DESC,NEW.HEADER_PLACEHOLDER,NEW.HEADER_ABOUT_TITULO,NEW.HEADER_ABOUT_DESC,NEW.HEADER_TELEFONE,NEW.HEADER_ENDERECO,NEW.HEADER_NEWSLETTER_BUTTON,NEW.HEADER_COPYRIGHT,NEW.FOOTER_NEWSLETTER_TITULO,NEW.FOOTER_NEWSLETTER_DESC,NEW.FOOTER_PLACEHOLDER,NEW.FOOTER_ABOUT_TITULO,NEW.FOOTER_ABOUT_DESC,NEW.FOOTER_TELEFONE,NEW.FOOTER_ENDERECO,NEW.FOOTER_NEWSLETTER_BUTTON,NEW.FOOTER_COPYRIGHT,NEW.FOOTER_LINK_COPYRIGHT,NEW.TITULO_AREAS,NEW.TITULO_CLIENTES,NEW.TITULO_ATUACAO_CONSULT,NEW.TITULO_ATUACAO_DOC,NEW.TITULO_ATUACAO_PROD,NEW.TITULO_SOBRE_NOS,NEW.TITULO_CONTATOS, NEW.ID, 'pt');
			INSERT INTO TEMPLATE__STATIC__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'en');
			INSERT INTO TEMPLATE__STATIC__TRANSLATE (ID_FW_PAI, FW_LANG) VALUES (NEW.ID, 'es');
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__SECURITY_DELETE` BEFORE DELETE ON `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE` FOR EACH ROW BEGIN
		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__SECURITY_INSERT` BEFORE INSERT ON `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__SECURITY_UPDATE` BEFORE UPDATE ON `TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__AREAS_ATUACAO_PRODUTOS__SECURITY_DELETE` BEFORE DELETE ON `TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE` FOR EACH ROW BEGIN
		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__AREAS_ATUACAO_PRODUTOS__SECURITY_INSERT` BEFORE INSERT ON `TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__AREAS_ATUACAO_PRODUTOS__SECURITY_UPDATE` BEFORE UPDATE ON `TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__AREAS_ATUACAO__SECURITY_DELETE` BEFORE DELETE ON `TEMPLATE__AREAS_ATUACAO__TRANSLATE` FOR EACH ROW BEGIN
		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__AREAS_ATUACAO__SECURITY_INSERT` BEFORE INSERT ON `TEMPLATE__AREAS_ATUACAO__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__AREAS_ATUACAO__SECURITY_UPDATE` BEFORE UPDATE ON `TEMPLATE__AREAS_ATUACAO__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__CONTATO__SECURITY_DELETE` BEFORE DELETE ON `TEMPLATE__CONTATO__TRANSLATE` FOR EACH ROW BEGIN
		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__CONTATO__SECURITY_INSERT` BEFORE INSERT ON `TEMPLATE__CONTATO__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__CONTATO__SECURITY_UPDATE` BEFORE UPDATE ON `TEMPLATE__CONTATO__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__HOME__SECURITY_DELETE` BEFORE DELETE ON `TEMPLATE__HOME__TRANSLATE` FOR EACH ROW BEGIN
		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__HOME__SECURITY_INSERT` BEFORE INSERT ON `TEMPLATE__HOME__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__HOME__SECURITY_UPDATE` BEFORE UPDATE ON `TEMPLATE__HOME__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__SOBRE__SECURITY_DELETE` BEFORE DELETE ON `TEMPLATE__SOBRE__TRANSLATE` FOR EACH ROW BEGIN
		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__SOBRE__SECURITY_INSERT` BEFORE INSERT ON `TEMPLATE__SOBRE__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__SOBRE__SECURITY_UPDATE` BEFORE UPDATE ON `TEMPLATE__SOBRE__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__STATIC__SECURITY_DELETE` BEFORE DELETE ON `TEMPLATE__STATIC__TRANSLATE` FOR EACH ROW BEGIN
		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__STATIC__SECURITY_INSERT` BEFORE INSERT ON `TEMPLATE__STATIC__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TEMPLATE__STATIC__SECURITY_UPDATE` BEFORE UPDATE ON `TEMPLATE__STATIC__TRANSLATE` FOR EACH ROW BEGIN		DECLARE mensagem_erro VARCHAR(255);
		SET mensagem_erro = '0';
		IF @permitir_atualizacao=1 THEN 
			SET mensagem_erro = '';
		ELSE
			SET mensagem_erro = 'ATENÇÃO! Faça alterações APENAS pela tabela principal.';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = mensagem_erro;
		END IF;
	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UID_GALERIAS` BEFORE INSERT ON `GALERIAS__GALERIAS` FOR EACH ROW SET new.UID=FLOOR(RAND()*9007199254740991)+1//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UID_GALERIAS_IMAGES` BEFORE INSERT ON `GALERIAS__IMAGENS` FOR EACH ROW SET new.UID=FLOOR(RAND()*9007199254740991)+1//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UID_PLUGIN_GALERIAS` BEFORE INSERT ON `GALERIAS__PLUGIN` FOR EACH ROW SET new.UID=FLOOR(RAND()*9007199254740991)+1//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UID_USUARIOS` BEFORE INSERT ON `USUARIOS` FOR EACH ROW SET new.UID=FLOOR(RAND()*9007199254740991)+1//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UPDATE__QUEMSOMOS` AFTER UPDATE ON `QUEMSOMOS` FOR EACH ROW BEGIN
		    DECLARE record_count INT;
			SET @permitir_atualizacao = 1;
			SET @record_count = ( SELECT COUNT(*) FROM QUEMSOMOS__TRANSLATE WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG );
			IF  @record_count > 0 THEN 
				UPDATE QUEMSOMOS__TRANSLATE SET 
						SESSAO=IF(OLD.SESSAO!=NEW.SESSAO, NEW.SESSAO, SESSAO),
                        TITULO=IF(OLD.TITULO!=NEW.TITULO, NEW.TITULO, TITULO),
					 	TEXTO=IF(OLD.TEXTO!=NEW.TEXTO, NEW.TEXTO, TEXTO)
				WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG; 
			ELSE
				INSERT INTO QUEMSOMOS__TRANSLATE ( SESSAO,TITULO,TEXTO, ID_FW_PAI, FW_LANG) VALUES (NEW.SESSAO, NEW.TITULO,NEW.TEXTO,NEW.ID, NEW.FW_LANG);
			END IF; 

		END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UPDATE__TEMPLATE__AREAS_ATUACAO` AFTER UPDATE ON `TEMPLATE__AREAS_ATUACAO` FOR EACH ROW BEGIN
		    DECLARE record_count INT;
			SET @permitir_atualizacao = 1;
			SET @record_count = ( SELECT COUNT(*) FROM TEMPLATE__AREAS_ATUACAO__TRANSLATE WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG );
			IF  @record_count > 0 THEN 
				UPDATE TEMPLATE__AREAS_ATUACAO__TRANSLATE SET 
						TITULO=IF(OLD.TITULO!=NEW.TITULO, NEW.TITULO, TITULO),
					 	DESCRICAO=IF(OLD.DESCRICAO!=NEW.DESCRICAO, NEW.DESCRICAO, DESCRICAO),
					 	TIPO_ATUACAO=IF(OLD.TIPO_ATUACAO!=NEW.TIPO_ATUACAO, NEW.TIPO_ATUACAO, TIPO_ATUACAO)
				WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG; 
			ELSE
				INSERT INTO TEMPLATE__AREAS_ATUACAO__TRANSLATE ( TITULO,DESCRICAO,TIPO_ATUACAO, ID_FW_PAI, FW_LANG) VALUES ( NEW.TITULO,NEW.DESCRICAO,NEW.TIPO_ATUACAO,NEW.ID, NEW.FW_LANG);
			END IF; 

		END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UPDATE__TEMPLATE__AREAS_ATUACAO_CONSULTORIA` AFTER UPDATE ON `TEMPLATE__AREAS_ATUACAO_CONSULTORIA` FOR EACH ROW BEGIN
		    DECLARE record_count INT;
			SET @permitir_atualizacao = 1;
			SET @record_count = ( SELECT COUNT(*) FROM TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG );
			IF  @record_count > 0 THEN 
				UPDATE TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE SET 
						TITULO=IF(OLD.TITULO!=NEW.TITULO, NEW.TITULO, TITULO),
					 	DESCRICAO=IF(OLD.DESCRICAO!=NEW.DESCRICAO, NEW.DESCRICAO, DESCRICAO)
				WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG; 
			ELSE
				INSERT INTO TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE ( TITULO,DESCRICAO, ID_FW_PAI, FW_LANG) VALUES ( NEW.TITULO,NEW.DESCRICAO,NEW.ID, NEW.FW_LANG);
			END IF; 

		END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UPDATE__TEMPLATE__AREAS_ATUACAO_PRODUTOS` AFTER UPDATE ON `TEMPLATE__AREAS_ATUACAO_PRODUTOS` FOR EACH ROW BEGIN
		    DECLARE record_count INT;
			SET @permitir_atualizacao = 1;
			SET @record_count = ( SELECT COUNT(*) FROM TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG );
			IF  @record_count > 0 THEN 
				UPDATE TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE SET 
						TITULO=IF(OLD.TITULO!=NEW.TITULO, NEW.TITULO, TITULO),
					 	DESCRICAO=IF(OLD.DESCRICAO!=NEW.DESCRICAO, NEW.DESCRICAO, DESCRICAO)
				WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG; 
			ELSE
				INSERT INTO TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE ( TITULO,DESCRICAO, ID_FW_PAI, FW_LANG) VALUES ( NEW.TITULO,NEW.DESCRICAO,NEW.ID, NEW.FW_LANG);
			END IF; 

		END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UPDATE__TEMPLATE__CONTATO` AFTER UPDATE ON `TEMPLATE__CONTATO` FOR EACH ROW BEGIN
		    DECLARE record_count INT;
			SET @permitir_atualizacao = 1;
			SET @record_count = ( SELECT COUNT(*) FROM TEMPLATE__CONTATO__TRANSLATE WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG );
			IF  @record_count > 0 THEN 
				UPDATE TEMPLATE__CONTATO__TRANSLATE SET 
						TOP_TITLE=IF(OLD.TOP_TITLE!=NEW.TOP_TITLE, NEW.TOP_TITLE, TOP_TITLE),
					 	TITULO_FORM=IF(OLD.TITULO_FORM!=NEW.TITULO_FORM, NEW.TITULO_FORM, TITULO_FORM),
					 	ADRESS_TITLE=IF(OLD.ADRESS_TITLE!=NEW.ADRESS_TITLE, NEW.ADRESS_TITLE, ADRESS_TITLE),
					 	ADRESS_TEXT=IF(OLD.ADRESS_TEXT!=NEW.ADRESS_TEXT, NEW.ADRESS_TEXT, ADRESS_TEXT),
					 	HORARIOS_TITLE=IF(OLD.HORARIOS_TITLE!=NEW.HORARIOS_TITLE, NEW.HORARIOS_TITLE, HORARIOS_TITLE),
					 	HORARIOS_TEXT=IF(OLD.HORARIOS_TEXT!=NEW.HORARIOS_TEXT, NEW.HORARIOS_TEXT, HORARIOS_TEXT),
					 	EMAILS_TITLE=IF(OLD.EMAILS_TITLE!=NEW.EMAILS_TITLE, NEW.EMAILS_TITLE, EMAILS_TITLE),
					 	EMAILS_TEXT=IF(OLD.EMAILS_TEXT!=NEW.EMAILS_TEXT, NEW.EMAILS_TEXT, EMAILS_TEXT),
					 	TEXTO_BOTAO=IF(OLD.TEXTO_BOTAO!=NEW.TEXTO_BOTAO, NEW.TEXTO_BOTAO, TEXTO_BOTAO),
					 	PLACEHOLDER_NOME=IF(OLD.PLACEHOLDER_NOME!=NEW.PLACEHOLDER_NOME, NEW.PLACEHOLDER_NOME, PLACEHOLDER_NOME),
					 	PLACEHOLDER_EMAIL=IF(OLD.PLACEHOLDER_EMAIL!=NEW.PLACEHOLDER_EMAIL, NEW.PLACEHOLDER_EMAIL, PLACEHOLDER_EMAIL),
					 	PLACEHOLDER_TELEFONE=IF(OLD.PLACEHOLDER_TELEFONE!=NEW.PLACEHOLDER_TELEFONE, NEW.PLACEHOLDER_TELEFONE, PLACEHOLDER_TELEFONE),
					 	PLACEHOLDER_ASSUNTO=IF(OLD.PLACEHOLDER_ASSUNTO!=NEW.PLACEHOLDER_ASSUNTO, NEW.PLACEHOLDER_ASSUNTO, PLACEHOLDER_ASSUNTO),
					 	PLACEHOLDER_TEXTO=IF(OLD.PLACEHOLDER_TEXTO!=NEW.PLACEHOLDER_TEXTO, NEW.PLACEHOLDER_TEXTO, PLACEHOLDER_TEXTO)
				WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG; 
			ELSE
				INSERT INTO TEMPLATE__CONTATO__TRANSLATE ( TOP_TITLE,TITULO_FORM,ADRESS_TITLE,ADRESS_TEXT,HORARIOS_TITLE,HORARIOS_TEXT,EMAILS_TITLE,EMAILS_TEXT,TEXTO_BOTAO,PLACEHOLDER_NOME,PLACEHOLDER_EMAIL,PLACEHOLDER_TELEFONE,PLACEHOLDER_ASSUNTO,PLACEHOLDER_TEXTO, ID_FW_PAI, FW_LANG) VALUES ( NEW.TOP_TITLE,NEW.TITULO_FORM,NEW.ADRESS_TITLE,NEW.ADRESS_TEXT,NEW.HORARIOS_TITLE,NEW.HORARIOS_TEXT,NEW.EMAILS_TITLE,NEW.EMAILS_TEXT,NEW.TEXTO_BOTAO,NEW.PLACEHOLDER_NOME,NEW.PLACEHOLDER_EMAIL,NEW.PLACEHOLDER_TELEFONE,NEW.PLACEHOLDER_ASSUNTO,NEW.PLACEHOLDER_TEXTO,NEW.ID, NEW.FW_LANG);
			END IF; 

		END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UPDATE__TEMPLATE__HOME` AFTER UPDATE ON `TEMPLATE__HOME` FOR EACH ROW BEGIN
		    DECLARE record_count INT;
			SET @permitir_atualizacao = 1;
			SET @record_count = ( SELECT COUNT(*) FROM TEMPLATE__HOME__TRANSLATE WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG );
			IF  @record_count > 0 THEN 
				UPDATE TEMPLATE__HOME__TRANSLATE SET 
						OUTRAS_SOLUCOES=IF(OLD.OUTRAS_SOLUCOES!=NEW.OUTRAS_SOLUCOES, NEW.OUTRAS_SOLUCOES, OUTRAS_SOLUCOES),
					 	OUTRAS_SOLUCOES_TXT=IF(OLD.OUTRAS_SOLUCOES_TXT!=NEW.OUTRAS_SOLUCOES_TXT, NEW.OUTRAS_SOLUCOES_TXT, OUTRAS_SOLUCOES_TXT),
					 	ANOS_EXP_NUM=IF(OLD.ANOS_EXP_NUM!=NEW.ANOS_EXP_NUM, NEW.ANOS_EXP_NUM, ANOS_EXP_NUM),
					 	ANOS_EXP_TXT=IF(OLD.ANOS_EXP_TXT!=NEW.ANOS_EXP_TXT, NEW.ANOS_EXP_TXT, ANOS_EXP_TXT),
					 	ANOS_EXP_DESC=IF(OLD.ANOS_EXP_DESC!=NEW.ANOS_EXP_DESC, NEW.ANOS_EXP_DESC, ANOS_EXP_DESC)
				WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG; 
			ELSE
				INSERT INTO TEMPLATE__HOME__TRANSLATE ( OUTRAS_SOLUCOES,OUTRAS_SOLUCOES_TXT,ANOS_EXP_NUM,ANOS_EXP_TXT,ANOS_EXP_DESC, ID_FW_PAI, FW_LANG) VALUES ( NEW.OUTRAS_SOLUCOES,NEW.OUTRAS_SOLUCOES_TXT,NEW.ANOS_EXP_NUM,NEW.ANOS_EXP_TXT,NEW.ANOS_EXP_DESC,NEW.ID, NEW.FW_LANG);
			END IF; 

		END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UPDATE__TEMPLATE__SOBRE` AFTER UPDATE ON `TEMPLATE__SOBRE` FOR EACH ROW BEGIN
		    DECLARE record_count INT;
			SET @permitir_atualizacao = 1;
			SET @record_count = ( SELECT COUNT(*) FROM TEMPLATE__SOBRE__TRANSLATE WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG );
			IF  @record_count > 0 THEN 
				UPDATE TEMPLATE__SOBRE__TRANSLATE SET 
						SESSAO=IF(OLD.SESSAO!=NEW.SESSAO, NEW.SESSAO, SESSAO),
					 	TITULO=IF(OLD.TITULO!=NEW.TITULO, NEW.TITULO, TITULO),
					 	CONTEUDO=IF(OLD.CONTEUDO!=NEW.CONTEUDO, NEW.CONTEUDO, CONTEUDO)
				WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG; 
			ELSE
				INSERT INTO TEMPLATE__SOBRE__TRANSLATE ( SESSAO,TITULO,CONTEUDO, ID_FW_PAI, FW_LANG) VALUES ( NEW.SESSAO,NEW.TITULO,NEW.CONTEUDO,NEW.ID, NEW.FW_LANG);
			END IF; 

		END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `UPDATE__TEMPLATE__STATIC` AFTER UPDATE ON `TEMPLATE__STATIC` FOR EACH ROW BEGIN
		    DECLARE record_count INT;
			SET @permitir_atualizacao = 1;
			SET @record_count = ( SELECT COUNT(*) FROM TEMPLATE__STATIC__TRANSLATE WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG );
			IF  @record_count > 0 THEN 
				UPDATE TEMPLATE__STATIC__TRANSLATE SET 
						MENU_LABEL_HOME=IF(OLD.MENU_LABEL_HOME!=NEW.MENU_LABEL_HOME, NEW.MENU_LABEL_HOME, MENU_LABEL_HOME),
					 	MENU_LABEL_EMPRESA=IF(OLD.MENU_LABEL_EMPRESA!=NEW.MENU_LABEL_EMPRESA, NEW.MENU_LABEL_EMPRESA, MENU_LABEL_EMPRESA),
					 	MENU_LABEL_ATUACAO=IF(OLD.MENU_LABEL_ATUACAO!=NEW.MENU_LABEL_ATUACAO, NEW.MENU_LABEL_ATUACAO, MENU_LABEL_ATUACAO),
					 	MENU_LABEL_DOC=IF(OLD.MENU_LABEL_DOC!=NEW.MENU_LABEL_DOC, NEW.MENU_LABEL_DOC, MENU_LABEL_DOC),
					 	MENU_LABEL_CLIENTES=IF(OLD.MENU_LABEL_CLIENTES!=NEW.MENU_LABEL_CLIENTES, NEW.MENU_LABEL_CLIENTES, MENU_LABEL_CLIENTES),
					 	MENU_LABEL_CASES=IF(OLD.MENU_LABEL_CASES!=NEW.MENU_LABEL_CASES, NEW.MENU_LABEL_CASES, MENU_LABEL_CASES),
					 	MENU_LABEL_CONTATO=IF(OLD.MENU_LABEL_CONTATO!=NEW.MENU_LABEL_CONTATO, NEW.MENU_LABEL_CONTATO, MENU_LABEL_CONTATO),
					 	MENU_LINK_HOME=IF(OLD.MENU_LINK_HOME!=NEW.MENU_LINK_HOME, NEW.MENU_LINK_HOME, MENU_LINK_HOME),
					 	MENU_LINK_EMPRESA=IF(OLD.MENU_LINK_EMPRESA!=NEW.MENU_LINK_EMPRESA, NEW.MENU_LINK_EMPRESA, MENU_LINK_EMPRESA),
					 	MENU_LINK_ATUACAO=IF(OLD.MENU_LINK_ATUACAO!=NEW.MENU_LINK_ATUACAO, NEW.MENU_LINK_ATUACAO, MENU_LINK_ATUACAO),
					 	MENU_LINK_DOC=IF(OLD.MENU_LINK_DOC!=NEW.MENU_LINK_DOC, NEW.MENU_LINK_DOC, MENU_LINK_DOC),
					 	MENU_LINK_CLIENTES=IF(OLD.MENU_LINK_CLIENTES!=NEW.MENU_LINK_CLIENTES, NEW.MENU_LINK_CLIENTES, MENU_LINK_CLIENTES),
					 	MENU_LINK_CASES=IF(OLD.MENU_LINK_CASES!=NEW.MENU_LINK_CASES, NEW.MENU_LINK_CASES, MENU_LINK_CASES),
					 	MENU_LINK_CONTATO=IF(OLD.MENU_LINK_CONTATO!=NEW.MENU_LINK_CONTATO, NEW.MENU_LINK_CONTATO, MENU_LINK_CONTATO),
					 	MENU_LABEL_ATUACAO_DOC=IF(OLD.MENU_LABEL_ATUACAO_DOC!=NEW.MENU_LABEL_ATUACAO_DOC, NEW.MENU_LABEL_ATUACAO_DOC, MENU_LABEL_ATUACAO_DOC),
					 	MENU_LINK_ATUACAO_DOC=IF(OLD.MENU_LINK_ATUACAO_DOC!=NEW.MENU_LINK_ATUACAO_DOC, NEW.MENU_LINK_ATUACAO_DOC, MENU_LINK_ATUACAO_DOC),
					 	MENU_LABEL_ATUACAO_PROD=IF(OLD.MENU_LABEL_ATUACAO_PROD!=NEW.MENU_LABEL_ATUACAO_PROD, NEW.MENU_LABEL_ATUACAO_PROD, MENU_LABEL_ATUACAO_PROD),
					 	MENU_LINK_ATUACAO_PROD=IF(OLD.MENU_LINK_ATUACAO_PROD!=NEW.MENU_LINK_ATUACAO_PROD, NEW.MENU_LINK_ATUACAO_PROD, MENU_LINK_ATUACAO_PROD),
					 	MENU_LABEL_ATUACAO_CONS=IF(OLD.MENU_LABEL_ATUACAO_CONS!=NEW.MENU_LABEL_ATUACAO_CONS, NEW.MENU_LABEL_ATUACAO_CONS, MENU_LABEL_ATUACAO_CONS),
					 	MENU_LINK_ATUACAO_CONS=IF(OLD.MENU_LINK_ATUACAO_CONS!=NEW.MENU_LINK_ATUACAO_CONS, NEW.MENU_LINK_ATUACAO_CONS, MENU_LINK_ATUACAO_CONS),
					 	HEADER_NEWSLETTER_TITULO=IF(OLD.HEADER_NEWSLETTER_TITULO!=NEW.HEADER_NEWSLETTER_TITULO, NEW.HEADER_NEWSLETTER_TITULO, HEADER_NEWSLETTER_TITULO),
					 	HEADER_NEWSLETTER_DESC=IF(OLD.HEADER_NEWSLETTER_DESC!=NEW.HEADER_NEWSLETTER_DESC, NEW.HEADER_NEWSLETTER_DESC, HEADER_NEWSLETTER_DESC),
					 	HEADER_PLACEHOLDER=IF(OLD.HEADER_PLACEHOLDER!=NEW.HEADER_PLACEHOLDER, NEW.HEADER_PLACEHOLDER, HEADER_PLACEHOLDER),
					 	HEADER_ABOUT_TITULO=IF(OLD.HEADER_ABOUT_TITULO!=NEW.HEADER_ABOUT_TITULO, NEW.HEADER_ABOUT_TITULO, HEADER_ABOUT_TITULO),
					 	HEADER_ABOUT_DESC=IF(OLD.HEADER_ABOUT_DESC!=NEW.HEADER_ABOUT_DESC, NEW.HEADER_ABOUT_DESC, HEADER_ABOUT_DESC),
					 	HEADER_TELEFONE=IF(OLD.HEADER_TELEFONE!=NEW.HEADER_TELEFONE, NEW.HEADER_TELEFONE, HEADER_TELEFONE),
					 	HEADER_ENDERECO=IF(OLD.HEADER_ENDERECO!=NEW.HEADER_ENDERECO, NEW.HEADER_ENDERECO, HEADER_ENDERECO),
					 	HEADER_NEWSLETTER_BUTTON=IF(OLD.HEADER_NEWSLETTER_BUTTON!=NEW.HEADER_NEWSLETTER_BUTTON, NEW.HEADER_NEWSLETTER_BUTTON, HEADER_NEWSLETTER_BUTTON),
					 	HEADER_COPYRIGHT=IF(OLD.HEADER_COPYRIGHT!=NEW.HEADER_COPYRIGHT, NEW.HEADER_COPYRIGHT, HEADER_COPYRIGHT),
					 	FOOTER_NEWSLETTER_TITULO=IF(OLD.FOOTER_NEWSLETTER_TITULO!=NEW.FOOTER_NEWSLETTER_TITULO, NEW.FOOTER_NEWSLETTER_TITULO, FOOTER_NEWSLETTER_TITULO),
					 	FOOTER_NEWSLETTER_DESC=IF(OLD.FOOTER_NEWSLETTER_DESC!=NEW.FOOTER_NEWSLETTER_DESC, NEW.FOOTER_NEWSLETTER_DESC, FOOTER_NEWSLETTER_DESC),
					 	FOOTER_PLACEHOLDER=IF(OLD.FOOTER_PLACEHOLDER!=NEW.FOOTER_PLACEHOLDER, NEW.FOOTER_PLACEHOLDER, FOOTER_PLACEHOLDER),
					 	FOOTER_ABOUT_TITULO=IF(OLD.FOOTER_ABOUT_TITULO!=NEW.FOOTER_ABOUT_TITULO, NEW.FOOTER_ABOUT_TITULO, FOOTER_ABOUT_TITULO),
					 	FOOTER_ABOUT_DESC=IF(OLD.FOOTER_ABOUT_DESC!=NEW.FOOTER_ABOUT_DESC, NEW.FOOTER_ABOUT_DESC, FOOTER_ABOUT_DESC),
					 	FOOTER_TELEFONE=IF(OLD.FOOTER_TELEFONE!=NEW.FOOTER_TELEFONE, NEW.FOOTER_TELEFONE, FOOTER_TELEFONE),
					 	FOOTER_ENDERECO=IF(OLD.FOOTER_ENDERECO!=NEW.FOOTER_ENDERECO, NEW.FOOTER_ENDERECO, FOOTER_ENDERECO),
					 	FOOTER_NEWSLETTER_BUTTON=IF(OLD.FOOTER_NEWSLETTER_BUTTON!=NEW.FOOTER_NEWSLETTER_BUTTON, NEW.FOOTER_NEWSLETTER_BUTTON, FOOTER_NEWSLETTER_BUTTON),
					 	FOOTER_COPYRIGHT=IF(OLD.FOOTER_COPYRIGHT!=NEW.FOOTER_COPYRIGHT, NEW.FOOTER_COPYRIGHT, FOOTER_COPYRIGHT),
					 	FOOTER_LINK_COPYRIGHT=IF(OLD.FOOTER_LINK_COPYRIGHT!=NEW.FOOTER_LINK_COPYRIGHT, NEW.FOOTER_LINK_COPYRIGHT, FOOTER_LINK_COPYRIGHT),
					 	TITULO_AREAS=IF(OLD.TITULO_AREAS!=NEW.TITULO_AREAS, NEW.TITULO_AREAS, TITULO_AREAS),
					 	TITULO_CLIENTES=IF(OLD.TITULO_CLIENTES!=NEW.TITULO_CLIENTES, NEW.TITULO_CLIENTES, TITULO_CLIENTES),
					 	TITULO_ATUACAO_CONSULT=IF(OLD.TITULO_ATUACAO_CONSULT!=NEW.TITULO_ATUACAO_CONSULT, NEW.TITULO_ATUACAO_CONSULT, TITULO_ATUACAO_CONSULT),
					 	TITULO_ATUACAO_DOC=IF(OLD.TITULO_ATUACAO_DOC!=NEW.TITULO_ATUACAO_DOC, NEW.TITULO_ATUACAO_DOC, TITULO_ATUACAO_DOC),
					 	TITULO_ATUACAO_PROD=IF(OLD.TITULO_ATUACAO_PROD!=NEW.TITULO_ATUACAO_PROD, NEW.TITULO_ATUACAO_PROD, TITULO_ATUACAO_PROD),
					 	TITULO_SOBRE_NOS=IF(OLD.TITULO_SOBRE_NOS!=NEW.TITULO_SOBRE_NOS, NEW.TITULO_SOBRE_NOS, TITULO_SOBRE_NOS),
					 	TITULO_CONTATOS=IF(OLD.TITULO_CONTATOS!=NEW.TITULO_CONTATOS, NEW.TITULO_CONTATOS, TITULO_CONTATOS)
				WHERE ID_FW_PAI = NEW.ID AND FW_LANG = NEW.FW_LANG; 
			ELSE
				INSERT INTO TEMPLATE__STATIC__TRANSLATE ( MENU_LABEL_HOME,MENU_LABEL_EMPRESA,MENU_LABEL_ATUACAO,MENU_LABEL_DOC,MENU_LABEL_CLIENTES,MENU_LABEL_CASES,MENU_LABEL_CONTATO,MENU_LINK_HOME,MENU_LINK_EMPRESA,MENU_LINK_ATUACAO,MENU_LINK_DOC,MENU_LINK_CLIENTES,MENU_LINK_CASES,MENU_LINK_CONTATO,MENU_LABEL_ATUACAO_DOC,MENU_LINK_ATUACAO_DOC,MENU_LABEL_ATUACAO_PROD,MENU_LINK_ATUACAO_PROD,MENU_LABEL_ATUACAO_CONS,MENU_LINK_ATUACAO_CONS,HEADER_NEWSLETTER_TITULO,HEADER_NEWSLETTER_DESC,HEADER_PLACEHOLDER,HEADER_ABOUT_TITULO,HEADER_ABOUT_DESC,HEADER_TELEFONE,HEADER_ENDERECO,HEADER_NEWSLETTER_BUTTON,HEADER_COPYRIGHT,FOOTER_NEWSLETTER_TITULO,FOOTER_NEWSLETTER_DESC,FOOTER_PLACEHOLDER,FOOTER_ABOUT_TITULO,FOOTER_ABOUT_DESC,FOOTER_TELEFONE,FOOTER_ENDERECO,FOOTER_NEWSLETTER_BUTTON,FOOTER_COPYRIGHT,FOOTER_LINK_COPYRIGHT,TITULO_AREAS,TITULO_CLIENTES,TITULO_ATUACAO_CONSULT,TITULO_ATUACAO_DOC,TITULO_ATUACAO_PROD,TITULO_SOBRE_NOS,TITULO_CONTATOS, ID_FW_PAI, FW_LANG) VALUES ( NEW.MENU_LABEL_HOME,NEW.MENU_LABEL_EMPRESA,NEW.MENU_LABEL_ATUACAO,NEW.MENU_LABEL_DOC,NEW.MENU_LABEL_CLIENTES,NEW.MENU_LABEL_CASES,NEW.MENU_LABEL_CONTATO,NEW.MENU_LINK_HOME,NEW.MENU_LINK_EMPRESA,NEW.MENU_LINK_ATUACAO,NEW.MENU_LINK_DOC,NEW.MENU_LINK_CLIENTES,NEW.MENU_LINK_CASES,NEW.MENU_LINK_CONTATO,NEW.MENU_LABEL_ATUACAO_DOC,NEW.MENU_LINK_ATUACAO_DOC,NEW.MENU_LABEL_ATUACAO_PROD,NEW.MENU_LINK_ATUACAO_PROD,NEW.MENU_LABEL_ATUACAO_CONS,NEW.MENU_LINK_ATUACAO_CONS,NEW.HEADER_NEWSLETTER_TITULO,NEW.HEADER_NEWSLETTER_DESC,NEW.HEADER_PLACEHOLDER,NEW.HEADER_ABOUT_TITULO,NEW.HEADER_ABOUT_DESC,NEW.HEADER_TELEFONE,NEW.HEADER_ENDERECO,NEW.HEADER_NEWSLETTER_BUTTON,NEW.HEADER_COPYRIGHT,NEW.FOOTER_NEWSLETTER_TITULO,NEW.FOOTER_NEWSLETTER_DESC,NEW.FOOTER_PLACEHOLDER,NEW.FOOTER_ABOUT_TITULO,NEW.FOOTER_ABOUT_DESC,NEW.FOOTER_TELEFONE,NEW.FOOTER_ENDERECO,NEW.FOOTER_NEWSLETTER_BUTTON,NEW.FOOTER_COPYRIGHT,NEW.FOOTER_LINK_COPYRIGHT,NEW.TITULO_AREAS,NEW.TITULO_CLIENTES,NEW.TITULO_ATUACAO_CONSULT,NEW.TITULO_ATUACAO_DOC,NEW.TITULO_ATUACAO_PROD,NEW.TITULO_SOBRE_NOS,NEW.TITULO_CONTATOS,NEW.ID, NEW.FW_LANG);
			END IF; 

		END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
