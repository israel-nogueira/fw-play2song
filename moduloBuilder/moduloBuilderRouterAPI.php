<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'moduloBuilder/listar',    'middleware' => []],  ['project\\moduloBuilder\\moduloBuilderController@listar']);
    router::post(['prefix' => 'moduloBuilder/salvar',    'middleware' => []],  ['project\\moduloBuilder\\moduloBuilderController@salvar']);
    router::post(['prefix' => 'moduloBuilder/excluir',   'middleware' => []],  ['project\\moduloBuilder\\moduloBuilderController@excluir']);
    router::post(['prefix' => 'moduloBuilder/error',     'middleware' => []],  ['project\\moduloBuilder\\moduloBuilderController@error']);

