<?
	namespace project\recompensas;
	use IsraelNogueira\galaxyDB\galaxyDB;

	/*
	|--------------------------------------------------------------------
	|	MODEL DO MÓDULO "recompensas"
	|--------------------------------------------------------------------
	*/
	class recompensasModel extends galaxyDB{
		protected $table				=  "RECOMPENSAS";
		protected $columnsBlocked		= [];
		protected $columnsEnabled		= [];
		protected $functionsBlocked		= [];
		protected $functionsEnabled		= [];
		protected $charactersEnabled	= [];
		protected $charactersBlocked	= [];
		public static function index() {
			return '  -- model -- ';
		}
	}

?>
