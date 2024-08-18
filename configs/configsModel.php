<?
	namespace project\configs;
	use IsraelNogueira\galaxyDB\galaxyDB;

	/*
	|--------------------------------------------------------------------
	|	MODEL DO MÓDULO "configs"
	|--------------------------------------------------------------------
	*/
	class configsModel extends galaxyDB{
		protected $table				=  "CONFIGS";
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
