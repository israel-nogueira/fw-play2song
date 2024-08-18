<?
	include 'app/projetos/' . getEnv('APP_NAME') . '/usuarios/edicao/edicaoClass.php';
	use IsraelNogueira\BladeX\bladex;
	use IsraelNogueira\SkySession\session;
	use InvalidArgumentException;
	use edicaoClass;
	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "edicao"
	|--------------------------------------------------------------------
	*/

	class edicaoController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public function index(){
			// die(\system\lib\system::ajaxReturn(bladex::view('project.anton.usuarios.edicao.edicaoView',['data'=>'value'])->render(),1,0));
		}
		public function listar(){}
		public function salvar(){}
		public function excluir(){}
	}

?>
