<main>
            
	<!-- breadcrumb-area -->
	<section class="breadcrumb-area d-flex align-items-center" style="background-image: url(/public/assets/images/topos/contatos.png);background-position: top center;">
		<div class="container">
			<div class="row align-items-center" >
				<div class="col-xl-12 col-lg-12">
					<div class="breadcrumb-wrap text-center">
						<div class="breadcrumb-title">
							<h2 style="font-size: 30px;">{!!$TITULO_ATUACAO!!}</h2>    
						</div>
					</div>
				</div>				
			</div>
		</div>
	</section>
	
	<section id="faq" class="faq-area pt-30 pb-120">             
		<div class="container">   
			<div class="row">
				
					<div class="col-lg-6 col-md-6">
						<div class="faq-wrap">
							<div class="accordion" id="accordionExample">
								@foreach ($ATUACAO['ATUACAO_1'] as $item)
									<div class="card">
										<div class="card-header" id="headingOne">
											<h2 class="mb-0">
												<button class="faq-btn collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne_1_{{ $item['ID_FW_PAI'] }}" aria-expanded="true" aria-controls="collapseOne_1_{{ $item['ID_FW_PAI'] }}">
													{{$item['TITULO']}}
												</button>
											</h2>
										</div>
										<div id="collapseOne_1_{{ $item['ID_FW_PAI'] }}" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample" style="">
											<div class="card-body">
												{{$item['DESCRICAO']}}
											</div>
										</div>
									</div>
								@endforeach
							</div>
						</div>
					</div>

					<div class="col-lg-6 col-md-6">
						<div class="faq-wrap">
							<div class="accordion" id="accordionExample">
								@foreach ($ATUACAO['ATUACAO_2'] as $item)
								<div class="card">
									<div class="card-header" id="headingOne">
										<h2 class="mb-0">
											<button class="faq-btn collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne_2_{{ $item['ID_FW_PAI'] }}" aria-expanded="true" aria-controls="collapseOne_2_{{ $item['ID_FW_PAI'] }}">
												{{$item['TITULO']}}
											</button>
										</h2>
									</div>
									<div id="collapseOne_2_{{ $item['ID_FW_PAI'] }}" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample" style="">
										<div class="card-body">
											{{$item['DESCRICAO']}}
										</div>
									</div>
								</div>
							@endforeach
							</div>
						</div>
					</div>


				
				
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
