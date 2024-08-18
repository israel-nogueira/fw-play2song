{{-- TAGS HTML DE TEMPLATE DO MÓDULO --}}

	@include('project.galeria.templatesView')
	@include('project.galeria.modalsView')


<style>
.thumb {
  background-color: #ffffff;
  border-radius: 3px;
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.1);
  margin-top: 30px;
  padding-bottom: 10px;
  padding-left: 10px;
  padding-right: 10px;
  padding-top: 10px;
  width: 100%;
  position: relative;
}
.thumb-img {
  border-radius: 2px;
  overflow: hidden;
  width: 100%;
}
.gal-detail h4 {
  margin: 16px auto 10px auto;
  width: 80%;
  white-space: nowrap;
  display: block;
  overflow: hidden;
  text-overflow: ellipsis;
}
.ga-border {
  height: 3px;
  width: 40px;
  background-color: #228bdf;
  margin: 10px auto;
}
.gal-detail .delete i{
	font-size: 26px;
	top: 5px;
	position: absolute;
	left: 4px;
	color: #F00;
}
.gal-detail .delete-thumb{
	position: relative;
	float: right;
	margin-bottom: -40px;
	right: 7px;
	background-color: #FFF;
	padding: 10px;
	height: 35px;
	width: 34px;
	top: 7px;
	cursor: pointer;
	
	
}
.gal-detail .detalhes-thumb{
	cursor: pointer;
	position: relative;
    float: left;
    margin-bottom: -40px;
    left: 7px;
    background-color: #FFF;
    padding: 10px;
    height: 35px;
    width: 34px;
    top: 7px;
	

}
.overlayThumb{
	position: absolute;
	background: linear-gradient(to bottom,  rgba(0,0,0,0) 0%,rgba(0,0,0,1) 100%);
    width: calc(100% - 20px);
    height: auto;
    min-height: 80px;
    left: 0;
    position: absolute;
    bottom: 0;
	margin: 10px;
	display: grid;
	grid-template-rows: 1fr auto;

}
.overlayThumb .titulo{
	color: #FFF;
    font-size: 15px;
    padding:  0 10px;
    font-weight: 800;
    text-shadow: 2px 2px #000000;
	align-self: flex-end; 
}
.overlayThumb .original{
	color: #ffffffb3;
    font-size: 9px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    padding: 5px;
    letter-spacing: 0.5px;
}
.overlayThumb .descricao{
	color: #FFF;
    font-size: 15px;
    padding:  0 10px;
    font-weight: 100;
    text-shadow: 2px 2px #000000;
	align-self: flex-end; 
	align-self: end;
}

</style>

	<div class="row justify-content-center">
		<div class="col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-11">
				<div class="card custom-card mt-4">
					<!----------------------->
					<!-- HEADER TOPO       
					--------------------->
					
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="h2 fw-semibold mb-0 col-sm-5">{{ $TITULO }}</div>
								<div class="pesquisa col-xs-6 col-sm-4 mb-1">
									<div class="input-group">
										<input id="{{$prefix}}_search_input" type="text" class="form-control bg-light border-0 my-sm-1" placeholder="Pesquisar galeria"/>
									</div>
								</div>
								<div class="dropdow col-xs-6 col-sm-3 mt-1">
									<div class="btn-group d-flex w-100 my-2 my-sm-0"> 
										<button id="upload-img-galerias" class="btn btn-icon btn-secondary" data-bs-toggle="tooltip">
											<i class="bi bi-plus-square m-2"></i> UPLOAD
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


	<link 		rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" integrity="sha512-nMNlpuaDPrqlEls3IX/Q56H36qvBASwb3ipuo3MxeWbsQB1881ox0cRv7UPTgBlriqoynt35KjEwgGUeUXIPnw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link		rel="stylesheet/css" type="text/css" href="/project/usuarios/usuariosStyle.min.css?v={{CACHE}}" />
	<link		refresh="true" rel="stylesheet" 	href="/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.css" />
	<link		rel="stylesheet" 					href="/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.theme.default.min.css" />
	<script 	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js" integrity="sha512-2ImtlRlf2VVmiGZsjm9bEyhjGW4dU7B6TNwh/hx/iSByxNENtj3WVE6o/9Lj4TJeVXPi4bnOIMXFIJJAeufa0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script 	src="/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.min.js" ></script>

	<script		type="text/javascript" src="/project/galeria/fotos/fotosScript.js?v={{CACHE}}"></script>

<script type="text/javascript">
	@csrfToken('fotos')
	@csrfToken('galeriasScript')
	@csrfToken('officeCRSF')
	@csrfToken('formUpload')
	var params						= {prefixo:'{{$prefix}}'};
	window.modulo['{ajax-href}']	= fotosScript('{ajax-href}',params);
</script>
