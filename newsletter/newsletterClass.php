<?
	namespace project\newsletter;
	use project\newsletter\newsletterModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "newsletter"
	|--------------------------------------------------------------------
	*/

	class newsletterClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return newsletterModel::index();
		}
	}
?>
