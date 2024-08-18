<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;


    router::get(['prefix'=>'office/galerias/plugin','middleware'=>[]],
        'project\galeria\plugin\pluginController@index'
    );
    
    router::get(['prefix'=>"office/galerias/{uid:[0-9]+}",'middleware'=>[]],
        'project\galeria\galerias\galeriasController@index'
    );

    router::get(['prefix'=>"office/galerias/{uid:[0-9]+}/{uidgaleria:[0-9]+}" ,'middleware'=>[]],
        'project\galeria\fotos\fotosController@index'
    );

    // router::get(['prefix'=>"/office/galerias/{uid:[0-9]+}/{uidgaleria:[0-9]+}/{uid_img:[0-9]+}",'middleware'=>[]],
    //     "project/galeria/galerias/galeriasController@index"
    // );

    