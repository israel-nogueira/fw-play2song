<?
    use IsraelNogueira\fastRouter\router;
	use IsraelNogueira\BladeX\bladex;


    router::any(['prefix' => 'user2/delete-authn', 'middleware' => []], ['project\\usuarios\\usuariosClass@deleteAuthn',true]);
    router::any(['prefix' => 'user2/list-authn', 'middleware' => []], ['project\\usuarios\\usuariosClass@listAuthn',true]);
    router::any(['prefix' => 'user2/new-authn', 'middleware' => []], ['project\\usuarios\\usuariosClass@newAuthn',true]);
    router::any(['prefix' => 'user2/lista', 'middleware' => []], ['project\\usuarios\\usuariosClass@listaUsuarios',true]);
    router::post(['prefix'=> 'user2/save-data/{UID}', 'middleware' => []], ['project\\usuarios\\usuariosClass@savedata']);

