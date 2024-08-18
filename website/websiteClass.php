<?
	namespace project\website;
	use project\website\websiteModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "website"
	|--------------------------------------------------------------------
	*/

	class websiteClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return websiteModel::index();
		}
	}
?>
