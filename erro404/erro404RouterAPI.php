<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;
    //----------------------------------------------------
    // ROTA 
    //----------------------------------------------------
    router::get(['prefix'=>'erro-404','middleware'=>[]],
        'project\\erro404\\erro404Controller@index'
    );
