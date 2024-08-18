<?
	namespace project\configs;
	use IsraelNogueira\BladeX\bladex;
	use system\lib\system;
	use system\lib\img;
	use project\configs\configsClass;
	use IsraelNogueira\galaxyDB\galaxyDB;
	
	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "configs"
	|--------------------------------------------------------------------
	*/

	class configsController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public function index(){
			die(system::ajaxReturn(bladex::view('project.configs.configsView',['data'=>'value'])->render(),1,0));
		}

		public function getConfigs(){

				$_CONFIG = new galaxyDB();
				$_CONFIG->connect();
				$_CONFIG->table("CONFIGS");
				$_CONFIG->where('ID=1');
				$_CONFIG->prepare_select('param');
				$_CONFIG->transaction(function($error) {die(print_r($error));});
				$_CONFIG->execQuery(function($success) {/*die(print_r($success));*/});
				$_CONFIGRESULT = $_CONFIG->fetch_array('param')[0];
				
				die(\system\lib\system::ajaxReturn($_CONFIGRESULT,1,0));


		}

		public function listar(){
			die(system::ajaxReturn("FUNÇÃO DE LISTAR",1,0));
		}
		public function salvar(){

			
				$_SELECT = new galaxyDB();
				$_SELECT->connect();
				$_SELECT->table("CONFIGS");
				$_SELECT->set_update_obj(PRIVATE_DATA);
				$_SELECT->where('ID=1');
				$_SELECT->prepare_update('param');
				$_SELECT->transaction(function ($error) {die(print_r($error));});
				$_SELECT->execQuery(function($success) {/*die(print_r($success));*/});
				
				die(\system\lib\system::ajaxReturn('sucesso!',1,0));

		}
		public function excluir(){
			die(system::ajaxReturn("FUNÇÃO DE EXCLUIR",1,0));
		}
		public function error(){
			die(system::ajaxReturn("DEU ERRO!",0,404));
		}
	}

?>
