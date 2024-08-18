<?
	namespace project\moduloBuilder;
	use project\moduloBuilder\moduloBuilderModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "moduloBuilder"
	|--------------------------------------------------------------------
	*/

	class moduloBuilderClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return moduloBuilderModel::index();
		}
	}
?>
