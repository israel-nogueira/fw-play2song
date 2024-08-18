<?
	namespace project\desktop;
	use IsraelNogueira\galaxyDB\galaxyDB;
	/*
	|--------------------------------------------------------------------
	|	MODEL DO MÓDULO "desktop"
	|--------------------------------------------------------------------
	*/

	class desktopModel extends galaxyDB{
		protected $table				=  "desktop";
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
