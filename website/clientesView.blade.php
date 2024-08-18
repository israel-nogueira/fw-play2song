	<section class="breadcrumb-area d-flex align-items-center" style="background-image: url(/public/assets/images/topos/contatos.png);background-position: top center;">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-xl-12 col-lg-12">
					<div class="breadcrumb-wrap text-center">
						<div class="breadcrumb-title">
							<h2>{!!$STATIC['TITULO_CLIENTES']!!}</h2>    
						</div>
					</div>
				</div>				
			</div>
		</div>
	</section>

	<section class="team-area fix p-relative pt-120 pb-90">    
		<div class="container">  
			<div class="row">    
				@foreach ($GALERIAS as $item)
					<div class="col-xl-3">
						<div class="single-team mb-45">
							<div class="team-thumb">
								<div class="brd">
										<img src="/project/public/upload/galerias/PLUGIN_674105368613986/GALERIA_4899293551239047/{{ $item['300x300'] }}" alt="img">
								</div>                                   
							</div>
							<div class="team-info">
								<h4><a href="{{ $item['DESCRICAO'] }}">{{ $item['TITULO'] }}</a></h4>
								<p><a href="{{ $item['DESCRICAO'] }}">{{ $item['DESCRICAO'] }}</a></p>
							</div>
						</div>
					</div>
				@endforeach
			</div>
		</div>
	</section>



	</main>




{{--
<script typ="text/javascript" src="/project/website/websiteScript.js?v={{CACHE}}"></script>
<script type="text/javascript">
    @csrfToken('website')
    var params						= {};
    window.modulo['{ajax-href}']	= websiteScript('{ajax-href}',params);
</script>
--}}
