<?
	namespace project\sinaisTelegram;
	use \IsraelNogueira\BladeX\bladex;
	use \system\lib\system;
	use project\sinaisTelegram\sinaisTelegramClass;
	use IsraelNogueira\galaxyDB\galaxyDB;
	use IsraelNogueira\SkySession\session;

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "sinaisTelegram"
	|--------------------------------------------------------------------
	*/

	class sinaisTelegramController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}



		public function index(){
			$grupos = new galaxyDB();
			$grupos->connect();
			$grupos->table("SIGNALS__CANAL CANAIS");
			$grupos->colum("CANAIS.*");
			$grupos->colum('IF(
						(SELECT count(1) FROM SIGNALS__TELEGRAM_SIGNATURE WHERE(UID_USER=45678707865467 AND CODE_CHANNEL=CANAIS.CODE)) >0,"on",""
				) AS ASSINADO');
			$grupos->prepare_select('param');
			$grupos->transaction(function($error) {die(print_r($error));});
			$grupos->execQuery(function($success) {/*die(print_r($success));*/});
			$SIGNALS = $grupos->fetch_array('param');
			die(system::ajaxReturn(bladex::view('project.sinaisTelegram.sinaisTelegramView',[
				'RAND'=>rand(1,999999999999),
				'SIGNALS'=>$SIGNALS
			])->render(),1,0));
		}



		public function detalhesChannel($UID){

				$HISTORY = new galaxyDB();
				$HISTORY->connect();
				$HISTORY->table("SIGNALS__TELEGRAM");
				$HISTORY->where('ID_CANAL='.$UID);
				$HISTORY->prepare_select('param');
				$HISTORY->transaction(function($error) {die(print_r($error));});
				$HISTORY->execQuery(function($success) {/*die(print_r($success));*/});
				$_RESULT = $HISTORY->fetch_array('param');
				


		}



		public function subscribeChannel(){
			$_SELECT = new galaxyDB();
			$_SELECT->connect();
			$_SELECT->table("SIGNALS__TELEGRAM_SIGNATURE");
			if(PRIVATE_DATA['assinatura']){
				$_SELECT->CODE_CHANNEL=PRIVATE_DATA['channel'];
				$_SELECT->UID_USER=session::USER()['UID'];
				$_SELECT->prepare_insert('param');
			}else{
				$_SELECT->where('CODE_CHANNEL="'.PRIVATE_DATA['channel'].'"');
				$_SELECT->where('AND UID_USER="'.session::USER()['UID'].'"');
				$_SELECT->prepare_delete('param');
			}
			$_SELECT->transaction(function($error) {die(print_r($error));});
			$_SELECT->execQuery(function($success) {/*die(print_r($success));*/});
			die(\system\lib\system::ajaxReturn(PRIVATE_DATA,1,0));
		}


		public function testeUpload(){
			//------------------------------------------
			// ARQUIVOS DE UPLOAD
			//------------------------------------------
				$_UPLOAD = system::finishUploadFile();
			//------------------------------------------
				die(\system\lib\system::ajaxReturn($_UPLOAD,1,0));
		}

		public function getTemplate(){

			$_SELECT = new galaxyDB();
			$_SELECT->connect();
			$_SELECT->table("TEMPLATE__STATIC__TRANSLATE");
			$_SELECT->where('FW_LANG="'.(PUBLIC_DATA['LANG']??'pt').'"');
			$_SELECT->where('AND FW_UID_LANG=100630956624314371');
			$_SELECT->prepare_select('param');


			$_SELECT->transaction(function($e) {die($e);});
			$_SELECT->execQuery();
			$_RESULT = $_SELECT->fetch_array('param')[0]??[];
			die(\system\lib\system::ajaxReturn($_RESULT,1,0));

		}
		

		public function saveTemplate(){

				$_SELECT = new galaxyDB();
				$_SELECT->connect();
				$_SELECT->table("TEMPLATE__STATIC");
				$_SELECT->set_update_obj(PRIVATE_DATA);
				$_SELECT->where('ID=1');
				$_SELECT->prepare_update('param');

				$_SELECT->transaction(function ($e) {die(\system\lib\system::ajaxReturn($e,0));});
				$_SELECT->execQuery(function ($e) {die(\system\lib\system::ajaxReturn('SUCESSO',1,0));});
				
			
		}
	}

?>
