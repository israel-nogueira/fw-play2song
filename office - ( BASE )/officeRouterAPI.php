<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;
    //----------------------------------------------------
    // ROTA 
    //----------------------------------------------------
    router::get(['prefix'=>'office2','middleware'=>[]],
        "project\\office2\\officeController@index"
    );
    router::post(['prefix'=>'office2-get-template','middleware'=>[]],
        "project\\office2\\officeController@getTemplate"
    );
    router::post(['prefix'=>'office2-save-template','middleware'=>[]],
        "project\\office2\\officeController@saveTemplate"
    );