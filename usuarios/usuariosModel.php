<?
	namespace project\usuarios;
	use IsraelNogueira\galaxyDB\galaxyDB;
	class usuariosModel extends galaxyDB{
		protected $table				=  "USUARIOS";
		protected $columnsBlocked		= ['SENHA','SALT'];
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
