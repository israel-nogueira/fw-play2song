<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'newsletter/listar',    'middleware' => []],  ['project\\newsletter\\newsletterController@listar']);
    router::post(['prefix' => 'newsletter/salvar',    'middleware' => []],  ['project\\newsletter\\newsletterController@salvar']);
    router::post(['prefix' => 'newsletter/novo',    'middleware' => []],  ['project\\newsletter\\newsletterController@novo']);
    router::post(['prefix' => 'newsletter/excluir',   'middleware' => []],  ['project\\newsletter\\newsletterController@excluir']);
    router::post(['prefix' => 'newsletter/error',     'middleware' => []],  ['project\\newsletter\\newsletterController@error']);

