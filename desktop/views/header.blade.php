@section('header')
	<header class="app-header">
		<!-- Start::main-header-container -->
		<div class="main-header-container container-fluid">
			<!-- Start::header-content-left -->
			<div class="header-content-left">
				<!-- Start::header-element -->
				<div class="header-element">
					<div class="horizontal-logo">
						<a href="/office" class="header-logo">

						<img src="/project/public/assets/images/brand-logos/desktop-logo.svg?v={{CACHE}}"	alt="logo" class="desktop-logo" />
						<img src="/project/public/assets/images/brand-logos/toggle-logo.svg?v={{CACHE}}"	alt="logo" class="toggle-logo" />

						<img src="/project/public/assets/images/brand-logos/desktop-dark.svg?v={{CACHE}}"	alt="logo" class="desktop-dark" />
						<img src="/project/public/assets/images/brand-logos/toggle-logo.svg?v={{CACHE}}"	alt="logo" class="toggle-dark" />
						</a>
					</div>
				</div>
				<!-- End::header-element -->
				<!-- Start::header-element -->
				<div class="header-element">
					<!-- Start::header-link -->
					<a aria-label="Hide Sidebar" class="sidemenu-toggle header-link animated-arrow hor-toggle horizontal-navtoggle" data-bs-toggle="sidebar" href="javascript:void(0);"><span></span></a>
					<!-- End::header-link -->
				</div>
				<!-- End::header-element -->
			</div>
			<!-- End::header-content-left -->


			<div class="header-content-right">


				<? //include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.idiomaTopo')?>
				<? //include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.themaDarkTopo')?>
				<? //include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.carrinhoTopo')?>
				<? //include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.notificacaoTopo')?>
				<? //include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.appsTopo')?>
				@include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.avatarTopo')
				<? //include('app.projetos.'.getEnv('APP_NAME').'.desktop.views.pwaTopo')?>
			</div>
		</div>

	</header>
@endsection