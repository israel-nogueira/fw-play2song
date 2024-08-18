<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;
    //----------------------------------------------------
    // ROTA 
    //----------------------------------------------------
    router::get(['prefix'=>'home','middleware'=>[]],
        "project\\home\\homeController@index"
    );
    router::post(['prefix'=>'home-get-template','middleware'=>[]],
        "project\\home\\homeController@getTemplate"
    );
    router::post(['prefix'=>'home-save-template','middleware'=>[]],
        "project\\home\\homeController@saveTemplate"
    );
    