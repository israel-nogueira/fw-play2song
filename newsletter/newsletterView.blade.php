<!-- CSS EXTERNO  -->
<link rel="stylesheet/css" type="text/css" href="/project/newsletter/newsletterStyle.min.css" />
<div class="container-fluid">
	<div class="row mt-4">
		<div class="col-12">
			<div class="team-members" id="team-members">

						<div class="card custom-card">
							<div class="card-body">
								<div class="team-header">
									<div class="d-flex flex-wrap align-items-center justify-content-between">
										<div class="h2 fw-semibold mb-0 w-100">EMAILS CADASTRADOS DA NEWSLETTER</div>
                                        <div class="h4 mb-0 w-100 mt-3" style="font-size: 20px;font-weight: 100;">
                                            
										{{$LISTA_MAILLING}}


                                        </div>
									</div>
								</div>
							</div>
						</div>
			
			</div>
		</div>
	</div>
</div>


<script  typ="text/javascript" src="/project/newsletter/newsletterScript.js?v={{CACHE}}"></script>
<script type="text/javascript">
	@csrfToken('newsletter')
	var params						= {
		modulo:'newsletter'
	};
	window.modulo['{ajax-href}']	= newsletterScript('{ajax-href}',params);
</script>
