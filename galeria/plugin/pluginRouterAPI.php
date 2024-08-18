<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;

    /*
    |--------------------------------------------------------------------
    |	nçao precisa colocar "/api/"  
    |   pois esta sendo carregado já dentro do grupo
    |--------------------------------------------------------------------
    */

    router::post(['prefix' => 'galeria/plugin/novo',        'middleware' => []],  ['project\galeria\plugin\pluginController@novo']);
    router::post(['prefix' => 'galeria/plugin/deleta/{ID}', 'middleware' => []],  ['project\galeria\plugin\pluginController@deleta']);
    router::post(['prefix' => 'galeria/plugin/detalhes/{ID}','middleware' => []],  ['project\galeria\plugin\pluginController@detalhes']);
    router::post(['prefix' => 'galeria/plugin/salvar/{ID}',  'middleware' => []],  ['project\galeria\plugin\pluginController@salvar']);
    router::post(['prefix' => 'galeria/plugin/lista',       'middleware' => []],  ['project\galeria\plugin\pluginController@listar']);
    router::post(['prefix' => 'galeria/plugin/excluir',     'middleware' => []],  ['project\galeria\plugin\pluginController@excluir']);
    router::post(['prefix' => 'galeria/plugin/error',       'middleware' => []],  ['project\galeria\plugin\pluginController@error']);

