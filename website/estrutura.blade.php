<!doctype html>
<html class="no-js" lang="zxx">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Promoen</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link rel="stylesheet" href="/project/public/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="/project/public/assets/css/animate.min.css">
        <link rel="stylesheet" href="/project/public/assets/css/magnific-popup.css">
        <link rel="stylesheet" href="/project/public/assets/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="/project/public/assets/css/dripicons.css">
        <link rel="stylesheet" href="/project/public/assets/css/slick.css">
        <link rel="stylesheet" href="/project/public/assets/css/meanmenu.css">
        <link rel="stylesheet" href="/project/public/assets/css/default.css">
        <link rel="stylesheet" href="/project/public/assets/css/style.css">
        <link rel="stylesheet" href="/project/public/assets/css/responsive.css">
        <link rel="stylesheet" href="/project/public/assets/css/custom.css">
        <link rel="stylesheet" href="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.css">
        <link rel="stylesheet" href="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.theme.default.min.css">


    </head>
    <body style="overflow-x: hidden;">
		<header class="header-area header">  	
            <div class="header-top second-header d-none d-md-block">
                <div class="container">
                    <div class="row align-items-center">      
                        <div class="col-lg-8 col-md-8 d-none d-lg-block">
                             <div class="header-cta">
                               <ul>                                   
                                    <li>
                                        <i class="icon fal fa-envelope"></i>
                                        <span>{{$CONFIGS['EMAIL']}}</span>
                                    </li>
                                    <li>
                                        <i class="icon fal fa-phone"></i>
                                        <span>{{$CONFIGS['FONE']}}</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 d-none d-lg-block text-right">
                           <div class="header-social">
                                <span>
                                    <a target="_blank" href="{{$CONFIGS['LINKEDIN']}}" title="LinkedIn"><i class="fab fa-linkedin"></i></a>
                                </span>                                                 
                            </div>
                        </div>
                         
                        
                    </div>
                </div>
            </div>


				<div id="header-sticky" class="menu-area">
				<div class="container">
					<div class="second-menu">
						<div class="row align-items-center">
							<div class="col-xl-2 col-lg-2">
								<div class="logo">
									<a href="/{{IDIOMA}}"><img src="/public/assets/img/logo/logo.png" alt="logo"></a>
								</div>
							</div>
							<div class="col-xl-10 col-lg-10">
								<div class="main-menu text-right text-xl-right">
									<nav id="mobile-menu">
										<ul>


                                            <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_HOME']}}">       {{$STATIC['MENU_LABEL_HOME']}}</a></li>  
                                            <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_EMPRESA']}}">    {{$STATIC['MENU_LABEL_EMPRESA']}}</a></li>  
                                            
                                            <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_ATUACAO_DOC']}}">    {{$STATIC['MENU_LABEL_ATUACAO_DOC']}}</a></li>  
                                            <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_ATUACAO_PROD']}}">    {{$STATIC['MENU_LABEL_ATUACAO_PROD']}}</a></li>  
                                            <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_ATUACAO_CONS']}}">    {{$STATIC['MENU_LABEL_ATUACAO_CONS']}}</a></li>  

                                            {{-- <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_DOC']}}">        {{$STATIC['MENU_LABEL_DOC']}}</a></li>   --}}
                                            <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_CLIENTES']}}">   {{$STATIC['MENU_LABEL_CLIENTES']}}</a></li>  
                                            <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_CASES']}}">      {{$STATIC['MENU_LABEL_CASES']}}</a></li>  
                                            <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_CONTATO']}}">    {{$STATIC['MENU_LABEL_CONTATO']}}</a></li>  
                                            <li class="has-sub">
                                                <a href="#"><img id="atual-lang" style="width:24px;" src="/public/assets/img/icon/{{IDIOMA}}.svg?v=2"></a>
                                                <ul>
                                                    <li><a class="menu-lang" data-lang="pt" href="#"><img style="width:24px;float:left;" src="/public/assets/img/icon/pt.svg?v=2"></a></li>
                                                    <li><a class="menu-lang" data-lang="en" href="#"><img style="width:24px;float:left;" src="/public/assets/img/icon/en.svg?v=2"></a></li>
                                                    <li><a class="menu-lang" data-lang="es" href="#"><img style="width:24px;float:left;" src="/public/assets/img/icon/es.svg?v=2"></a></li>
                                                </ul>  
                                            </li>
                                                        
										</ul>
									</nav>
								</div>
							</div>   
								<div class="col-12">
									<div class="mobile-menu"></div>
								</div>
						</div>
					</div>
				</div>
			</div>
		</header>

		<main>
            {!!$PAGE!!}
		</main>

        <div style=" position: fixed;z-index: 9999999999;bottom: 50px;right: 30px;width: 80px;">
            <a target="_blank" href="https://api.whatsapp.com/send?phone={{$CONFIGS['WHATSAPP']}}">
                <img src="/public/assets/img/icon/whatsapp.svg" style=" width: 100%; position: relative; ">
            </a>
        </div>
		<footer class="footer-bg footer-p pt-90" style="background: #00173c;">
            <div class="footer-top-heiding">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-7">
                            <div class="section-title">        
                                <h2>{{$STATIC['FOOTER_NEWSLETTER_TITULO']}}</h2>
                                <h5>{{$STATIC['FOOTER_NEWSLETTER_DESC']}}</h5>
                                
                                

                            </div>
                        </div>                                                      
                         <div class="col-lg-5">
                            <div class="newslater-area">   
                                	<div class="alert alert-success" role="alert" style="display:none"><?
                                    switch (IDIOMA) {
                                        case 'pt':echo 'Email cadastrado com sucesso!';break;
                                        case 'en':echo 'Email registered successfully!';break;
                                        case 'es':echo '¡Correo electrónico registrado exitosamente!';break;
                                        default:break;
                                    }?></div>
                                    <form name="ajax-form" id="contact-form4" action="index-3.html#" method="post" class="contact-form newslater">
                                       <div class="form-group p-relative">
                                          <input class="form-control" id="email2" name="email" type="email" placeholder="{{$STATIC['FOOTER_PLACEHOLDER']}}"  value="" required=""> 
                                          <button type="submit"  id="send2">{{$STATIC['FOOTER_NEWSLETTER_BUTTON']}}</button>
                                       </div>
                                       <!-- /Form-email -->	
                                    </form>
                                 </div>
                        </div>
                    </div>
                </div>
            
            </div>
  
            <div class="footer-top pb-70">
                <div class="container">
                    <div class="row justify-content-between">
                        
                        <div class="col-xl-6 col-lg-6 col-sm-12">
                            <div class="footer-widget mb-30">
                                <div class="f-widget-title">

                                    <h2>{{$STATIC['FOOTER_ABOUT_TITULO']}}</h2>
                                </div>
                                <div class="footer-link">
                                    <p>{{$STATIC['FOOTER_ABOUT_DESC']}}</p>
                                    <div class="f-contact">
                                        <ul>
                                            
                                            <li>
                                                <span class="icon"><img src="/public/assets/img/icon/fot-icon1.png" alt="img"></span>
                                                <span>{{$STATIC['FOOTER_TELEFONE']}}</span>
                                            </li>
                                            <li>
                                                <span class="icon">
                                                    <img src="/public/assets/img/icon/fot-icon2.png" alt="img">
                                                </span>
                                                
                                                <span>{{$STATIC['FOOTER_ENDERECO']}}</span>
                                            </li>
                                        </ul>
                                    </div>                               
                                </div>
                            </div>
                        </div>
						
                        <div class="col-xl-6 col-lg-6 col-sm-12">
                            <div class="footer-widget mb-30">
                                <div class="f-widget-title">
                                    <h2>Links</h2>
                                </div>
                                <div class="footer-link">
                                    <ul>

                                        <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_HOME']}}">       {{$STATIC['MENU_LABEL_HOME']}}</a></li>  
                                        <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_EMPRESA']}}">    {{$STATIC['MENU_LABEL_EMPRESA']}}</a></li>  
                                        <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_ATUACAO_DOC']}}">    {{$STATIC['MENU_LABEL_ATUACAO_DOC']}}</a></li>  
                                        <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_ATUACAO_PROD']}}">    {{$STATIC['MENU_LABEL_ATUACAO_PROD']}}</a></li>  
                                        <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_ATUACAO_CONS']}}">    {{$STATIC['MENU_LABEL_ATUACAO_CONS']}}</a></li>
                                        <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_CLIENTES']}}">   {{$STATIC['MENU_LABEL_CLIENTES']}}</a></li>  
                                        <li><a href="/{{IDIOMA}}/{{$STATIC['MENU_LINK_CONTATO']}}">    {{$STATIC['MENU_LABEL_CONTATO']}}</a></li>  

                                    </ul>
                                </div>
                            </div>
                        </div>  


                        
                    </div>
                </div>
            </div>
            <div class="copyright-wrap">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-4">
                            <img src="/public/assets/img/logo/logo.png" alt="logo">
                        </div>
                        <div class="col-lg-4">          
                            <div class="copy-text text-center">
                                 Copyright &copy; 2024 <a style="color:#fff;" href="{{$STATIC['FOOTER_LINK_COPYRIGHT']}}">{{$STATIC['FOOTER_COPYRIGHT']}}</a>. Todos os direitos reservados.       
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <script src="/public/assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="/public/assets/js/vendor/jquery-3.6.0.min.js"></script>
        <script src="/public/assets/js/popper.min.js"></script>
        <script src="/public/assets/js/bootstrap.min.js"></script>
        <script src="/public/assets/js/slick.min.js"></script>
        <script src="/public/assets/js/ajax-form.js"></script>
        <script src="/public/assets/js/paroller.js"></script>
        <script src="/public/assets/js/wow.min.js"></script>
        <script src="/public/assets/js/js_isotope.pkgd.min.js"></script>
        <script src="/public/assets/js/imagesloaded.min.js"></script>
        <script src="/public/assets/js/parallax.min.js"></script>
        <script src="/public/assets/js/jquery.waypoints.min.js"></script>
        <script src="/public/assets/js/jquery.counterup.min.js"></script>
        {{-- <script src="/public/assets/js/jquery.scrollUp.min.js"></script> --}}
        <script src="/public/assets/js/jquery.meanmenu.min.js"></script>
        <script src="/public/assets/js/parallax-scroll.js"></script>
        <script src="/public/assets/js/jquery.magnific-popup.min.js"></script>
        <script src="/public/assets/js/element-in-view.js"></script>
        <script src="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.min.js"></script>
        <script src="/public/assets/js/main.js?v=<?=rand(1,9999999999999)?>"></script>
        <script src="/app/system/public/js/jquery.serialize-object.js"></script>
        <script src="/app/system/public/js/jsencrypt_3.3.2.min.js"></script>
        <script src="/app/system/public/js/desktop.js.php"></script>
        <script src="/app/system/public/js/webserver.js.php"></script>
        <script>
         		<?
                 echo  \system\lib\system::windowCsrf_token('contatosSite');
                ?>

            document.addEventListener("DOMContentLoaded", () => {
                    $(document) 
                    .off('click','.menu-lang')
                    .on('click','.menu-lang', function (e) { 
                        e.preventDefault();
                            var idioma = $(this).data('lang');
                            var url = window.location.pathname.split('/').slice(2);
                            window.location = '/'+idioma+'/'+url
                        return false;
                    });
            })
        </script>
    </body>
</html>