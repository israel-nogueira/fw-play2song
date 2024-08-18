<?
	namespace project\galeria\galerias;
	use IsraelNogueira\BladeX\bladex;
	use IsraelNogueira\galaxyDB\galaxyDB;
	use system\lib\system;
	use system\lib\img;
	use project\galeria\galerias\galeriasClass;

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "galerias"
	|--------------------------------------------------------------------
	*/

	class galeriasController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}

		public function index($UID = null){
			die(
				system::ajaxReturn(
					bladex::view(
						'project.galeria.galerias.galeriasView',
						['UID'=>$UID]
					)->render()
				,1,0)
			);
		}

		public function upload(){
			//------------------------------------------
			// ARQUIVOS DE UPLOAD
			//------------------------------------------
				$_UPLOAD = system::finishUploadFile();
				foreach ($_UPLOAD as $_ARQUIVO) {
					img::processaImagem($_ARQUIVO['FILENAME'], $_SIZES = [750, 500, 100, 50], $_ROOT_SIZE = 1000, $toPng = false);
				}	
			//------------------------------------------
		}

    public function detalhes($ID = null){
        $_SELECT = new galaxyDB();
        $_SELECT->connect();
        $_SELECT->table("GALERIAS__GALERIAS");
        $_SELECT->where('UID=' . $ID);
        $_SELECT->prepare_select('param');
        $_SELECT->transaction(function ($e) {die($e);});
        $_SELECT->execQuery();
        $_RESULT = $_SELECT->fetch_array('param')[0]??false;
     
        die(system::ajaxReturn($_RESULT, 1, 0));




        
    }



		public function listar() {

			$_SELECT = new galaxyDB();
			$_SELECT->connect();
			$_SELECT->table("GALERIAS__GALERIAS");
			$_SELECT->prepare_select('dados');
			

			$_A = new galaxyDB();
			$_A->connect();
			$_A->table("(".$_SELECT->query['dados'].") TABELAS");
			$_A->colum("TABELAS.*");
			$DATA_TABLE = $_A->dataTable(PUBLIC_DATA['oAjaxData']);
			die(\system\lib\system::ajaxReturn($DATA_TABLE,1,0));


		}


		public function salvar($UID = null){
			
			$_UPDATE	= new galaxyDB();
			$_UPDATE	->connect();
			$_UPDATE	->table("GALERIAS__GALERIAS");
			$_UPDATE	->TITULO =	PRIVATE_DATA['TITULO'];
			$_UPDATE	->where('UID='.$UID);
			$_UPDATE	->prepare_update('param');
			$_UPDATE	->transaction(function ($error) {die(\system\lib\system::ajaxReturn($error,0));});
			$_UPDATE	->execQuery(function($success) {die(\system\lib\system::ajaxReturn('success',1,0));});
		}

		public function excluir($UID = null) {

				$GET_GALERIA = new galaxyDB();
				$GET_GALERIA->connect();
				$GET_GALERIA->table("GALERIAS__GALERIAS");
				$GET_GALERIA->where('UID=' . $UID);
				$GET_GALERIA->prepare_select('GALERIA');
				$GET_GALERIA->transaction(function ($error = []) {die(system::ajaxReturn($error, 0));});
				$GET_GALERIA->execQuery();
				$GALERIA = 	$GET_GALERIA->fetch_array('GALERIA')[0]??false;

				if($GALERIA==false){
					die(\system\lib\system::ajaxReturn("Galeria não encontrada",0));
				}

				$DELETE = new galaxyDB();
				$DELETE->connect();
				
				
				$DELETE->table("GALERIAS__IMAGENS");
				$DELETE->where('UID_GALERIA=' . $GALERIA['UID']);
				$DELETE->prepare_delete('EXCLUI_FILES');


				$DELETE->table("GALERIAS__GALERIAS");
				$DELETE->where('UID=' . $GALERIA['UID']);
				$DELETE->prepare_delete('EXCLUI_GALERIAS');

				$DELETE->transaction(function ($error = []) {die(system::ajaxReturn($error, 0));});
				$DELETE->execQuery();
				$_DIR = getEnv('PATH_PUBLIC') . '/upload/galerias/PLUGIN_' . $GALERIA['UID_PLUGIN'].'/GALERIA_'.$GALERIA['UID'];
				@mkdir($_DIR, 0777, true);
				system::deleteDir($_DIR);

				die(system::ajaxReturn(['sucesso!',$_DIR], 1, 0));

		}

    public function novo($UID = null)    {

        $_SELECT = new galaxyDB();
        $_SELECT->connect();    
        $_SELECT->table("GALERIAS__GALERIAS");
        $_SELECT->TITULO = 'NOVO';
        $_SELECT->UID_PLUGIN = $UID;
        $_SELECT->prepare_insert('param');
        $_SELECT->transaction(function ($error) {die(print_r($error));});
        $_SELECT->execQuery(function ($mysql) {

            $getGal = new galaxyDB();
            $getGal->connect();
            $getGal->table("GALERIAS__GALERIAS");
            $getGal->where('ID='.$mysql->_last_id['param']);
            $getGal->prepare_select('param');
            $getGal->transaction(function($error) {die(print_r($error));});
            $getGal->execQuery(function($success) {/*die(print_r($success));*/});
            $_RESULT = $getGal->fetch_array('param')[0];

            $_DIR = getEnv('PATH_PUBLIC') . '/upload/galerias/PLUGIN_' . $_RESULT['UID_PLUGIN'].'/GALERIA_'.$_RESULT['UID'];
            @mkdir($_DIR, 0777, true);
           die(system::ajaxReturn($_RESULT, 1, 0));
        });

    }

		public function error(){
			die(system::ajaxReturn("DEU ERRO!",0,404));
		}
	}

?>
