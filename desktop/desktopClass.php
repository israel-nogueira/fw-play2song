<?

	namespace project\desktop;
	use project\desktop\desktopModel;

	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "desktop"
	|--------------------------------------------------------------------
	*/

	class desktopClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			return desktopModel::index();
		}
	}
?>
