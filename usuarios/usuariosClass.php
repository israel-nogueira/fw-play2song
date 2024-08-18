<?
	namespace project\usuarios;
	use IsraelNogueira\SkySession\session;
	use IsraelNogueira\galaxyDB\galaxyDB;
	use \system\lib\auth;
	use \system\lib\system;
	use \system\classes\auth\loginClass;
	use InvalidArgumentException;

	

	//--------------------------------------------------------------------
	//	CLASSE GERAL DO MÓDULO "usuarios"
	//--------------------------------------------------------------------

	class usuariosClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}

		public static function deleteAuthn(){

			$_USER		=	usuariosClass::getData(session::USER()['UID']);
			$VERIFY_PIN = 	auth::verifyPin($_USER['UID'], PRIVATE_DATA['TwofactorySecurity']);
			
			
			if($_USER['PIN']!="" && $VERIFY_PIN==1){

				$_DELETE = new galaxyDB();
				$_DELETE->connect();
				$_DELETE->table("USUARIOS__DISPOSITIVOS");
				$_DELETE->where('ID="' .PRIVATE_DATA['UID'] . '"');
				$_DELETE->prepare_delete('AUTH');	
				$_DELETE->transaction(function($error) {die(\system\lib\system::ajaxReturn($error,0));});
				$_DELETE->execQuery(function($success) {/*die(print_r($success));*/});		
				die(system::ajaxReturn('dispositivo excluido com sucesso',1,0));

			}else{

				die(\system\lib\system::ajaxReturn("PIN Incorreto ou inexistente",0));

			}

			







		}

		public static function listAuthn(){

			if(IS_ADMIN || session::USER()['UID']==PRIVATE_DATA['UID']){
				$_ = new galaxyDB();
				$_->connect();
				$_->table("USUARIOS__DISPOSITIVOS");
				$_->where('UID_USER="'.PRIVATE_DATA['UID'] .'"');
				$_->prepare_select('param');
				$_->transaction(function($error) {die(print_r($error));});
				$_->execQuery(function($success) {});
				$_RESULT = $_->fetch_array('param');
				die(system::ajaxReturn($_RESULT,1,0));
			}else{
				die(system::ajaxReturn([],1,0));
			}


		}

		public static function newAuthn(){
					$_ = new galaxyDB();
					$_->connect();
					$_->table("USUARIOS__DISPOSITIVOS");
					$_->where('ID_DISP="'.PRIVATE_DATA['ID'] .'" AND UID_USER="'.session::USER()['UID'] .'"');
					$_->prepare_select('param');
					$_->transaction(function($error) {die(print_r($error));});
					$_->execQuery(function($success) {});
					if($_->_num_rows['param']==0){
						$_SELECT = new galaxyDB();
						$_SELECT->connect();
						$_SELECT->table("USUARIOS__DISPOSITIVOS");
						$_SELECT->NAME=PRIVATE_DATA['NAME'];
						$_SELECT->ID_DISP=PRIVATE_DATA['ID'];
						$_SELECT->UID_USER=session::USER()['UID'];
						$_SELECT->AUTHENTICATORATTACHMENT=PRIVATE_DATA['AUTHENTICATORATTACHMENT'];
						$_SELECT->CLIENTDATAJSON=json_encode(PRIVATE_DATA['CLIENTDATAJSON']);
						$_SELECT->TYPE=PRIVATE_DATA['TYPE'] ;
						$_SELECT->RAWID=json_encode(PRIVATE_DATA['RAWID']);
						$_SELECT->prepare_insert('param');
						$_SELECT->transaction(function($error) {die(print_r($error));});
						$_SELECT->execQuery(function($success) {/*die(print_r($success));*/});
					}
		}

		public static function savedata($_UID=null){
			
			// $_UID  = PRIVATE_DATA['UID']
			
			$_UPDATE = new galaxyDB();
			$_UPDATE->connect();
			switch (PRIVATE_DATA['TYPE']) {
				case 'dados_pessoais':

						$_UPDATE->table("USUARIOS__DADOS_PROJETO");
						$_UPDATE->CPF		=PRIVATE_DATA['CPF'];
						$_UPDATE->RG		=PRIVATE_DATA['RG'];
						$_UPDATE->OBS		=PRIVATE_DATA['OBS'];
						$_UPDATE->TELEFONE	=PRIVATE_DATA['TELEFONE'];
						$_UPDATE->WHATSAPP	=PRIVATE_DATA['WHATSAPP'];
						$_UPDATE->where		('UID_USER="'.$_UID.'"');
						$_UPDATE->prepare_update('PROJETO');
						
						$_UPDATE->table("USUARIOS");
						$_UPDATE->EMAIL		=PRIVATE_DATA['EMAIL'];
						$_UPDATE->NOME		=PRIVATE_DATA['NOME'];
						$_UPDATE->where		('UID="'.$_UID.'"');
						$_UPDATE->prepare_update('USUARIOS');

				break;
				case 'localizacao':

					$_UPDATE->table("USUARIOS__DADOS_PROJETO");
					$_UPDATE->CEP			= PRIVATE_DATA['CEP'];
					$_UPDATE->CIDADE		= PRIVATE_DATA['CIDADE'];
					$_UPDATE->COMPLEMENTO	= PRIVATE_DATA['COMPLEMENTO'];
					$_UPDATE->LOGRADOURO	= PRIVATE_DATA['LOGRADOURO'];
					$_UPDATE->NUMERO		= PRIVATE_DATA['NUMERO'];
					$_UPDATE->ESTADO		= PRIVATE_DATA['UF'];
					$_UPDATE->where('UID_USER="' . $_UID . '"');
					$_UPDATE->prepare_update('PROJETO');	

				break;
				case 'acesso':
					
					$_VALIDADO = loginClass::verifyLogin(session::USER()['EMAIL'],PRIVATE_DATA['TwofactorySecurity']);
					$_VALIDADO = loginClass::verifyLogin(session::USER()['EMAIL'],PRIVATE_DATA['TwofactorySecurity']);
					if($_VALIDADO['AUTH']==1){
						
						
						$_USER = usuariosClass::getData($_UID);

						if($_USER==[]){
							die(system::ajaxReturn("Usuario invalido",0));
						}

						$_OLDPASS = loginClass::verifyLogin($_USER['EMAIL'],PRIVATE_DATA['O_PASSWORD']);
						
						if($_OLDPASS['AUTH']==0 && IS_ADMIN==0){
							die(system::ajaxReturn('Senha atual incorreta',0));
						}
						
						if(PRIVATE_DATA['N_PASSWORD']!=PRIVATE_DATA['RN_PASSWORD']){
							die(system::ajaxReturn("As senhas não correspondem",0));
						}

						if(PRIVATE_DATA['PIN']!=PRIVATE_DATA['R_PIN']){
							die(system::ajaxReturn("PINs não correspondem",0));
						}

						$_SENHA	= 'COMMAND:SHA2(CONCAT("'.$_USER['SALT'].'",TRIM("'.PRIVATE_DATA['N_PASSWORD'].'")),256)';
						$_PIN	= 'COMMAND:SHA2(CONCAT("'.$_USER['SALT'].'",TRIM("'.PRIVATE_DATA['PIN'].'")),256)';


						$_UPDATE->table("USUARIOS__DADOS_PROJETO");
						$_UPDATE->LOGIN			= PRIVATE_DATA['LOGIN'];
						$_UPDATE->SENHA			= $_SENHA;
						$_UPDATE->PIN			= $_PIN;
						$_UPDATE->where('UID_USER="' . $_UID . '"');
						$_UPDATE->prepare_update('PROJETO');	

						die(system::ajaxReturn(PRIVATE_DATA,1,0));
					}
				break;
				case 'pin':
										
					$_USER			=	usuariosClass::getData(session::USER()['UID']);
					$VERIFY_ATUAL	=	auth::verifyPin($_USER['UID'], PRIVATE_DATA['ATUAL']);
					
					if($VERIFY_ATUAL==0){
						die(system::ajaxReturn("PIN Atual incorreto",0));
					}
					
					if(PRIVATE_DATA['NOVO']!=PRIVATE_DATA['REPETE']){
						die(system::ajaxReturn("Os novos PINS não correspondem",0));
					}
					
					$VERIFY_PIN = auth::newPin($_USER['UID'], PRIVATE_DATA['NOVO']);
				
					die(system::ajaxReturn($VERIFY_PIN,1,0));			


				break;
				case 'admin':
					if(IS_ADMIN){
						die(system::ajaxReturn("SUCESSO!",1,0));
					}else{
						die(system::ajaxReturn("Essa ação requer privilégio de administrador",0));
					}
				break;
				default:break;
			}

			$_UPDATE->transaction(function ($e) {
				die(system::ajaxReturn($e,0));
			});
			$_UPDATE->execQuery();



			die(system::ajaxReturn([ $_UID,'sucesso'], 1, 0));
		}

		public static function listaUsuarios($datatable=true){
			header('Content-Type: application/json');


			$_SELECT = new galaxyDB();
			$_SELECT->table('USUARIOS');
			$_SELECT->colum('USUARIOS.UID');
			$_SELECT->colum('USUARIOS.NOME');
			$_SELECT->colum('USUARIOS.EMAIL');
			$_SELECT->colum('USUARIOS.LOGIN');
			$_SELECT->colum('DATE_FORMAT(CRIADO_EM, "%d/%m/%Y") AS ENTROU_EM');
			$_SELECT->colum('(IF((SELECT COUNT(1) FROM USUARIOS__VINCULO WHERE USUARIO_A='.session::USER()['UID'].' AND USUARIO_B=USUARIOS.UID AND TIPO=2 ) > 0,"1","0")) AS SEGUINDO');
			$_SELECT->colum('(IF((SELECT COUNT(1) FROM USUARIOS__VINCULO WHERE USUARIO_A='.session::USER()['UID'].' AND USUARIO_B=USUARIOS.UID AND TIPO=3) > 0,"1","0")) AS BLOQUEADO');
			$_SELECT->colum('(SELECT COUNT(1) FROM USUARIOS__VINCULO WHERE USUARIO_A=USUARIOS.UID AND TIPO=2) AS SEGUINDO_COUNT');
			$_SELECT->colum('(SELECT COUNT(*) FROM USUARIOS__VINCULO WHERE USUARIO_B=USUARIOS.UID AND TIPO=2) AS SEGUIDORES');
			$_SELECT->colum('CONCAT("/system/placeholder-img/100x100/444444/FFF/20") AS AVATAR');
			$_SELECT->colum('CONCAT("/system/thumb/assets/uploads/",UID,"/header-557x100.png") AS HEADER');
			$_SELECT->colum('PROJETO.*');
			$_SELECT->join('LEFT','USUARIOS__DADOS_PROJETO PROJETO',' PROJETO.UID_USER=USUARIOS.UID');
			$_SELECT->prepare_select('param');

			$_DATATABLE = new galaxyDB();
			$_DATATABLE->connect();
			$_DATATABLE->table("(".$_SELECT->query['param'].") AS Subconsulta");
			$_DATATABLE->colum(['UID','NOME','EMAIL','LOGIN','ENTROU_EM' ,'SEGUINDO','BLOQUEADO','SEGUINDO_COUNT','SEGUIDORES','AVATAR','HEADER','ID','UID_USER','CPF','RG','LISTA_UPLOAD','DESCRICAO','ATENDIDO_IMOBILIARIA','CORRETOR_NOME','INSTAGRAM','NACIONALIDADE','PERFIL_INVESTIDOR','PROFISSAO','REGIME_BENS','RENDA_ATE','RENDA_DE','TIPO_CONTA_TRADICIONAL','TIPO_CONTA_DIGITAL','TIPO_CONTA_EXCHANGE','UNIDADE','VEICULO_REPASSE','TELEFONE','WHATSAPP','DATA_INSERT','OBS','LOGRADOURO','CIDADE','ESTADO','CEP','NUMERO','COMPLEMENTO']);


			if($datatable){
				
				$_RESULT = $_DATATABLE->dataTable(PUBLIC_DATA['oAjaxData']);

			}else{
				$_DATATABLE->prepare_select('param');
				$_DATATABLE->transaction(function($e) {die($e);});
				$_DATATABLE->execQuery();
				$_RESULT = $_DATATABLE->fetch_array('param');
			}


			die(system::ajaxReturn($_RESULT,1,0));
		}

		static public function get2FA($_ID=null){
			if(is_null($_ID)){throw new InvalidArgumentException('user::get2FA(IS NULL)!');}
			$classe = new usuariosModel();
			$classe->colum('2FA_ACTIVE');
			$classe->colum('2FA');
			$classe->where('UID='.$_ID);
			$classe->select();
			return $classe->fetch_array()['response'][0];
		}
		
		static public function signUp($_DATA=[]){

			$_INSERT = new galaxyDB();
			$_INSERT->connect();
			$_INSERT->table("USUARIOS");
			$_INSERT->set_insert_obj($_DATA);
			$_INSERT->prepare_insert('NOVO_USER');
			$_INSERT->transaction(function ($e) {die(system::ajaxReturn($e,0));});
			$_INSERT->execQuery();

			$_SELECT = new galaxyDB();
			$_SELECT->connect();
			$_SELECT->table("USUARIOS");
			$_SELECT = new usuariosModel();
			$_SELECT->where('ID='.$_INSERT->_last_id['NOVO_USER']);
			$_SELECT->prepare_select('NOVO_USER');
			$_SELECT->transaction(function ($e) {
				die(system::ajaxReturn($e,0));
			});
			$_SELECT->execQuery();
			return $_SELECT->fetch_array('NOVO_USER')[0];
		}

		static public function getData($_ID=null){
			if(is_null($_ID)){throw new InvalidArgumentException('user::getData(IS NULL)!');	}
			$ALL_COLUNAS	= self::getColumsUser();
			$_USUARIO		= new galaxyDB();
			$_USUARIO		->connect();
			$_USUARIO		->table("USUARIOS US");
			foreach ($ALL_COLUNAS as $_COLUNA) {$_USUARIO->colum($_COLUNA);}
			if(is_string($_ID) && !is_numeric($_ID)){
				$_USUARIO->where('LOGIN="'.$_ID.'" OR EMAIL="'.$_ID.'"');
			}else{
				$_USUARIO->where('US.UID='.$_ID.' OR US.ID='.$_ID);
			}	
			$_USUARIO->join("LEFT","USUARIOS__DADOS_PROJETO PROJ","PROJ.UID_USER=US.UID");
			$_USUARIO->prepare_select('param');
			$_USUARIO->transaction(function($e) {die($e);});
			$_USUARIO->execQuery();
			$_RESULT = $_USUARIO->fetch_array('param')[0] ?? [];
			return $_RESULT;
		}

		static public function getColumsUser(){
			$COLUNAS_CONFLITO		= ["ID","UID_USER"];
			$_COLUNAS				= new galaxyDB();
			$_COL_USER				= $_COLUNAS->showDBColumns('USUARIOS');
			$COLUNAS_A				= array_map(function ($el){return 'US.'.$el;}, array_diff($_COL_USER, $COLUNAS_CONFLITO));
			$_COLUNAS				= new galaxyDB();
			$_PROJETO				= $_COLUNAS->showDBColumns('USUARIOS__DADOS_PROJETO');
			$COLUNAS_B				= array_map(function ($el){return 'PROJ.'.$el;}, array_diff($_PROJETO, $COLUNAS_CONFLITO));
			$ALL_COLUNAS			= array_unique(array_merge($COLUNAS_A,$COLUNAS_B));
			return $ALL_COLUNAS;
		}
		
		static public function getLike($like=null, $colunas=[]){
			$ALL_COLUNAS	= self::getColumsUser();
			$_USUARIO = new galaxyDB();
			$_USUARIO->connect();
			$_USUARIO->table("USUARIOS US");

			foreach ($ALL_COLUNAS as $_COLUNA) {
				if($colunas==[] || in_array($_COLUNA, $colunas)){ 
					$_USUARIO->colum($_COLUNA);
				}
			}
			foreach ($ALL_COLUNAS as $_COLUNA) {
				if($colunas==[] || in_array($_COLUNA, $colunas)){ 
					$_USUARIO->like($_COLUNA,'%'.$like.'%');
				}
			}

			$_USUARIO->join("LEFT","USUARIOS__DADOS_PROJETO PROJ","PROJ.UID_USER=US.UID");
			$_USUARIO->prepare_select('param');
			$_USUARIO->transaction(function($e) {die($e);});
			$_USUARIO->execQuery();
			$_RESULT = $_USUARIO->fetch_array('param');
			return $_RESULT;
		}



		
	}
?>
