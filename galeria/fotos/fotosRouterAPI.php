<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'galeria/fotos/listar/{UID_PLUGIN}/{UID_GALERIA}',    'middleware' => []],  ['project\\galeria\\fotos\\fotosController@listar']);
    router::post(['prefix' => 'galeria/fotos/upload/{UID_PLUGIN}/{UID_GALERIA}',    'middleware' => []],  ['project\\galeria\\fotos\\fotosController@upload']);
    router::post(['prefix' => 'galeria/fotos/detalhes/{UID_THUMB}',                 'middleware' => []],  ['project\\galeria\\fotos\\fotosController@detalhes']);
    router::post(['prefix' => 'galeria/fotos/excluir/{UID_THUMB}',                  'middleware' => []],  ['project\\galeria\\fotos\\fotosController@excluir']);
    router::post(['prefix' => 'galeria/fotos/salvar/{UID_THUMB}',                   'middleware' => []],  ['project\\galeria\\fotos\\fotosController@salvar']);

    
