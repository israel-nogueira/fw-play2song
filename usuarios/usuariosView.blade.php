	<link rel="stylesheet/css" type="text/css" href="/project/usuarios/usuariosStyle.min.css?v={{CACHE}}" />
	
	<div class="row justify-content-center">
		<div class="col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-11">
				<div class="card custom-card mt-4 d-none">
					<!----------------------->
					<!-- HEADER TOPO -->
					<!----------------------->

					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="h2 fw-semibold mb-0 col-sm-5">Lista de usuários</div>
								<div class="pesquisa col-xs-6 col-sm-4 mb-1">
									<div class="input-group">
										<input id="{{$prefix}}_search_input" type="text" class="form-control bg-light border-0 my-sm-1" placeholder="Search Contact" aria-describedby="search-contact-member" />
									</div>
								</div>
								<div class="dropdow col-xs-6 col-sm-3 mt-1">
									<div class="btn-group d-flex w-100 my-2 my-sm-0"> 
										<button class="btn btn-primary btn-sm dropdown-toggle show" type="button" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false"> 
											Pesquisar:
										</button>										
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


	<template id="{{$prefix}}_lista_table">
		<li>
			<div class="d-flex align-items-top flex-wrap">
				<div class="me-2">
					<span class="avatar avatar-sm avatar-rounded">
						<img src="[AVATAR]" alt="" />
					</span>
				</div>
				<div class="flex-fill">
					<p class="fw-semibold mb-0">[NOME]</p>
					<span class="text-muted fs-12">[EMAIL]</span>
			</div>
			<div class="fw-semibold fs-15 d-none d-md-block">[UID]</div>
			</div>
		</li>

	</template>

	<template id="{{$prefix}}_lista_carrinho">
		<tr>
			<td>
				<div class="d-flex align-items-center">
					<div class="me-3"> 
						<span class="avatar avatar-xxl bg-light">
							<img src="/system/placeholder-img/100x100/949eb7/192d55" alt="">
						</span>
					</div>
					<div>
						<div class="mb-1 fs-14 fw-semibold">
							<a href="javascript:void(0);">Hiroma grey Hoodie (Unisex wear)</a>
						</div>
						<div class="mb-1">
							<span class="me-1">Size:</span>
							<span class="fw-semibold text-muted">Large</span>
						</div>
						<div class="mb-1">
							<span class="me-1">Color:</span>
							<span class="fw-semibold text-muted">Grey<span class="badge bg-success-transparent ms-3">In Offer</span>
							</span>
						</div>
					</div>
				</div>
			</td>
			<td>
				<div class="fw-semibold fs-14"> $459 </div>
			</td>
			<td class="product-quantity-container">
				<div class="input-group border rounded flex-nowrap"> <button class="btn btn-icon btn-light input-group-text flex-fill product-quantity-minus"><i class="ri-subtract-line"></i></button> <input type="text" class="form-control form-control-sm border-0 text-center w-100" aria-label="quantity" id="{{$prefix}}_product-quantity" value="2"> <button class="btn btn-icon btn-light input-group-text flex-fill product-quantity-plus"><i class="ri-add-line"></i></button> </div>
			</td>
			<td>
				<div class="fs-14 fw-semibold"> $918 </div>
			</td>
			<td> <button class="btn btn-icon btn-success me-1" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Add To Wishlist"><i class="ri-heart-line"></i></button> <button class="btn btn-icon btn-danger btn-delete" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Remove From cart"> <i class="ri-delete-bin-line"></i> </button> </td>
		</tr>
	</template>

	<template id="{{$prefix}}_lista_vitrine">
		<div class="col-xxl-3 col-xl-6 col-lg-6 col-md-6 col-sm-12">
			<div class="card custom-card product-card">
				<div class="card-body">
					<a href="product-details.html" class="product-image"> 
						<img src="/system/placeholder-img/300x350/949eb7/192d55/50" class="card-img mb-3" alt="...">
					</a> 
					<div class="product-icons"> 
						<a href="wishlist.html" class="wishlist">
							<i class="ri-heart-line"></i>
						</a>
						<a href="cart.html" class="cart">
							<i class="ri-shopping-cart-line"></i>
						</a>
						<a href="product-details.html" class="view">
							<i class="ri-eye-line"></i>
						</a>
					</div>
					<p class="product-name fw-semibold mb-0 d-flex align-items-center justify-content-between">
						Dapzem &amp; Co
						<span class="float-end text-warning fs-12">
							4.2
							<i class="ri-star-s-fill align-middle ms-1 d-inline-block"></i>
						</span>
					</p>
					<p class="product-description fs-11 text-muted mb-2">Branded hoodie ethnic style</p>
					<p class="mb-1 fw-semibold fs-16 d-flex align-items-center justify-content-between"><span>$229<span class="text-muted text-decoration-line-through ms-1 d-inline-block op-6">$1,799</span></span><span class="badge bg-secondary-transparent float-end fs-10">72% off</span></p>
					<p class="fs-11 text-success fw-semibold mb-0 d-flex align-items-center"> <i class="ti ti-discount-2 fs-16 me-1"></i>Offer Price $229 </p>
				</div>
			</div>
		</div>
	</template>

	<template id="{{$prefix}}_lista_profiles">
		<div class="col-xxl-4 col-xl-6 col-lg-6 col-md-6 col-sm-12">
			<div class="card custom-card team-member-card usuario-profile-list">
				<div class="teammember-cover-image header-usuario" style="background-image: url([HEADER]);">
						<span class="avatar avatar-xl avatar-rounded">
							<img src="[AVATAR]">
						</span>
						<a href="javascript:void(0);" class="team-member-star text-fixed-white star [SEGUINDO.ICON_CLASS]">
							<i class="bi bi-star"></i>
						</a>
					</div>
				<div class="dados-combo card-body p-0">
					<div class="dados1 d-flex flex-wrap align-item-center mt-sm-0 mt-5 justify-content-between p-3">
						<div class="team-member-details flex-fill">
							<p class="mb-0 fw-semibold fs-16 text-truncate">
								<a ajax-nav="true" href="/office/usuario/detalhes/[UID]">[NOME]</a>
							</p>
							<p class="mb-0 fs-12 text-muted text-truncate">#[UID]</p>
							<p class="mb-0 fs-12 text-muted text-truncate">@[LOGIN]</p>
							<p class="mb-0 fs-12 text-muted text-truncate">[EMAIL]</p>
							<p class="mb-0 fs-12 text-muted text-truncate">
								<span class="badge bg-danger [BLOQUEADO.ICON_CLASS]">Bloqueado</span>
							</p>
						</div>
						<div class="dropdown">
							<button class="btn btn-sm btn-icon btn-light btn-wave waves-effect waves-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="bi bi-three-dots-vertical"></i> 
							</button> 
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/office/usuario/detalhes/[UID]" ajax-nav="true" ><i style="margin-right: 10px;" class="bi bi-person-bounding-box"></i>Acessar profile</a></li>
								<li><a class="dropdown-item" href="#"><i style="margin-right: 10px;" class="[SEGUINDO.ICON]"></i>[SEGUINDO.STRING]</a></li>
								<li><a class="dropdown-item" href="#"><i style="margin-right: 10px;" class="[BLOQUEADO.ICON]"></i>[BLOQUEADO.STRING]</a></li>
								<li><a class="dropdown-item" href="#"><i style="margin-right: 10px;" class="[SEGUINDO.ICON]"></i>[Solicitar/Desfazer amizade]</a></li>
							</ul>
						</div>
					</div>
					<div class="dados2 team-member-stats d-sm-flex align-items-center justify-content-evenly row" style="display:none!important">
						<div class="col text-center p-3">
							<p class="fw-semibold mb-0">Entrou em</p>
							<span class="text-muted fs-12">[CRIADO_EM]</span> 
						</div>
						<div class="col text-center p-3">
							<p class="fw-semibold mb-0">Seuidores</p>
							<span class="text-muted fs-12">[SEGUIDORES]</span> 
						</div>
						<div class="col text-center p-3">
							<p class="fw-semibold mb-0">Seguindo</p>
							<span class="text-muted fs-12">[SEGUINDO_COUNT]</span> 
						</div>
					</div>
				</div>
				<div class="dados-footer card-footer text-center d-none">
					<div class="btn-list">
						<div class="btn-list">
							<a href="[FACEBOOK]" target="_blank" class="btn btn-sm btn-icon btn-light btn-wave waves-effect waves-light"> 
								<i class="ri-facebook-line fw-bold"></i> 
							</a> 
							<a href="[TWITTER]" target="_blank" class="btn btn-sm btn-icon btn-secondary-light btn-wave waves-effect waves-light"> 
								<i class="ri-twitter-line fw-bold"></i> 
							</a> 
							<a href="[INSTAGRAM]" target="_blank" class="btn btn-sm btn-icon btn-warning-light btn-wave waves-effect waves-light"> 
								<i class="ri-instagram-line fw-bold"></i> 
							</a> 
							<a href="[YOUTUBE]" target="_blank" class="btn btn-sm btn-icon btn-danger-light btn-wave waves-effect waves-light"> 
								<i class="ri-youtube-line fw-bold"></i> 
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</template>

	<template id="{{$prefix}}_lista_cards">
			<div class="col-xxl-4 col-xl-6 col-lg-6 col-md-6 col-sm-12">
				<div class="card custom-card">
					<div class="card-body contact-action">
						<div class="d-flex align-items-center">
							<div class="d-flex flex-fill flex-wrap gap-2">
								<div class="avatar avatar-xl avatar-rounded me-3">
									<img src="[AVATAR]" alt="" />
								</div>
								<div class="col-xxl-6 col-xl-8 col-md-12 col-lg-8">
									<h6 class="mb-1 fw-semibold">[NOME]</h6>
									<p class="mb-1 text-muted contact-mail text-truncate">[EMAIL]</p>
									<p class="fw-semibold fs-11 mb-0 text-primary">[TELEFONE]</p>
									<p class="fw-semibold fs-11 mb-0 text-primary">[LOGIN]</p>
								</div>
							</div>
						</div>
						<div style=" position: absolute; top: 10px; right: 10px; ">
							<div class="dropdown">
								<button class="btn btn-sm btn-icon btn-light btn-wave waves-effect waves-light" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-2-fill"></i></button>
								<ul class="dropdown-menu">
									<li> <a class="dropdown-item" href="contacts.html#"><i class="ri-share-line me-2 align-middle d-inline-block"></i>Share</a> </li>
									<li> <a class="dropdown-item" href="contacts.html#"><i class="ri-phone-line me-2 align-middle d-inline-block"></i>Call</a> </li>
									<li> <a class="dropdown-item" href="contacts.html#"><i class="ri-chat-2-line me-2 align-middle d-inline-block"></i>Message</a> </li>
									<li> <a class="dropdown-item" href="contacts.html#"><i class="ri-video-chat-line me-2 align-middle d-inline-block"></i>Video Call</a> </li>
									<li> <a class="dropdown-item" href="contacts.html#"><i class="ri-delete-bin-5-line me-2 align-middle d-inline-block"></i>Delete</a> </li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

	</template>

	<template id="{{$prefix}}_lista_timeline">
		<li>
			<div class="timeline-time text-end"> 
				<span class="date">FRIDAY</span>
				<span class="time d-inline-block">02:31</span>
			</div>
			<div class="timeline-icon"> 
				<a href="javascript:void(0);"></a>
			</div>
			<div class="timeline-body">
				<div class="d-flex align-items-top timeline-main-content flex-wrap mt-0">
					<div class="avatar avatar-md online me-3 avatar-rounded mt-sm-0 mt-4"> 
						<img alt="avatar" src="/project/public/assets/images/faces/4.jpg"> </div>
					<div class="flex-fill">
						<div class="d-flex align-items-center">
							<div class="mt-sm-0 mt-2">
								<p class="mb-0 fs-14 fw-semibold">Emperio</p>
								<p class="mb-0 text-muted">Project assigned by the manager all<span class="badge bg-primary-transparent fw-semibold mx-1">files</span>and<span class="badge bg-primary-transparent fw-semibold mx-1">folders</span>were included
							</p>
							</div>
							<div class="ms-auto">
								<span class="float-end badge bg-light text-muted timeline-badge"> 24,Oct 2022 </span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</li>
	</template>



	<template id="{{$prefix}}_coluns-by-filter">
		<li>
			<a class="dropdown-item [active]" href="#" data-index="[index]" data-name="[name]">
				[sTitle]
			</a>
		</li>
	</template>

	<template id="{{$prefix}}_template_colunas">
		<div data-index="[index]" data-orderable="[orderable]" class="item flex-fill abinha asc" style="border-radius:0;"> 
			[sTitle]
			<svg class="setas_header"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" width="24" height="24" >
				<path d="M12 5L6 11H18Z" fill="#333" transform="translate(0, -4)" class="seta_asc"/>
				<path d="M12 19L18 13H6Z" fill="#333" transform="translate(0, 4)" class="seta_desc"/>
			</svg>
		</div>
	</template>


	<link refresh="true" rel="stylesheet" href="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.css" />
	<link rel="stylesheet" href="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.theme.default.min.css" />
	<script src="/public/cdn/cdnjs.cloudflare.com/ajax/libs/owlCaroussel/2.3.4/owl.carousel.min.js" ></script>
	<script  typ="text/javascript" src="/project/usuarios/usuariosScript.js?v={{CACHE}}"></script>

	<script type="text/javascript" data-user="true">
		// {!!system\lib\system::windowCsrf_token('DATATABLE_USERS')!!}	
		// var params	= {prefixo:'{{$prefix}}'};
		// window.modulo['{ajax-href}']	= usuariosScript('{ajax-href}',params);
		// window.modulo['{ajax-href}'].initTable();




		
	</script>
