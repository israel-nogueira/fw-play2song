<?
	namespace project\newsletter;
	use IsraelNogueira\BladeX\bladex;
	use system\lib\system;
	use system\lib\img;
	use project\newsletter\newsletterClass;
	use IsraelNogueira\galaxyDB\galaxyDB;
	

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "newsletter"
	|--------------------------------------------------------------------
	*/
	
	class newsletterController{
	public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public function index(){


				$_ = new galaxyDB();
				$_->connect();
				$_->table("NEWSLETTER");
				$_->colum("EMAIL");
				$_->prepare_select('param');
				$_->transaction(function($error) {die(print_r($error));});
				$_->execQuery(function($success) {/*die(print_r($success));*/});

				$LISTA_MAILLING =$_->fetch_array('param');
				$EMAIL=[];
				foreach ($LISTA_MAILLING as $MAILLING) {
					$EMAIL[] =strtolower($MAILLING['EMAIL']);
				}

			die(system::ajaxReturn(bladex::view('project.newsletter.newsletterView',['LISTA_MAILLING'=>implode(';',$EMAIL)])->render(),1,0));
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

		public function novo(){
				$_SELECT = new galaxyDB();
				$_SELECT->connect();
				$_SELECT->table("NEWSLETTER");
				$_SELECT->EMAIL=PRIVATE_DATA['email'];
				$_SELECT->prepare_insert('param');
				$_SELECT->transaction(function($error) {die(print_r($error));});
				$_SELECT->execQuery(function($success) {/*die(print_r($success));*/});
				die(\system\lib\system::ajaxReturn('sucesso!',1,0));
			
		}
		public function listar(){
			die(system::ajaxReturn("FUNÇÃO DE LISTAR",1,0));
		}
		public function salvar(){
			die(system::ajaxReturn("FUNÇÃO DE SALVAR",1,0));
		}
		public function excluir(){
			die(system::ajaxReturn("FUNÇÃO DE EXCLUIR",1,0));
		}
		public function error(){
			die(system::ajaxReturn("DEU ERRO!",0,404));
		}
	}

?>
