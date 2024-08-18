<?
	namespace project\office;
	use project\office\officeModel;
	use IsraelNogueira\galaxyDB\galaxyDB;
	use IsraelNogueira\SkySession\session;

	/*
	|--------------------------------------------------------------------
	|	CLASSE GERAL DO MÓDULO "office"
	|--------------------------------------------------------------------
	*/

	class officeClass{
		public function 		__construct(){}
		public function 		__get($a){}
		public function 		__set($a,$b){}
		public function 		__call($a,$b){}
		public static function __callStatic($a,$b){}
		public static function index(){return officeModel::index();}

		public static function addNoty($TITULO="",$MENSAGEM=""){
			$_SELECT = new galaxyDB();
			$_SELECT->connect();
			$_SELECT->table("NOTIFICACOES");
			$_SELECT->UID_EMPREENDIMENTO	=	1204802433392396;
			$_SELECT->TITULO				=	$TITULO;
			$_SELECT->MENSAGEM				=	$MENSAGEM;
			$_SELECT->prepare_insert('param');
			$_SELECT->transaction(function ($e) {die($e);});
			$_SELECT->execQuery();	
		}



	}
?>
