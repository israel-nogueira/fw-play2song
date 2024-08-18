<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'franquias/listar',    'middleware' => []],  ['project\\franquias\\franquiasController@listar']);
    router::post(['prefix' => 'franquias/salvar',    'middleware' => []],  ['project\\franquias\\franquiasController@salvar']);
    router::post(['prefix' => 'franquias/excluir',   'middleware' => []],  ['project\\franquias\\franquiasController@excluir']);
    router::post(['prefix' => 'franquias/error',     'middleware' => []],  ['project\\franquias\\franquiasController@error']);

