<?
	namespace project\clientes;
	use project\clientes\clientesModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "clientes"
	|--------------------------------------------------------------------
	*/

	class clientesClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return clientesModel::index();
		}
	}
?>
