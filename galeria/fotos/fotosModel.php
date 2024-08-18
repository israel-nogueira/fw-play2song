<?
	namespace project\galeria\fotos;
	use IsraelNogueira\galaxyDB\galaxyDB;

	/*
	|--------------------------------------------------------------------
	|	MODEL DO MÓDULO "fotos"
	|--------------------------------------------------------------------
	*/
	class fotosModel extends galaxyDB{
		protected $table				=  "FOTOS";
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
