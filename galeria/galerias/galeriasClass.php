<?
	namespace project\galeria\galerias;
	use project\galeria\galerias\galeriasModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "galerias"
	|--------------------------------------------------------------------
	*/

	class galeriasClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return galeriasModel::index();
		}
	}
?>
