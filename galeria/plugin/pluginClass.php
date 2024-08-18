<?
	namespace project\galeria\plugin;
	use project\galeria\plugin\pluginModel;
	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "plugin"
	|--------------------------------------------------------------------
	*/

	class pluginClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			
			return pluginModel::index();
		}
	}
?>
