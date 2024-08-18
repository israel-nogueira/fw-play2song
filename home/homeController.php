<?
	namespace project\home;
	use \IsraelNogueira\BladeX\bladex;
	use \system\lib\system;
	use project\home\homeClass;
	use IsraelNogueira\galaxyDB\galaxyDB;
	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "home"
	|--------------------------------------------------------------------
	*/

	class homeController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public function index(){
			die(system::ajaxReturn(bladex::view('project.home.homeView')->render(),1,0));
		}
		public function testeUpload(){
			
			//------------------------------------------
			// ARQUIVOS DE UPLOAD
			//------------------------------------------
				$_UPLOAD = system::finishUploadFile();
			//------------------------------------------

				die(\system\lib\system::ajaxReturn($_UPLOAD,1,0));
				
		}

		public function getTemplate(){

			$_SELECT = new galaxyDB();
			$_SELECT->connect();
			$_SELECT->table("TEMPLATE__HOME__TRANSLATE");
			$_SELECT->where('FW_LANG="'.(PUBLIC_DATA['LANG']??'pt').'"');
			$_SELECT->where('and FW_UID_LANG=100630956624314369');
			$_SELECT->prepare_select('param');


			$_SELECT->transaction(function($e) {die($e);});
			$_SELECT->execQuery();
			$_RESULT = $_SELECT->fetch_array('param')[0]??[];
			die(\system\lib\system::ajaxReturn($_RESULT,1,0));

		}
		

		public function saveTemplate(){

				$_SELECT = new galaxyDB();
				$_SELECT->connect();
				$_SELECT->table("TEMPLATE__HOME");
				$_SELECT->set_update_obj(PRIVATE_DATA);
				$_SELECT->where('FW_UID_LANG=100630956624314369');
				$_SELECT->prepare_update('param');

				$_SELECT->transaction(function ($e) {die(\system\lib\system::ajaxReturn($e,0));});
				$_SELECT->execQuery(function ($e) {die(\system\lib\system::ajaxReturn('sucesso',1,0));});
				
			
		}
	}

?>
