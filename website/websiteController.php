<?
	namespace project\website;
	use \IsraelNogueira\BladeX\bladex;
	use IsraelNogueira\galaxyDB\galaxyDB;
	use system\lib\system;
	use project\website\websiteClass;
	use system\modulos\midia\midiaClass;

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "website"
	|--------------------------------------------------------------------
	*/

	class websiteController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}

		public static function index($PATH=null,$_PARAMS=[]){


		}

		
		public function salvar(){
			die(\system\lib\system::ajaxReturn("FUNÇÃO DE SALVAR",1,0));
		}
		public function excluir(){
			die(\system\lib\system::ajaxReturn("FUNÇÃO DE EXCLUIR",1,0));
		}
		public function error(){
			die(\system\lib\system::ajaxReturn("DEU ERRO!",0,404));
		}
	}

?>
