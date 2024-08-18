<?
		use system\classes\websocket\websocket;
		use IsraelNogueira\galaxyDB\galaxyDB;
		use IsraelNogueira\SkySession\session;
		use IsraelNogueira\fastRouter\router;
		use IsraelNogueira\BladeX\bladex;
		use system\lib\middleware;
		use system\lib\system;




	/*
	|--------------------------------------------------------------------
	|	DENTRO DO ADMIN
	|--------------------------------------------------------------------
	*/

		router::group([ 
			'prefix'=>'office',
			'middleware'=>[
				'\system\lib\middleware@isOnline'
			]
		],function($middleware){

		/*
		|--------------------------------------------------------------------
		|	OFFLINE REDIRECIONA
		|--------------------------------------------------------------------
		*/
			if(isset($middleware['system\lib\middleware\isOnline'])){
				system::location('/auth/sign-in','js');
				exit;
			}

		/*
		|--------------------------------------------------------------------
		|	CARREGA O DESKTOP VAZIO
		|--------------------------------------------------------------------
		|	pois o conteudo é carregado via ajax e não tem 
		|	a necessidade de possuir templates aqui
		|
		*/
				die(bladex::view('project.desktop.views.desktop',[
					'csrf'=>session::csrf(),
					'user'=>session::USER(),
					'page'=>'carregando...',
					'RAND'=>rand(1,9999999999999),
					'URL_WEBSOCKET'=>getEnv('URL_WEBSOCKET'),
					'PORTA_WEBSOCKET'=>getEnv('PORTA_WEBSOCKET'),
				]));

				
				
		});

