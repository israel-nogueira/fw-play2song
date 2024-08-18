<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;
    //----------------------------------------------------
    // ROTA 
    //----------------------------------------------------
    router::get(['prefix'=>'office/home','middleware'=>[]],
        "project\home\homeController@index"
    );


/*     
    router::group(
        [ 
            'prefix'=>'grupo-home',
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