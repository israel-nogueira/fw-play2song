INSERT INTO FINANCEIRO__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('46', '1', 'sucesso', 'Pronto, seu pagamento foi aprovado! Você poderá encontrar este valor em suas faturas do perfil selecionado.');

INSERT INTO FINANCEIRO__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('47', '2', 'pendente', 'Estamos aguardando a confirmação do pagamento.
Não se preocupe, assim que for confirmado, o saldo será creditado em  sua conta.');

INSERT INTO FINANCEIRO__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('57', '3', 'similaridade', 'Você realizou um pagamento similar há poucos instantes.
Tente novamente em alguns minutos.');

INSERT INTO FINANCEIRO__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('61', '4', 'max de tentativas', 'Você atingiu o limite de tentativas permitido. Tente novamente amanhã');

INSERT INTO FINANCEIRO__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('90', '5', 'limite diário', 'Você atingiu o limite diário desta operação. Tente novamente amanhã');

INSERT INTO FINANCEIRO__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('93', '6', 'erro no processo', 'Não pudemos processar seu pagamento');

INSERT INTO FINANCEIRO__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('94', '7', 'auth inválido', 'Código de dois fatores está incorreto');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('1', '1', 'RECARGA');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('2', '2', 'SAQUE');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('5', '3', 'COMPRA NA LOJA');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('6', '4', 'ENTRADA DE SALDO');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('7', '5', 'SAÍDA DE SALDO');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('8', '6', 'RECARGA DE SALDO');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('9', '7', 'RECOMPENSA');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('10', '8', 'ATIVAÇÃO DE PLANO');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('11', '9', 'RENTABILIZAÇÃO POR CICLO');

INSERT INTO FINANCEIRO__TIPO (ID, CODE, TYPE)
VALUES ('12', '10', 'TRANSBORDO DE BTC RENTAL');

INSERT INTO FRANQUIAS (ID, UID, UID_PAI, TIPO, NOME, STATUS, CEP, UF, CIDADE, COMPLEMENTO, NUMERO, LOGRADOURO)
VALUES ('41', '12516983936090', '16574974373518', '1', 'Nova Franquia', '1', '', 'fd', '', '', '0', '');

INSERT INTO FRANQUIAS (ID, UID, UID_PAI, TIPO, NOME, STATUS, CEP, UF, CIDADE, COMPLEMENTO, NUMERO, LOGRADOURO)
VALUES ('42', '16574974373518', '12516983936090', '1', 'Nova Franquia', '3', '', '', '', '', '0', '');

INSERT INTO FRANQUIAS__LINIK_USER (ID, UID_USER, UID_FRANQUIA)
VALUES ('5', '99860182833561704', '12516983936090');

INSERT INTO FRANQUIAS__LINIK_USER (ID, UID_USER, UID_FRANQUIA)
VALUES ('6', '99860182833561703', '12516983936090');

INSERT INTO FRANQUIAS__LINIK_USER (ID, UID_USER, UID_FRANQUIA)
VALUES ('7', '99860182833561702', '12516983936090');

INSERT INTO FRANQUIAS__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('1', '1', 'ATIVA', 'FRANQUIA ATIVA E DENTRO DOS PADRÕES');

INSERT INTO FRANQUIAS__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('2', '2', 'INATIVA', 'FRANQUIA INATIVA');

INSERT INTO FRANQUIAS__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('3', '3', 'BLOQUEADA', 'FRANQUIA BLOQUEADA');

INSERT INTO FRANQUIAS__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('4', '4', 'EXCLUÍDA', 'FRANQUIA EXCLUIDA');

INSERT INTO FRANQUIAS__STATUS (ID, CODE, STATUS, DESCRICAO)
VALUES ('5', '5', 'EDIÇÃO', 'EM CRIAÇÃO/EDIÇÃO');

INSERT INTO FRANQUIAS__TIPO (ID, CODE, TIPO)
VALUES ('1', '1', 'MATRIZ');

INSERT INTO FRANQUIAS__TIPO (ID, CODE, TIPO)
VALUES ('2', '2', 'FILIAL');

INSERT INTO FRANQUIAS__TIPO (ID, CODE, TIPO)
VALUES ('3', '3', 'FRANQUIA');

INSERT INTO FRANQUIAS__TIPO_VINCULO (ID, CODE, VINCULO)
VALUES ('1', '1', 'RESPONSAVEL');

INSERT INTO FRANQUIAS__TIPO_VINCULO (ID, CODE, VINCULO)
VALUES ('2', '2', 'ADMIN');

INSERT INTO GALERIAS__GALERIAS (ID, UID, UID_PLUGIN, TITULO)
VALUES ('21', '4899293551239047', '674105368613986', 'CLIENTES E PARCEIROS');

INSERT INTO GALERIAS__IMAGENS (ID, UID, UID_PLUGIN, UID_GALERIA, FILENAME, ORIGINAL_NAME, MIME, TITULO, DESCRICAO, PESO, 50x50, 100x100, 300x300)
VALUES ('85', '6653622370602429', '674105368613986', '4899293551239047', 'abe603d387d815cb4f6500290f5d9797.png', '3.jpg', 'image/jpeg', 'playboy', 'www.playboy.com', '152348', 'abe603d387d815cb4f6500290f5d9797-50x50x100.png', 'abe603d387d815cb4f6500290f5d9797-100x100x100.png', 'abe603d387d815cb4f6500290f5d9797-300x300x100.png');

INSERT INTO GALERIAS__IMAGENS (ID, UID, UID_PLUGIN, UID_GALERIA, FILENAME, ORIGINAL_NAME, MIME, TITULO, DESCRICAO, PESO, 50x50, 100x100, 300x300)
VALUES ('86', '5794711244790025', '674105368613986', '4899293551239047', '0d089caa77ce30b79df6a2ab494dbd6c.png', '4.jpg', 'image/jpeg', 'mais outro cliente', 'www.gmagazine.com', '83334', '0d089caa77ce30b79df6a2ab494dbd6c-50x50x100.png', '0d089caa77ce30b79df6a2ab494dbd6c-100x100x100.png', '0d089caa77ce30b79df6a2ab494dbd6c-300x300x100.png');

INSERT INTO GALERIAS__IMAGENS (ID, UID, UID_PLUGIN, UID_GALERIA, FILENAME, ORIGINAL_NAME, MIME, TITULO, DESCRICAO, PESO, 50x50, 100x100, 300x300)
VALUES ('87', '5490134225914', '674105368613986', '4899293551239047', '0d7cf23eaa9821ad39577da72f888c18.png', '5.jpg', 'image/jpeg', '1111', 'https://google.com', '92960', '0d7cf23eaa9821ad39577da72f888c18-50x50x100.png', '0d7cf23eaa9821ad39577da72f888c18-100x100x100.png', '0d7cf23eaa9821ad39577da72f888c18-300x300x100.png');

INSERT INTO GALERIAS__PLUGIN (ID, UID, TITULO, SLUG, MULTIPLAS, TAMANHO_THUMB)
VALUES ('10', '7598884166302868', '11111', '456x678', '3', '50x50,100x100,300x300');

INSERT INTO GALERIAS__PLUGIN (ID, UID, TITULO, SLUG, MULTIPLAS, TAMANHO_THUMB)
VALUES ('11', '6474601582035575', '222222', '', '2', '50x50,100x100,300x300');

INSERT INTO GALERIAS__PLUGIN (ID, UID, TITULO, SLUG, MULTIPLAS, TAMANHO_THUMB)
VALUES ('13', '674105368613986', 'Clientes', '', '2', '50x50,100x100,300x300');

INSERT INTO MIDIA__BANNER (ID, ID_PLUGIN, LINK, TARGET, ANALITYCS, CLICKTAG, TITULO, DESCRICAO, STATUS, INICIA, TERMINA)
VALUES ('71', '23', NULL, '_Self', '0', NULL, 'Novo Banner', 'Novo Banner', '4', NULL, NULL);

INSERT INTO MIDIA__FILES (ID, ID_BANNER, ID_PLUGIN, NOME_ORIGINAL, PATH, FILENAME, MEDIA_QUERY, SIZE, TYPE)
VALUES ('286', '71', '23', '425.png', 'PLUGIN_23/BANNER_71', 'fcb555600f85869e7c1f80bd71212098.png', '425', '185710', 'image/png');

INSERT INTO MIDIA__FILES (ID, ID_BANNER, ID_PLUGIN, NOME_ORIGINAL, PATH, FILENAME, MEDIA_QUERY, SIZE, TYPE)
VALUES ('287', '71', '23', '768.png', 'PLUGIN_23/BANNER_71', '63cc9c9d7c9cee4a8f5f00df89c36599.png', '768', '409255', 'image/png');

INSERT INTO MIDIA__FILES (ID, ID_BANNER, ID_PLUGIN, NOME_ORIGINAL, PATH, FILENAME, MEDIA_QUERY, SIZE, TYPE)
VALUES ('288', '71', '23', '1024.png', 'PLUGIN_23/BANNER_71', '3e069b6a958330825e92b7e246bc0a1c.png', '1024', '535506', 'image/png');

INSERT INTO MIDIA__FILES (ID, ID_BANNER, ID_PLUGIN, NOME_ORIGINAL, PATH, FILENAME, MEDIA_QUERY, SIZE, TYPE)
VALUES ('289', '71', '23', '1440.png', 'PLUGIN_23/BANNER_71', '53dac973d7c33c52ea805d1126dcb792.png', '1440', '734627', 'image/png');

INSERT INTO MIDIA__FILES (ID, ID_BANNER, ID_PLUGIN, NOME_ORIGINAL, PATH, FILENAME, MEDIA_QUERY, SIZE, TYPE)
VALUES ('290', '71', '23', '1920.png', 'PLUGIN_23/BANNER_71', 'e4582ff852a7cbe6d11e2e12d823e475.png', '1920', '820746', 'image/png');

INSERT INTO MIDIA__PLUGIN (ID, TITULO, DESCRICAO, SLUG, RESPONSIVO, MULTIPLOS)
VALUES ('23', 'HOME TOPO PT', '', 'DP_HOME_PT', '1', '1');

INSERT INTO MIDIA__STATUS (ID, STATUS)
VALUES ('1', 'ATIVO');

INSERT INTO MIDIA__STATUS (ID, STATUS)
VALUES ('2', 'INATIVO');

INSERT INTO MIDIA__STATUS (ID, STATUS)
VALUES ('3', 'EXCLUIDO');

INSERT INTO MIDIA__STATUS (ID, STATUS)
VALUES ('4', 'EM EDIÇÃO');

INSERT INTO NEWSLETTER (ID, EMAIL)
VALUES ('1', 'DDDDDDDDDD@SFSADF.COM');

INSERT INTO NEWSLETTER (ID, EMAIL)
VALUES ('2', 'DDDDDDDDDD@SFSADF.COM');

INSERT INTO NOTIFICACOES__TEMPLATES (ID, TITULO, CODE, TEMPLATE, NOME_VAR, BALAO_TOPO)
VALUES ('1', 'SOBE COMISSÃO DE REVENDA', '1', 'Olá <b style=\"color:#FFF;font-weight: 500;\">{VENDEDOR_NOME}</b> você recebeu de 
 <b style=\"color:#FFF;font-weight: 500;\">{COMPRADOR_NOME}</b> uma comissão de vendas no valor de R$ {VALOR}', 'sobe_remuneracao', 'Você recebeu de <b style=\"font-weight: 700;\">{{COMPRADOR_NOME}} R$ {{VALOR}}</b>');

INSERT INTO NOTIFICACOES__TEMPLATES (ID, TITULO, CODE, TEMPLATE, NOME_VAR, BALAO_TOPO)
VALUES ('2', 'SOBE COMISSÃO DE MERECIMENTO', '2', 'Olá <b style=\"color:#FFF;font-weight: 500;\">{VENDEDOR_NOME}</b> o seu(sua) afiliado(a)  <b style=\"color:#FFF;font-weight: 500;\">{COMPRADOR_NOME}</b> está participando de uma campanha, e por esse motivo, subiu uma comissão de vendas no valor de R$ {VALOR} para você!<br>Gostaria de retribuir? <a href=\"#\" style=\"color: #FFF;\">Clique aqui</a> e participe com o link dele(a) para que todos ganhem!', 'sobe_merecimento', 'MAIS UM {{NOME}} KKKK');

INSERT INTO NOTIFICACOES__TEMPLATES (ID, TITULO, CODE, TEMPLATE, NOME_VAR, BALAO_TOPO)
VALUES ('3', 'CACHÊ DO TICKER', '3', 'Olá Ticker, você recebeu de {NOME} o valor de R${VALOR} referente ao seu evento.
', 'sobe_cache_ticker', 'Olá Ticker, você recebeu de {{NOME}} o valor de R${{VALOR}} referente ao seu evento.
');

INSERT INTO NOTIFICACOES__TEMPLATES (ID, TITULO, CODE, TEMPLATE, NOME_VAR, BALAO_TOPO)
VALUES ('4', 'RECARGA EFETUADA COM SUCESSO', '4', 'Olá <b style=\"color:#FFF;font-weight: 500;\">{NOME}</b>, você recarregou o valor de R$ {VALOR} com sucesso', 'ativa_fatura_recarga', 'Olá <b style=\"color:#FFF;font-weight: 500;\">{{NOME}}</b>, você recarregou o valor de R$ {{VALOR}} com sucesso');

INSERT INTO PRODUTO (ID, CODE, NOME, DESCRICAO, OLD_VALOR, VALOR, STATUS)
VALUES ('4', '99871033581895680', 'Produto 3', 'Minha descrição 2', '0.00', '50.00', '1');

INSERT INTO PRODUTO (ID, CODE, NOME, DESCRICAO, OLD_VALOR, VALOR, STATUS)
VALUES ('5', '99871033581895681', 'Produto 3', 'Minha descrição 2', '0.00', '50.00', '1');

INSERT INTO PRODUTO (ID, CODE, NOME, DESCRICAO, OLD_VALOR, VALOR, STATUS)
VALUES ('6', '99871033581895682', 'Produto 3', 'Minha descrição 2', '0.00', '50.00', '1');

INSERT INTO PRODUTO__CATEGORIAS (ID, UID_FRANQUIA, UID_CATPAI, CATEGORIA)
VALUES ('4', '0', '0', 'CATEGORIA 1');

INSERT INTO PRODUTO__CATEGORIAS (ID, UID_FRANQUIA, UID_CATPAI, CATEGORIA)
VALUES ('5', '0', '0', 'CATEGORIA 2');

INSERT INTO PRODUTO__CATEGORIAS (ID, UID_FRANQUIA, UID_CATPAI, CATEGORIA)
VALUES ('6', '0', '0', 'CATEGORIA 3');

INSERT INTO PRODUTO__LINK_CAT (ID, UID_FRANQUIA, UID_PROD, UID_CAT)
VALUES ('10', '0', '4', '4');

INSERT INTO PRODUTO__LINK_CAT (ID, UID_FRANQUIA, UID_PROD, UID_CAT)
VALUES ('11', '0', '4', '5');

INSERT INTO PRODUTO__LINK_CAT (ID, UID_FRANQUIA, UID_PROD, UID_CAT)
VALUES ('12', '0', '4', '3');

INSERT INTO PRODUTO__STATUS (ID, CODE, STATUS)
VALUES ('1', '1', 'ATIVO');

INSERT INTO PRODUTO__STATUS (ID, CODE, STATUS)
VALUES ('2', '2', 'INATIVO');

INSERT INTO PRODUTO__STATUS (ID, CODE, STATUS)
VALUES ('3', '3', 'EXCLUIDO');

INSERT INTO PRODUTO__TIPO (ID, CODE, TIPO)
VALUES ('1', '1', 'PRODUTO');

INSERT INTO PRODUTO__TIPO (ID, CODE, TIPO)
VALUES ('2', '2', 'KIT');

INSERT INTO PRODUTO__TIPO (ID, CODE, TIPO)
VALUES ('3', '3', 'PLANO');

INSERT INTO PRODUTO__TIPO (ID, CODE, TIPO)
VALUES ('4', '4', 'FRANQUIA');

INSERT INTO PRODUTO__TIPO (ID, CODE, TIPO)
VALUES ('6', '6', 'INVOICE PLANO');

INSERT INTO PRODUTO__TIPO (ID, CODE, TIPO)
VALUES ('7', '7', 'INVOICE PRODUTO');

INSERT INTO PRODUTO__VARIACOES (ID, UID_PRODUTO, COR, VARIACAO, DESCRICAO, VALOR, STATUS)
VALUES ('10', '4', '#FFFFFF', 'Variação 7', 'Minha descrição 7', '10.00', '0');

INSERT INTO PRODUTO__VARIACOES (ID, UID_PRODUTO, COR, VARIACAO, DESCRICAO, VALOR, STATUS)
VALUES ('11', '4', '#FFFFFF', 'Variação 8', 'Minha descrição 8', '20.00', '0');

INSERT INTO PRODUTO__VARIACOES (ID, UID_PRODUTO, COR, VARIACAO, DESCRICAO, VALOR, STATUS)
VALUES ('12', '4', '#FFFFFF', 'Variação 9', 'Minha descrição 9', '30.00', '0');

INSERT INTO QUEMSOMOS (ID, SESSAO, TITULO, TEXTO, FW_LANG)
VALUES ('1', 'SESSAO', 'QUEM SOMOS', 'SOMOS ASSIM MESMO', 'pt');

INSERT INTO QUEMSOMOS__TRANSLATE (ID, FW_LANG, ID_FW_PAI, SESSAO, TITULO, TEXTO)
VALUES ('1', 'pt', '1', 'SESSAO', 'QUEM SOMOS', 'SOMOS ASSIM MESMO');

INSERT INTO QUEMSOMOS__TRANSLATE (ID, FW_LANG, ID_FW_PAI, SESSAO, TITULO, TEXTO)
VALUES ('2', 'en', '1', 'hahahaha', '111111', '11111111111');

INSERT INTO QUEMSOMOS__TRANSLATE (ID, FW_LANG, ID_FW_PAI, SESSAO, TITULO, TEXTO)
VALUES ('3', 'es', '1', 'teste es', 'dddddd', 'ddddddddddd');

INSERT INTO QUEMSOMOS__TRANSLATE (ID, FW_LANG, ID_FW_PAI, SESSAO, TITULO, TEXTO)
VALUES ('4', 'fr', '1', '', 'gggggggg', 'ffffffffff');

INSERT INTO QUEMSOMOS__TRANSLATE (ID, FW_LANG, ID_FW_PAI, SESSAO, TITULO, TEXTO)
VALUES ('5', 'ch', '1', '', '9999999999', '99999999999999');

INSERT INTO SYSTEM__LGPD (ID, CONTEUDO, ACTIVE, CREATED)
VALUES ('2', 'kkkkkkkk', '1', '2023-09-17 14:58:18');

INSERT INTO SYSTEM__LGPD (ID, CONTEUDO, ACTIVE, CREATED)
VALUES ('3', '<p class=\"ql-align-center\"><strong style=\"background-color: rgb(230, 0, 0); color: rgb(255, 255, 0);\">TERMO DE CONSENTIMENTO PARA TRATAMENTO DE DADOS PESSOAIS</strong></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">NOME</strong><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">, (dados da empresa), representada pela sua sócia, NONONONONON, brasileira, casada, empresária, portadora da cédula de identidade RG nº. 00.000.000-0 SSP/SP, inscrita no CPF/MF nº 000.000.000-00, com endereço profissional a Rua da Cidade, 00-00 - Centro, CEP 00000-000, cidade de SUA CIDADE, estado de SEU ESTADO doravante denominado(a) </span><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">CONTROLADORA</strong><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">.</span></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">NOME</strong><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">, nacionalidade, estado civil, profissão, portadora da cédula de identidade RG nº., inscrito(a) CPF/MF nº (...), residente e domiciliado(a) (...). doravante denominado(a) </span><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">TITULAR.</strong></p><p><br></p><p class=\"ql-align-justify\"><em style=\"background-color: transparent; color: rgb(0, 0, 0);\">Este termo de consentimento foi elaborado em conformidade com a lei geral de proteção de dados. Consoante ao artigo 5º inciso XII da Lei 13.709, este documento viabiliza a manifestação livre, informada e inequívoca, pela qual o titular/ responsável concorda com o tratamento de seus dados pessoais e os dados do menor sob os seus cuidados, para as finalidades a seguir determinadas</em><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">:</span></p><p class=\"ql-align-justify\"><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">	</span></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">PARÁGRAFO PRIMEIRO - DO CONSENTIMENTO</strong></p><p><br></p><p class=\"ql-align-justify\">	<span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Ao assinar este termo o </span><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">TITULAR </strong><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">concorda que a </span><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">CONTROLADORA</strong><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">, proceda com o </span><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">tratamento</strong><span style=\"background-color: transparent; color: rgb(0, 0, 0);\"> de seus dados.</span></p><p><br></p><p class=\"ql-align-justify\">	<span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Entende-se por tratamento de acordo com o artigo 5º inciso X, a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, distribuição, processamento, arquivamento, armazenamento, eliminação, avaliação ou controle da informação, modificação, comunicação, transferência, difusão ou extração.</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">PARÁGRAFO SEGUNDO - DADOS PESSOAIS</strong></p><p><br></p><p class=\"ql-align-justify\">	<span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Poderão ser tratados mediante anuência expressa do titular/ responsável os seguintes dados pessoais, pelo(a) controlador(a):</span></p><p><br></p><ul><li class=\"ql-align-justify\"><strong style=\"background-color: transparent;\">Nome, endereço, status civil, e-mail, telefone, histórico escolar, histórico médico (complementar com mais informações)</strong></li></ul><p><br></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">PARÁGRAFO TERCEIRO - FINALIDADE DO TRATAMENTO</strong></p><p><br></p><p class=\"ql-align-justify\">	<span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Em atendimento ao artigo 8º §4 este termo guarda finalidade determinada, sendo que os dados serão utilizados especificamente para fins de:</span></p><p><br></p><ul><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Cadastro.</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Diagnóstico técnico inicial em seu aspecto pedagógico, cognitivo, físico e social.</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Elaboração a aplicação de testes de aptidão.&nbsp;</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Elaboração de relatórios e pareceres informativos.&nbsp;&nbsp;</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">(Complementar com mais informações)</span></li></ul><p><br></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">PARÁGRAFO QUARTO - SEGURANÇA DOS DADOS</strong></p><p><br></p><p class=\"ql-align-justify\">	<span style=\"background-color: transparent; color: rgb(0, 0, 0);\">A Controladora responsabiliza-se pela manutenção de medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Local, data.</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">_________________________________</span></p><p class=\"ql-align-justify\"><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">CONTROLADORA</strong></p><p><br></p><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">_________________________________</span></p><p><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">TITULAR</strong></p>', '1', '2023-09-17 15:10:39');

INSERT INTO SYSTEM__LGPD (ID, CONTEUDO, ACTIVE, CREATED)
VALUES ('4', '<h2 class=\"ql-align-center\"><strong>TERMO DE CONSENTIMENTO PARA TRATAMENTO DE DADOS PESSOAIS</strong></h2><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">NOME</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">, (dados da empresa), representada pela sua sócia, _________________, brasileira, casada, empresária, portadora da cédula de identidade RG nº. 00.000.000-0 SSP/SP, inscrita no CPF/MF nº 000.000.000-00, com endereço profissional a Rua da Cidade, 00-00 - Centro, CEP 00000-000, cidade de SUA CIDADE, estado de SEU ESTADO doravante denominado(a) </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">CONTROLADORA</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">.</span></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">NOME</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">, nacionalidade, estado civil, profissão, portadora da cédula de identidade RG nº., inscrito(a) CPF/MF nº (...), residente e domiciliado(a) (...). doravante denominado(a) </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">TITULAR.</strong></p><p><br></p><p class=\"ql-align-justify\"><em style=\"color: rgb(0, 0, 0); background-color: transparent;\">Este termo de consentimento foi elaborado em conformidade com a lei geral de proteção de dados. Consoante ao artigo 5º inciso XII da Lei 13.709, este documento viabiliza a manifestação livre, informada e inequívoca, pela qual o titular/ responsável concorda com o tratamento de seus dados pessoais e os dados do menor sob os seus cuidados, para as finalidades a seguir determinadas</em><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">:</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">	</span></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">PARÁGRAFO PRIMEIRO - DO CONSENTIMENTO</strong></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Ao assinar este termo o </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">TITULAR </strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">concorda que a </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">CONTROLADORA</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">, proceda com o </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">tratamento</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\"> de seus dados.</span></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Entende-se por tratamento de acordo com o artigo 5º inciso X, a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, distribuição, processamento, arquivamento, armazenamento, eliminação, avaliação ou controle da informação, modificação, comunicação, transferência, difusão ou extração.</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">PARÁGRAFO SEGUNDO - DADOS PESSOAIS</strong></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Poderão ser tratados mediante anuência expressa do titular/ responsável os seguintes dados pessoais, pelo(a) controlador(a):</span></p><p><br></p><ul><li class=\"ql-align-justify\"><strong style=\"background-color: transparent;\">Nome, endereço, status civil, e-mail, telefone, histórico escolar, histórico médico (complementar com mais informações)</strong></li></ul><p><br></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">PARÁGRAFO TERCEIRO - FINALIDADE DO TRATAMENTO</strong></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Em atendimento ao artigo 8º §4 este termo guarda finalidade determinada, sendo que os dados serão utilizados especificamente para fins de:</span></p><p><br></p><ul><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Cadastro.</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Diagnóstico técnico inicial em seu aspecto pedagógico, cognitivo, físico e social.</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Elaboração a aplicação de testes de aptidão.&nbsp;</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Elaboração de relatórios e pareceres informativos.&nbsp;&nbsp;</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">(Complementar com mais informações)</span></li></ul><p><br></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">PARÁGRAFO QUARTO - SEGURANÇA DOS DADOS</strong></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">A Controladora responsabiliza-se pela manutenção de medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Local, data.</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">_________________________________</span></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">CONTROLADORA</strong></p><p><br></p><p><br></p><p><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">_________________________________</span></p><p><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">TITULAR</strong></p>', '1', '2023-09-17 15:12:35');

INSERT INTO SYSTEM__LGPD (ID, CONTEUDO, ACTIVE, CREATED)
VALUES ('5', '<h2 class=\"ql-align-center\"><strong>TERMO DE CONSENTIMENTO PARA TRATAMENTO DE DADOS PESSOAIS</strong></h2><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">NOME</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">, (dados da empresa), representada pela sua sócia, _________________, brasileira, casada, empresária, portadora da cédula de identidade RG nº. 00.000.000-0 SSP/SP, inscrita no CPF/MF nº 000.000.000-00, com endereço profissional a Rua da Cidade, 00-00 - Centro, CEP 00000-000, cidade de SUA CIDADE, estado de SEU ESTADO doravante denominado(a) </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">CONTROLADORA</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">.</span></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">NOME</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">, nacionalidade, estado civil, profissão, portadora da cédula de identidade RG nº., inscrito(a) CPF/MF nº (...), residente e domiciliado(a) (...). doravante denominado(a) </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">TITULAR.</strong></p><p><br></p><p class=\"ql-align-justify\"><em style=\"color: rgb(0, 0, 0); background-color: transparent;\">Este termo de consentimento foi elaborado em conformidade com a lei geral de proteção de dados. Consoante ao artigo 5º inciso XII da Lei 13.709, este documento viabiliza a manifestação livre, informada e inequívoca, pela qual o titular/ responsável concorda com o tratamento de seus dados pessoais e os dados do menor sob os seus cuidados, para as finalidades a seguir determinadas</em><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">:</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">	</span></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">PARÁGRAFO PRIMEIRO - DO CONSENTIMENTO</strong></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Ao assinar este termo o </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">TITULAR </strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">concorda que a </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">CONTROLADORA</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">, proceda com o </span><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">tratamento</strong><span style=\"color: rgb(0, 0, 0); background-color: transparent;\"> de seus dados.</span></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Entende-se por tratamento de acordo com o artigo 5º inciso X, a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, distribuição, processamento, arquivamento, armazenamento, eliminação, avaliação ou controle da informação, modificação, comunicação, transferência, difusão ou extração.</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">PARÁGRAFO SEGUNDO - DADOS PESSOAIS</strong></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Poderão ser tratados mediante anuência expressa do titular/ responsável os seguintes dados pessoais, pelo(a) controlador(a):</span></p><p><br></p><ul><li class=\"ql-align-justify\"><strong style=\"background-color: transparent;\">Nome, endereço, status civil, e-mail, telefone, histórico escolar, histórico médico (complementar com mais informações)</strong></li></ul><p><br></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">PARÁGRAFO TERCEIRO - FINALIDADE DO TRATAMENTO</strong></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Em atendimento ao artigo 8º §4 este termo guarda finalidade determinada, sendo que os dados serão utilizados especificamente para fins de:</span></p><p><br></p><ul><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Cadastro.</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Diagnóstico técnico inicial em seu aspecto pedagógico, cognitivo, físico e social.</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Elaboração a aplicação de testes de aptidão.&nbsp;</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">Elaboração de relatórios e pareceres informativos.&nbsp;&nbsp;</span></li><li class=\"ql-align-justify\"><span style=\"background-color: transparent;\">(Complementar com mais informações)</span></li></ul><p><br></p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">PARÁGRAFO QUARTO - SEGURANÇA DOS DADOS</strong></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">A Controladora responsabiliza-se pela manutenção de medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">Local, data.</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">_________________________________</span></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">CONTROLADORA</strong></p><p><br></p><p><br></p><p><span style=\"color: rgb(0, 0, 0); background-color: transparent;\">_________________________________</span></p><p><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">TITULAR</strong></p>', '1', '2023-09-17 15:12:50');

INSERT INTO SYSTEM__REGRAS_DE_TAXAS_E_BONUS (ID, VIGENTE, CRIADO_EM, TICKS_CLUB, MEMBROS, PRODUTOR, REDE, VIP, MERECIMENTO, APOS_META, ALCANCE, ALCANCE_1, ALCANCE_2, ALCANCE_3, 1_NIVEL, 2_NIVEL, 3_NIVEL, 4_NIVEL, 5_NIVEL, 6_NIVEL, 7_NIVEL, 8_NIVEL, TAXA_SAQUE, TAXA_RECARGA)
VALUES ('1', '1', '2021-07-10 15:28:06', '36.35', '18.6', '45', '25', '2', '50', '5', '10', '50', '30', '20', '40', '30', '15', '5', '3', '3', '2', '2', '2', '1');

INSERT INTO SYSTEM__REGRAS_PCT_COMISSAO_REVENDA (UID, NIVEL, PCT)
VALUES ('1', '1', '40');

INSERT INTO SYSTEM__REGRAS_PCT_COMISSAO_REVENDA (UID, NIVEL, PCT)
VALUES ('2', '2', '30');

INSERT INTO SYSTEM__REGRAS_PCT_COMISSAO_REVENDA (UID, NIVEL, PCT)
VALUES ('3', '3', '15');

INSERT INTO SYSTEM__REGRAS_PCT_COMISSAO_REVENDA (UID, NIVEL, PCT)
VALUES ('4', '4', '5');

INSERT INTO SYSTEM__REGRAS_PCT_COMISSAO_REVENDA (UID, NIVEL, PCT)
VALUES ('5', '5', '3');

INSERT INTO SYSTEM__REGRAS_PCT_COMISSAO_REVENDA (UID, NIVEL, PCT)
VALUES ('6', '6', '3');

INSERT INTO SYSTEM__REGRAS_PCT_COMISSAO_REVENDA (UID, NIVEL, PCT)
VALUES ('7', '7', '2');

INSERT INTO SYSTEM__REGRAS_PCT_COMISSAO_REVENDA (UID, NIVEL, PCT)
VALUES ('8', '8', '2');

INSERT INTO SYSTEM__TOKEN_ACCESS (ID, HASH, JSON, TIPO, CRIADO_EM, EXPIRE)
VALUES ('258', 'f2b79a586f49ba147b99bbd86edfef2a', '[
    {
        \"EMAIL\": \"israel@feats.com.br\",
        \"DATAUSER\": {
            \"ASSINATURA\": \"1f885f97-7421-43b2-851e-56ac8af07b2f\",
            \"NAVEGADOR\": {
                \"vendorSub\": \"\",
                \"productSub\": \"20030107\",
                \"vendor\": \"Google Inc.\",
                \"maxTouchPoints\": \"0\",
                \"userActivation\": {
                    \"hasBeenActive\": \"true\",
                    \"isActive\": \"true\"
                },
                \"doNotTrack\": \"1\",
                \"plugins\": {
                    \"0\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"1\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"Chrome PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"2\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"Chromium PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"3\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"Microsoft Edge PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"4\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"WebKit built-in PDF\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"length\": \"5\"
                },
                \"mimeTypes\": {
                    \"0\": {
                        \"type\": \"application/pdf\",
                        \"suffixes\": \"pdf\",
                        \"description\": \"Portable Document Format\"
                    },
                    \"1\": {
                        \"type\": \"text/pdf\",
                        \"suffixes\": \"pdf\",
                        \"description\": \"Portable Document Format\"
                    },
                    \"length\": \"2\"
                },
                \"pdfViewerEnabled\": \"true\",
                \"hardwareConcurrency\": \"8\",
                \"cookieEnabled\": \"true\",
                \"appCodeName\": \"Mozilla\",
                \"appName\": \"Netscape\",
                \"appVersion\": \"5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",
                \"platform\": \"Win32\",
                \"product\": \"Gecko\",
                \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",
                \"language\": \"pt-BR\",
                \"languages\": [
                    \"pt-BR\",
                    \"pt\",
                    \"en\",
                    \"en-GB\",
                    \"en-US\"
                ],
                \"onLine\": \"true\",
                \"webdriver\": \"false\",
                \"virtualKeyboard\": {
                    \"boundingRect\": {
                        \"x\": \"0\",
                        \"y\": \"0\",
                        \"width\": \"0\",
                        \"height\": \"0\",
                        \"top\": \"0\",
                        \"right\": \"0\",
                        \"bottom\": \"0\",
                        \"left\": \"0\"
                    },
                    \"overlaysContent\": \"false\"
                },
                \"deviceMemory\": \"8\",
                \"gpu\": {
                    \"wgslLanguageFeatures\": {
                        \"size\": \"0\"
                    }
                },
                \"mediaSession\": {
                    \"playbackState\": \"none\"
                },
                \"windowControlsOverlay\": {
                    \"visible\": \"false\"
                },
                \"userAgentData\": {
                    \"brands\": [
                        {
                            \"brand\": \"Not_A Brand\",
                            \"version\": \"8\"
                        },
                        {
                            \"brand\": \"Chromium\",
                            \"version\": \"120\"
                        },
                        {
                            \"brand\": \"Microsoft Edge\",
                            \"version\": \"120\"
                        }
                    ],
                    \"mobile\": \"false\",
                    \"platform\": \"Windows\"
                }
            }
        }
    },
    {
        \"UID\": 45678707865467,
        \"TIPO_PROFILE\": 1,
        \"LEVEL_PERMISSION\": null,
        \"FIRSTACCESS\": 1,
        \"UID_EMPRESA\": null,
        \"STATUS\": 1,
        \"BLACKLIST\": 0,
        \"NOME\": \"Israel Nogueira\",
        \"EMAIL\": \"israel@feats.com.br\",
        \"LOGIN\": \"admin\",
        \"SENHA\": \"b20bf2ccedc4d9af8e1259909e0b81245caa16fcd43399a09b670e191af8c145\",
        \"SALT\": \"\",
        \"NOVA_SENHA\": null,
        \"TIPO_DOCUMENTO\": 2,
        \"TIPO_PESSOA\": 1,
        \"2FA\": null,
        \"2FA_ACTIVE\": 0,
        \"EMAIL_VALIDADO\": 1,
        \"CRIADO_EM\": \"2023-05-28 01:58:37\",
        \"EXCLUIDO\": 0,
        \"CPF\": null,
        \"RG\": null,
        \"LISTA_UPLOAD\": null,
        \"DESCRICAO\": null,
        \"ATENDIDO_IMOBILIARIA\": null,
        \"CORRETOR_NOME\": null,
        \"INSTAGRAM\": null,
        \"NACIONALIDADE\": null,
        \"PERFIL_INVESTIDOR\": null,
        \"PROFISSAO\": null,
        \"REGIME_BENS\": null,
        \"RENDA_ATE\": null,
        \"RENDA_DE\": null,
        \"TIPO_CONTA_TRADICIONAL\": 0,
        \"TIPO_CONTA_DIGITAL\": 0,
        \"TIPO_CONTA_EXCHANGE\": 0,
        \"UNIDADE\": null,
        \"VEICULO_REPASSE\": null,
        \"TELEFONE\": null,
        \"WHATSAPP\": null,
        \"DATA_INSERT\": \"2023-10-30 16:16:38\",
        \"OBS\": null,
        \"LOGRADOURO\": null,
        \"CIDADE\": null,
        \"ESTADO\": null,
        \"CEP\": null,
        \"NUMERO\": null,
        \"COMPLEMENTO\": null
    }
]', '2', '2023-12-18 17:12:10', '2023-12-18 17:14:10');

INSERT INTO SYSTEM__TOKEN_ACCESS (ID, HASH, JSON, TIPO, CRIADO_EM, EXPIRE)
VALUES ('259', '4b6bb62db5ab56b24f2ab65029e8bea9', '[
    {
        \"EMAIL\": \"israel@feats.com.br\",
        \"DATAUSER\": {
            \"ASSINATURA\": \"1f885f97-7421-43b2-851e-56ac8af07b2f\",
            \"NAVEGADOR\": {
                \"vendorSub\": \"\",
                \"productSub\": \"20030107\",
                \"vendor\": \"Google Inc.\",
                \"maxTouchPoints\": \"0\",
                \"userActivation\": {
                    \"hasBeenActive\": \"true\",
                    \"isActive\": \"true\"
                },
                \"doNotTrack\": \"1\",
                \"plugins\": {
                    \"0\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"1\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"Chrome PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"2\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"Chromium PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"3\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"Microsoft Edge PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"4\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"WebKit built-in PDF\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"length\": \"5\"
                },
                \"mimeTypes\": {
                    \"0\": {
                        \"type\": \"application/pdf\",
                        \"suffixes\": \"pdf\",
                        \"description\": \"Portable Document Format\"
                    },
                    \"1\": {
                        \"type\": \"text/pdf\",
                        \"suffixes\": \"pdf\",
                        \"description\": \"Portable Document Format\"
                    },
                    \"length\": \"2\"
                },
                \"pdfViewerEnabled\": \"true\",
                \"hardwareConcurrency\": \"8\",
                \"cookieEnabled\": \"true\",
                \"appCodeName\": \"Mozilla\",
                \"appName\": \"Netscape\",
                \"appVersion\": \"5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",
                \"platform\": \"Win32\",
                \"product\": \"Gecko\",
                \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",
                \"language\": \"pt-BR\",
                \"languages\": [
                    \"pt-BR\",
                    \"pt\",
                    \"en\",
                    \"en-GB\",
                    \"en-US\"
                ],
                \"onLine\": \"true\",
                \"webdriver\": \"false\",
                \"virtualKeyboard\": {
                    \"boundingRect\": {
                        \"x\": \"0\",
                        \"y\": \"0\",
                        \"width\": \"0\",
                        \"height\": \"0\",
                        \"top\": \"0\",
                        \"right\": \"0\",
                        \"bottom\": \"0\",
                        \"left\": \"0\"
                    },
                    \"overlaysContent\": \"false\"
                },
                \"deviceMemory\": \"8\",
                \"gpu\": {
                    \"wgslLanguageFeatures\": {
                        \"size\": \"0\"
                    }
                },
                \"mediaSession\": {
                    \"playbackState\": \"none\"
                },
                \"windowControlsOverlay\": {
                    \"visible\": \"false\"
                },
                \"userAgentData\": {
                    \"brands\": [
                        {
                            \"brand\": \"Not_A Brand\",
                            \"version\": \"8\"
                        },
                        {
                            \"brand\": \"Chromium\",
                            \"version\": \"120\"
                        },
                        {
                            \"brand\": \"Microsoft Edge\",
                            \"version\": \"120\"
                        }
                    ],
                    \"mobile\": \"false\",
                    \"platform\": \"Windows\"
                }
            }
        }
    },
    {
        \"UID\": 45678707865467,
        \"TIPO_PROFILE\": 1,
        \"LEVEL_PERMISSION\": null,
        \"FIRSTACCESS\": 1,
        \"UID_EMPRESA\": null,
        \"STATUS\": 1,
        \"BLACKLIST\": 0,
        \"NOME\": \"Israel Nogueira\",
        \"EMAIL\": \"israel@feats.com.br\",
        \"LOGIN\": \"admin\",
        \"SENHA\": \"b20bf2ccedc4d9af8e1259909e0b81245caa16fcd43399a09b670e191af8c145\",
        \"SALT\": \"\",
        \"NOVA_SENHA\": null,
        \"TIPO_DOCUMENTO\": 2,
        \"TIPO_PESSOA\": 1,
        \"2FA\": null,
        \"2FA_ACTIVE\": 0,
        \"EMAIL_VALIDADO\": 1,
        \"CRIADO_EM\": \"2023-05-28 01:58:37\",
        \"EXCLUIDO\": 0,
        \"CPF\": null,
        \"RG\": null,
        \"LISTA_UPLOAD\": null,
        \"DESCRICAO\": null,
        \"ATENDIDO_IMOBILIARIA\": null,
        \"CORRETOR_NOME\": null,
        \"INSTAGRAM\": null,
        \"NACIONALIDADE\": null,
        \"PERFIL_INVESTIDOR\": null,
        \"PROFISSAO\": null,
        \"REGIME_BENS\": null,
        \"RENDA_ATE\": null,
        \"RENDA_DE\": null,
        \"TIPO_CONTA_TRADICIONAL\": 0,
        \"TIPO_CONTA_DIGITAL\": 0,
        \"TIPO_CONTA_EXCHANGE\": 0,
        \"UNIDADE\": null,
        \"VEICULO_REPASSE\": null,
        \"TELEFONE\": null,
        \"WHATSAPP\": null,
        \"DATA_INSERT\": \"2023-10-30 16:16:38\",
        \"OBS\": null,
        \"LOGRADOURO\": null,
        \"CIDADE\": null,
        \"ESTADO\": null,
        \"CEP\": null,
        \"NUMERO\": null,
        \"COMPLEMENTO\": null
    }
]', '2', '2023-12-18 17:13:39', '2023-12-18 17:15:39');

INSERT INTO SYSTEM__TOKEN_ACCESS (ID, HASH, JSON, TIPO, CRIADO_EM, EXPIRE)
VALUES ('260', '3b4296c76357703eeb28b4bbeb488f1f', '[
    {
        \"EMAIL\": \"israel@feats.com.br\",
        \"DATAUSER\": {
            \"ASSINATURA\": \"1f885f97-7421-43b2-851e-56ac8af07b2f\",
            \"NAVEGADOR\": {
                \"vendorSub\": \"\",
                \"productSub\": \"20030107\",
                \"vendor\": \"Google Inc.\",
                \"maxTouchPoints\": \"0\",
                \"userActivation\": {
                    \"hasBeenActive\": \"true\",
                    \"isActive\": \"true\"
                },
                \"doNotTrack\": \"1\",
                \"plugins\": {
                    \"0\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"1\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"Chrome PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"2\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"Chromium PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"3\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"Microsoft Edge PDF Viewer\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"4\": {
                        \"0\": {
                            \"type\": \"application/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"1\": {
                            \"type\": \"text/pdf\",
                            \"suffixes\": \"pdf\",
                            \"description\": \"Portable Document Format\"
                        },
                        \"name\": \"WebKit built-in PDF\",
                        \"filename\": \"internal-pdf-viewer\",
                        \"description\": \"Portable Document Format\",
                        \"length\": \"2\"
                    },
                    \"length\": \"5\"
                },
                \"mimeTypes\": {
                    \"0\": {
                        \"type\": \"application/pdf\",
                        \"suffixes\": \"pdf\",
                        \"description\": \"Portable Document Format\"
                    },
                    \"1\": {
                        \"type\": \"text/pdf\",
                        \"suffixes\": \"pdf\",
                        \"description\": \"Portable Document Format\"
                    },
                    \"length\": \"2\"
                },
                \"pdfViewerEnabled\": \"true\",
                \"hardwareConcurrency\": \"8\",
                \"cookieEnabled\": \"true\",
                \"appCodeName\": \"Mozilla\",
                \"appName\": \"Netscape\",
                \"appVersion\": \"5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",
                \"platform\": \"Win32\",
                \"product\": \"Gecko\",
                \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0\",
                \"language\": \"pt-BR\",
                \"languages\": [
                    \"pt-BR\",
                    \"pt\",
                    \"en\",
                    \"en-GB\",
                    \"en-US\"
                ],
                \"onLine\": \"true\",
                \"webdriver\": \"false\",
                \"virtualKeyboard\": {
                    \"boundingRect\": {
                        \"x\": \"0\",
                        \"y\": \"0\",
                        \"width\": \"0\",
                        \"height\": \"0\",
                        \"top\": \"0\",
                        \"right\": \"0\",
                        \"bottom\": \"0\",
                        \"left\": \"0\"
                    },
                    \"overlaysContent\": \"false\"
                },
                \"deviceMemory\": \"8\",
                \"gpu\": {
                    \"wgslLanguageFeatures\": {
                        \"size\": \"0\"
                    }
                },
                \"mediaSession\": {
                    \"playbackState\": \"none\"
                },
                \"windowControlsOverlay\": {
                    \"visible\": \"false\"
                },
                \"userAgentData\": {
                    \"brands\": [
                        {
                            \"brand\": \"Not_A Brand\",
                            \"version\": \"8\"
                        },
                        {
                            \"brand\": \"Chromium\",
                            \"version\": \"120\"
                        },
                        {
                            \"brand\": \"Microsoft Edge\",
                            \"version\": \"120\"
                        }
                    ],
                    \"mobile\": \"false\",
                    \"platform\": \"Windows\"
                }
            }
        }
    },
    {
        \"UID\": 45678707865467,
        \"TIPO_PROFILE\": 1,
        \"LEVEL_PERMISSION\": null,
        \"FIRSTACCESS\": 1,
        \"UID_EMPRESA\": null,
        \"STATUS\": 1,
        \"BLACKLIST\": 0,
        \"NOME\": \"Israel Nogueira\",
        \"EMAIL\": \"israel@feats.com.br\",
        \"LOGIN\": \"admin\",
        \"SENHA\": \"b20bf2ccedc4d9af8e1259909e0b81245caa16fcd43399a09b670e191af8c145\",
        \"SALT\": \"\",
        \"NOVA_SENHA\": null,
        \"TIPO_DOCUMENTO\": 2,
        \"TIPO_PESSOA\": 1,
        \"2FA\": null,
        \"2FA_ACTIVE\": 0,
        \"EMAIL_VALIDADO\": 1,
        \"CRIADO_EM\": \"2023-05-28 01:58:37\",
        \"EXCLUIDO\": 0,
        \"CPF\": null,
        \"RG\": null,
        \"LISTA_UPLOAD\": null,
        \"DESCRICAO\": null,
        \"ATENDIDO_IMOBILIARIA\": null,
        \"CORRETOR_NOME\": null,
        \"INSTAGRAM\": null,
        \"NACIONALIDADE\": null,
        \"PERFIL_INVESTIDOR\": null,
        \"PROFISSAO\": null,
        \"REGIME_BENS\": null,
        \"RENDA_ATE\": null,
        \"RENDA_DE\": null,
        \"TIPO_CONTA_TRADICIONAL\": 0,
        \"TIPO_CONTA_DIGITAL\": 0,
        \"TIPO_CONTA_EXCHANGE\": 0,
        \"UNIDADE\": null,
        \"VEICULO_REPASSE\": null,
        \"TELEFONE\": null,
        \"WHATSAPP\": null,
        \"DATA_INSERT\": \"2023-10-30 16:16:38\",
        \"OBS\": null,
        \"LOGRADOURO\": null,
        \"CIDADE\": null,
        \"ESTADO\": null,
        \"CEP\": null,
        \"NUMERO\": null,
        \"COMPLEMENTO\": null
    }
]', '2', '2023-12-18 17:15:02', '2023-12-18 17:17:02');

INSERT INTO SYSTEM__TYPE_TOKEN_ACCESS (ID, CODE, TIPO)
VALUES ('1', '1', 'DISPOSITIVO DESCONHECIDO');

INSERT INTO SYSTEM__TYPE_TOKEN_ACCESS (ID, CODE, TIPO)
VALUES ('3', '2', 'ALTERAÇÃO DE SENHA');

INSERT INTO SYSTEM__TYPE_TOKEN_ACCESS (ID, CODE, TIPO)
VALUES ('4', '3', 'EMAIL NÃO CONFIRMADO');

INSERT INTO SYSTEM__VERSION (ID, VERSION, LABEL, RESET)
VALUES ('69', '4567', 'thrthetrh', '1');

INSERT INTO SYSTEM__VERSION (ID, VERSION, LABEL, RESET)
VALUES ('70', '4567', 'thrthetrh', '1');

INSERT INTO SYSTEM__VERSION (ID, VERSION, LABEL, RESET)
VALUES ('71', '4567', 'thrthetrh', '1');

INSERT INTO SYSTEM__VERSION (ID, VERSION, LABEL, RESET)
VALUES ('72', '4356', 'thrthetrh', '1');

INSERT INTO SYSTEM__VERSION (ID, VERSION, LABEL, RESET)
VALUES ('73', '3456', 'kkkkkk', '1');

INSERT INTO TEMPLATE (ID, IDIOMA, FOOTER, HEADER)
VALUES ('1', 'pt', '', '');

INSERT INTO TEMPLATE (ID, IDIOMA, FOOTER, HEADER)
VALUES ('2', 'en', '{
    \"NEWSLETTER_TITULO\": \"aaaaa\",
    \"NEWSLETTER_DESC\": \"bbbb\",
    \"PLACEHOLDER\": \"cccc\",
    \"ABOUT_TITULO\": \"ffff\",
    \"ABOUT_DESC\": \"gggg\",
    \"TELEFONE\": \"hhhhhhhh\",
    \"ENDERECO\": \"IIIIIII\",
    \"NEWSLETTER_BUTTON\": \"jjjjj\",
    \"COPYRIGHT\": null,
    \"LINKS\": [
        {
            \"LABEL\": \"dddddddddd\",
            \"LINK\": \"dddd\"
        },
        {
            \"LABEL\": \"dfffffffff\",
            \"LINK\": \"ffffffffffff\"
        },
        {
            \"LABEL\": \"ggggggg\",
            \"LINK\": \"ggggggggggggggg\"
        },
        {
            \"LABEL\": \"hhhhhhh\",
            \"LINK\": \"hhhhhhhhh\"
        },
        {
            \"LABEL\": \"eeeee\",
            \"LINK\": \"eeeeeeeee\"
        },
        {
            \"LABEL\": \"rrrrrrr\",
            \"LINK\": \"rrrrrrrrrr\"
        },
        {
            \"LABEL\": \"ttttttt\",
            \"LINK\": \"ttttttttttt\"
        }
    ]
}', '{
    \"NEWSLETTER_TITULO\": \"aaaaa\",
    \"NEWSLETTER_DESC\": \"bbbb\",
    \"PLACEHOLDER\": \"cccc\",
    \"ABOUT_TITULO\": \"ffff\",
    \"ABOUT_DESC\": \"gggg\",
    \"TELEFONE\": \"hhhhhhhh\",
    \"ENDERECO\": \"IIIIIII\",
    \"NEWSLETTER_BUTTON\": \"jjjjj\",
    \"COPYRIGHT\": null,
    \"LINKS\": [
        {
            \"LABEL\": \"dddddddddd\",
            \"LINK\": \"dddd\"
        },
        {
            \"LABEL\": \"dfffffffff\",
            \"LINK\": \"ffffffffffff\"
        },
        {
            \"LABEL\": \"ggggggg\",
            \"LINK\": \"ggggggggggggggg\"
        },
        {
            \"LABEL\": \"hhhhhhh\",
            \"LINK\": \"hhhhhhhhh\"
        },
        {
            \"LABEL\": \"eeeee\",
            \"LINK\": \"eeeeeeeee\"
        },
        {
            \"LABEL\": \"rrrrrrr\",
            \"LINK\": \"rrrrrrrrrr\"
        },
        {
            \"LABEL\": \"ttttttt\",
            \"LINK\": \"ttttttttttt\"
        }
    ]
}');

INSERT INTO TEMPLATE (ID, IDIOMA, FOOTER, HEADER)
VALUES ('3', 'es', '{
    \"NEWSLETTER_TITULO\": \"aaaaa\",
    \"NEWSLETTER_DESC\": \"bbbb\",
    \"PLACEHOLDER\": \"cccc\",
    \"ABOUT_TITULO\": \"ffff\",
    \"ABOUT_DESC\": \"gggg\",
    \"TELEFONE\": \"hhhhhhhh\",
    \"ENDERECO\": \"IIIIIII\",
    \"NEWSLETTER_BUTTON\": \"jjjjj\",
    \"COPYRIGHT\": null,
    \"LINKS\": [
        {
            \"LABEL\": \"dddddddddd\",
            \"LINK\": \"dddd\"
        },
        {
            \"LABEL\": \"dfffffffff\",
            \"LINK\": \"ffffffffffff\"
        },
        {
            \"LABEL\": \"ggggggg\",
            \"LINK\": \"ggggggggggggggg\"
        },
        {
            \"LABEL\": \"hhhhhhh\",
            \"LINK\": \"hhhhhhhhh\"
        },
        {
            \"LABEL\": \"eeeee\",
            \"LINK\": \"eeeeeeeee\"
        },
        {
            \"LABEL\": \"rrrrrrr\",
            \"LINK\": \"rrrrrrrrrr\"
        },
        {
            \"LABEL\": \"ttttttt\",
            \"LINK\": \"ttttttttttt\"
        }
    ]
}', '{
    \"NEWSLETTER_TITULO\": \"aaaaa\",
    \"NEWSLETTER_DESC\": \"bbbb\",
    \"PLACEHOLDER\": \"cccc\",
    \"ABOUT_TITULO\": \"ffff\",
    \"ABOUT_DESC\": \"gggg\",
    \"TELEFONE\": \"hhhhhhhh\",
    \"ENDERECO\": \"IIIIIII\",
    \"NEWSLETTER_BUTTON\": \"jjjjj\",
    \"COPYRIGHT\": null,
    \"LINKS\": [
        {
            \"LABEL\": \"dddddddddd\",
            \"LINK\": \"dddd\"
        },
        {
            \"LABEL\": \"dfffffffff\",
            \"LINK\": \"ffffffffffff\"
        },
        {
            \"LABEL\": \"ggggggg\",
            \"LINK\": \"ggggggggggggggg\"
        },
        {
            \"LABEL\": \"hhhhhhh\",
            \"LINK\": \"hhhhhhhhh\"
        },
        {
            \"LABEL\": \"eeeee\",
            \"LINK\": \"eeeeeeeee\"
        },
        {
            \"LABEL\": \"rrrrrrr\",
            \"LINK\": \"rrrrrrrrrr\"
        },
        {
            \"LABEL\": \"ttttttt\",
            \"LINK\": \"ttttttttttt\"
        }
    ]
}');

INSERT INTO TEMPLATE__AREAS_ATUACAO (ID, TITULO, DESCRICAO, TIPO_ATUACAO, FW_LANG)
VALUES ('1', 'GGGGGG', 'DDDDDD', NULL, 'pt');

INSERT INTO TEMPLATE__AREAS_ATUACAO_CONSULTORIA (ID, TITULO, DESCRICAO, FW_LANG)
VALUES ('1', 'aaaaaa', 'bbbbbbbbb', 'pt');

INSERT INTO TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TITULO, DESCRICAO)
VALUES ('1', 'pt', '1', 'aaaaaa', 'bbbbbbbbb');

INSERT INTO TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TITULO, DESCRICAO)
VALUES ('2', 'en', '1', NULL, NULL);

INSERT INTO TEMPLATE__AREAS_ATUACAO_CONSULTORIA__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TITULO, DESCRICAO)
VALUES ('3', 'es', '1', NULL, NULL);

INSERT INTO TEMPLATE__AREAS_ATUACAO_PRODUTOS (ID, TITULO, DESCRICAO, FW_LANG)
VALUES ('1', 'AAAAAA', 'BBBBBB', 'pt');

INSERT INTO TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TITULO, DESCRICAO)
VALUES ('1', 'pt', '1', 'AAAAAA', 'BBBBBB');

INSERT INTO TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TITULO, DESCRICAO)
VALUES ('2', 'en', '1', NULL, NULL);

INSERT INTO TEMPLATE__AREAS_ATUACAO_PRODUTOS__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TITULO, DESCRICAO)
VALUES ('3', 'es', '1', NULL, NULL);

INSERT INTO TEMPLATE__AREAS_ATUACAO__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TITULO, DESCRICAO, TIPO_ATUACAO)
VALUES ('1', 'pt', '1', 'GGGGGG', 'DDDDDD', NULL);

INSERT INTO TEMPLATE__AREAS_ATUACAO__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TITULO, DESCRICAO, TIPO_ATUACAO)
VALUES ('2', 'en', '1', NULL, NULL, NULL);

INSERT INTO TEMPLATE__AREAS_ATUACAO__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TITULO, DESCRICAO, TIPO_ATUACAO)
VALUES ('3', 'es', '1', NULL, NULL, NULL);

INSERT INTO TEMPLATE__CONTATO (ID, TOP_TITLE, TITULO_FORM, ADRESS_TITLE, ADRESS_TEXT, HORARIOS_TITLE, HORARIOS_TEXT, EMAILS_TITLE, EMAILS_TEXT, TEXTO_BOTAO, PLACEHOLDER_NOME, PLACEHOLDER_EMAIL, PLACEHOLDER_TELEFONE, PLACEHOLDER_ASSUNTO, PLACEHOLDER_TEXTO, FW_LANG)
VALUES ('1', 'fffffff', 'getrert', 'sssssss', 'aaaaaaaaa', 'rrrrrrrrrr', 'rrrrrrrr', 'rrrrrrrrrr', 'reqawer', 'fsdf', 'fdgfds', 'vzxcv', 'qweqwe', 'mvbvmnb', 'fghjghj', 'pt');

INSERT INTO TEMPLATE__CONTATO__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TOP_TITLE, TITULO_FORM, ADRESS_TITLE, ADRESS_TEXT, HORARIOS_TITLE, HORARIOS_TEXT, EMAILS_TITLE, EMAILS_TEXT, TEXTO_BOTAO, PLACEHOLDER_NOME, PLACEHOLDER_EMAIL, PLACEHOLDER_TELEFONE, PLACEHOLDER_ASSUNTO, PLACEHOLDER_TEXTO)
VALUES ('1', 'pt', '1', 'fffffff', 'getrert', 'sssssss', 'aaaaaaaaa', 'rrrrrrrrrr', 'rrrrrrrr', 'rrrrrrrrrr', 'reqawer', 'fsdf', 'fdgfds', 'vzxcv', 'qweqwe', 'mvbvmnb', 'fghjghj');

INSERT INTO TEMPLATE__CONTATO__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TOP_TITLE, TITULO_FORM, ADRESS_TITLE, ADRESS_TEXT, HORARIOS_TITLE, HORARIOS_TEXT, EMAILS_TITLE, EMAILS_TEXT, TEXTO_BOTAO, PLACEHOLDER_NOME, PLACEHOLDER_EMAIL, PLACEHOLDER_TELEFONE, PLACEHOLDER_ASSUNTO, PLACEHOLDER_TEXTO)
VALUES ('2', 'en', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO TEMPLATE__CONTATO__TRANSLATE (ID, FW_LANG, ID_FW_PAI, TOP_TITLE, TITULO_FORM, ADRESS_TITLE, ADRESS_TEXT, HORARIOS_TITLE, HORARIOS_TEXT, EMAILS_TITLE, EMAILS_TEXT, TEXTO_BOTAO, PLACEHOLDER_NOME, PLACEHOLDER_EMAIL, PLACEHOLDER_TELEFONE, PLACEHOLDER_ASSUNTO, PLACEHOLDER_TEXTO)
VALUES ('3', 'es', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO TEMPLATE__HOME (ID, OUTRAS_SOLUCOES, OUTRAS_SOLUCOES_TXT, ANOS_EXP_NUM, ANOS_EXP_TXT, ANOS_EXP_DESC, FW_LANG)
VALUES ('1', 'Soluções industriais', 'Vivamus sit amet dui nisi. Cras in quam accumsan, aliquet ex at, pellentesque nunc. Aliquam cursus enim nec augue porta porta. Quisque enim tellus, condimentum', '33', 'experiência', 'Vivamus sit amet dui nisi. Cras in quam accumsan, aliquet ex at, pellentesque nunc. Aliquam cursus enim nec augue porta porta. Quisque enim tellus, condimentum', 'pt');

INSERT INTO TEMPLATE__HOME__TRANSLATE (ID, FW_LANG, ID_FW_PAI, OUTRAS_SOLUCOES, OUTRAS_SOLUCOES_TXT, ANOS_EXP_NUM, ANOS_EXP_TXT, ANOS_EXP_DESC)
VALUES ('1', 'pt', '1', 'Soluções industriais', 'Vivamus sit amet dui nisi. Cras in quam accumsan, aliquet ex at, pellentesque nunc. Aliquam cursus enim nec augue porta porta. Quisque enim tellus, condimentum', '33', 'experiência', 'Vivamus sit amet dui nisi. Cras in quam accumsan, aliquet ex at, pellentesque nunc. Aliquam cursus enim nec augue porta porta. Quisque enim tellus, condimentum');

INSERT INTO TEMPLATE__HOME__TRANSLATE (ID, FW_LANG, ID_FW_PAI, OUTRAS_SOLUCOES, OUTRAS_SOLUCOES_TXT, ANOS_EXP_NUM, ANOS_EXP_TXT, ANOS_EXP_DESC)
VALUES ('2', 'en', '1', NULL, NULL, NULL, NULL, NULL);

INSERT INTO TEMPLATE__HOME__TRANSLATE (ID, FW_LANG, ID_FW_PAI, OUTRAS_SOLUCOES, OUTRAS_SOLUCOES_TXT, ANOS_EXP_NUM, ANOS_EXP_TXT, ANOS_EXP_DESC)
VALUES ('3', 'es', '1', NULL, NULL, NULL, NULL, NULL);

INSERT INTO TEMPLATE__SOBRE (ID, SESSAO, TITULO, CONTEUDO, FW_LANG)
VALUES ('1', 'SOBRE NÓS', 'SOBRE NÓS', 'Proin blandit, odio non mattis dignissim, tellus est tempus augue, et rutrum est tortor ac urna. Duis vitae tellus enim. Sed pellentesque sapien vel purus pulvinar, eget consectetur eros tempus. Cras id justo vulputate, euismod lectus nec, viverra ante. Mauris molestie fermentum arcu. Curabitur tempor consequat leo in fringilla. Duis id porttitor erat, quis pellentesque sapien. Aenean viverra tristique nisi eu pretium.

Morbi vestibulum est nec felis aliquam imperdiet. Aliquam ac mi viverra purus facilisis rutrum. Phasellus hendrerit nulla lorem, in sollicitudin lorem mattis a. Suspendisse egestas aliquet suscipit. Nullam congue consequat ligula, at iaculis nisi euismod eget. Nullam auctor sapien quis finibus porta. Nunc dapibus erat diam, ac cursus lectus pharetra in. Sed vestibulum nibh arcu, eu sollicitudin purus vehicula ac. Nulla euismod efficitur lorem id ornare. Sed eget lectus sed turpis aliquet imperdiet a quis sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque ultricies, est a maximus fermentum, velit turpis interdum metus, in faucibus libero sem eget lectus. Nunc in risus eu quam ornare luctus. Duis at risus in odio imperdiet ornare dictum vel nisl. Curabitur vel sapien tincidunt, iaculis leo id, volutpat lacus. Nunc nec tincidunt sem, laoreet fringilla sapien', 'pt');

INSERT INTO TEMPLATE__SOBRE__TRANSLATE (ID, FW_LANG, ID_FW_PAI, SESSAO, TITULO, CONTEUDO)
VALUES ('1', 'pt', '1', 'SOBRE NÓS', 'SOBRE NÓS', 'Proin blandit, odio non mattis dignissim, tellus est tempus augue, et rutrum est tortor ac urna. Duis vitae tellus enim. Sed pellentesque sapien vel purus pulvinar, eget consectetur eros tempus. Cras id justo vulputate, euismod lectus nec, viverra ante. Mauris molestie fermentum arcu. Curabitur tempor consequat leo in fringilla. Duis id porttitor erat, quis pellentesque sapien. Aenean viverra tristique nisi eu pretium.

Morbi vestibulum est nec felis aliquam imperdiet. Aliquam ac mi viverra purus facilisis rutrum. Phasellus hendrerit nulla lorem, in sollicitudin lorem mattis a. Suspendisse egestas aliquet suscipit. Nullam congue consequat ligula, at iaculis nisi euismod eget. Nullam auctor sapien quis finibus porta. Nunc dapibus erat diam, ac cursus lectus pharetra in. Sed vestibulum nibh arcu, eu sollicitudin purus vehicula ac. Nulla euismod efficitur lorem id ornare. Sed eget lectus sed turpis aliquet imperdiet a quis sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque ultricies, est a maximus fermentum, velit turpis interdum metus, in faucibus libero sem eget lectus. Nunc in risus eu quam ornare luctus. Duis at risus in odio imperdiet ornare dictum vel nisl. Curabitur vel sapien tincidunt, iaculis leo id, volutpat lacus. Nunc nec tincidunt sem, laoreet fringilla sapien');

INSERT INTO TEMPLATE__SOBRE__TRANSLATE (ID, FW_LANG, ID_FW_PAI, SESSAO, TITULO, CONTEUDO)
VALUES ('2', 'en', '1', 'AAAAAA', 'SSSSSSSS', 'consectetur adipiscing elit. Nullam efficitur tempor leo, nec egestas felis rhoncus non. Curabitur ornare scelerisque enim vel');

INSERT INTO TEMPLATE__SOBRE__TRANSLATE (ID, FW_LANG, ID_FW_PAI, SESSAO, TITULO, CONTEUDO)
VALUES ('3', 'es', '1', NULL, NULL, NULL);

INSERT INTO TEMPLATE__STATIC (ID, MENU_LABEL_HOME, MENU_LABEL_EMPRESA, MENU_LABEL_ATUACAO, MENU_LABEL_DOC, MENU_LABEL_CLIENTES, MENU_LABEL_CASES, MENU_LABEL_CONTATO, MENU_LINK_HOME, MENU_LINK_EMPRESA, MENU_LINK_ATUACAO, MENU_LINK_DOC, MENU_LINK_CLIENTES, MENU_LINK_CASES, MENU_LINK_CONTATO, MENU_LABEL_ATUACAO_DOC, MENU_LINK_ATUACAO_DOC, MENU_LABEL_ATUACAO_PROD, MENU_LINK_ATUACAO_PROD, MENU_LABEL_ATUACAO_CONS, MENU_LINK_ATUACAO_CONS, HEADER_NEWSLETTER_TITULO, HEADER_NEWSLETTER_DESC, HEADER_PLACEHOLDER, HEADER_ABOUT_TITULO, HEADER_ABOUT_DESC, HEADER_TELEFONE, HEADER_ENDERECO, HEADER_NEWSLETTER_BUTTON, HEADER_COPYRIGHT, FOOTER_NEWSLETTER_TITULO, FOOTER_NEWSLETTER_DESC, FOOTER_PLACEHOLDER, FOOTER_ABOUT_TITULO, FOOTER_ABOUT_DESC, FOOTER_TELEFONE, FOOTER_ENDERECO, FOOTER_NEWSLETTER_BUTTON, FOOTER_COPYRIGHT, FOOTER_LINK_COPYRIGHT, TITULO_AREAS, TITULO_CLIENTES, TITULO_ATUACAO_CONSULT, TITULO_ATUACAO_DOC, TITULO_ATUACAO_PROD, TITULO_SOBRE_NOS, TITULO_CONTATOS, FW_LANG)
VALUES ('1', 'Inicio', 'Sobre nós', 'Áreas de atuação ', 'Documentação', 'Clientes', 'Cases', 'Contato', '', 'sobre-nos', 'areas-de-atuacao', 'documentacao', 'clientes', 'cases-de-sucesso', 'contato', 'Documentação', 'areas-atuacao-documentacao', 'Produtos', 'areas-atuacao-produtos', 'Consultoria', 'areas-atuacao-consultoria', '11111', '222222', '3333333', '4444444', '555555', '6666666', '77777', '888888', '9999999', 'CADASTRE-SE', 'Receba nossa newsletter especial', 'Seu melhor e-mail', 'Fale conosco', 'Mauris non nisi semper, lacinia neque in, dapibus leo. Curabitur sagittis libero tincidunt tempor finibus. Mauris at dignissim ligula, nec tristique orci.Quisque vitae metus', '1800-121-3637 +91 555 234-8765', '380 St Kilda Road, Melbourne VIC 3004, Australia', 'Cadastre-se já', 'NJ2 Company', '', 'AREAS DE<BR>ATUAÇÃO', 'CLIENTES', 'CONSULTORIA', 'DOCUMENTAÇÃO', 'PRODUTOS', 'SOBRE NÓS', 'CONTATOS', 'pt');

INSERT INTO TEMPLATE__STATIC__TRANSLATE (ID, FW_LANG, ID_FW_PAI, MENU_LABEL_HOME, MENU_LABEL_EMPRESA, MENU_LABEL_ATUACAO, MENU_LABEL_DOC, MENU_LABEL_CLIENTES, MENU_LABEL_CASES, MENU_LABEL_CONTATO, MENU_LINK_HOME, MENU_LINK_EMPRESA, MENU_LINK_ATUACAO, MENU_LINK_DOC, MENU_LINK_CLIENTES, MENU_LINK_CASES, MENU_LINK_CONTATO, MENU_LABEL_ATUACAO_DOC, MENU_LINK_ATUACAO_DOC, MENU_LABEL_ATUACAO_PROD, MENU_LINK_ATUACAO_PROD, MENU_LABEL_ATUACAO_CONS, MENU_LINK_ATUACAO_CONS, HEADER_NEWSLETTER_TITULO, HEADER_NEWSLETTER_DESC, HEADER_PLACEHOLDER, HEADER_ABOUT_TITULO, HEADER_ABOUT_DESC, HEADER_TELEFONE, HEADER_ENDERECO, HEADER_NEWSLETTER_BUTTON, HEADER_COPYRIGHT, FOOTER_NEWSLETTER_TITULO, FOOTER_NEWSLETTER_DESC, FOOTER_PLACEHOLDER, FOOTER_ABOUT_TITULO, FOOTER_ABOUT_DESC, FOOTER_TELEFONE, FOOTER_ENDERECO, FOOTER_NEWSLETTER_BUTTON, FOOTER_COPYRIGHT, FOOTER_LINK_COPYRIGHT, TITULO_AREAS, TITULO_CLIENTES, TITULO_ATUACAO_CONSULT, TITULO_ATUACAO_DOC, TITULO_ATUACAO_PROD, TITULO_SOBRE_NOS, TITULO_CONTATOS)
VALUES ('1', 'pt', '1', 'Inicio', 'Sobre nós', 'Áreas de atuação ', 'Documentação', 'Clientes', 'Cases', 'Contato', '', 'sobre-nos', 'areas-de-atuacao', 'documentacao', 'clientes', 'cases-de-sucesso', 'contato', 'Documentação', 'areas-atuacao-documentacao', 'Produtos', 'areas-atuacao-produtos', 'Consultoria', 'areas-atuacao-consultoria', '11111', '222222', '3333333', '4444444', '555555', '6666666', '77777', '888888', '9999999', 'CADASTRE-SE', 'Receba nossa newsletter especial', 'Seu melhor e-mail', 'Fale conosco', 'Mauris non nisi semper, lacinia neque in, dapibus leo. Curabitur sagittis libero tincidunt tempor finibus. Mauris at dignissim ligula, nec tristique orci.Quisque vitae metus', '1800-121-3637 +91 555 234-8765', '380 St Kilda Road, Melbourne VIC 3004, Australia', 'Cadastre-se já', 'NJ2 Company', '', 'AREAS DE<BR>ATUAÇÃO', 'CLIENTES', 'CONSULTORIA', 'DOCUMENTAÇÃO', 'PRODUTOS', 'SOBRE NÓS', 'CONTATOS');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('3', '45678707865467', '1', NULL, '1', NULL, '1', '0', 'Israel Nogueira', 'israel@feats.com.br', 'admin', 'b20bf2ccedc4d9af8e1259909e0b81245caa16fcd43399a09b670e191af8c145', '', NULL, '2', '1', NULL, '0', '1', '2023-05-28 01:58:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('5', '371930116259840', '1', NULL, '1', NULL, '1', '0', 'Israel Nogueira', 'israel2@feats.com.br', 'admin2', '@Gratis100ml', '', NULL, '2', '1', NULL, '0', '1', '2023-05-28 01:58:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('89', '5875323418934861', '0', NULL, '1', NULL, '0', '0', 'Rogerio Santos', 'rogerio@feats.com.br', 'bbbb', '30bb0aff9ec60709f2b885efcfe0ab51de37d60e79f1a1d9dfe2955e7d8bdbc3', '6wwj*-9_oz*w8%gnm%4cn&3l#mnqo6h..8qcfwes!dko&cbdpr', NULL, NULL, NULL, NULL, '0', '0', '2023-07-07 12:00:23', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('90', '5348062957142052', '0', NULL, '1', NULL, '0', '0', 'Rogerio Santos', 'rogerio@feats.com.br', 'cccc', 'ffb5b4d08b397503781050d020ef6a34e016c5bf698c8a5d0b12bb630c9e56dd', 'h0k-8#c50!8#_mjxnnkw08d_%lcc#u_7%t4hbz$dbhhj&u2&.!', NULL, NULL, NULL, NULL, '0', '0', '2023-07-07 12:01:47', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('91', '107145550988748', '0', NULL, '1', NULL, '0', '0', 'Rogerio Santos', 'rogerio@feats.com.br', 'ddddd', '2d654fef58d93c2657fe481eadf87818863d2e08dbf8a66bc4d7a2f3c7db0aea', 'f9w&j0_km$&5ryzf15d_o0_9_wyfwvzdtx&$o8t35rqd1%t2%&', NULL, NULL, NULL, NULL, '0', '0', '2023-07-07 12:03:16', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('92', '2505937669823629', '0', NULL, '1', NULL, '0', '0', 'Rogerio Santos', 'rogerio@feats.com.br', 'eeee', '589a0faa86b2610e03024d25d32c1daa687997e0c634211629ebca0651003f46', 'ey%lsp-&y*&t!xylkzdwx#t1m10ut10w_8wne@zdl1s#m@5.6e', NULL, NULL, NULL, NULL, '0', '0', '2023-07-07 12:11:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('93', '3201052718234973', '0', NULL, '1', NULL, '0', '0', 'Rogerio Santos', 'israel@feats.com', 'ffff', '9af96b3063d321ab4acdf365c64ef2081d8b2c4e966402fff8e52dd2576e9b7d', 'ywb&p99g7dkoa9tzi9dz#%@0j_ocdtk!tpigq08-hvme6!e99o', NULL, NULL, NULL, NULL, '0', '0', '2023-07-08 19:23:46', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('94', '8487450858528043', '0', NULL, '1', '78295070', '1', '0', 'Ricardo da Silva', 'mricardodasilva@hotmail.com', 'Maia', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:35', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('95', '5812498650536383', '0', NULL, '1', '90739114', '1', '0', 'Mathias da Silveira', 'macedo_mathiasdasilveira@yahoo.com', 'Macedo', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('96', '3600140953921853', '0', NULL, '1', '88150492', '1', '0', 'Caetano Das Neves', 'caetanodasnevesdematos@hotmail.com', 'de Matos', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('97', '563209094824178', '0', NULL, '1', '60567427', '1', '0', 'Carlos Eduardo de Brito', 'c-borges@outlook.com', 'Borges', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('98', '1022822143920386', '0', NULL, '1', '47899422', '1', '0', 'Enzo Carvalho', 'esouza1264@yahoo.com', 'Souza', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('99', '3424483711953459', '0', NULL, '1', '2350906', '1', '0', 'Arthur Henrique de Campos', 'arthurhenriquedecampos_lopes@hotmail.com', 'Lopes', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('100', '5046753150089211', '0', NULL, '1', '53674926', '1', '0', 'Luan Guimaraes', 'f-luanguimaraes9980@outlook.com', 'Fernandes', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('101', '5953115636668751', '0', NULL, '1', '96701064', '1', '0', 'Paulo Henrique Gonçalves', 'costapaulohenriquegonalves5732@hotmail.com', 'Costa', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('102', '5618119755159194', '0', NULL, '1', '86520007', '1', '0', 'Bruno Freitas', 'brunofreitas.xavier6420@google.com', 'Xavier', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('103', '1224052887872788', '0', NULL, '1', '39544767', '1', '0', 'Kaique Alves', 'dematos-kaiquealves9917@hotmail.com', 'de Matos', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('104', '7280303960192407', '0', NULL, '1', '85405112', '1', '0', 'Henry de Andrade', 'h.simoes6886@yahoo.com', 'Simoes', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('105', '5707763649944761', '0', NULL, '1', '5759447', '1', '0', 'João Lucca Candido', 'jooluccacandido_nascimento8622@outlook.com', 'Nascimento', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('106', '6697906645970648', '0', NULL, '1', '52554886', '1', '0', 'João Henrique de Fatima', 'joohenriquedefatima-furtado7288@google.com', 'Furtado', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('107', '7359043302102027', '0', NULL, '1', '60465092', '1', '0', 'João Paulo Pinheiro', 'joopaulopinheiropinheiro@hotmail.com', 'Pinheiro', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('108', '7694297594681265', '0', NULL, '1', '18286579', '1', '0', 'Valentim Fernandes', 'v.messias4777@google.com', 'Messias', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('109', '7387159089183316', '0', NULL, '1', '21652452', '1', '0', 'Rodrigo Campos', 'rmendes6784@yahoo.com', 'Mendes', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('110', '4845703683955857', '0', NULL, '1', '93571326', '1', '0', 'João Antônio Firmino', 'mendoncajooantniofirmino@yahoo.com', 'Mendonca', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('111', '2067041429053403', '0', NULL, '1', '79817378', '1', '0', 'Lucas Gabriel Pinto', 'lucasgabrielpinto.maia1365@outlook.com', 'Maia', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('112', '4805295624964496', '0', NULL, '1', '51915134', '1', '0', 'Davi Matias', 'azevedodavimatias5764@yahoo.com', 'Azevedo', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:36', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('113', '8818154859745347', '0', NULL, '1', '41091542', '1', '0', 'Valentim Lopes', 'v_dacosta@yahoo.com', 'da Costa', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('114', '2653289936434333', '0', NULL, '1', '35026059', '1', '0', 'Lorenzo Cruz', 'l_bastos9831@hotmail.com', 'Bastos', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('115', '4826383889241672', '0', NULL, '1', '48747543', '1', '0', 'Vitor Gabriel Aparecido', 'barros_vitorgabrielaparecido@outlook.com', 'Barros', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('116', '7164850658988435', '0', NULL, '1', '8317651', '1', '0', 'Théo Henrique Borges', 'd-thohenriqueborges@yahoo.com', 'da Silveira', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('117', '3330703394559240', '0', NULL, '1', '81509325', '1', '0', 'Gael Pereira', 'n.gaelpereira@hotmail.com', 'Nogueira', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('118', '4166164527395947', '0', NULL, '1', '78789110', '1', '0', 'Luan Morais', 'l.dealmeida4759@outlook.com', 'de Almeida', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('119', '1831513475385090', '0', NULL, '1', '14958816', '1', '0', 'Pedro Miguel Bento', 'aguiar.pedromiguelbento@outlook.com', 'Aguiar', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('120', '5666273326302664', '0', NULL, '1', '81848945', '1', '0', 'Pedro Lucas Barboza', 'n.pedrolucasbarboza123@google.com', 'Nascimento', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('121', '4822427972700132', '0', NULL, '1', '48578634', '1', '0', 'Davi Lucca de Abreu', 'ddacruz@hotmail.com', 'da Cruz', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('122', '7113320161416732', '0', NULL, '1', '91455193', '1', '0', 'Pedro Augusto Garcia', 'p-darosa2596@google.com', 'da Rosa', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('123', '3084918656325343', '0', NULL, '1', '12349737', '1', '0', 'Lorenzo Henrique Lopes', 'l.dosreis@yahoo.com', 'dos Reis', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('124', '3091832328941573', '0', NULL, '1', '42820608', '1', '0', 'Caleb Pereira', 'machado.calebpereira@outlook.com', 'Machado', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('125', '6204405952555903', '0', NULL, '1', '89459788', '1', '0', 'Ítalo Amorim', 'guimaraestaloamorim8477@outlook.com', 'Guimaraes', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('126', '3732134543296877', '0', NULL, '1', '99189641', '1', '0', 'Christopher Franco', 'mchristopherfranco@hotmail.com', 'Machado', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('127', '47455135640741', '0', NULL, '1', '66959292', '1', '0', 'Luiz Felipe Aparecido', 'dasgracas_luizfelipeaparecido@outlook.com', 'Das Gracas', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('128', '7055270834619117', '0', NULL, '1', '1237926', '1', '0', 'Pedro Henrique Peixoto', 'pcorrea6717@yahoo.com', 'Correa', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('129', '8112391278774453', '0', NULL, '1', '51253594', '1', '0', 'Bryan Henrique da Cunha', 'b-dasdores2255@outlook.com', 'Das Dores', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:37', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('130', '1381745657356995', '0', NULL, '1', '72985801', '1', '0', 'Rael Xavier', 'daschagasraelxavier@google.com', 'Das Chagas', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('131', '585953236767664', '0', NULL, '1', '49618737', '1', '0', 'Guilherme dos Santos', 'ggaldino@hotmail.com', 'Galdino', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('132', '7791728743332389', '0', NULL, '1', '14202284', '1', '0', 'José Lucas Monteiro', 'jmaciel@google.com', 'Maciel', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('133', '1171987264219051', '0', NULL, '1', '47104672', '1', '0', 'Gabriel Henrique Rezende', 'cgabrielhenriquerezende@outlook.com', 'Camargo', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('134', '499148877404133', '0', NULL, '1', '77006689', '1', '0', 'Frederico Nonato', 'bfredericononato@hotmail.com', 'Braz', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('135', '7986982125928569', '0', NULL, '1', '88719186', '1', '0', 'Heitor Henrique Barbosa', 'h_cordeiro1500@hotmail.com', 'Cordeiro', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('136', '2408667255290542', '0', NULL, '1', '89319194', '1', '0', 'Marcelo Farias', 'batista-marcelofarias6848@outlook.com', 'Batista', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('137', '6096788684973053', '0', NULL, '1', '79910908', '1', '0', 'Francisco Leite', 'f.dutra7544@hotmail.com', 'Dutra', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('138', '5243543426335718', '0', NULL, '1', '50195845', '1', '0', 'William Lima', 'wcastro@yahoo.com', 'Castro', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('139', '7927351353583497', '0', NULL, '1', '91714718', '1', '0', 'Saulo de Brito', 's.demoura@hotmail.com', 'de Moura', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('140', '5891728256252412', '0', NULL, '1', '64025293', '1', '0', 'Álvaro Santiago', 'lvarosantiago-gonalves2672@outlook.com', 'Gonçalves', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('141', '5676587497335630', '0', NULL, '1', '28253801', '1', '0', 'Nicolas Gabriel Araujo', 'n-garcia4608@outlook.com', 'Garcia', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('142', '1700553740003988', '0', NULL, '1', '90178724', '1', '0', 'Bento Lemos', 'bcastro@outlook.com', 'Castro', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('143', '480205739578107', '0', NULL, '1', '78584304', '1', '0', 'Gustavo de Azevedo', 'g.antunes@hotmail.com', 'Antunes', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('144', '6306567009443624', '0', NULL, '1', '4200433', '1', '0', 'Luiz Gustavo Muniz', 'matos_luizgustavomuniz@yahoo.com', 'Matos', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('145', '3070620341084890', '0', NULL, '1', '7196707', '1', '0', 'Tomás Barboza', 'tomsbarboza_mota@hotmail.com', 'Mota', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('146', '5440600208658634', '0', NULL, '1', '10479861', '1', '0', 'Davi Henrique Faria', 'davihenriquefaria_moura7473@yahoo.com', 'Moura', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('147', '8983941042121571', '0', NULL, '1', '2453429', '1', '0', 'William Moura', 'w.debrito@hotmail.com', 'de Brito', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('148', '1576307097233043', '0', NULL, '1', '27842053', '1', '0', 'Caio Souza', 'ccaiosouza2967@hotmail.com', 'Cardoso', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('149', '7951310400847539', '0', NULL, '1', '4074721', '1', '0', 'Abner Macedo', 'tabnermacedo260@hotmail.com', 'Torres', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('150', '8006033225139655', '0', NULL, '1', '21513329', '1', '0', 'Richard Fernandes', 'r-cavalcante6523@outlook.com', 'Cavalcante', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('151', '7169035945238733', '0', NULL, '1', '5419005', '1', '0', 'Hugo Correia', 'torres.hugocorreia@google.com', 'Torres', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('152', '2819881072857771', '0', NULL, '1', '28387824', '1', '0', 'Benjamin Paulino', 'dasdoresbenjaminpaulino@google.com', 'Das Dores', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('153', '1599497060137712', '0', NULL, '1', '93434658', '1', '0', 'Matheus Coutinho', 'm_candido@hotmail.com', 'Candido', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('154', '8545041613680302', '0', NULL, '1', '89187043', '1', '0', 'Yago Bastos', 'dantas-yagobastos@google.com', 'Dantas', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('155', '1897920145848472', '0', NULL, '1', '29036238', '1', '0', 'Fernando do Carmo', 'nonato-fernandodocarmo3724@outlook.com', 'Nonato', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('156', '1868874674507502', '0', NULL, '1', '5436397', '1', '0', 'Samuel Lima', 's.messias@outlook.com', 'Messias', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('157', '3650613211816155', '0', NULL, '1', '52432337', '1', '0', 'Benjamin Matos', 'benjaminmatosferreira@google.com', 'Ferreira', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('158', '3639243057641341', '0', NULL, '1', '33789883', '1', '0', 'Israel Aparecido', 'trindade_israelaparecido6970@google.com', 'Trindade', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('159', '7244375929582307', '0', NULL, '1', '34261385', '1', '0', 'Bryan Henrique Bispo', 'evangelista-bryanhenriquebispo9766@hotmail.com', 'Evangelista', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('160', '7289752242329591', '0', NULL, '1', '40732740', '1', '0', 'José Augusto de Fatima', 'gomes-josaugustodefatima9110@yahoo.com', 'Gomes', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('161', '5708434444984106', '0', NULL, '1', '49306411', '1', '0', 'Bryan Castro', 'bryancastrocordeiro7414@hotmail.com', 'Cordeiro', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('162', '6672915774755821', '0', NULL, '1', '70183166', '1', '0', 'Lorenzo Henrique Amorim', 'm_lorenzohenriqueamorim9281@hotmail.com', 'Matias', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:39', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('163', '7232076560909860', '0', NULL, '1', '91389248', '1', '0', 'João Paulo Campos', 'jdasilva@outlook.com', 'da Silva', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('164', '7134436502364910', '0', NULL, '1', '8162632', '1', '0', 'Henry Diniz', 'henrydiniz-decampos@google.com', 'de Campos', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('165', '4968753851178041', '0', NULL, '1', '97529788', '1', '0', 'João Emanuel Machado', 'jooemanuelmachado-campos7452@hotmail.com', 'Campos', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('166', '3440460025619538', '0', NULL, '1', '37516816', '1', '0', 'Anthony Antunes', 'anthonyantunes.henrique4941@hotmail.com', 'Henrique', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('167', '2296038851387633', '0', NULL, '1', '52140120', '1', '0', 'Lorenzo Gabriel Correia', 'marinho-lorenzogabrielcorreia@yahoo.com', 'Marinho', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('168', '1158814456903614', '0', NULL, '1', '59545671', '1', '0', 'João Vitor Franca', 'barbozajoovitorfranca@google.com', 'Barboza', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('169', '7913155261920228', '0', NULL, '1', '10994006', '1', '0', 'Pedro da Luz', 'maiapedrodaluz5903@google.com', 'Maia', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('170', '60536196750395', '0', NULL, '1', '21177301', '1', '0', 'Davi Pacheco', 'b.davipacheco4761@hotmail.com', 'Barbosa', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('171', '3584813239038330', '0', NULL, '1', '91508788', '1', '0', 'Gabriel Henrique Franca', 'dacruz_gabrielhenriquefranca9171@yahoo.com', 'da Cruz', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('172', '8735258627023536', '0', NULL, '1', '35714710', '1', '0', 'Anthony Gabriel Braz', 'r_anthonygabrielbraz@hotmail.com', 'Reis', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('173', '5900255930603778', '0', NULL, '1', '80015135', '1', '0', 'Martin Pinto', 'mdebrito6467@outlook.com', 'de Brito', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('174', '3295504048772346', '0', NULL, '1', '36572901', '1', '0', 'João Miguel Santana', 'joomiguelsantana.dasilveira5623@outlook.com', 'da Silveira', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('175', '7783951983615450', '0', NULL, '1', '25686009', '1', '0', 'Ryan Nonato', 'd-ryannonato770@yahoo.com', 'de Araujo', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('176', '2011650284361304', '0', NULL, '1', '42398787', '1', '0', 'Pedro Augusto Cruz', 's_pedroaugustocruz@hotmail.com', 'Sousa', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('177', '4720794257266214', '0', NULL, '1', '99063027', '1', '0', 'Bento Figueiredo', 'd-bentofigueiredo9560@hotmail.com', 'de Assis', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('178', '8561821455330234', '0', NULL, '1', '28085081', '1', '0', 'Igor de Fatima', 'i_lopes3478@hotmail.com', 'Lopes', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:40', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('179', '1625127017453614', '0', NULL, '1', '21834326', '1', '0', 'Pedro Miguel Santiago', 'p.furtado6696@outlook.com', 'Furtado', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('180', '454569507583415', '0', NULL, '1', '85553974', '1', '0', 'Carlos Eduardo da Conceiçao', 'c.pereira3545@yahoo.com', 'Pereira', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('181', '6404666017121290', '0', NULL, '1', '88470537', '1', '0', 'Theodoro Bezerra', 'daluz_theodorobezerra@hotmail.com', 'da Luz', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('182', '3638024075457294', '0', NULL, '1', '94752357', '1', '0', 'Davi Henrique Freire', 'davihenriquefreire_docarmo@outlook.com', 'do Carmo', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('183', '7983321857487656', '0', NULL, '1', '65718288', '1', '0', 'Arthur Felipe Neves', 'a-firmino@yahoo.com', 'Firmino', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('184', '1980939573667486', '0', NULL, '1', '82643750', '1', '0', 'Nathan de Paula', 'nathandepaulaaraujo@hotmail.com', 'Araujo', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('185', '3969131082180510', '0', NULL, '1', '52960395', '1', '0', 'João Lucas Henrique', 'joolucashenrique.candido6207@hotmail.com', 'Candido', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('186', '4895637711983162', '0', NULL, '1', '43501733', '1', '0', 'Levi do Nascimento', 'furtadolevidonascimento7495@yahoo.com', 'Furtado', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('187', '3563596335457354', '0', NULL, '1', '51482341', '1', '0', 'Vicente de Fatima', 'm-vicentedefatima7200@outlook.com', 'Matos', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('188', '3131068818161347', '0', NULL, '1', '71403804', '1', '0', 'Nicolas de Moura', 'dosreisnicolasdemoura6879@yahoo.com', 'dos Reis', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('189', '4964555361258738', '0', NULL, '1', '13545641', '1', '0', 'José Miguel Santos', 'jtrindade@yahoo.com', 'Trindade', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:41', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('190', '6422371373892723', '0', NULL, '1', '24340246', '1', '0', 'João Henrique de Freitas', 'dejesusjoohenriquedefreitas@yahoo.com', 'de Jesus', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:42', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('191', '8210991807770474', '0', NULL, '1', '34643600', '1', '0', 'Pedro Augusto Domingues', 'candido-pedroaugustodomingues6397@yahoo.com', 'Candido', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:42', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('192', '3773446684516280', '0', NULL, '1', '13194875', '1', '0', 'Luigi Pinheiro', 'machado-luigipinheiro3551@hotmail.com', 'Machado', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:42', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('193', '3241457530835035', '0', NULL, '1', '27011948', '1', '0', 'Ezequiel Feitosa', 'decampos-ezequielfeitosa@yahoo.com', 'de Campos', NULL, '', NULL, NULL, NULL, NULL, '0', '0', '2023-07-26 23:23:42', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('209', '8673463543480800', '3', NULL, '1', NULL, '1', '0', 'AA SSSSSSS', 'tetseeeee@feats.com.br', '', '2d6138f2f266a35c79b14ea6ddd6aaef591bcb883a093caa476be573912d652b', 's-m3o2.bhabz8t0', NULL, NULL, NULL, NULL, '0', '1', '2023-12-12 10:39:38', '0');

INSERT INTO USUARIOS (ID, UID, TIPO_PROFILE, LEVEL_PERMISSION, FIRSTACCESS, UID_EMPRESA, STATUS, BLACKLIST, NOME, EMAIL, LOGIN, SENHA, SALT, NOVA_SENHA, TIPO_DOCUMENTO, TIPO_PESSOA, 2FA, 2FA_ACTIVE, EMAIL_VALIDADO, CRIADO_EM, EXCLUIDO)
VALUES ('210', '7579297144091987', '3', NULL, '1', NULL, '1', '0', 'marquinho silva sauro', 'marquinhos@feats.com.br', '', '108a30c516f73543cb1a4ee4ddc55242382cc92e68dd03c37efb0113da8b6a6d', '-kbq97cyk.k#bg4', NULL, NULL, NULL, NULL, '0', '1', '2023-12-12 10:54:44', '0');

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('541', '45678707865467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('542', '47455135640741', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('543', '60536196750395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('544', '107145550988748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('545', '371930116259840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('546', '454569507583415', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('547', '480205739578107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('548', '499148877404133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('549', '563209094824178', 'ggggggg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, '', '', '2023-10-30 16:16:38', '', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('550', '585953236767664', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('551', '1022822143920386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('552', '1158814456903614', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('553', '1171987264219051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('554', '1224052887872788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('555', '1381745657356995', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('556', '1576307097233043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('557', '1599497060137712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('558', '1625127017453614', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('559', '1700553740003988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('560', '1831513475385090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('561', '1868874674507502', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('562', '1897920145848472', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('563', '1980939573667486', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('564', '2011650284361304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('565', '2067041429053403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('566', '2296038851387633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('567', '2408667255290542', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('568', '2505937669823629', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('569', '2653289936434333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('570', '2819881072857771', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('571', '3070620341084890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('572', '3084918656325343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('573', '3091832328941573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('574', '3131068818161347', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('575', '3201052718234973', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('576', '3241457530835035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('577', '3295504048772346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('578', '3330703394559240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('579', '3424483711953459', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('580', '3440460025619538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('581', '3563596335457354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('582', '3584813239038330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('583', '3600140953921853', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('584', '3638024075457294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('585', '3639243057641341', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('586', '3650613211816155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('587', '3732134543296877', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('588', '3773446684516280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('589', '3969131082180510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('590', '4166164527395947', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('591', '4720794257266214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('592', '4805295624964496', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('593', '4822427972700132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('594', '4826383889241672', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('595', '4845703683955857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('596', '4895637711983162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('597', '4964555361258738', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('598', '4968753851178041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('599', '5046753150089211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('600', '5243543426335718', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('601', '5348062957142052', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('602', '5440600208658634', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('603', '5618119755159194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('604', '5666273326302664', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('605', '5676587497335630', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('606', '5707763649944761', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('607', '5708434444984106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('608', '5812498650536383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('609', '5875323418934861', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('610', '5891728256252412', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('611', '5900255930603778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('612', '5953115636668751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('613', '6096788684973053', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('614', '6204405952555903', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('615', '6306567009443624', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('616', '6404666017121290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('617', '6422371373892723', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('618', '6672915774755821', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('619', '6697906645970648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('620', '7055270834619117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('621', '7113320161416732', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('622', '7134436502364910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('623', '7164850658988435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('624', '7169035945238733', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('625', '7232076560909860', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('626', '7244375929582307', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('627', '7280303960192407', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('628', '7289752242329591', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('629', '7359043302102027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('630', '7387159089183316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('631', '7694297594681265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('632', '7783951983615450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('633', '7791728743332389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('634', '7913155261920228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('635', '7927351353583497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('636', '7951310400847539', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('637', '7983321857487656', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('638', '7986982125928569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('639', '8006033225139655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('640', '8112391278774453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('641', '8210991807770474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('642', '8487450858528043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('643', '8545041613680302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('644', '8561821455330234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('645', '8735258627023536', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('646', '8818154859745347', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('647', '8983941042121571', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-10-30 16:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('663', '8673463543480800', '241234', '12341234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-12-12 10:39:38', NULL, '', '', NULL, '', '', '');

INSERT INTO USUARIOS__DADOS_PROJETO (ID, UID_USER, CPF, RG, LISTA_UPLOAD, DESCRICAO, ATENDIDO_IMOBILIARIA, CORRETOR_NOME, INSTAGRAM, NACIONALIDADE, PERFIL_INVESTIDOR, PROFISSAO, REGIME_BENS, RENDA_ATE, RENDA_DE, TIPO_CONTA_TRADICIONAL, TIPO_CONTA_DIGITAL, TIPO_CONTA_EXCHANGE, UNIDADE, VEICULO_REPASSE, TELEFONE, WHATSAPP, DATA_INSERT, OBS, LOGRADOURO, CIDADE, ESTADO, CEP, NUMERO, COMPLEMENTO)
VALUES ('664', '7579297144091987', '3452345', '23452345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, '2023-12-12 10:54:44', NULL, '', '', NULL, '', '', '');

INSERT INTO USUARIOS__STATUS (ID, CODE, TITULO, DESCRICAO)
VALUES ('1', '1', 'CONTA ATIVA', 'jjjjddddd');

INSERT INTO USUARIOS__STATUS (ID, CODE, TITULO, DESCRICAO)
VALUES ('2', '2', 'CONTA INATIVA', 'BBBBB');

INSERT INTO USUARIOS__STATUS (ID, CODE, TITULO, DESCRICAO)
VALUES ('3', '3', 'CONTA EXCLUÍDA', '');

INSERT INTO USUARIOS__STATUS (ID, CODE, TITULO, DESCRICAO)
VALUES ('4', '4', 'AGUARDANDO CONFIRMAÇÃO DE CONTA', '');

INSERT INTO USUARIOS__STATUS (ID, CODE, TITULO, DESCRICAO)
VALUES ('5', '5', 'CONTA SUSPENSA', '');

INSERT INTO USUARIOS__STATUS (ID, CODE, TITULO, DESCRICAO)
VALUES ('11', '0', 'QPVQ97LY4cu6IXAWfF+wOvOZFR1hItpTWiwa4m3ntak=', 'NCUB1pM9/orreKyzctvaVg==');

INSERT INTO USUARIOS__STATUS (ID, CODE, TITULO, DESCRICAO)
VALUES ('12', '0', 'a45EqjRSU0RRrmTEFQifvA==', '');

INSERT INTO USUARIOS__STATUS (ID, CODE, TITULO, DESCRICAO)
VALUES ('13', '0', 'GzyoLLlKpFpVm9cABluZkzgEwyyiVnAZzj3TMuRGX2w=', '');

INSERT INTO USUARIOS__TIPO_DOCUMENTO (ID, CODE, TIPO)
VALUES ('1', '1', 'CPF');

INSERT INTO USUARIOS__TIPO_DOCUMENTO (ID, CODE, TIPO)
VALUES ('2', '2', 'CNPJ');

INSERT INTO USUARIOS__TIPO_DOCUMENTO (ID, CODE, TIPO)
VALUES ('3', '3', 'PASSAPORTE');

INSERT INTO USUARIOS__TIPO_PESSOA (ID, CODE, TIPO)
VALUES ('1', '1', 'FISICA');

INSERT INTO USUARIOS__TIPO_PESSOA (ID, CODE, TIPO)
VALUES ('2', '2', 'JURIDICA');

INSERT INTO USUARIOS__TIPO_PROFILE (ID, CODE, NOME)
VALUES ('0', '0', 'SYSTEM');

INSERT INTO USUARIOS__TIPO_PROFILE (ID, CODE, NOME)
VALUES ('1', '1', 'ADMIN');

INSERT INTO USUARIOS__TIPO_PROFILE (ID, CODE, NOME)
VALUES ('2', '2', 'PRODUTOR');

INSERT INTO USUARIOS__TIPO_PROFILE (ID, CODE, NOME)
VALUES ('3', '3', 'USUARIO');

INSERT INTO USUARIOS__TIPO_PROFILE (ID, CODE, NOME)
VALUES ('4', '4', 'PERFIL');

INSERT INTO USUARIOS__VINCULO (ID, USUARIO_A, USUARIO_B, REFERENCIA, TIPO, STATUS)
VALUES ('1', '45678707865467', '5812498650536383', NULL, '3', NULL);

INSERT INTO USUARIOS__VINCULO (ID, USUARIO_A, USUARIO_B, REFERENCIA, TIPO, STATUS)
VALUES ('2', '45678707865467', '3600140953921853', NULL, '2', NULL);

INSERT INTO USUARIOS__VINCULO_TIPO (ID, CODE, TIPO)
VALUES ('1', '1', 'AMIGO');

INSERT INTO USUARIOS__VINCULO_TIPO (ID, CODE, TIPO)
VALUES ('2', '2', 'SEGUINDO');

INSERT INTO USUARIOS__VINCULO_TIPO (ID, CODE, TIPO)
VALUES ('3', '3', 'BLOQUEIO');

INSERT INTO USUARIOS__VINCULO_TIPO (ID, CODE, TIPO)
VALUES ('4', '4', 'CURTIU');

INSERT INTO USUARIOS__VINCULO_TIPO (ID, CODE, TIPO)
VALUES ('5', '5', 'PATROCINIO');

INSERT INTO USUARIOS__VINCULO_TIPO (ID, CODE, TIPO)
VALUES ('6', '6', 'AFILIADO');

INSERT INTO USUARIOS__VINCULO_TIPO (ID, CODE, TIPO)
VALUES ('7', '7', 'CADASTRADO');

INSERT INTO USUARIOS__VINCULO_TIPO (ID, CODE, TIPO)
VALUES ('8', '8', 'DENUNCIA');

