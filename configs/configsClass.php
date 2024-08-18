<?
	namespace project\configs;
	use project\configs\configsModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "configs"
	|--------------------------------------------------------------------
	*/

	class configsClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return configsModel::index();
		}
	}
?>
