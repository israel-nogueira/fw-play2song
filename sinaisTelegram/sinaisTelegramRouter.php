<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;
    //----------------------------------------------------
    // ROTA 
    //----------------------------------------------------
    router::get(['prefix'=>'office/sinaisTelegram','middleware'=>[]],
        "project\\sinaisTelegram\\sinaisTelegramController@index"
    );
    router::get(['prefix'=>'office/detalhes-channel/{UID}','middleware'=>[]],
        "project\\sinaisTelegram\\sinaisTelegramController@detalhesChannel"
    );



/*     
    router::group(
        [ 
            'prefix'=>'grupo-sinaisTelegram',
            'middleware'=>[
                'system\lib\middleware@isOnline', 
                'system\lib\middleware@tokenCSRF',
            ]
        ],
        function($middleware){
            if(count($middleware)>0){
                die(\system\lib\system::ajaxReturn($middleware,0));
            }
	});

 */