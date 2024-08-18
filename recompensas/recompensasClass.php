<?
	namespace project\recompensas;
	use project\recompensas\recompensasModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "recompensas"
	|--------------------------------------------------------------------
	*/

	class recompensasClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return recompensasModel::index();
		}
	}
?>
