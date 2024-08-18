@section('head')
    <head>
        <!-- Meta Data -->
        <meta charset="UTF-8" />
        <meta name="csrf-token" content="{{CSRF}}">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>{{COPYRIGHT_NAME}} ::  Admin</title>
        <meta name="Description" content="Bootstrap Responsive Admin Web Dashboard HTML5 Template" />
        <meta name="Author" content="Spruko Technologies Private Limited" />
        <meta name="keywords" content="office,office dashboard,office panel,office template,bootstrap,clean,dashboard,flat,jquery,modern,responsive,premium office templates,responsive office,ui,ui kit." />
    
    
        <link rel="icon" href="/project/public/assets/images/brand-logos/favicon.ico?v=2" type="image/x-icon" />
        <link id="style" href="/public/assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
       
        <link href="/app/sources/less/theme-colors.css?v={{CACHE}}" rel="stylesheet" />
        <link href="/system/public/assets/css/styles.css?v={{CACHE}}" rel="stylesheet" />

        <link href="/public/assets/css/styles.css?v={{CACHE}}" rel="stylesheet" />
        <link href="/project/desktop/desktopStyle.css?v={{CACHE}}" rel="stylesheet" />



     



        <noscript><p>Para exibir esta página, você precisa de um navegador que suporte JavaScript.</p></noscript>
        <meta http-equiv="imagetoolbar" content="no" />
        <!-- ================== -->
        <!--     APPLE IOS      -->
        <!-- ================== -->
        <meta name="apple-mobile-web-app-status-bar-style" content="default">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-title" content="Nome do App">
        <meta name="format-detection" content="telephone=no">
        <link rel="apple-touch-icon" sizes="48x48" href="/public/pwa/icones/48x48.png">
        <link rel="apple-touch-icon" sizes="57x57" href="/public/pwa/icones/57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/public/pwa/icones/72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="/public/pwa/icones/76x76.png">
        <link rel="apple-touch-icon" sizes="96x96" href="/public/pwa/icones/96x96.png">
        <link rel="apple-touch-icon" sizes="120x120" href="/public/pwa/icones/120x120.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/public/pwa/icones/114x114.png">
        <link rel="apple-touch-icon" sizes="144x144" href="/public/pwa/icones/144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="/public/pwa/icones/152x152.png">
        <link rel="apple-touch-icon" sizes="167x167" href="/public/pwa/icones/167x167.png">
        <link rel="apple-touch-icon" sizes="180x180" href="/public/pwa/icones/180x180.png">
        <link rel="apple-touch-icon" sizes="192x192" href="/public/pwa/icones/192x192.png">
        <link rel="apple-touch-icon" sizes="384x384" href="/public/pwa/icones/384x384.png">
        <link rel="apple-touch-icon" sizes="512x512" href="/public/pwa/icones/512x512.png">
        

        <!-- ================== -->
        <!--       ANDROID      -->
        <!-- ================== -->        
        <meta name="mobile-web-app-capable" content="yes">
        <meta name="theme-color" content="#55ac00">
        <meta name="application-name" content="Nome do App">
        
        <link rel="icon" type="image/png" sizes="48x48" href="/public/pwa/icones/48x48.png">
        <link rel="icon" type="image/png" sizes="57x57" href="/public/pwa/icones/57x57.png">
        <link rel="icon" type="image/png" sizes="72x72" href="/public/pwa/icones/72x72.png">
        <link rel="icon" type="image/png" sizes="76x76" href="/public/pwa/icones/76x76.png">
        <link rel="icon" type="image/png" sizes="96x96" href="/public/pwa/icones/96x96.png">
        <link rel="icon" type="image/png" sizes="120x120" href="/public/pwa/icones/120x120.png">
        <link rel="icon" type="image/png" sizes="114x114" href="/public/pwa/icones/114x114.png">
        <link rel="icon" type="image/png" sizes="144x144" href="/public/pwa/icones/144x144.png">
        <link rel="icon" type="image/png" sizes="152x152" href="/public/pwa/icones/152x152.png">
        <link rel="icon" type="image/png" sizes="167x167" href="/public/pwa/icones/167x167.png">
        <link rel="icon" type="image/png" sizes="180x180" href="/public/pwa/icones/180x180.png">
        <link rel="icon" type="image/png" sizes="192x192" href="/public/pwa/icones/192x192.png">
        <link rel="icon" type="image/png" sizes="384x384" href="/public/pwa/icones/384x384.png">
        <link rel="icon" type="image/png" sizes="512x512" href="/public/pwa/icones/512x512.png">
        <style type="text/css" media="print">
                body{display:none} 
        </style>
        
        @include('app.system.views.desktop.scriptsHead')

    
    </head>
@endsection
