<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;
    
	/*
	|--------------------------------------------------------------------
	|	NAV-AJAX
	|--------------------------------------------------------------------
	|	Rotas já estão inseridas no escopo de /nav-ajax
	|	Portanto pode utilizar diretamente a rota de navegação normal
	|--------------------------------------------------------------------
    */
        router::get(['prefix'=>'office/usuarios2','middleware'=>[]],
            'project\\usuarios\\usuariosController@index'
        );

        router::get(['prefix'=>'office/usuario2/detalhes/{UID}','middleware'=>[]],
            'project\\usuarios\\usuariosController@usuariosDetalhes'
        );
    
 