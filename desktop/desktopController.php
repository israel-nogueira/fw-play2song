<?

	namespace project\desktop;
	use \IsraelNogueira\BladeX\bladex;
	use \IsraelNogueira\SkySession\session;
	use \project\desktop\desktopClass;
	use system\lib\system;
	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "desktop"
	|--------------------------------------------------------------------
	*/

	class desktopController{

		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}

		
		public function index(){
			die(
					system::ajaxReturn(
					bladex::view(
						'app.projetos.'.getEnv('APP_NAME').'.desktop.views.desktopView',
						[
							'user'=>session::USER()
						]
					)->render(),1,0)
				);
		}
		public function listar(){
			desktopClass::index();
		}
		public function salvar(){}
		public function excluir(){}
	}

?>
