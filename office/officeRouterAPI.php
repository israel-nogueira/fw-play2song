<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;
    //----------------------------------------------------
    // ROTA 
    //----------------------------------------------------
    router::get(['prefix'=>'office','middleware'=>[]],
        "project\\office\\officeController@index"
    );
    router::post(['prefix'=>'office-get-template','middleware'=>[]],
        "project\\office\\officeController@getTemplate"
    );
    router::post(['prefix'=>'office-save-template','middleware'=>[]],
        "project\\office\\officeController@saveTemplate"
    );