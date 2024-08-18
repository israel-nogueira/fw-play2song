<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'clientes/listar',    'middleware' => []],  ['project\\clientes\\clientesController@listar']);
    router::post(['prefix' => 'clientes/salvar',    'middleware' => []],  ['project\\clientes\\clientesController@salvar']);
    router::post(['prefix' => 'clientes/excluir',   'middleware' => []],  ['project\\clientes\\clientesController@excluir']);
    router::post(['prefix' => 'clientes/error',     'middleware' => []],  ['project\\clientes\\clientesController@error']);

