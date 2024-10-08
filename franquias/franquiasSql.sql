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
  KEY `REL_FRANQUIA_UID_MATRIZ` (`UID_PAI`),
  CONSTRAINT `REL_FRANQUIA_STATUS` FOREIGN KEY (`STATUS`) REFERENCES `FRANQUIAS__STATUS` (`CODE`),
  CONSTRAINT `REL_FRANQUIA_TIPO` FOREIGN KEY (`TIPO`) REFERENCES `FRANQUIAS__TIPO` (`CODE`),
  CONSTRAINT `REL_FRANQUIA_UID_MATRIZ` FOREIGN KEY (`UID_PAI`) REFERENCES `FRANQUIAS` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `FRANQUIAS` DISABLE KEYS */;
INSERT INTO `FRANQUIAS` (`ID`, `UID`, `UID_PAI`, `TIPO`, `NOME`, `STATUS`, `CEP`, `UF`, `CIDADE`, `COMPLEMENTO`, `NUMERO`, `LOGRADOURO`) VALUES
	(41, 12516983936090, 16574974373518, 1, 'Nova Franquia', 1, '', '', '', '', 0, ''),
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
  KEY `UID_USER` (`UID_USER`),
  CONSTRAINT `REL_FRANQUIA_LINK_FRANQUIA` FOREIGN KEY (`UID_FRANQUIA`) REFERENCES `FRANQUIAS` (`UID`),
  CONSTRAINT `REL_FRANQUIA_LINK_USER` FOREIGN KEY (`UID_USER`) REFERENCES `USUARIOS` (`UID`)
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
