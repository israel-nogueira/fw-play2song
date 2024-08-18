
{{-- BLOCOS DE TEMPLATE --}}
@include('project.planos.template')

<!-- CSS EXTERNO  -->
<link rel="stylesheet/css" type="text/css" href="/project/planos/planosStyle.min.css" />
<style type="text/less"></style>
<style type="text/css"></style>

<div class="container-fluid">
	<div class="row mt-4">
		<div class="col-12">

			<div class="row justify-content-center">
				<div class="col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-11">
						<div class="card custom-card mt-4">
							<!----------------------->
							<!-- HEADER TOPO -->
							<!----------------------->

							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="h2 fw-semibold mb-0 col-sm-5">{{$TITULO}}</div>
										<div class="pesquisa col-xs-6 col-sm-4 mb-1">
											<div class="input-group">
												<input id="{{$prefix}}_search_input" type="text" class="form-control bg-light border-0 my-sm-1" placeholder="Search Contact" aria-describedby="search-contact-member" />
											</div>
										</div>
										<div class="dropdow col-xs-6 col-sm-3 mt-1">
											<div class="btn-group d-flex w-100 my-2 my-sm-0"> 
												<button class="btn btn-primary btn-sm dropdown-toggle show" type="button" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false"> Pesquisar:</button>										
												<button class="btn btn-icon btn-primary-light ms-2" data-bs-toggle="tooltip">
													<i class="bi bi-search"></i>
												</button>
												<ul id="{{$prefix}}_filtro-colum"  class="dropdown-menu"> </ul> 
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

		</div>
	</div>
</div>



@block('LISTA_BLOG')
@block('FILTROS')
@block('COLUNAS')


<link refresh="true" rel="stylesheet" href="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.css" />
<link rel="stylesheet" href="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.theme.default.min.css" />
<script src="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.min.js" ></script>
<script  typ="text/javascript" src="/project/planos/planosScript.js?v={{CACHE}}"></script>
<script type="text/javascript">
	@csrfToken('planos')
	var params						= {
		prefixo:'{{$prefix}}',
		modulo:'planos',
	};
	window.modulo['{ajax-href}']	= planosScript('{ajax-href}',params);
</script>
