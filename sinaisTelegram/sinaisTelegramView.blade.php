<!-- CSS EXTERNO  -->
	<link rel="stylesheet/css" type="text/css" href="/project/sinaisTelegram/sinaisTelegramStyle.min.css" />
	<style type="text/less"></style>
	<div class="row justify-content-center">
		<div class="col-xl-12">
			<div class="card">
				<div class="card-body">
					<div class="contact-header">
						<div class="d-sm-flex d-block align-items-center justify-content-between">
							<div class="h3 fw-semibold mb-0">CANAIS DE TELEGRAM</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row justify-content-center">


		<div class="col-11">
			<div   div class="row">
				@foreach ($SIGNALS as $item)
					<div class="col-sm-6 col-lg-4">
						<div class="card custom-card">
							<div class="card-body">
								<div class="d-flex align-items-center">
									<div class="d-flex align-items-center">
										<div class="me-2">
											<span class="avatar avatar-md avatar-rounded" style="padding: 0 !important;">
												<img src="/project/sinaisTelegram/image/{{ $item['CODE'] }}.jpg"/>
											</span>
										</div>
										<div class="titulo mb-0 fw-semibold" style=" overflow: hidden; max-height: 35px; ">{{ $item['NAME'] }}</div>
									</div>
									<div class="ms-auto"><div id="btc-chart"></div></div>
								</div>
								<div class="d-flex align-items-end">
									 <div class="fs-13 mb-0 text-left">
										<div class="bitcoin-price-graph"></div>
										<span class="mb-0 text-success">
											<svg style="width:18px;height:18px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M6 7 18 7V9L6 9 6 7ZM12 11 6 17H18L12 11Z"></path></svg>
											+2.33%
										</span>
										<span class="mb-0 text-danger">
											<svg style="width:18px;height:18px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M18 17 6 17 6 15 18 15 18 17ZM12 13 18 7H6L12 13Z"></path></svg>
											-2.33%
										</span>
									</div>
									<div class="ms-auto text-end">
										<p>
											<div data-code="{{ $item['CODE'] }}" class="{{ $item['ASSINADO'] }} check-toggle toggle toggle-success toggle-lg mb-3 text-center"	><span></span></div>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				@endforeach
			</div>
		</div>


	</div>
        <!-- Apex Charts JS -->
		<script src="/public/assets/libs/apexcharts/apexcharts.min.js"></script>
		<script  type="text/javascript" src="/project/sinaisTelegram/sinaisTelegramScript.js?v={{ $RAND }}"></script>

	<script type="text/javascript">
		@csrfToken('sinaisTelegramCRSF')
		window.modulo['{ajax-href}']	= sinaisTelegramScript('{ajax-href}',{});
	</script>
