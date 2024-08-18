	<section class="breadcrumb-area d-flex align-items-center" style="background-image: url(/public/assets/images/topos/contatos.png);background-position: top center;">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-xl-12 col-lg-12">
					<div class="breadcrumb-wrap text-center">
						<div class="breadcrumb-title">
							<h2>{!!$STATIC['TITULO_CASES']!!}</h2>    
						</div>
					</div>
				</div>				
			</div>
		</div>
	</section>

	<section class="inner-blog pt-50 pb-120">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-8 col-lg-7">
<?
use IsraelNogueira\galaxyDB\galaxyDB;

	$_UID = explode('/',$_SERVER['REQUEST_URI'])[2];


		$_ = new galaxyDB();
		$_->connect();
		$_->table("BLOG__TRANSLATE");
		$_->where('ID_FW_PAI='.$_UID);
		$_->where('AND FW_LANG="'.IDIOMA.'"');
		$_->prepare_select('param');
		
		$_->transaction(function($error) {die(print_r($error));});
		$_->execQuery(function($success) {/*die(print_r($success));*/});
		$_RESULT = $_->fetch_array('param')[0];
		


?>
					<div class="bsingle__post mb-50">
							<h2><a href="blog-details.html">{{$_RESULT['TITULO']}}</a></h2>
							<div class="bsingle__post-thumb" style="height: 300px;width: 100%;background-position:center;background-size:cover;background-image:url({{$_RESULT['IMAGEM']}});"></div>
							<div class="bsingle__content">
								<p>{{$_RESULT['DESCRICAO']}}</p>
							</div>
						</div>


					
					{{-- <div class="pagination-wrap mb-50">
						<nav>
							<ul class="pagination">
								<li class="page-item"><a href="blog.html#"><i class="fas fa-angle-double-left"></i></a></li>
								<li class="page-item active"><a href="blog.html#">1</a></li>
								<li class="page-item"><a href="blog.html#">2</a></li>
								<li class="page-item"><a href="blog.html#">3</a></li>
								<li class="page-item"><a href="blog.html#">...</a></li>
								<li class="page-item"><a href="blog.html#">10</a></li>
								<li class="page-item"><a href="blog.html#"><i class="fas fa-angle-double-right"></i></a></li>
							</ul>
						</nav>
					</div> --}}
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
