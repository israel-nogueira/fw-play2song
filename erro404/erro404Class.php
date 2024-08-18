<?
	namespace project\erro404;
	use project\erro404\erro404Model;

	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "erro404"
	|--------------------------------------------------------------------
	*/

	class erro404Class{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return erro404Model::index();
		}
	}
?>
