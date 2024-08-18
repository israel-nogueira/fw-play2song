<?
	namespace project\tradersignals;
	use \IsraelNogueira\BladeX\bladex;
	use \system\lib\system;
	use \system\classes\user\user;
	use project\tradersignals\tradersignalsClass;
	use IsraelNogueira\galaxyDB\galaxyDB;
	use IsraelNogueira\SkySession\session;
	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "tradersignals"
	|--------------------------------------------------------------------
	*/

	class tradersignalsController{
		public function __construct(){}
		public function __get($a){}
		public function __set($a,$b){}
		public function __call($a,$b){}
		public static function __callStatic($a,$b){}

		public function newTraderSignal(){
			
			
			$_SIGNAL = new galaxyDB();
			$_SIGNAL->connect();
			$_SIGNAL->table("SIGNALS__COPYTRADER");
			$_SIGNAL->UID_USER		= session::USER()['UID'];
			$_SIGNAL->TIPO_OP		= (PRIVATE_DATA['formData']['TYPE_OP']=='true') ? 1:0;
			$_SIGNAL->STEPS			= count(PRIVATE_DATA['objetoGrid']);
			$_SIGNAL->ATIVO			= PRIVATE_DATA['formData']['ASSETS'];
			$_SIGNAL->ENTRADA 		= PRIVATE_DATA['formData']['PRECO'];
			$_SIGNAL->SL 			= PRIVATE_DATA['formData']['STOP_LOSS'];
			$_SIGNAL->TP 			= PRIVATE_DATA['formData']['TAKE_PROFIT'];
			$_SIGNAL->DATA_LIMITE	= PRIVATE_DATA['formData']['DATA_LIMITE'].' '.PRIVATE_DATA['formData']['HORA_LIMITE'];
			$_SIGNAL->STATUS		= 1;
			$_SIGNAL->EXECUTADO		= 1;
			$_SIGNAL->TRAILING_STOP = PRIVATE_DATA['formData']['TRAILING_STOP'];
			$_SIGNAL->prepare_insert('SIGNAL');
			$_SIGNAL->transaction(function($error) {die(print_r($error));});
			$_SIGNAL->execQuery(function($success) {/*die(print_r($success));*/});
			$ID						= $_SIGNAL->_last_id['SIGNAL'];



			$GET_LAST_UID = new galaxyDB();
			$GET_LAST_UID->connect();
			$GET_LAST_UID->table("SIGNALS__COPYTRADER");
			$GET_LAST_UID->where('ID='.$ID);
			$GET_LAST_UID->prepare_select('LAST_ID');
			$GET_LAST_UID->transaction(function($error) {die(print_r($error));});
			$GET_LAST_UID->execQuery(function($success) {/*die(print_r($success));*/});
			$_UID = $GET_LAST_UID->fetch_array('LAST_ID');
			
			if(count(PRIVATE_DATA['objetoGrid'])>0){
				$_GRID = new galaxyDB();
				$_GRID->connect();
				$_i = 0;

				foreach (PRIVATE_DATA['objetoGrid'] as $value) {
					$_GRID->table("SIGNALS__COPYTRADER_GRID");
					$_GRID->CODE_SIGNAL=$_UID[0]['UID'];
					$_GRID->ENTRY=$value['ENTRY'];
					$_GRID->LOSS=$value['LOSS'];
					$_GRID->PROFIT=$value['PROFIT'];
					$_GRID->SL=$value['SL'];
					$_GRID->SYMBOL=$value['SYMBOL'];
					$_GRID->TP=$value['TP'];
					$_GRID->TS=$value['TS'];
					$_GRID->TYPE=(PRIVATE_DATA['formData']['TYPE_OP']=='true') ? 1:0;
					$_GRID->prepare_insert('SIGNAL_'.$_i);
					$_i++;
				}
				$_GRID->transaction(function($error) {die(print_r($error));});
				$_GRID->execQuery(function($success) {/*die(print_r($success));*/});
				die(\system\lib\system::ajaxReturn($_GRID->query,1,0));
	
				
			}
			
			die(\system\lib\system::ajaxReturn([count(PRIVATE_DATA['objetoGrid']), PRIVATE_DATA['objetoGrid']],1,0));




		}
		public function index(){



			
			die(system::ajaxReturn(bladex::view('project.tradersignals.tradersignalsView',['RAND'=>rand(1,999999999999)])->render(),1,0));
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
