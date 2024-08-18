	<section id="home" class="owl-carousel owl-theme">
		@foreach ($HOME_01['BANNER_TOPO'] as $PICTURE)
			<div class="item" style="">
				{!!$PICTURE['PICTURE']!!}
			</div>
		@endforeach    
	</section>

	<section class="about-area about-p pt-120 pb-200 p-relative fix" style="background-image: url(/project/public/assets/img/bg/about-bg.png); background-size: cover;">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-6 col-md-12 col-sm-12">
					<div class="about-content2 s-about-content wow fadeInRight animated" data-animation="fadeInRight" data-delay=".4s" style="visibility: visible; animation-name: fadeInRight;">
						<div class="about-title second-title pb-25">
							<h2>{{$HOME_01['OUTRAS_SOLUCOES']}}</h2>
						</div>
						<p>{!!$HOME_01['OUTRAS_SOLUCOES_TXT']!!}</p>

						<div class="experience-text">
							<div class="exp-no">
								<span>{{$HOME_01['ANOS_EXP_NUM']}}<sub>+</sub></span>
								<p>{{$HOME_01['ANOS_EXP_TXT']}}</p>
							</div>
							<div class="exp-text">{!!$HOME_01['ANOS_EXP_DESC']!!}</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-sm-12">
					<div class="s-about-img p-relative wow fadeInLeft animated" data-animation="fadeInLeft" data-delay=".4s" style="visibility: visible; animation-name: fadeInLeft;">
						<img src="/project/public/assets/img/features/about_img02.png" alt="img" />
					</div>
				</div>
			</div>
		</div>
	</section>




{{--
<script typ="text/javascript" src="/project/website/websiteScript.js?v={{CACHE}}"></script>
<script type="text/javascript">
    @csrfToken('website')
    var params						= {};
    window.modulo['{ajax-href}']	= websiteScript('{ajax-href}',params);
</script>
--}}
