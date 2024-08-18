<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'website/listar',    'middleware' => []],  ['project\\website\\websiteController@listar']);
    router::post(['prefix' => 'website/salvar',    'middleware' => []],  ['project\\website\\websiteController@salvar']);
    router::post(['prefix' => 'website/excluir',   'middleware' => []],  ['project\\website\\websiteController@excluir']);
    router::post(['prefix' => 'website/error',     'middleware' => []],  ['project\\website\\websiteController@error']);

