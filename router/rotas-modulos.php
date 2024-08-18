<?
/*
|--------------------------------------------------------------------
|    NAVEGAÇÃO AJAX
|--------------------------------------------------------------------
|
|    Se for ajax, faz foreach importando
|    todos as rotas dos módulos
|
*/
    
    $path               =   getEnv('PATH_ROOT') . '/app/projetos/' . getEnv('APP_NAME') . '/';
    $directoryIterator  =   new RecursiveDirectoryIterator($path, RecursiveDirectoryIterator::SKIP_DOTS);
    $recursiveIterator  =   new RecursiveIteratorIterator($directoryIterator);
    $fileRegexIterator  =   new RegexIterator($recursiveIterator, '/^.+Router\.php$/i', RecursiveRegexIterator::GET_MATCH);
    foreach ($fileRegexIterator as $matches) {
        @include_once ($matches[0]);
    }
    

    ?>