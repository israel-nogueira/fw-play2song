<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;
    //----------------------------------------------------
    // ROTA 
    //----------------------------------------------------
    router::get(['prefix'=>'sinaisTelegram','middleware'=>[]],
        "project\\sinaisTelegram\\sinaisTelegramController@index"
    );

    router::post(['prefix'=>'subscribe-channel','middleware'=>[]],
        "project\\sinaisTelegram\\sinaisTelegramController@subscribeChannel"
    );

    router::post(['prefix'=>'sinaisTelegram-save-template','middleware'=>[]],
        "project\\sinaisTelegram\\sinaisTelegramController@saveTemplate"
    );