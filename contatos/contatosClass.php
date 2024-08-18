<?
	namespace project\contatos;
	use project\contatos\contatosModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "contatos"
	|--------------------------------------------------------------------
	*/

	class contatosClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return contatosModel::index();
		}
	}
?>
