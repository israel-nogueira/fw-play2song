<?
	namespace project\sinaisTelegram;
	use IsraelNogueira\galaxyDB\galaxyDB;

	/*
	|--------------------------------------------------------------------
	|	MODEL DO MÓDULO "sinaisTelegram"
	|--------------------------------------------------------------------
	*/
	class sinaisTelegramModel extends galaxyDB{
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
