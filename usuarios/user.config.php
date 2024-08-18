<?
define("CONFIG",[
  "ID"=> "usuarios",
  "NAME"=> "Usuarios",
  "DESCRIPTION"=> "Gerenciamento básico de usuários",
  "DEPENDENCIAS"=>false,
  "PATH"=>"app/projetos/missionarios/usuarios",
  "DATABASE"=>[
    "USUARIOS"=>"USUARIOS",
    "DISPOSITIVOS"=>"USUARIOS__DISPOSITIVOS",
    "REDE"=>"USUARIOS__REDE",
    "SEGUIDORES"=>"USUARIOS__SEGUIDORES",
    "STATUS"=>"USUARIOS__STATUS",
    "TIPO_DOCUMENTO"=>"USUARIOS__TIPO_DOCUMENTO",
    "TIPO_PESSOA"=>"USUARIOS__TIPO_PESSOA",
    "TIPO_PROFILE"=>"USUARIOS__TIPO_PROFILE"
  ],
  "MENU_TOPO"=> [
    "ACTIVE"=>true,
    "LABEL"=>"Usuarios",
    "URLINICIAL"=>"/office/usuarios",
  ]
]);

