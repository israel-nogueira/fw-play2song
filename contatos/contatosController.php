<?
	namespace project\contatos;
	use IsraelNogueira\BladeX\bladex;
	use system\lib\system;
	use system\lib\img;
	use IsraelNogueira\galaxyDB\galaxyDB;
	use project\contatos\contatosClass;
	use system\lib\sendGridMail;

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "contatos"
	|--------------------------------------------------------------------
	*/

	class contatosController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public function index(){
			
			
			die(system::ajaxReturn(bladex::view('project.contatos.contatosView',['data'=>'value'])->render(),1,0));
		}

		public function upload(){
			//------------------------------------------
			// ARQUIVOS DE UPLOAD
			//------------------------------------------
				$_UPLOAD = system::finishUploadFile();
				foreach ($_UPLOAD as $_ARQUIVO) {
					img::processaImagem($_ARQUIVO['FILENAME'], $_SIZES = [750, 500, 100, 50], $_ROOT_SIZE = 1000, $toPng = false);
				}	
			//------------------------------------------
		}

		public function listar(){
			die(system::ajaxReturn("FUNÇÃO DE LISTAR",1,0));
		}
		public function salvar(){
			
			
				$_SELECT = new galaxyDB();
				$_SELECT->connect();
				$_SELECT->table("TEMPLATE__CONTATO");
				$_SELECT->set_update_obj(PUBLIC_DATA);
				$_SELECT->where('ID=1');
				$_SELECT->prepare_update('param');
				$_SELECT->transaction(function ($error) {die(print_r($error));});
				$_SELECT->execQuery(function($success) {/*die(print_r($success));*/});
				


		}
		public function getData(){
				$_SELECT = new galaxyDB();
				$_SELECT->connect();
				$_SELECT->table("TEMPLATE__CONTATO__TRANSLATE");
				$_SELECT->where('FW_LANG="'.PUBLIC_DATA['FW_LANG'].'" AND ID_FW_PAI=1');
				$_SELECT->prepare_select('param');
				$_SELECT->transaction();
				$_SELECT->execQuery();
				$VALUES = $_SELECT->fetch_array('param')[0]??['SESSAO'=>'','TITULO'=>'','CONTEUDO'=>''];
				die(\system\lib\system::ajaxReturn($VALUES,1,0));
		}
		public function excluir(){
			die(system::ajaxReturn("FUNÇÃO DE EXCLUIR",1,0));
		}



		public function enviawebsite(){
			
			$mensagem = 'Email: '.PRIVATE_DATA['PLACEHOLDER_EMAIL'].'<br>';
			$mensagem .='Assunto:'.PRIVATE_DATA['PLACEHOLDER_ASSUNTO'].'<br>';
			$mensagem .='Nome:'.PRIVATE_DATA['PLACEHOLDER_NOME'].'<br>';
			$mensagem .='Telefone:'.PRIVATE_DATA['PLACEHOLDER_TELEFONE'].'<br>';
			$mensagem .='Mensagem:<br>'.PRIVATE_DATA['PLACEHOLDER_TEXTO'].'<br>';
			

			$_CONFIG = new galaxyDB();
			$_CONFIG->connect();
			$_CONFIG->table("CONFIGS");
			$_CONFIG->where('ID=1');
			$_CONFIG->prepare_select('param');
			$_CONFIG->transaction(function ($error) {die(print_r($error));});
			$_CONFIG->execQuery(function ($success) { /*die(print_r($success));*/});
			$_CONFIGRESULT = $_CONFIG->fetch_array('param')[0]??[];





			sendGridMail::sendMail([
				'DESTINO'=>($_CONFIGRESULT['EMAIL_FORM']),
				'NOME'=>'Webmaster',
				'ASSUNTO'=>'🔴 CONTATO PELO SITE 🔴',
				'MENSAGEM'=>$mensagem,
				'ANEXOS'=>[],
				'IMAGES'=>[],
			]);


			die(system::ajaxReturn(PRIVATE_DATA,1,0));
		}
		public function error(){
			die(system::ajaxReturn("DEU ERRO!",0,404));
		}
	}

?>
