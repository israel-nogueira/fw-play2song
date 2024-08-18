<main>
            
	<!-- breadcrumb-area -->
	<section class="breadcrumb-area d-flex align-items-center" style="background-image: url(/public/assets/images/topos/contatos.png);background-position: top center;">
		<div class="container">
			<div class="row align-items-center" >
				<div class="col-xl-12 col-lg-12">
					<div class="breadcrumb-wrap text-center">
						<div class="breadcrumb-title">
							<h2>{!!$CONTATO['TOP_TITLE']!!}</h2>    
						</div>
					</div>
				</div>				
			</div>
		</div>
	</section>
	
	
	<section id="contact" class="contact-area after-none contact-bg pt-120 pb-120 p-relative fix">
		<div class="container">
	 
			<div class="row justify-content-center align-items-center">
				 <div class="col-lg-4 order-1">
					<div class="contact-info">
						  <div class="single-cta pb-30 mb-30 wow fadeInUp  animated" data-animation="fadeInDown animated" data-delay=".2s" style="visibility: visible; animation-name: fadeInUp;">
								<div class="f-cta-icon">
									<i class="far fa-map"></i>
								</div>
								<h5>{!!$CONTATO['ADRESS_TITLE']!!}</h5>
								<p>{!!$CONTATO['ADRESS_TEXT']!!}</p>
							</div>
							 <div class="single-cta pb-30 mb-30 wow fadeInUp  animated" data-animation="fadeInDown animated" data-delay=".2s" style="visibility: visible; animation-name: fadeInUp;">
								<div class="f-cta-icon">
									<i class="far fa-clock"></i>
								</div>
								<h5>{!!$CONTATO['HORARIOS_TITLE']!!}</h5>
								<p>{!!$CONTATO['HORARIOS_TEXT']!!}</p>
							</div>
							 <div class="single-cta wow fadeInUp  animated" data-animation="fadeInDown animated" data-delay=".2s" style="visibility: visible; animation-name: fadeInUp;">
								<div class="f-cta-icon">
									<i class="far fa-envelope-open"></i>
								</div>
								<h5>{!!$CONTATO['EMAILS_TITLE']!!}</h5>
								<p> {!!$CONTATO['EMAILS_TEXT']!!}</p>
							</div>
						</div>							
				</div>
				<div class="col-lg-8 order-2">
					<div class="contact-bg02">
						<div class="section-title center-align">
							<h2>
							   {!!$CONTATO['TITULO_FORM']!!}
							</h2>					
						</div>       
						<form id="form-contato" class="contact-form mt-30">
							<div class="alert alert-success" role="alert" style="display:none"><?
                                    switch (IDIOMA) {
                                        case 'pt':echo 'Email cadastrado com sucesso!';break;
                                        case 'en':echo 'Email registered successfully!';break;
                                        case 'es':echo '¡Correo electrónico registrado exitosamente!';break;
                                        default:break;
                                    }?></div>
							<div class="row">
							<div class="col-lg-6">
								<div class="contact-field p-relative c-name mb-20">                                    
									<input type="text" id="firstn" name="PLACEHOLDER_NOME" placeholder="{!!$CONTATO['PLACEHOLDER_NOME']!!}" required="">
								</div>                               
							</div>

							<div class="col-lg-6">                               
								<div class="contact-field p-relative c-subject mb-20">                                   
									<input type="text" id="email" name="PLACEHOLDER_EMAIL" placeholder="{!!$CONTATO['PLACEHOLDER_EMAIL']!!}" required="">
								</div>
							</div>		
							<div class="col-lg-6">                               
								<div class="contact-field p-relative c-subject mb-20">                                   
									<input type="text" id="phone" name="PLACEHOLDER_TELEFONE" placeholder="{!!$CONTATO['PLACEHOLDER_TELEFONE']!!}" required="">
								</div>
							</div>	
							<div class="col-lg-6">                               
								<div class="contact-field p-relative c-subject mb-20">                                   
									<input type="text" id="subject" name="PLACEHOLDER_ASSUNTO" placeholder="{!!$CONTATO['PLACEHOLDER_ASSUNTO']!!}">
								</div>
							</div>	
							<div class="col-lg-12">
								<div class="contact-field p-relative c-message mb-30">                                  
									<textarea name="PLACEHOLDER_TEXTO" id="message" cols="30" rows="10" placeholder="{!!$CONTATO['PLACEHOLDER_TEXTO']!!}"></textarea>
								</div>
								<div class="slider-btn">                                          
									<button class="btn ss-btn" data-animation="fadeInRight" data-delay=".8s"><span>{!!$CONTATO['TEXTO_BOTAO']!!}</span></button>				
								</div>                             
							</div>
							</div>
					</form>                            
					</div>    
				
				</div>
			</div>
			
		</div>
	   
	</section>
	
	
	<div class="map fix" style="background: #f5f5f5;">
		<div class="container-flud">
			
			<div class="row">
				<div class="col-lg-12">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.2562287218566!2d-48.01300402401933!3d-21.142198980535643!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94b99ecf7a3af2af%3A0xbf3af4ba637a22ac!2sAv.%20Marginal%20Jo%C3%A3o%20Ol%C3%A9zio%20Marques%2C%203563%20-%20319%20320%20-%20Ch%C3%A1caras%20Recreio%20Planalto%2C%20Sert%C3%A3ozinho%20-%20SP%2C%2014176-003!5e0!3m2!1spt-BR!2sbr!4v1702931011252!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
				</div>
			</div>
		</div>
	</div>
	 
	 
</main>

<script>
	window.csrf_token=[];
	@csrfToken('contatosSite')
</script>


{{--
<script typ="text/javascript" src="/project/website/websiteScript.js?v={{CACHE}}"></script>
<script type="text/javascript">
    @csrfToken('website')
    var params						= {};
    window.modulo['{ajax-href}']	= websiteScript('{ajax-href}',params);
</script>
--}}
