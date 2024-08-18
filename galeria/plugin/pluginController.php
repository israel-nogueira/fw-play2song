<?
	namespace project\galeria\plugin;
	use IsraelNogueira\galaxyDB\galaxyDB;
	use IsraelNogueira\BladeX\bladex;
	use system\lib\system;
	use system\modulos\midia\midiaClass;
	use project\galeria\plugin\pluginClass;

	/*
	|--------------------------------------------------------------------
	|	CONTROLLER PARA O MÓDULO "plugin"
	|--------------------------------------------------------------------
	*/

	class pluginController{

    public function index(){
        $TESTE = ['prefix' => 'LISTA_BANNERS_PLUGINS'];
        die(system::ajaxReturn(bladex::view('project.galeria.plugin.pluginView', $TESTE)->render(), 1, 0));
    }

    public function salvar($UID = null){
        $_VALORES               = PRIVATE_DATA;


        $_UPDATE = new galaxyDB();
        $_UPDATE->connect();
        $_UPDATE->table("GALERIAS__PLUGIN");
        $_UPDATE->MULTIPLAS     =$_VALORES['MULTIPLAS'];
        $_UPDATE->TITULO        =$_VALORES['TITULO'];
        $_UPDATE->SLUG          =$_VALORES['SLUG'];
        $_UPDATE->TAMANHO_THUMB =implode(',',$_VALORES['TAMANHO']);
        $_UPDATE->where('UID='.$UID);
        $_UPDATE->prepare_update('param');
        $_UPDATE->transaction(function ($error) {die(\system\lib\system::ajaxReturn($error,0));});
        $_UPDATE->execQuery(function($success) {
                $GALERIAS__PLUGIN = new galaxyDB();
                $GALERIAS__PLUGIN->connect();
                $GALERIAS__PLUGIN->table("GALERIAS__PLUGIN");
                $GALERIAS__PLUGIN->prepare_select('param');
                $GALERIAS__PLUGIN->transaction(function($error) {die(print_r($error));});
                $GALERIAS__PLUGIN->execQuery(function($success) {});
                $_RESULT = $GALERIAS__PLUGIN->fetch_array('param');

                $MEDIDAS = [];
                foreach ($_RESULT as $_PLUGIN) {
                    $MEDIDAS[] = $_PLUGIN['TAMANHO_THUMB'];
                }

                
            $MEDIDAS = array_unique(explode(',',implode(',',$MEDIDAS)));
                
                
                

            $_MYSQL             =	new galaxyDB();
            $_MYSQL             ->connect();
            $COL_ATUAL          =$_MYSQL->showDBColumns('GALERIAS__IMAGENS',false);
            $COL_ORIGINAL       = ['ID' ,'UID' ,'UID_PLUGIN' ,'UID_GALERIA' ,'FILENAME' ,'ORIGINAL_NAME' ,'MIME' ,'TITULO','DESCRICAO','PESO' ,'W_ORIGINAL' ,'H_ORIGINAL'];
            $COLUNAS_DIFF       =array_filter(array_values(array_diff($COL_ATUAL,$COL_ORIGINAL)));
            $ADICIONADAS        =array_filter(array_values(array_diff($MEDIDAS, $COLUNAS_DIFF)));
            $EXCLUIDAS          =array_filter(array_values(array_diff($COLUNAS_DIFF, $MEDIDAS)));



            $_COLUMNS=	new galaxyDB();
            $_COLUMNS->connect();
            foreach ($EXCLUIDAS as $_COLUM) {
               $_COLUMNS->connection->query('ALTER TABLE `GALERIAS__IMAGENS` DROP COLUMN IF EXISTS '.$_COLUM.';');
            }
            foreach ($ADICIONADAS as $_COLUM) {
                $_COLUMNS->connection->query('ALTER TABLE `GALERIAS__IMAGENS` ADD COLUMN `'.$_COLUM.'` VARCHAR(255) DEFAULT NULL;');
            }











        });











        
    }

    public function novo()    {

        $_SELECT = new galaxyDB();
        $_SELECT->connect();    
        $_SELECT->table("GALERIAS__PLUGIN");
        $_SELECT->TITULO = 'NOVO';
        $_SELECT->prepare_insert('param');
        $_SELECT->transaction(function ($error) {die(print_r($error));});
        $_SELECT->execQuery(function ($mysql) {

            $getGal = new galaxyDB();
            $getGal->connect();
            $getGal->table("GALERIAS__PLUGIN");
            $getGal->where('ID='.$mysql->_last_id['param']);
            $getGal->prepare_select('param');
            $getGal->transaction(function($error) {die(print_r($error));});
            $getGal->execQuery(function($success) {/*die(print_r($success));*/});
            $_RESULT = $getGal->fetch_array('param')[0];

            $_DIR = getEnv('PATH_PUBLIC') . '/upload/galerias/PLUGIN_' . $_RESULT['UID'];
            @mkdir($_DIR, 0777, true);
           die(system::ajaxReturn($_RESULT, 1, 0));
        });

    }

    public function listar() {

        $_SELECT = new galaxyDB();
		$_SELECT->connect();
		$_SELECT->table("GALERIAS__PLUGIN PLUGIN");
		$_SELECT->colum("PLUGIN.*");

        $_SELECT->colum("(IF(
                PLUGIN.MULTIPLAS=1,
                \"Multiplas Galerias\",
                IF(
                    PLUGIN.MULTIPLAS=2,
                    \"UMA Galeria\",
                    IF(PLUGIN.MULTIPLAS=3,
                        \"UMA IMAGEM\",
                        NULL
                    )
                )
            ))  AS TIPO_PLUGIN");

        // 3 É UMA IMAGEM
		$_SELECT->colum("IF((
                PLUGIN.MULTIPLAS=3
                AND (SELECT COUNT(1) FROM GALERIAS__IMAGENS WHERE UID_PLUGIN=PLUGIN.UID)>0
            ),(
                SELECT UID FROM GALERIAS__IMAGENS WHERE UID_PLUGIN=PLUGIN.UID ORDER BY ID DESC LIMIT 1 
            ) ,NULL) AS UID_IMAGE");

        // 2 É UMA GALERIA
		$_SELECT->colum("IF((
                PLUGIN.MULTIPLAS=2
                AND (SELECT COUNT(1) FROM GALERIAS__GALERIAS WHERE UID_PLUGIN=PLUGIN.UID)>0
            )
            ,(

                (SELECT UID FROM GALERIAS__GALERIAS WHERE UID_PLUGIN=PLUGIN.UID ORDER BY ID DESC LIMIT 1 )

            ) ,NULL) AS UID_GALERIA");




		$_SELECT->prepare_select('dados');
      	

        $_A = new galaxyDB();
        $_A->connect();
        $_A->table("(".$_SELECT->query['dados'].") TABELAS");
        $_A->colum("TABELAS.*");
        $DATA_TABLE = $_A->dataTable(PUBLIC_DATA['oAjaxData']);
		die(\system\lib\system::ajaxReturn($DATA_TABLE,1,0));


	}
    public function deleta($UID = null) {


            $DELETE = new galaxyDB();
            $DELETE->connect();
            
            $DELETE->table("GALERIAS__IMAGENS");
            $DELETE->where('UID_PLUGIN=' . $UID);
            $DELETE->prepare_delete('EXCLUI_FILES');

            $DELETE->table("GALERIAS__GALERIAS");
            $DELETE->where('UID_PLUGIN=' . $UID);
            $DELETE->prepare_delete('EXCLUI_GALERIAS');
            
            $DELETE->table("GALERIAS__PLUGIN");
            $DELETE->where('UID='.$UID);
            $DELETE->prepare_delete('EXCLUI_PLUGIN');

            $DELETE->transaction(function ($error = []) {die(system::ajaxReturn($error, 0));});
            $DELETE->execQuery();
            $_DIR = getEnv('PATH_PUBLIC') . '/upload/galerias/PLUGIN_' . $UID;
            @mkdir($_DIR, 0777, true);
            system::deleteDir($_DIR);

            die(system::ajaxReturn($UID, 1, 0));

    }
    public function detalhes($ID = null)
    {

        $_SELECT = new galaxyDB();
        $_SELECT->connect();
        $_SELECT->table("GALERIAS__PLUGIN");
        $_SELECT->where('UID=' . $ID);
        $_SELECT->prepare_select('param');
        $_SELECT->transaction(function ($e) {die($e);});
        $_SELECT->execQuery();
        $_RESULT = $_SELECT->fetch_array('param')[0]??false;

        if($_RESULT!==false){
             $_RESULT['TAMANHO_THUMB'] = $_RESULT['TAMANHO_THUMB']=="" ? []: explode(',',$_RESULT['TAMANHO_THUMB']);
        }

        die(system::ajaxReturn($_RESULT, 1, 0));




        
    }

}

?>
