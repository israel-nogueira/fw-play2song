<?
	namespace project\galeria\fotos;
	use IsraelNogueira\BladeX\bladex;
	use system\lib\system;
	use IsraelNogueira\galaxyDB\galaxyDB;
	use \IsraelNogueira\SweetThumb\sweet;

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "fotos"
	|--------------------------------------------------------------------
	*/

	class fotosController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}
		public function index($_PARAM1=null,$_PARAM2=null){


				$GALERIA = new galaxyDB();
				$GALERIA->connect();
				$GALERIA->table("GALERIAS__GALERIAS");
				$GALERIA->where('UID="'.$_PARAM2.'"');
				$GALERIA->prepare_select('param');
				$GALERIA->transaction(function($error) {die(print_r($error));});
				$GALERIA->execQuery(function($success) {/*die(print_r($success));*/});
				$_RESULT = $GALERIA->fetch_array('param')[0];

			die(system::ajaxReturn(bladex::view('project.galeria.fotos.fotosView',['TITULO'=>$_RESULT['TITULO']])->render(),1,0));
		}

		public function upload($UID_PLUGIN=null,$UID_GALERIA=null){
			$GET_SIZES = new galaxyDB();
			$GET_SIZES->connect();
			$GET_SIZES->table("GALERIAS__PLUGIN");
			$GET_SIZES->where('UID='.$UID_PLUGIN);
			$GET_SIZES->prepare_select('param');
			$GET_SIZES->transaction(function($error) {die(print_r($error));});
			$GET_SIZES->execQuery(function($success) {/*die(print_r($success));*/});
			$_RESULT = $GET_SIZES->fetch_array('param')[0];

			$_RESULT['TAMANHO_THUMB'] = $_RESULT['TAMANHO_THUMB'];
			$SIZES = explode(',',$_RESULT['TAMANHO_THUMB']);
			$N_SIZES = [];
			foreach ($SIZES as $value) {
				$S = explode('x',$value);
				$N_SIZES[] = [$S[0],($S[1]??$S[0])];
			}
			
			$_INSERT = new galaxyDB();
			$_INSERT->connect();

			$_UPLOAD = system::finishUploadFile();
			$_LISTA = [];
			foreach ($_UPLOAD['input_1'] as $arquivo) {
				$_ORIGIN = getEnv('PATH_PUBLIC').'/upload/'.$arquivo['newName'];
				$_DESTINY = getEnv('PATH_PUBLIC').'/upload/galerias/PLUGIN_'.$UID_PLUGIN.'/GALERIA_'.$UID_GALERIA.'/'.$arquivo['newName'];
				rename($_ORIGIN,$_DESTINY);
				$_IMG =  sweet::processaImagem([$_DESTINY,$arquivo['newName']],$N_SIZES, 1000);
				$_LISTA[] = $_IMG;
				$_INSERT->table("GALERIAS__IMAGENS");
				$_INSERT->UID_PLUGIN=$UID_PLUGIN;
				$_INSERT->UID_GALERIA=$UID_GALERIA;
				$_INSERT->ORIGINAL_NAME=$arquivo['name'];
				$_INSERT->FILENAME=$_IMG['ORIGINAL'];	
				 foreach ($_IMG['SIZES'] as $value) {

					$EXTENSION	= pathinfo($value, PATHINFO_EXTENSION);	
					$FILENAME	= pathinfo($value, PATHINFO_FILENAME);	
					$SIZE		= explode('-',$FILENAME)[1];
					$SIZES		= explode('x',$SIZE);

					$_INSERT->{$SIZES[0].'x'.$SIZES[1]}=$value;
				}
				$_INSERT->PESO=$arquivo['size'];
				$_INSERT->MIME=$arquivo['type'];
				$_INSERT->prepare_insert($arquivo['newName']);
			}
			
			$_INSERT->transaction(function($error) {die(print_r($error));});
			$_INSERT->execQuery(function($success) {/*die(print_r($success));*/});

			die(\system\lib\system::ajaxReturn($_LISTA,1,0));
			exit;
		}
		
		public function listar($UID_PLUGIN=null,$UID_GALERIA=null){
			

				$LISTA_IMAGENS = new galaxyDB();
				$LISTA_IMAGENS->connect();
				$LISTA_IMAGENS->table("GALERIAS__IMAGENS");
				$LISTA_IMAGENS->where('UID_PLUGIN='.$UID_PLUGIN.' AND UID_GALERIA='.$UID_GALERIA);
				$LISTA_IMAGENS->prepare_select('dados');


				$_A = new galaxyDB();
				$_A->connect();
				$_A->table("(".$LISTA_IMAGENS->query['dados'].") TABELAS");
				$_A->colum("TABELAS.*");
				$DATA_TABLE = $_A->dataTable(PUBLIC_DATA['oAjaxData']);
				die(\system\lib\system::ajaxReturn($DATA_TABLE,1,0));
				








		}
		public function detalhes($UID_THUMB=null){


			$THUMB = new galaxyDB();
			$THUMB->connect();
			$THUMB->table("GALERIAS__IMAGENS");
			$THUMB->where('UID='.$UID_THUMB);
			$THUMB->prepare_select('param');
			$THUMB->transaction(function($error) {die(print_r($error));});
			$THUMB->execQuery(function($success) {/*die(print_r($success));*/});
			$_RESULT = $THUMB->fetch_array('param')[0];
			die(\system\lib\system::ajaxReturn($_RESULT,1,0));


			
		}




		public function salvar($UID_THUMB=null){


					$_SELECT = new galaxyDB();
					$_SELECT->connect();
					$_SELECT->table("GALERIAS__IMAGENS");
					$_SELECT->TITULO=PRIVATE_DATA['TITULO'];
					$_SELECT->DESCRICAO=PRIVATE_DATA['DESCRICAO'];
					$_SELECT->where('UID="'.$UID_THUMB.'"');
					$_SELECT->prepare_update('param');
					$_SELECT->transaction(function ($error) {die(print_r($error));});
					$_SELECT->execQuery();
					



		}
		public function excluir($UID_THUMB=null){
			
				$_SELECT = new galaxyDB();
				$_SELECT->connect();
				$_SELECT->table("GALERIAS__IMAGENS");
				$_SELECT->where('UID="'.$UID_THUMB.'"');
				$_SELECT->prepare_select('param');
				$_SELECT->transaction(function($error) {die(print_r($error));});
				$_SELECT->execQuery(function($success) {/*die(print_r($success));*/});
				$_RESULT = $_SELECT->fetch_array('param')[0];

				$_DELETE = new galaxyDB();
				$_DELETE->connect();
				$_DELETE->table("GALERIAS__IMAGENS");
				$_DELETE->where('UID="'.$UID_THUMB.'"');
				$_DELETE->prepare_delete('param');
				$_DELETE->transaction(function($error) {die(\system\lib\system::ajaxReturn($error,0));});
				$_DELETE->execQuery(function($success)use($_RESULT) {
				$hash		= pathinfo($_RESULT['FILENAME'], PATHINFO_FILENAME);
				$diretorio	= getEnv('PATH_ROOT').'/app/projetos/'.getEnv('APP_NAME').'/public/upload/galerias/PLUGIN_'.$_RESULT["UID_PLUGIN"].'/GALERIA_'.$_RESULT["UID_GALERIA"];
				$padrao		= $diretorio . '/'.$hash.'*{.png,.svg}';
				$lista		= glob($padrao,GLOB_BRACE);
				foreach ($lista as $arquivo) {
					@unlink($arquivo);
				}
				die(\system\lib\system::ajaxReturn($lista,1,0));
			});
		}

		public function error(){
			die(system::ajaxReturn("DEU ERRO!",0,404));
		}
	}

?>
