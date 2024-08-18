<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;
    //----------------------------------------------------
    // ROTA 
    //----------------------------------------------------

    
    router::any(['prefix'=>'tradersignals/newtradersignal','middleware'=>[]],
        "project\\tradersignals\\tradersignalsController@newTraderSignal"
    );
    router::any(['prefix'=>'tradersignals-get-template','middleware'=>[]],
        "project\\tradersignals\\tradersignalsController@getTemplate"
    );
    router::any(['prefix'=>'tradersignals-save-template','middleware'=>[]],
        "project\\tradersignals\\tradersignalsController@saveTemplate"
    );
    