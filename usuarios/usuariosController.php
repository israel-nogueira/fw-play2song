<?
	namespace project\usuarios;
	use \IsraelNogueira\BladeX\bladex;
	use system\lib\system;
	use project\usuarios\usuariosClass;
	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "usuarios"
	|--------------------------------------------------------------------
	*/

	class usuariosController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){
			die(
				system::ajaxReturn(
					bladex::view(
						'app.projetos.'.getEnv('APP_NAME').'.usuarios.usuariosView',
						['prefix'=>'lista_user']
					)->render()
				,1,0)
			);
		}
		public function listar(){
			usuariosClass::index();
		}

		public static function usuariosDetalhes($_UID=null){

			
			$_USER = usuariosClass::getData($_UID);
			
			
			die(
				system::ajaxReturn(
					bladex::view(
						'app.projetos.'.getEnv('APP_NAME').'.usuarios.usuariosDetalhesView',
						[
							'prefix'=>'lista_user',
							'USER'=>$_USER
						]
					)->render()
				,1,0)
			);
		}




		public function salvar(){}
		public function excluir(){}
	}

?>
