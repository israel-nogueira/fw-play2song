<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'galeria/galerias/listar',            'middleware' => []],		['project\\galeria\\galerias\\galeriasController@listar']);
    router::post(['prefix' => 'galeria/galerias/detalhes/{UID}',    'middleware' => []],		['project\\galeria\\galerias\\galeriasController@detalhes']);
    router::post(['prefix' => 'galeria/galerias/novo/{UID}',		'middleware' => []],		['project\\galeria\\galerias\\galeriasController@novo']);
    router::post(['prefix' => 'galeria/galerias/salvar/{UID}',      'middleware' => []],		['project\\galeria\\galerias\\galeriasController@salvar']);
    router::post(['prefix' => 'galeria/galerias/excluir/{UID}',     'middleware' => []],		['project\\galeria\\galerias\\galeriasController@excluir']);

