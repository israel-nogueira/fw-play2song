<?
	namespace project\planos;
	use project\planos\planosModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "planos"
	|--------------------------------------------------------------------
	*/

	class planosClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return planosModel::index();
		}
	}
?>
