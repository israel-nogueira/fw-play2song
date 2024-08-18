<?
	namespace project\moduloBuilder;
	use IsraelNogueira\galaxyDB\galaxyDB;

	/*
	|--------------------------------------------------------------------
	|	MODEL DO MÓDULO "moduloBuilder"
	|--------------------------------------------------------------------
	*/
	class moduloBuilderModel extends galaxyDB{
		protected $table				=  "MODULOBUILDER";
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
