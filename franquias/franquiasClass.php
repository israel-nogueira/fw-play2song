<?
	namespace project\franquias;
	use project\franquias\franquiasModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "franquias"
	|--------------------------------------------------------------------
	*/

	class franquiasClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return franquiasModel::index();
		}
	}
?>
