<?
	include 'app/projetos/' . getEnv('APP_NAME') . '/usuarios/edicao/edicaoModel.php';
	use edicaoModel;

	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "edicao"
	|--------------------------------------------------------------------
	*/

	class edicaoClass{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			return edicaoModel::index();
		}
	}
?>
