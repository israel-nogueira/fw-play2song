<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'recompensas/listar',    'middleware' => []],  ['project\\recompensas\\recompensasController@listar']);
    router::post(['prefix' => 'recompensas/salvar',    'middleware' => []],  ['project\\recompensas\\recompensasController@salvar']);
    router::post(['prefix' => 'recompensas/excluir',   'middleware' => []],  ['project\\recompensas\\recompensasController@excluir']);
    router::post(['prefix' => 'recompensas/error',     'middleware' => []],  ['project\\recompensas\\recompensasController@error']);

