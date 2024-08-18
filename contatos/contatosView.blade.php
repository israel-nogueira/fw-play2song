<!-- CSS EXTERNO  -->
<link rel="stylesheet/css" type="text/css" href="/project/contatos/contatosStyle.min.css" />

<style type="text/less">
	// LESS aqui
</style>

<style type="text/css">
	/* CSS aqui */
</style>

{!!system\lib\system::langView()!!}


<div class="container-fluid">
	<div class="row mt-4">
		<div class="col-12">
			<div class="team-members" id="team-members">
				<div class="row">
					<div class="col-12">
						<div class="card custom-card">
							<div class="card-body">
								<div class="team-header">

									

									<form id="dados-template-contatos">
										<div class="container">
									 
											<div class="row justify-content-center align-items-center">
													<div class="col-lg-4 order-1">
														<div class="contact-info">
																<div class="section-title center-align">
																	<h2>Textos da lateral</h2>
																</div>  
																<div class="pb-30 mb-30" data-animation="fadeInDown animated">
																	<div><label for="">Topo Site:</label>		<input name="TOP_TITLE" class="form-control" type="text"></div>
																	<div><label for="">Endereço Titulo:</label>	<input name="ADRESS_TITLE" class="form-control" type="text"></div>
																	<div><label for="">Endereço:</label>		<input name="ADRESS_TEXT" class="form-control" type="text"></div>
																	<div><label for="">Horário Titulo:</label>	<input name="HORARIOS_TITLE" class="form-control" type="text"></div>
																	<div><label for="">Horário:</label>			<input name="HORARIOS_TEXT" class="form-control" type="text"></div>
																	<div><label for="">Contatos Titulo:</label>	<input name="EMAILS_TITLE" class="form-control" type="text"></div>
																	<div><label for="">Contatos:</label>		<input name="EMAILS_TEXT" class="form-control" type="text"></div>
																	<div><label for="">Botão:</label>					<input name="TEXTO_BOTAO" class="form-control" type="text"></div>

																</div>
														</div>							
													</div>
													<div class="col-lg-8 order-2">
														<div class="contact-bg02">
															<div class="section-title center-align">
																<h2>
																	PlaceHolders do form.
																	<button id="salva-dados-contatos" class="btn btn-block btn-success">Salvar</button>
																</h2>
															</div>                                
															<div class="pb-30 mb-30" data-animation="fadeInDown animated">
																<div><label for="">Titulo do formulário:</label>	<input name="TITULO_FORM" class="form-control" type="text"></div>
																<div><label for="">Nome:</label>					<input name="PLACEHOLDER_NOME"  class="form-control" type="text"></div>
																<div><label for="">Email:</label>					<input name="PLACEHOLDER_EMAIL"  class="form-control" type="text"></div>
																<div><label for="">Telefone:</label>				<input name="PLACEHOLDER_TELEFONE"  class="form-control" type="text"></div>
																<div><label for="">Assunto:</label>					<input name="PLACEHOLDER_ASSUNTO"  class="form-control" type="text"></div>
																<div><label for="">texto:</label>					<input name="PLACEHOLDER_TEXTO"  class="form-control" type="text"></div>
															</div>
															




														</div>    
													
													</div>
												</div>
												
											</div>
											
										</form>
										














								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script  typ="text/javascript" src="/project/contatos/contatosScript.js?v={{CACHE}}"></script>
<script type="text/javascript">
	@csrfToken('contatos')
	var params						= {
		modulo:'contatos'
	};
	window.modulo['{ajax-href}']	= contatosScript('{ajax-href}',params);
</script>
