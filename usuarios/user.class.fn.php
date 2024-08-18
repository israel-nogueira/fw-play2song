<?php
import::system();
import::geoLocation();
import::auth2Factory();
class user{



	static public function get2FA($_ID=null){
		if(is_null($_ID)){throw new InvalidArgumentException('user::get2FA(IS NULL)!');}
		$classe = new mariaDB();
		$classe->connect();
		$classe->set_table('USUARIOS');
		$classe->set_colum('2FA_ACTIVE');
		$classe->set_colum('2FA');
		$classe->set_where('UID='.$_ID);
		$classe->select();
		return $classe->fetch_array()['response'][0];
	}

	static public function getLoginSuporte($_UID=null){;
		$_PERMISSOES = system::getUserPermission(($_UID??session::USER()['UID']));
		if($_PERMISSOES!=false && $_PERMISSOES['SUPORTE']==1){
			$classe = new mariaDB();
			$classe->connect();
			$classe->set_table('USUARIOS');
			$classe->set_colum('LOGIN_SUPORTE');
			$classe->set_where('UID='.session::USER()['UID']);
			$classe->select('param');
			return $classe->fetch_array('param')[0]['LOGIN_SUPORTE'];
		}else{
			return ''; 
		}
	}

	static public function blingData($_ID=null){
		if (is_null($_ID)) {throw new InvalidArgumentException('user::blingData(IS NULL)!');}
		$_DADOS_PESSOAIS = new mariaDB();
		$_DADOS_PESSOAIS->connect();
		$_DADOS_PESSOAIS->set_table('USUARIOS');
		$_DADOS_PESSOAIS->set_colum('NOME as nome');
		$_DADOS_PESSOAIS->set_colum('EMAIL AS email');
		$_DADOS_PESSOAIS->set_colum('RG AS ie_rg');
		$_DADOS_PESSOAIS->set_colum('IF(TIPO_DOCUMENTO=1,"F","J") AS tipoPessoa');
		$_DADOS_PESSOAIS->set_colum('ENDERECO_CEP AS cep');
		$_DADOS_PESSOAIS->set_colum('ENDERECO_BAIRRO AS bairro');
		$_DADOS_PESSOAIS->set_colum('ENDERECO_CIDADE AS cidade');
		$_DADOS_PESSOAIS->set_colum('ENDERECO_LOGRADOURO AS endereco');
		$_DADOS_PESSOAIS->set_colum('ENDERECO_NUMERO AS numero');
		$_DADOS_PESSOAIS->set_colum('ENDERECO_COMPLEMENTO AS complemento');
		$_DADOS_PESSOAIS->set_colum('ENDERECO_UF AS uf');
		$_DADOS_PESSOAIS->set_colum('DOCUMENTO AS cpf_cnpj');
		$_DADOS_PESSOAIS->set_colum('TELEFONE AS fone');
		$_DADOS_PESSOAIS->set_where('UID='.$_ID);
		$_DADOS_PESSOAIS->select();
		return $_DADOS_PESSOAIS->fetch_array()['response'][0] ?? [];
	}
	
	static public function getData($_ID=null){
		if(is_null($_ID)){throw new InvalidArgumentException('user::getData(IS NULL)!');	}

		$_DADOS_PESSOAIS = new mariaDB();
		$_DADOS_PESSOAIS->connect();


		$_DADOS_PESSOAIS->set_table('USUARIOS US');
		$_DADOS_PESSOAIS->set_colum('(SELECT ID_PATROCINEO FROM REDE WHERE ID_ASSOC=US.UID) AS ID_PATROCINEO ');
		$_DADOS_PESSOAIS->set_colum('(SELECT ID_PAI FROM REDE WHERE ID_ASSOC=US.UID) AS UID_PAI ');
		$_DADOS_PESSOAIS->set_colum('AVO.ID_PAI AS UID_AVO');
		$_DADOS_PESSOAIS->set_colum('REDE.ID_DNA AS ID_DNA ');
		$_DADOS_PESSOAIS->set_colum('DNA_PAI.ID_PAI AS UID_PAI_DNA ');
		$_DADOS_PESSOAIS->set_colum('(SELECT LADO FROM REDE WHERE ID_ASSOC=US.UID) AS LADO ');
		$_DADOS_PESSOAIS->set_colum('US.* ');
		$_DADOS_PESSOAIS->set_colum('TIPO.NOME AS TIPO');
		$_DADOS_PESSOAIS->set_colum('API.API_KEY 	AS BINANCE_API_KEY');
		$_DADOS_PESSOAIS->set_colum('API.SECRET_KEY AS BINANCE_SECRET_KEY');
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_GET_JSON_PLANOS_USER(US.UID)) AS PLANO',true);
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_GET_JSON_GRADUACOES_USER(US.UID)) AS GRADUACOES',true);
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_USER_PLANO_ATIVO(US.UID,0)) AS ATIVO');
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_USUARIOO_QUALIFICADO_MATRIZ(US.UID)) 			AS QUALIFICADO');
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_USUARIOO_QUALIFICADO_MATRIZ(REDE.ID_PAI)) 		AS PAI_QUALIFICADO');
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_TOTAL_REDE(US.UID,100000))						AS TOTAL_REDE ');
		$_DADOS_PESSOAIS->set_colum('(SELECT COUNT(1) FROM REDE WHERE ID_PATROCINEO=US.UID) 	AS TOTAL_DIRETOS ');
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_TOTAL_REDE_ATIVA(US.UID,1000,0)) 				AS TOTAL_REDE_ATIVA');
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_TOTAL_REDE_DIRETA_ATIVA(US.UID,1000,0)) 		AS TOTAL_REDE_DIRETA_ATIVA');
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_TOTAL_REDE_FILHOS_ATIVA(US.UID,1000000,0)) 		AS TOTAL_REDE_FILHOS_ATIVA');
		$_DADOS_PESSOAIS->set_colum('(SELECT FN_TOTAL_REDE_FILHOS_QUALIFICADA(US.UID,1000,0))	AS TOTAL_REDE_FILHOS_QUALIFICADA');
		$_DADOS_PESSOAIS->join('LEFT','USUARIOS__TIPO_PROFILE TIPO','TIPO.CODE=US.TIPO_PROFILE');
		$_DADOS_PESSOAIS->join('LEFT','REDE REDE','REDE.ID_ASSOC=US.UID');
		$_DADOS_PESSOAIS->join('LEFT','REDE DNA_PAI','DNA_PAI.ID_ASSOC=REDE.ID_DNA');
		$_DADOS_PESSOAIS->join('LEFT','BINANCE__APIS API','API.UID_USER=US.UID');

		$_DADOS_PESSOAIS->join('LEFT','REDE AVO','AVO.ID_ASSOC=REDE.ID_PAI');

		if(is_string($_ID) && !is_numeric($_ID)){
			$_DADOS_PESSOAIS->set_where('US.LOGIN="'.$_ID.'"');
			$_DADOS_PESSOAIS->set_where('OR US.EMAIL="'.$_ID.'"');
		}else{
			
			$_DADOS_PESSOAIS->set_where('US.UID='.$_ID);
			$_DADOS_PESSOAIS->set_where('OR US.ID='.$_ID);
		}
		
		$_DADOS_PESSOAIS->select('response');
		$_RETORNO 	= $_DADOS_PESSOAIS->fetch_array()['response'][0] ?? [];

		return $_RETORNO;
	}

	static public function getLocation($_ID=null){

		if(is_null($_ID)){throw new InvalidArgumentException('user::getLocation(IS NULL)!');}
		$_MORADIA = new mariaDB();
		$_MORADIA->connect();
		$_MORADIA->set_table('USUARIOS');
		$_MORADIA->set_colum('ENDERECO_CEP');
		$_MORADIA->set_colum('ENDERECO_BAIRRO');
		$_MORADIA->set_colum('ENDERECO_CIDADE');
		$_MORADIA->set_colum('ENDERECO_LOGRADOURO');
		$_MORADIA->set_colum('ENDERECO_NUMERO');
		$_MORADIA->set_colum('ENDERECO_COMPLEMENTO');
		$_MORADIA->set_colum('ENDERECO_OBS');
		$_MORADIA->set_colum('ENDERECO_UF');
		$_MORADIA->set_colum('LONGITUDE');
		$_MORADIA->set_colum('LATITUDE');
		$_MORADIA->set_where('UID='.$_ID);
		$_MORADIA->select();
		return $_MORADIA->fetch_array()['response'][0];
	}
	
	static public function get_contas_bancarias($_ID=null){
		if(is_null($_ID)){$_ID = session::USER()['UID'];}
		$_USER_BANCO = new mariaDB();
		$_USER_BANCO->connect();
		$_USER_BANCO->set_table('USUARIOS__BANCOS',' UB ');
		$_USER_BANCO->set_colum('UB.TIPO_PESSOA		AS TIPO_PESSOA');
		$_USER_BANCO->set_colum('UB.TIPO_CONTA		AS TIPO_CONTA');
		$_USER_BANCO->set_colum('UB.AGENCIA			AS AGENCIA');
		$_USER_BANCO->set_colum('UB.CONTA			AS CONTA') ;
		$_USER_BANCO->set_colum('UB.ID				AS ID_VINCULO');
		$_USER_BANCO->set_colum('TC.TYPE			AS TYPE') ;
		$_USER_BANCO->set_colum('TP.TIPO			AS TIPO_PESSOA') ;
		$_USER_BANCO->set_colum('B.ID				AS ID_BANCO');
		$_USER_BANCO->set_colum('B.CODIGO			AS CODE_BANCO');
		$_USER_BANCO->set_colum('B.NOME				AS NOME_BANCO');
		$_USER_BANCO->set_colum('U.UID				AS UID_USER');

		$_USER_BANCO->join(' LEFT','FINANCEIRO__BANCOS		AS	B'	,' B.ID			=	UB.ID_BANCO ');
		$_USER_BANCO->join(' INNER','USUARIOS				AS	U'	,' UB.UID_USER	=	U.UID ');
		$_USER_BANCO->join(' LEFT','USUARIOS__TIPO_CONTA	AS	TC'	,' TC.CODE		=	UB.TIPO_CONTA ');
		$_USER_BANCO->join(' LEFT','USUARIOS__TIPO_PESSOA	AS	TP'	,' TP.CODE		=	UB.TIPO_PESSOA ');
		$_USER_BANCO->set_where('UB.UID_USER='.$_ID);
		$_USER_BANCO->select();
		return $_USER_BANCO->fetch_array()['response'] ?? [];
	}
	

	static public function verificaSe2FAEstaAivo($__RETORNO='false'){

		$RESPONSE	= (user::getData(session::USER()['UID'])['2FA_ACTIVE']==1 && !is_null(session::auth2Factory())) ? 1 : 0;
		
		if($__RETORNO!='false'){
			return $RESPONSE;
		}else{
			die(globals::wsReturn($RESPONSE,1));
		}
	}

	static public function verificaRequisicao2FA() {	
		

		if(empty($_POST['private']['auth']) && empty($_POST['public']['auth'])){
			die(globals::wsReturn("user::verificaRequisicao2FA() :: POST auth inexistente", 0));
		}
		$_AUTH = trim(str_replace(['-', ' ','.','   '], '',($_POST['private']['auth']?? $_POST['public']['auth'])));
		

		if (auth2Factory::verifyRequest($_AUTH) == false) {
			if($_POST['private']['modalRequest']==true){
				 die(globals::wsReturn('2FA incorreto',0));
			}else{
				return false;
			}
		}else{
			if(isset($_POST['private']['modalRequest']) && $_POST['private']['modalRequest']==true){
				 die(globals::wsReturn('tudo OK',1));
			}else{
				return true;
			}
		}	
	}






}