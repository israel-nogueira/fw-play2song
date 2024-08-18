<?
	namespace project\clientes;
	use IsraelNogueira\BladeX\bladex;
	use system\lib\system;
	use project\clientes\clientesClass;

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "clientes"
	|--------------------------------------------------------------------
	*/

	class clientesController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public function index(){
			die(system::ajaxReturn(bladex::view('project.clientes.clientesView',['data'=>'value'])->render(),1,0));
		}
		public function listar(){
			die(system::ajaxReturn("FUNÇÃO DE LISTAR",1,0));
		}
		public function salvar(){
			die(system::ajaxReturn("FUNÇÃO DE SALVAR",1,0));
		}
		public function excluir(){
			die(system::ajaxReturn("FUNÇÃO DE EXCLUIR",1,0));
		}
		public function error(){
			die(system::ajaxReturn("DEU ERRO!",0,404));
		}
	}

?>
