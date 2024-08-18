{{-- TAGS HTML DE TEMPLATE DO MÓDULO --}}

	@include('project.galeria.templatesView')
	@include('project.galeria.modalsView')

{{-- ------------------------------- --}}
	
	<div class="row justify-content-center">
		<div class="col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-11">
				<div class="card custom-card mt-4">
					<!----------------------->
					<!-- HEADER TOPO       
					--------------------->
					
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="h2 fw-semibold mb-0 col-sm-5">GALERIAS</div>
								<div class="pesquisa col-xs-6 col-sm-4 mb-1">
									<div class="input-group">
										<input id="{{$prefix}}_search_input" type="text" class="form-control bg-light border-0 my-sm-1" placeholder="Pesquisar galeria"/>
									</div>
								</div>
								<div class="dropdow col-xs-6 col-sm-3 mt-1">
									<div class="btn-group d-flex w-100 my-2 my-sm-0"> 
										<button class="btn btn-icon btn-secondary add-nova-galeria" data-bs-toggle="tooltip">
											<i class="bi bi-plus-square m-2"></i> Nova galeria
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!----------------------->
					<!-- FIM HEADER TOPO -->
					<!----------------------->
					<hr style=" border: solid 1px #00000059; margin: 0; border-bottom: 0; ">

					<!---------------------->
					<!-- COLUNAS -->
					<!---------------------->

						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="p-0 card-body radio-button-group d-flex">
										<div class="owl-carousel d-flex flex-row flex-wrap" id="{{$prefix}}_colunas-table"></div>
									</div>
								</div>
							</div>
						</div>
					<!---------------------->
					<!-- FIM COLUNAS -->
					<!---------------------->
					<hr style=" border: solid 1px #00000059; margin: 0; border-bottom: 0; ">
				</div>
			<section>
				<div id="{{$prefix}}_dt_container" class="card-body dtbl-ctnr mt-3">
					<table id="{{$prefix}}_datatable"></table>
				</div>
			</section>
		</div>
	</div>


	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" integrity="sha512-nMNlpuaDPrqlEls3IX/Q56H36qvBASwb3ipuo3MxeWbsQB1881ox0cRv7UPTgBlriqoynt35KjEwgGUeUXIPnw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link		rel="stylesheet/css" type="text/css" href="/project/usuarios/usuariosStyle.min.css?v={{CACHE}}" />
	<link		refresh="true" rel="stylesheet" 	href="/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.css" />
	<link		rel="stylesheet" 					href="/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.theme.default.min.css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js" integrity="sha512-2ImtlRlf2VVmiGZsjm9bEyhjGW4dU7B6TNwh/hx/iSByxNENtj3WVE6o/9Lj4TJeVXPi4bnOIMXFIJJAeufa0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>	<script 	src="/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.min.js" ></script>
	<script		type="text/javascript" src="/project/galeria/galerias/galeriasScript.js?v={{CACHE}}"></script>
	
	
	
	
	<script type="text/javascript">
		@csrfToken('DATATABLE_MIDIA_PLUGINS')
		@csrfToken('galeriasScript')
		@csrfToken('officeCRSF')
		@csrfToken('testeUpload')
		var params						= {prefixo:'{{$prefix}}'};
		window.modulo['{ajax-href}']	= galeriasScript('{ajax-href}',params);
	</script>

