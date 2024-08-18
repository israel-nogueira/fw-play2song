<?
	namespace project\erro404;
	use \IsraelNogueira\BladeX\bladex;
	use \project\erro404\erro404Class;

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "erro404"
	|--------------------------------------------------------------------
	*/

	class erro404Controller{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public function index(){
			die(\system\lib\system::ajaxReturn(bladex::view('project.anton.erro404.erro404View',['data'=>'value'])->render(),1,0));
		}
		public function listar(){}
		public function salvar(){}
		public function excluir(){}
	}

?>
