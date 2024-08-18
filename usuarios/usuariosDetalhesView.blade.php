	<link rel="stylesheet/css" type="text/css" href="/project/usuarios/usuariosStyle.css?v={{CACHE}}" />

	<style>
		.abas_detalhes_user{
			border-radius: 5px 5px 0 0;
			margin: 0px -4.5px;
			border-bottom: 0;
		}
	</style>
	{{-- <div class="row d-none">
		<div class="col-12 col-sm-auto mb-3 ">
			<div class="mx-auto" style="width: 140px;">
				<div class="d-flex justify-content-center align-items-center rounded" style="height: 140px; background-color: rgb(233, 236, 239);">
					<span style="color: rgb(166, 168, 170); font: bold 8pt Arial;">140x140</span>
				</div>
			</div>
		</div>
		<div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
			<div class="text-center text-sm-left mb-2 mb-sm-0">
				<h4 class="pt-sm-2 pb-1 mb-0 text-nowrap">John Smith</h4>
				<p class="mb-0">@johnny.s</p>
				<div class="text-muted"><small>Last seen 2 hours ago</small></div>
				<div class="mt-2">
					<button class="btn btn-primary" type="button">
						<i class="fa fa-fw fa-camera"></i>
						<span>Change Photo</span>
					</button>
				</div>
			</div>

		</div>
		<hr>
	</div> --}}


	<div class="row justify-content-center detalhes-usuario" data-uid="{{$USER['UID']}}">
		<div class="col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-11">
			

			<div class="card custom-card mt-4">
				<div class="card-header justify-content-between">
					<div>
						<button href="/office/usuarios" ajax-nav="true" type="button" class="btn btn-light btn-wave btn-sm waves-effect waves-light">Voltar a lista</button>
					</div>
					<div class="card-title"> DETALHES DE USUARIO </div>
				</div>
				


				<div class="card-body">
					<div class="row">

						<div class="col-12 justify-content-center d-sm-none mb-4">
							<select class="form-select" id="select-detalhes-user">
								<option value="#detalhes-user-dados-pessoais" selected>Dados pessoais</option>
								<option value="#detalhes-user-localizacao">Localização</option>
								<option value="#seguranca">Segurança</option>
								<option value="#admin">Admin</option>
							</select>
						</div>
						<div class="col-sm-3 d-none d-sm-block">
							<div class="nav flex-column nav-pills me-3 tab-style-7" id="v-pills-tab" role="tablist" aria-orientation="vertical">
								<button class="nav-link text-start active" id="detalhes-user-dados-pessoais" data-bs-toggle="pill" data-bs-target="#main-profile" type="button" role="tab" aria-controls="main-profile" aria-selected="true" >
									<i class="ri-shield-user-line me-1 align-middle d-inline-block"></i>Dados pessoais
								</button>
								<button class="nav-link text-start" id="detalhes-user-localizacao" data-bs-toggle="pill" data-bs-target="#man-password" type="button" role="tab" aria-controls="man-password" aria-selected="false">
									<i class="ri-u-disk-line me-1 align-middle d-inline-block"></i>Localização
								</button>
								<button class="nav-link text-start" id="seguranca" data-bs-toggle="pill" data-bs-target="#main-billing" type="button" role="tab" aria-controls="main-billing" aria-selected="false">
									<i class="ri-bill-line me-1 align-middle d-inline-block"></i>Segurança
								</button>
								<button class="nav-link text-start mb-1" id="main-email-tab" data-bs-toggle="pill" data-bs-target="#main-email" type="button" role="tab" aria-controls="main-email" aria-selected="false">
									<i class="ri-mail-line me-1 align-middle d-inline-block"></i>Admin
								</button>
							</div>
						</div>
						<div class="col-sm-9">
							<div class="tab-content" id="v-pills-tabContent">
								<div class="tab-pane show active" id="main-profile" role="tabpanel" tabindex="0">								
										<form class="form-detalhes-user">
											<input type="hidden" name="TYPE" value="dados_pessoais">
											<div class="card-header justify-content-between" style="padding: 0 0 10px 20px;">
												<div class="card-title" style="width: 100%;"> 
													Dados pessoais <div class="text-muted" style="font-weight: 100;text-align: right;position: absolute;right: 0;font-size: 11px;top: 0;">Usuário criado em: {{$USER['CRIADO_EM']}}</div>
												</div>
											</div>
											<div class="row">
												<div class="col">
													<div class="row">
														<div class="col-sm-4 mt-3">
															<div class="form-group">
																<label>Nome completo</label>
																<input class="form-control" type="text" name="NOME" placeholder="Nome completo" value="{{$USER['NOME']}}">
															</div>
														</div>
														<div class="col-sm-4 mt-3">
															<div class="form-group">
																<label>CPF</label>
																<input class="form-control" type="text" name="CPF" placeholder="CPF" value="{{$USER['CPF']}}">
															</div>
														</div>
														<div class="col-sm-4 mt-3">
															<div class="form-group">
																<label>RG</label>
																<input class="form-control" type="text" name="RG" placeholder="RG" value="{{$USER['RG']}}">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-4 mt-3">
															<div class="form-group">
																<label>Email</label>
																<input class="form-control" name="EMAIL" type="text" placeholder="user@example.com" value="{{$USER['EMAIL']}}">
															</div>
														</div>
														<div class="col-sm-4 mt-3">
															<div class="form-group">
																<label>Whatsapp</label>
																<input class="form-control" name="WHATSAPP"  type="text" placeholder="Whatsapp" value="{{$USER['WHATSAPP']}}">
															</div>
														</div>
														<div class="col-sm-4 mt-3">
															<div class="form-group">
																<label>Tel Fixo</label>
																<input class="form-control" name="TELEFONE" type="text" placeholder="Telefone" value="{{$USER['TELEFONE']}}">
															</div>
														</div>
													</div>
													<div class="row mt-3">
														<div class="col">
															<div class="form-group">
																<label>Observações</label>
																<textarea class="form-control" name="OBS" rows="5" placeholder="Observações...">{{$USER['OBS']}}</textarea>
															</div>
														</div>
													</div>
													<div class="row mt-3">
														<div class="col d-flex justify-content-end">
															<button class="btn btn-primary" type="submit">Salvar alterações</button>
														</div>
													</div>
												</div>
											</div>
										</form>
								</div>
								<div class="tab-pane" id="man-password" role="tabpanel" tabindex="0">
									<form class="form-detalhes-user">
										<input type="hidden" name="TYPE" value="localizacao">
										<div class="card-header justify-content-between" style="padding: 0 0 10px 20px;">
											<div class="card-title"> Localização </div>
										</div>
										<div class="row gutters">
											<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
												<div class="form-group"> 
													<label for="Street">Logradouro</label> 
													<input type="name" class="form-control" name="LOGRADOURO" placeholder="Logradouro:" value="{{$USER['LOGRADOURO']}}">
												</div>
											</div>
											<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
												<div class="form-group"> 
													<label for="ciTy">Cidade</label>
													<input type="name" class="form-control" name="CIDADE" placeholder="Cidade:" value="{{$USER['CIDADE']}}">
												</div>
											</div>
											<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
												<div class="form-group">
													<label for="sTate">Estado</label>
													<input type="text" class="form-control" name="UF" placeholder="Estado:" value="{{$USER['ESTADO']}}">
												</div>
											</div>
											<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
												<div class="form-group">
													<label for="zIp">CEP</label> 
													<input type="text" class="form-control" name="CEP" placeholder="CEP:" value="{{$USER['CEP']}}">
												</div>
											</div>
											<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
												<div class="form-group">
													<label for="Numero">Numero</label> 
													<input type="text" class="form-control" name="NUMERO" placeholder="Numero:" value="{{$USER['NUMERO']}}">
												</div>
											</div>
											<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
												<div class="form-group">
													<label for="Complemento">Complemento</label> 
													<input type="text" class="form-control" name="COMPLEMENTO" placeholder="Complemento:" value="{{$USER['COMPLEMENTO']}}">
												</div>
											</div>
										</div>
										<div class="row mt-3">
											<div class="col d-flex justify-content-end">
												<button class="btn btn-primary" type="submit">Salvar alterações</button>
											</div>
										</div>
									</form>
								</div>

								<div class="tab-pane" id="main-team" role="tabpanel" aria-labelledby="main-team-tab" tabindex="0">
									
								</div>

									<div class="tab-pane" id="main-billing" role="tabpanel" aria-labelledby="main-billing-tab" tabindex="0">
										<div class="card-header justify-content-between" style="padding: 0 0 10px 20px;">
											<div class="card-title"> Segurança </div>
										</div>
										<div class="row">

											<ul class="nav nav-tabs nav-tabs-secutiry-user justify-content-center">
												<li class="nav-item"><a href="#loginsenha"			class="nav-link abas_security_user active">Senha</a></li>
												<li class="nav-item"><a href="#2fa"					class="nav-link abas_security_user">2FA</a></li>
												<li class="nav-item"><a href="#pin"					class="nav-link abas_security_user">PÌN</a></li>
												<li class="nav-item"><a href="#pessoaconfianca"		class="nav-link abas_security_user">Amigo</a></li>
												<li class="nav-item"><a href="#webauthn"			class="nav-link abas_security_user">WebAuthn</a></li>
											</ul>

												<form style="display:none;"  class="form-security"  id="loginsenha">
													<input type="hidden" name="TYPE" value="loginsenha">
													<div class="row">
														<div class="col-12">
															<div class="row">

																<div class="col-12 mt-3 text-center" >
																	<img src="/project/usuarios/img/password.svg" style="width:100px;">
																</div>
															</div>
															<div class="row">
																<div class="col-12 mt-3 text-center" >
																	<p>
																		Na nossa busca contínua por garantir a segurança dos seus dados, estamos introduzindo novos requisitos para a criação e proteção de senhas.
																	</p>
																	<p>
																		Agora, exigimos que as senhas atendam a critérios mais rigorosos:
																	</p>
																</div>
															</div>
															<div class="row">
																<div class="col-12 mt-3">
																	<div class="form-group">
																		<label>Senha atual</label>
																		<input class="form-control" name="O_PASSWORD"  type="password" placeholder="••••••">
																	</div>
																</div>

																<div class="col-12 mt-3">
																	<div class="form-group">
																		<label>Nova senha</label>
																		<input class="form-control" name="N_PASSWORD"  type="password" placeholder="••••••">
																	</div>
																</div>

																<div class="col-12 mt-3">
																	<div class="form-group">
																		<label>Repita a senha</label>
																		<input class="form-control" name="RN_PASSWORD" type="password" placeholder="••••••"></div>
																</div>

															</div>

														</div>
													</div>
													<div class="row">
														<div class="col d-flex justify-content-end">
															<button class="btn btn-primary" type="submit">Salvar alterações</button>
														</div>
													</div>
												</form>

												<form style="display:none;" class="form-security"  id="2fa">
													<input type="hidden" name="TYPE" value="2fa">
													<div class="row">
														<div class="col-12 mt-3 text-center" >
															<img src="/project/usuarios/img/2FA.svg" style="width:100px;">
														</div>
													</div>
													<div class="row">
														<div class="col-12 mt-3 text-center" >
															<p>
																A Autenticação em Duas Etapas (2FA) é uma camada adicional de segurança projetada para proteger sua conta contra acessos não autorizados.
															</p>
															<p>Com a 2FA habilitada, você precisará fornecer duas formas de identificação para fazer login na sua conta: 
																sua senha tradicional e um código de segurança único, geralmente enviado para seu dispositivo móvel.
															</p>
														</div>
													</div>
													<div class="row">
														<div class="col d-flex justify-content-end">
															<button class="btn btn-primary" type="submit">Salvar alterações</button>
														</div>
													</div>
												</form>


												<form style="display:none;"  class="form-detalhes-user form-security"  id="pin">
													<input type="hidden" name="TYPE" value="pin">											
													<div class="container">

														<div class="col-12 mt-3 text-center" >
															<img src="/project/usuarios/img/PIN.svg" style="width:100px;">
														</div>
													<div class="row">
														<div class="col-12 mt-3 text-center" >
															<p>
																Introduzimos o recurso de PIN de 4 dígitos para proporcionar uma maneira rápida e segura de acessar sua conta e recuperá-la em situações adversas.
															</p>
															<p>
																Com o PIN, você tem um método simplificado e conveniente para garantir a segurança de sua conta, sem comprometer a facilidade de uso.
															</p>
														</div>
													</div>
													<div class="row mt-4">
															<div class="col-sm">
																<label class="form-label">PIN Atual</label> 
																<input type="text" name="ATUAL" class="form-control" placeholder="PIN Atual" aria-label="PIN Atual">
															</div>
															<div class="col-sm">
																<label class="form-label">Novo PIN</label> 
																<input type="text" name="NOVO" class="form-control" placeholder="Novo PIN" aria-label="Novo PIN">
															</div>
															<div class="col-sm mb-3">
																<label class="form-label">Confirme o PIN</label>
																<input type="text" name="REPETE" class="form-control" placeholder="Confirme o PIN" aria-label="Confirme o PIN">
															</div>
															<div class="col-sm d-flex align-items-center justify-content-end">
																<button class="btn btn-primary w-100" type="submit" style="margin-top:10px;">Salvar</button>
															</div>
														</div>
													</div>

												</form>




												<form style="display:none;"  class="form-security"  id="pessoaconfianca">
													<input type="hidden" name="TYPE" value="pessoaconfianca">
													<div class="row">
														<div class="col-12 mt-3 text-center" >
															<img src="/project/usuarios/img/amigo_confianca.svg" style="width:100px;">
														</div>
													</div>
													<div class="row">
														<div class="col-12 mt-3 text-center" >
															<p>
																O recurso "Amigo" é uma ferramenta de segurança adicional que oferecemos para ajudá-lo a recuperar o acesso à sua conta em situações de emergência.
															</p>
															<p>
																Ao definir um ou mais amigos de confiança, você pode garantir que haja uma maneira confiável de recuperar sua conta, mesmo se você esquecer sua senha ou perder o acesso aos seus métodos de autenticação usuais.
															</p>
														</div>
													</div>

													<div class="row">
														<div class="col d-flex justify-content-end">
															<button class="btn btn-primary" type="submit">Salvar alterações</button>
														</div>
													</div>
												</form>

												<form style="display:none;"  class="form-security"  id="webauthn">
													<input type="hidden" name="TYPE" value="webauthn">
													<div class="row">
														<div class="col-12 mt-3 text-center" >
															<img src="/project/usuarios/img/devices.svg" style="width:100px;">
														</div>
													</div>
													<div class="row">
														<div class="col-12 mt-3 text-center" >
															<p>
																O WebAuthn é uma avançada e segura ferramenta de autenticação que oferecemos para garantir a proteção e a recuperação confiável de sua conta. 
															</p>
															<p>
																Com o WebAuthn, você pode desfrutar de uma experiência de login simples e altamente segura, sem a necessidade de senhas tradicionais.
															</p>
														</div>
													</div>

													<div class="row mt-3">
														<div class="col-12 mt-3 text-center" >
																<div class="mb-3">
																	<label for="nomeDispositivo" class="form-label">Digite o nome deste dispositivo</label>
																	<div class="input-group">
																		<input type="text" class="form-control" id="nomeDispositivo" placeholder="Nome do dispositivo">
																		<button class="btn btn-primary" type="submit" id="newWebAuthn">Cadastrar WebAuthn</button>
																	</div>
																</div>
														</div>
													</div>
													<div class="row mt-3">
														<div class="card-header justify-content-between" style="padding: 0 0 10px 20px;">
															<div class="card-title"> Seus dispositivos cadastrados </div>
														</div>

														<ul class="list-group" id="lista-dispositivo">


														</ul>
													</div>

													



													

												</form>

												
											

									
										</div>
									</div>
								<div class="tab-pane" id="main-email" role="tabpanel" aria-labelledby="main-email-tab" tabindex="0">
									<form class="form-detalhes-user">
										<input type="hidden" name="TYPE" value="acesso">
										<div class="card-header justify-content-between" style="padding: 0 0 10px 20px;">
											<div class="card-title"> Admin </div>
										</div>
										
										<div class="row">
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

	<template id="lista-dispositivos-template">
		[#LIST]


    <li class="list-group-item d-flex justify-content-between align-items-center">
		[NAME]
		<button data-uid="[ID]" type="button" class="btn btn-danger delete-dispositivo">Excluir</button>
	</li>





		[/LIST]

									
	</template>



	{{-- <link refresh="true" rel="stylesheet" href="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous" referrerpolicy="no-referrer" /> --}}
	{{-- <link rel="stylesheet" href="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" /> --}}
	{{-- <script src="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> --}}
	<script  typ="text/javascript" src="/project/usuarios/usuariosScript.js?v={{CACHE}}"></script>

	<script type="text/javascript" data-user="true">
		@csrfToken('FORM_AUTHN')
		@csrfToken('DETALHES_USER')
		var params	= {
			prefixo:'{{$prefix}}',
			CHALLENGE:'{{ CHALLENGE }}',
			DOMINIO:'{{ DOMINIO }}',
			COPYRIGHT_NAME:'{{ COPYRIGHT_NAME }}',
			UUID:'{{ UUID }}',
			USER_NOME:'{{ USER["NOME"] }}',
			USER_EMAIL:'{{ USER["EMAIL"] }}',
		};

		window.modulo['{ajax-href}']	= new usuariosScript('{ajax-href}',params);
		window.modulo['{ajax-href}']	 .startDetalhes();
		// use \system\lib\system;


	</script>
