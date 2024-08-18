<?
	namespace project\planos;
	use IsraelNogueira\BladeX\bladex;
	use system\lib\system;
	use system\lib\img;
	use project\planos\planosClass;

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "planos"
	|--------------------------------------------------------------------
	*/

	class planosController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public function index(){
			die(system::ajaxReturn(bladex::view('project.planos.planosView',['data'=>'value'])->render(),1,0));
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

			$LISTABLOG = new galaxyDB();
			$LISTABLOG->connect();
			$LISTABLOG->table("planos");
			$_RESULT = $LISTABLOG->dataTable(PUBLIC_DATA['oAjaxData']);
			die(\system\lib\system::ajaxReturn($_RESULT,1,0));

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
