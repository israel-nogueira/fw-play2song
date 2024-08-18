<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'configs/get-configs',    'middleware' => []],  ['project\\configs\\configsController@getConfigs']);
    router::post(['prefix' => 'configs/save-template',  'middleware' => []],  ['project\\configs\\configsController@salvar']);
    router::post(['prefix' => 'configs/excluir',   'middleware' => []],  ['project\\configs\\configsController@excluir']);
    router::post(['prefix' => 'configs/error',     'middleware' => []],  ['project\\configs\\configsController@error']);

