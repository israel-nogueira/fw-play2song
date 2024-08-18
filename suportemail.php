<?php
// suportemail.php

// Obtém o conteúdo do e-mail da entrada padrão
$conteudoEmail = file_get_contents("php://stdin");

// Obtém o diretório atual (__DIR__) para salvar o arquivo TXT
$diretorioAtual = __DIR__;

// Gera um nome de arquivo único baseado na data e hora
$nomeArquivo = 'email_' . date('Ymd_His') . '.txt';

// Caminho completo para o arquivo TXT
$caminhoArquivo = $diretorioAtual . '/' . $nomeArquivo;

// Salva o conteúdo do e-mail no arquivo TXT
file_put_contents($caminhoArquivo, $conteudoEmail);

// Log simples para indicar que o e-mail foi processado
file_put_contents($diretorioAtual . '/log.txt', 'E-mail processado em ' . date('Y-m-d H:i:s') . PHP_EOL, FILE_APPEND);

// Encerra o script
exit(0);
