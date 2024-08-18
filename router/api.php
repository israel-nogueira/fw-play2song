<?
	use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\SkySession\session;
	use system\lib\middleware;

	

	/*
	|--------------------------------------------------------------------
	|	AINDA NAO FOI TESTADO
	|--------------------------------------------------------------------
	*/
		router::post(['prefix'=>'upload/avatar',			'middleware'=>['\system\lib\middleware@upload']],    ['system\classes\auth\signUpClass@signUp']);
		router::post(['prefix'=>'upload/documentos',		'middleware'=>['\system\lib\middleware@upload']],    ['system\classes\auth\loginClass@login']);
		router::post(['prefix'=>'upload/fotos',				'middleware'=>['\system\lib\middleware@upload']],    ['system\classes\auth\dispositivosClass@autoriza']);

