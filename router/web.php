<?
	use IsraelNogueira\fastRouter\router;


	router::get([ 'prefix'=>''	,'middleware'=>[]],function(){
		
		die(\system\lib\system::ajaxReturn("============ WEBSITE ===============",1,0));

	});
