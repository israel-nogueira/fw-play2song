<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'contatos/listar',        'middleware' => []],  ['project\\contatos\\contatosController@listar']);
    router::post(['prefix' => 'contatos/salvar',        'middleware' => []],  ['project\\contatos\\contatosController@salvar']);
    router::post(['prefix' => 'contatos/getData',       'middleware' => []],  ['project\\contatos\\contatosController@getData']);
    router::post(['prefix' => 'contatos/error',         'middleware' => []],  ['project\\contatos\\contatosController@error']);
    router::post(['prefix' => 'contatos/enviawebsite',  'middleware' => []],  ['project\\contatos\\contatosController@enviawebsite']);

