<?
	namespace project\office;
	use IsraelNogueira\galaxyDB\galaxyDB;

	/*
	|--------------------------------------------------------------------
	|	MODEL DO MÓDULO "office"
	|--------------------------------------------------------------------
	*/
	class officeModel extends galaxyDB{
		protected $table				=  "ADMIN";
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
