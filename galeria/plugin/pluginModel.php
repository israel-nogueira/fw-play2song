<?
	namespace project\galeria\plugin;
	use IsraelNogueira\galaxyDB\galaxyDB;

	/*
	|--------------------------------------------------------------------
	|	MODEL DO MÓDULO "plugin"
	|--------------------------------------------------------------------
	*/
	class pluginModel extends galaxyDB{
		protected $table				=  "PLUGIN";
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
