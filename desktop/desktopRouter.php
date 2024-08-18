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
        router::get(['prefix'=>'desktop','middleware'=>[]],
            'project\\desktop\\desktopController@index'
        );


        