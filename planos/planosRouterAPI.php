<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'planos/listar',    'middleware' => []],  ['project\\planos\\planosController@listar']);
    router::post(['prefix' => 'planos/salvar',    'middleware' => []],  ['project\\planos\\planosController@salvar']);
    router::post(['prefix' => 'planos/excluir',   'middleware' => []],  ['project\\planos\\planosController@excluir']);
    router::post(['prefix' => 'planos/error',     'middleware' => []],  ['project\\planos\\planosController@error']);

