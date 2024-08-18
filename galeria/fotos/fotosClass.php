<?
	namespace project\galeria\fotos;
	use project\galeria\fotos\fotosModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "fotos"
	|--------------------------------------------------------------------
	*/

	class fotosClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return fotosModel::index();
		}
	}
?>
