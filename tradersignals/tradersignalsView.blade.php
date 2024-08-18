	<link rel="stylesheet/css" type="text/css" href="/project/tradersignals/tradersignalsStyle.css?v={RAND}" />
	<link rel="stylesheet/css" type="text/css" href="/system/public/assets/icon-fonts/RemixIcons/fonts/remixicon.css" />
	<script src="/cdn/cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>
	<script src="/cdn/cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
	<link rel="stylesheet/css" type="text/css" href="/cdn/cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.css" />
	<link rel="stylesheet/css" type="text/css" href="/cdn/cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.theme.default.min.css" />
	
<!-- TradingView Widget BEGIN -->

<!-- TradingView Widget END -->
		

	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
							<div class="card-title">Criando um sinal</div>
					</div>
					<div class="card-body">
						<div class="tab-content">
							<div class="tab-pane border-0 active p-0" id="buy-crypto" role="tabpanel" aria-labelledby="buy-crypto">
								<div class="row form-group pb-3">
									
									<div class="col-sm-6">
										<div id="tradingview-miniGraph-container" class="tradingview-widget-container" style="width: 100%;height: 46px;margin-top: -10px;margin-bottom: 10px;">
											<div class="tradingview-widget-container__widget"></div>
										</div> 
									</div>
									<div class="col-sm-6">
										<div id="tradingview-gauge-container" class="tradingview-widget-container" style="width: 100%;height: 46px;margin-top: -10px;margin-bottom: 10px;">
											<div class="tradingview-widget-container__widget"></div>
										</div> 
									</div>
									
									<div class="col-12">
										<div class="card-body"><div id="candlestick-line"></div></div>
									</div>								
								</div>
								<div class="row form-group pb-3">
									<div class="col"></div>
									<div class="col-12">
										<form id="set-new-signal-form">															
											<input value="" id="TYPE_OP"  name="TYPE_OP" type="hidden">
											
											<div class="row">
												<div class="col-sm-4">
													<label class="form-label">Ativo</label>
													<select name="ASSETS" placeholder="ASSETS" id="SYMBOL" plugin-options="{width:'100%'}" class="form-control form-control-modern selectTwo-COINS"></select>
												</div>

												<div class="col-sm-4">
													<label class="form-label">$ ENTRY</label>
													<input value="10,000.00" id="INPUT_ENTRY" name="PRECO" class="form-control">
												</div>

												<div class="col-sm-4">
													<label class="form-label">$ SL</label>
													<input value="9,000.00" id="INPUT_SL"  name="STOP_LOSS" data-plugin-masked-input="" data-input-mask="" placeholder="" class="form-control" style="">
												</div>
											</div>



											<div class="row mt-3">

												<div class="col-sm-4">
													<label class="form-label">Take Profit:</label>
													<input value="11,000.00" id="INPUT_TP" name="TAKE_PROFIT" data-plugin-masked-input="" data-input-mask="" placeholder="" class="form-control" style="">
												</div>

												<div class="col-sm-4">
													<label class="form-label">Trailing Stop:</label>
													<input id="INPUT_TS" class="form-control" type="number" id="valor" name="TRAILING_STOP" min="0" max="100" step="0.01">
												</div>	

												<div class="col-sm-4 text-center">
													<label class="form-label text-center">Sinal Gratuito:</label>
													<div class="check-toggle toggle toggle-lg mb-3 text-center" style=" left: 50%; transform: translateX(-50%); margin: 0; "><span></span></div>
												</div>

											</div>


											<div class="row mt-3"> 
												<div class="col-md-6"> 
													<div class="row"> 
														<label class="form-label">Data de validade:</label>
														<div class="col-6"> <input type="date" name="DATA_LIMITE" class="form-control"></div>
														<div class="col-6"> <input type="time" name="HORA_LIMITE" class="form-control"></div>
													</div>
												</div>
												<div class="col-md-6">
													<label class="form-label" style="margin-top: 10px;">GRID CONFIG ( <span class="slider_risco">0</span> STEPS )</label>
													<input id="INPUT_GRID"  name="GRID" type="range" min="1" max="50" value="3" class="slider-grid" data-espelho=".slider_risco">								
												</div>
											</div>

																			
											<div class="row">
												<div class="col-12">
													<div class="owl-carousel owl-theme carousel-new-signal mt-4"></div>
												</div>
											</div>

											<div class="text-center fs-16 alert alert-danger alert-sinal-inconsistente" role="alert" style="display:none">
												<b class="alert-link">Sinal inconsistente!</b> Verifique os valores TP e SL.
											</div>
											<ul class="nav nav-tabs tab-style-1 d-sm-flex d-block nav-justified" role="tablist">
												<li class="nav-item m-2">
													<a class="nav-link buy-crypto active"	data-bs-toggle="tab"		data-bs-target="#buy-crypto" href="#buy-crypto">Buy</a>
												</li>
												<li class="nav-item m-2">
													<a class="nav-link sell-crypto " 		data-bs-toggle="tab"	data-bs-target="#buy-crypto" href="#buy-crypto">Sell</a>
												</li>
											</ul>

											<div class="d-flex justify-content-center mt-4">
												<button id="create-signal" class="btn btn-primary btn-lg btn-block w-75">Salvar Sinal</button>
											</div>
										</form>
									</div>
									<div class="col"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		

		<div class="row">

			<div class="col-sm-6">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title text-success"><i class="ri-arrow-up-fill"></i> Potencial de crescimento</div>
						<div class="dropdown">
							<a aria-label="anchor" href="javascript:void(0);" class="btn btn-icon btn-sm btn-light" data-bs-toggle="dropdown">
								<i class="ri-menu-line"></i>
							</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="javascript:void(0);">Week</a></li>
								<li><a class="dropdown-item" href="javascript:void(0);">Month</a></li>
								<li><a class="dropdown-item" href="javascript:void(0);">Year</a></li>
							</ul>
						</div>
					</div>
					<div class="card-body">
						<ul class="list-unstyled mb-0">
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Bitcoin.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Bitcoin</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold text-success">+$19,123.02</p>
											<p class="mb-0 op-7 text-muted fs-11">BTC 0.0823.45</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Ethereum.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Etherium</p>
												<p class="mb-0 fs-11 text-primary fw-semibold">Buy</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold text-success">+$1,430.92</p>
											<p class="mb-0 op-7 text-muted fs-11">ETH 10,783.23</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Dash.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Dash</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold text-success">+$5,236.53</p>
											<p class="mb-0 op-7 text-muted fs-11">DASH 12,456.98</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Bytecoin.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Bytecoin</p>
												<p class="mb-0 fs-11 text-primary fw-semibold">Buy</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold text-success">+$1,810.93</p>
											<p class="mb-0 op-7 text-muted fs-11">BYTE 8,154.00</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Golem.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Golem</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold text-danger">-$5,046.34</p>
											<p class="mb-0 op-7 text-muted fs-11">GOLEM 9,384.73</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Siacoin.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">SiaCoin</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold text-danger">-$2,625.50</p>
											<p class="mb-0 op-7 text-muted fs-11">SIA 3,151.09</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-1">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Monero.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Monero</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold text-success">+$1,256.24</p>
											<p class="mb-0 op-7 text-muted fs-11">XMR 2,799.06</p>
										</div>
									</div>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title text-danger"><i class="ri-arrow-down-fill"></i> Potencial de queda</div>
						<div class="dropdown">
							<a aria-label="anchor" href="javascript:void(0);" class="btn btn-icon btn-sm btn-light btn-danger" data-bs-toggle="dropdown">
								<i class="ri-menu-line"></i>
							</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="javascript:void(0);">Week</a></li>
								<li><a class="dropdown-item" href="javascript:void(0);">Month</a></li>
								<li><a class="dropdown-item" href="javascript:void(0);">Year</a></li>
							</ul>
						</div>
					</div>
					<div class="card-body">
						<ul class="list-unstyled mb-0">
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Bitcoin.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Bitcoin</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold">+$19,123.02</p>
											<p class="mb-0 op-7 text-muted fs-11">BTC 0.0823.45</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Ethereum.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Etherium</p>
												<p class="mb-0 fs-11 text-primary fw-semibold">Buy</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold">-$1,430.92</p>
											<p class="mb-0 op-7 text-muted fs-11">ETH 10,783.23</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Dash.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Dash</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold">+$5,236.53</p>
											<p class="mb-0 op-7 text-muted fs-11">DASH 12,456.98</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Bytecoin.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Bytecoin</p>
												<p class="mb-0 fs-11 text-primary fw-semibold">Buy</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold">-$1,810.93</p>
											<p class="mb-0 op-7 text-muted fs-11">BYTE 8,154.00</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Golem.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Golem</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold">+$5,046.34</p>
											<p class="mb-0 op-7 text-muted fs-11">GOLEM 9,384.73</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-3">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Siacoin.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">SiaCoin</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold">+$2,625.50</p>
											<p class="mb-0 op-7 text-muted fs-11">SIA 3,151.09</p>
										</div>
									</div>
								</a>
							</li>
							<li class="mb-1">
								<a href="javascript:void(0);">
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
											<div class="me-2">
												<span class="avatar avatar-sm"> <img src="/public/assets/images/crypto-currencies/square-color/Monero.svg" alt="" /> </span>
											</div>
											<div>
												<p class="mb-0 fw-semibold">Monero</p>
												<p class="mb-0 fs-11 text-success fw-semibold">Sell</p>
											</div>
										</div>
										<div class="text-end">
											<p class="mb-0 fw-semibold">+$1,256.24</p>
											<p class="mb-0 op-7 text-muted fs-11">XMR 2,799.06</p>
										</div>
									</div>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between flex-wrap">
						<div class="card-title">Sinais em aberto ou em execução</div>
					</div>
					<div class="owl-carousel d-flex flex-row flex-wrap" id="colunas-table"></div>
					<div class="card-body p-0">
						<table id="data-table-sinais-em-aberto" class="table table-striped" style="width: 100%;"></table></div>
				</div>
			</div>	
		</div>

		<div class="row">
			<div class="col-xxl-5 col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Recent Activity</div>
						<div class="dropdown">
							<a aria-label="anchor" href="javascript:void(0);" class="btn btn-icon btn-sm btn-light" data-bs-toggle="dropdown"> <i class="fe fe-more-vertical"></i> </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="javascript:void(0);">Week</a></li>
								<li><a class="dropdown-item" href="javascript:void(0);">Month</a></li>
								<li><a class="dropdown-item" href="javascript:void(0);">Year</a></li>
							</ul>
						</div>
					</div>
					<div class="card-body p-0">
						<div class="table-responsive">
							<table class="table card-table table-vcenter text-nowrap mb-0">
								<thead>
									<tr>
										<th scope="col">Signal</th>
										<th scope="col">Currency</th>
										<th scope="col">User</th>
										<th scope="col" class="text-center">Time</th>
									</tr>
								</thead>
								<tbody class="active-tab">
									<tr>
										<td><div class="text-left">#745674567</div></td>
										<td>
											<div class="d-flex align-items-center">
												<div class="lh-1">
													<span class="avatar avatar-md avatar-rounded me-2 p-2 bg-light"> <img src="/public/assets/images/crypto-currencies/regular/Bitcoin.svg" alt="" /> </span>
												</div>
												<div class="align-items-center">
													<span class="fs-12 text-muted">Currency</span>
													<p class="mb-0">Bitcoin - <span class="text-muted">(0.0092312)</span></p>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center text-center">
												<div class="d-flex align-items-center fw-semibold">
													<span class="avatar avatar-sm avatar-rounded"> <img src="/public/assets/images/faces/4.jpg" alt="" /> </span> <span class="ms-2">Emiley Jackson</span>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center">
												<p class="mb-0">04:24PM </p>
											</div>
										</td>
									</tr>
									<tr>
										<td><div class="text-left">#745674567</div></td>
										<td>
											<div class="d-flex align-items-center">
												<div class="lh-1">
													<span class="avatar avatar-md avatar-rounded me-2 p-2 bg-light"> <img src="/public/assets/images/crypto-currencies/regular/Ethereum.svg" alt="" /> </span>
												</div>
												<div class="align-items-center">
													<span class="fs-12 text-muted">Currency</span>
													<p class="mb-0">Etherium - <span class="text-muted">(0.9207702)</span></p>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center text-center">
												<div class="d-flex align-items-center fw-semibold">
													<span class="avatar avatar-sm avatar-rounded"> <img src="/public/assets/images/faces/15.jpg" alt="" /> </span> <span class="ms-2">Jackie Shraff</span>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center">
												<p class="mb-0">11:57PM </p>
											</div>
										</td>
									</tr>
									<tr>
										<td><div class="text-left">#745674567</div></td>
										<td>
											<div class="d-flex align-items-center">
												<div class="lh-1">
													<span class="avatar avatar-md avatar-rounded me-2 p-2 bg-light"> <img src="/public/assets/images/crypto-currencies/regular/Dash.svg" alt="" /> </span>
												</div>
												<div class="align-items-center">
													<span class="fs-12 text-muted">Currency</span>
													<p class="mb-0">Dash - <span class="text-muted">(0.83092333)</span></p>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center text-center">
												<div class="d-flex align-items-center fw-semibold">
													<span class="avatar avatar-sm avatar-rounded"> <img src="/public/assets/images/faces/11.jpg" alt="" /> </span> <span class="ms-2">Json Taylor</span>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center">
												<p class="mb-0">02:28AM </p>
											</div>
										</td>
									</tr>
									<tr>
										<td><div class="text-left">#745674567</div></td>
										<td>
											<div class="d-flex align-items-center">
												<div class="lh-1">
													<span class="avatar avatar-md avatar-rounded me-2 p-2 bg-light"> <img src="/public/assets/images/crypto-currencies/regular/Euro.svg" alt="" /> </span>
												</div>
												<div class="align-items-center">
													<span class="fs-12 text-muted">Currency</span>
													<p class="mb-0">Euro - <span class="text-muted">(0.0092363)</span></p>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center text-center">
												<div class="d-flex align-items-center fw-semibold">
													<span class="avatar avatar-sm avatar-rounded"> <img src="/public/assets/images/faces/5.jpg" alt="" /> </span> <span class="ms-2">Jessica May</span>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center">
												<p class="mb-0">10:08AM </p>
											</div>
										</td>
									</tr>
									<tr>
										<td><div class="text-left">#745674567</div></td>
										<td>
											<div class="d-flex align-items-center">
												<div class="lh-1">
													<span class="avatar avatar-md avatar-rounded me-2 p-2 bg-light"> <img src="/public/assets/images/crypto-currencies/regular/litecoin.svg" alt="" /> </span>
												</div>
												<div class="align-items-center">
													<span class="fs-12 text-muted">Currency</span>
													<p class="mb-0">Litecoin - <span class="text-muted">(1.00009023)</span></p>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center text-center">
												<div class="d-flex align-items-center fw-semibold">
													<span class="avatar avatar-sm avatar-rounded"> <img src="/public/assets/images/faces/12.jpg" alt="" /> </span> <span class="ms-2">Lieonel Marsi</span>
												</div>
											</div>
										</td>
										<td>
											<div class="align-items-center">
												<p class="mb-0">06:05PM </p>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xxl-3 col-xl-6">
				<div class="card custom-card">
					<div class="card-header justify-content-between flex-wrap">
						<div class="card-title">Bitcoin Price Statistics</div>
						<div class="d-flex">
							<button type="button" class="btn btn-success btn-wave btn-sm me-2">Buy Now</button>
							<div class="dropdown">
								<a aria-label="anchor" href="javascript:void(0);" class="btn btn-icon btn-sm btn-light" data-bs-toggle="dropdown"> <i class="fe fe-more-vertical"></i> </a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="javascript:void(0);">Week</a></li>
									<li><a class="dropdown-item" href="javascript:void(0);">Month</a></li>
									<li><a class="dropdown-item" href="javascript:void(0);">Year</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card-body p-0">
						<div class="list-group border-0">
							<a href="javascript:void(0);" class="list-group-item flex-column align-items-start border-top-0 border-start-0 border-end-0 border-bottom">
								<div class="d-flex w-100 justify-content-between align-items-center">
									<p class="tx-14 mb-0 font-weight-semibold text-dark">Bitcoin value in USD</p>
									<p class="text-dark mb-0 font-weight-normal tx-15"><span class="numberfont">$29,472.60</span></p>
								</div>
							</a>
							<a href="javascript:void(0);" class="list-group-item flex-column align-items-start border-top-0 border-start-0 border-end-0 border-bottom">
								<div class="d-flex w-100 justify-content-between align-items-center">
									<p class="tx-14 mb-0 font-weight-semibold text-dark">Price Change <span class="badge bg-primary-transparent ms-3 text-primary">Increased</span></p>
									<p class="text-success mb-0 font-weight-normal tx-13"><span class="numberfont">+280.30(0.96%)</span> <i class="fa fa-arrow-up"></i> today</p>
								</div>
							</a>
							<a href="javascript:void(0);" class="list-group-item flex-column align-items-start border-top-0 border-start-0 border-end-0 border-bottom">
								<div class="d-flex w-100 justify-content-between align-items-center">
									<p class="tx-14 mb-0 font-weight-normal text-dark">Trade Value</p>
									<p class="text-dark mb-0 tx-15"><span class="numberfont">$245,36,465.652</span></p>
								</div>
							</a>
							<a href="javascript:void(0);" class="list-group-item flex-column align-items-start border-top-0 border-start-0 border-end-0 border-bottom">
								<div class="d-flex w-100 justify-content-between align-items-center">
									<p class="tx-14 mb-0 font-weight-semibold text-dark">Market Rank<span class="badge bg-secondary-transparent ms-3">3 Years</span></p>
									<p class="text-dark mb-0 tx-15"><span class="numberfont">#1</span></p>
								</div>
							</a>
							<a href="javascript:void(0);" class="list-group-item flex-column align-items-start border-top-0 border-start-0 border-end-0 border-bottom">
								<div class="d-flex w-100 justify-content-between align-items-center">
									<p class="tx-14 mb-0 font-weight-semibold text-dark">This Week High</p>
									<p class="text-success mb-0 tx-15"><span class="numberfont">$68,990.90</span></p>
								</div>
							</a>
							<a href="javascript:void(0);" class="list-group-item flex-column align-items-start border-top-0 border-start-0 border-end-0 border-bottom">
								<div class="d-flex w-100 justify-content-between align-items-center">
									<p class="tx-14 mb-0 font-weight-semibold text-dark">This Week Low</p>
									<p class="text-danger mb-0 tx-15"><span class="numberfont">$28,825.76</span></p>
								</div>
							</a>
							<a href="javascript:void(0);" class="list-group-item flex-column align-items-start border-top-0 border-start-0 border-end-0 border-bottom">
								<div class="d-flex w-100 justify-content-between align-items-center">
									<p class="tx-14 mb-0 font-weight-semibold text-dark">Market Dominance</p>
									<p class="text-dark mb-0 tx-15"><span class="numberfont">70%</span></p>
								</div>
							</a>
							<a href="javascript:void(0);" class="list-group-item flex-column align-items-start border-0">
								<div class="d-flex w-100 justify-content-between align-items-center">
									<p class="tx-14 mb-0 font-weight-semibold text-dark">Alltime High</p>
									<p class="text-info mb-0 tx-15"><span class="numberfont">$68,990.90</span></p>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xxl-4 col-xl-6">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Top Traders</div>
						<div class="dropdown">
							<a href="javascript:void(0);" class="p-2 fs-12 text-muted" data-bs-toggle="dropdown" aria-expanded="false"> View All<i class="ri-arrow-down-s-line align-middle ms-1 d-inline-block"></i> </a>
							<ul class="dropdown-menu" role="menu">
								<li><a class="dropdown-item" href="javascript:void(0);">Today</a></li>
								<li><a class="dropdown-item" href="javascript:void(0);">This Week</a></li>
								<li><a class="dropdown-item" href="javascript:void(0);">Last Week</a></li>
							</ul>
						</div>
					</div>
					<div class="card-body">
						<ul class="list-unstyled my-1">
							<li class="mb-3">
								<div class="d-flex align-items-center justify-content-between">
									<div class="d-flex align-items-center">
										<div class="me-2 lh-1">
											<span class="avatar avatar-md avatar-rounded p-2 bg-light"> <img src="/public/assets/images/faces/11.jpg" alt="" /> </span>
										</div>
										<div>
											<p class="mb-0 fw-semibold">Json Taylor</p>
											<p class="mb-0 text-muted fs-12">Bought 0.008213 Bitcoin using ****9808</p>
										</div>
									</div>
									<div class="text-end">
										<p class="mb-0 fw-semibold text-success">0.09251821409 <span class="text-default">- BTC</span></p>
										<p class="mb-0 op-7 text-muted fs-11">$1,203.92</p>
									</div>
								</div>
							</li>
							<li class="mb-3">
								<div class="d-flex align-items-center justify-content-between">
									<div class="d-flex align-items-center">
										<div class="me-2 lh-1">
											<span class="avatar avatar-md avatar-rounded p-2 bg-light"> <img src="/public/assets/images/faces/4.jpg" alt="" /> </span>
										</div>
										<div>
											<p class="mb-0 fw-semibold">Alicia Smith</p>
											<p class="mb-0 text-muted fs-12">Sold - 0.7902400 Litecoin</p>
										</div>
									</div>
									<div class="text-end">
										<p class="mb-0 fw-semibold text-success">0.2362333001 <span class="text-default">- LTC</span></p>
										<p class="mb-0 op-7 text-muted fs-11">$19,092.56</p>
									</div>
								</div>
							</li>
							<li class="mb-3">
								<div class="d-flex align-items-center justify-content-between">
									<div class="d-flex align-items-center">
										<div class="me-2 lh-1">
											<span class="avatar avatar-md avatar-rounded p-2 bg-light"> <img src="/public/assets/images/faces/15.jpg" alt="" /> </span>
										</div>
										<div>
											<p class="mb-0 fw-semibold">Branco Eliga</p>
											<p class="mb-0 text-muted fs-12">Bought +12.9092 Euro coin</p>
										</div>
									</div>
									<div class="text-end">
										<p class="mb-0 fw-semibold text-success">0.009823487 <span class="text-default">- EUROC</span></p>
										<p class="mb-0 op-7 text-muted fs-11">$8,977.46</p>
									</div>
								</div>
							</li>
							<li class="mb-3">
								<div class="d-flex align-items-center justify-content-between">
									<div class="d-flex align-items-center">
										<div class="me-2 lh-1">
											<span class="avatar avatar-md avatar-rounded p-2 bg-light"> <img src="/public/assets/images/faces/12.jpg" alt="" /> </span>
										</div>
										<div>
											<p class="mb-0 fw-semibold">Alec Carey</p>
											<p class="mb-0 text-muted fs-12">Bought 32.09472944 Dash using wallet</p>
										</div>
									</div>
									<div class="text-end">
										<p class="mb-0 fw-semibold text-success">8.88234590 <span class="text-default">- DASH</span></p>
										<p class="mb-0 op-7 text-muted fs-11">$9,772.46</p>
									</div>
								</div>
							</li>
							<li class="mb-3">
								<div class="d-flex align-items-center justify-content-between">
									<div class="d-flex align-items-center">
										<div class="me-2 lh-1">
											<span class="avatar avatar-md avatar-rounded p-2 bg-light"> <img src="/public/assets/images/faces/5.jpg" alt="" /> </span>
										</div>
										<div>
											<p class="mb-0 fw-semibold">Sia Linda</p>
											<p class="mb-0 text-muted fs-12">Sent 0.00662 Bitcoin to Ravos Chan</p>
										</div>
									</div>
									<div class="text-end">
										<p class="mb-0 fw-semibold text-success">58.6225600 <span class="text-default">- BTC</span></p>
										<p class="mb-0 op-7 text-muted fs-11">$9,772.46</p>
									</div>
								</div>
							</li>
							<li class="mb-0">
								<div class="d-flex align-items-center justify-content-between">
									<div class="d-flex align-items-center">
										<div class="me-2 lh-1">
											<span class="avatar avatar-md avatar-rounded p-2 bg-light"> <img src="/public/assets/images/faces/10.jpg" alt="" /> </span>
										</div>
										<div>
											<p class="mb-0 fw-semibold">Ryan Ranolds</p>
											<p class="mb-0 text-muted fs-12">Bought 2.098123 Etherium</p>
										</div>
									</div>
									<div class="text-end">
										<p class="mb-0 fw-semibold text-success">190.0092773 <span class="text-default">- ETH</span></p>
										<p class="mb-0 op-7 text-muted fs-11">$18,283982.00</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between flex-wrap">
						<div class="card-title mb-2 mb-sm-0">Crypto currencies Market Value</div>
						<div class="btn-group" role="group" aria-label="Basic example">
							<button type="button" class="btn btn-primary btn-sm btn-wave">1D</button> <button type="button" class="btn btn-primary-light btn-sm btn-wave">1W</button>
							<button type="button" class="btn btn-primary-light btn-sm btn-wave">1M</button> <button type="button" class="btn btn-primary-light btn-sm btn-wave">3M</button>
							<button type="button" class="btn btn-primary-light btn-sm btn-wave">6M</button> <button type="button" class="btn btn-primary-light btn-sm btn-wave">1Y</button>
						</div>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-hover text-nowrap table-bordered">
								<thead>
									<tr>
										<th scope="col">S.No</th>
										<th scope="col">Name</th>
										<th scope="col">Symbol</th>
										<th scope="col">Price</th>
										<th scope="col">Market Cap</th>
										<th scope="col">Price Graph</th>
										<th scope="col">Volume</th>
										<th scope="col">Price Change</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Bitcoin</td>
										<td>
											<div class="lh-1 d-flex align-items-center">
												<span class="avatar avatar-xs avatar-rounded"> <img src="/public/assets/images/crypto-currencies/regular/Bitcoin.svg" alt="" /> </span> - BTC
											</div>
										</td>
										<td>$16,839.10</td>
										<td>324.01B</td>
										<td><div id="bitcoin-price-graph"></div></td>
										<td>14,674,311,168</td>
										<td>
											<span class="text-success">0.30% <i class="ti ti-arrow-big-up-lines ms-1"></i></span>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Etherium</td>
										<td>
											<div class="lh-1 d-flex align-items-center">
												<span class="avatar avatar-xs avatar-rounded"> <img src="/public/assets/images/crypto-currencies/regular/Ethereum.svg" alt="" /> </span> - ETH
											</div>
										</td>
										<td>1,217.96</td>
										<td>$149,316,232,699</td>
										<td><div id="etherium-price-graph"></div></td>
										<td>$4,758,554,801</td>
										<td>
											<span class="text-success">0.30% <i class="ti ti-arrow-big-up-lines ms-1"></i></span>
										</td>
									</tr>
									<tr>
										<td>3</td>
										<td>Dash</td>
										<td>
											<div class="lh-1 d-flex align-items-center">
												<span class="avatar avatar-xs avatar-rounded"> <img src="/public/assets/images/crypto-currencies/regular/Dash.svg" alt="" /> </span> - DASH
											</div>
										</td>
										<td>$43.49</td>
										<td>$480,799,847</td>
										<td><div id="dash-price-graph"></div></td>
										<td>$52,626,563</td>
										<td>
											<span class="text-success">0.45% <i class="ti ti-arrow-big-up-lines ms-1"></i></span>
										</td>
									</tr>
									<tr>
										<td>4</td>
										<td>Ripple</td>
										<td>
											<div class="lh-1 d-flex align-items-center">
												<span class="avatar avatar-xs avatar-rounded"> <img src="/public/assets/images/crypto-currencies/regular/Ripple.svg" alt="" /> </span> - XRP
											</div>
										</td>
										<td>$0.3531</td>
										<td>$17,791,969,465</td>
										<td><div id="ripple-price-graph"></div></td>
										<td>$511,598,941</td>
										<td>
											<span class="text-success">0.97% <i class="ti ti-arrow-big-up-lines ms-1"></i></span>
										</td>
									</tr>
									<tr>
										<td>5</td>
										<td>Iota</td>
										<td>
											<div class="lh-1 d-flex align-items-center">
												<span class="avatar avatar-xs avatar-rounded"> <img src="/public/assets/images/crypto-currencies/regular/IOTA.svg" alt="" /> </span> - IOTA
											</div>
										</td>
										<td>$0.169741</td>
										<td>$471,800,600</td>
										<td><div id="iota-price-graph"></div></td>
										<td>$5,524,385</td>
										<td>
											<span class="text-success">0.93% <i class="ti ti-arrow-big-up-lines ms-1"></i></span>
										</td>
									</tr>
									<tr>
										<td>6</td>
										<td>Neo</td>
										<td>
											<div class="lh-1 d-flex align-items-center">
												<span class="avatar avatar-xs avatar-rounded"> <img src="/public/assets/images/crypto-currencies/regular/Neo.svg" alt="" /> </span> - NEO
											</div>
										</td>
										<td>$6.43</td>
										<td>$453,601,667</td>
										<td><div id="neo-price-graph"></div></td>
										<td>$12,904,320</td>
										<td>
											<span class="text-danger">0.49% <i class="ti ti-arrow-big-down-lines ms-1"></i></span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer">
						<div class="d-flex align-items-center">
							<div>Showing 6 Entries <i class="bi bi-arrow-right ms-2 fw-semibold"></i></div>
							<div class="ms-auto">
								<nav aria-label="Page navigation" class="pagination-style-4">
									<ul class="pagination mb-0">
										<li class="page-item disabled"><a class="page-link" href="javascript:void(0);"> Prev </a></li>
										<li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>
										<li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
										<li class="page-item"><a class="page-link text-primary" href="javascript:void(0);"> next </a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<template id="template_colunas">
	<div data-index="[index]" data-orderable="[orderable]" class="item flex-fill abinha asc" style=""> 
		[sTitle]
		<svg class="setas_header"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" width="24" height="24" >
			<path d="M12 5L6 11H18Z" fill="#333" transform="translate(0, -4)" class="seta_asc"/>
			<path d="M12 19L18 13H6Z" fill="#333" transform="translate(0, 4)" class="seta_desc"/>
		</svg>
	</div>
</template>
<template id="template_sinal">
	<div class="d-flex flex-wrap p-3 border-bottom border-block-end-dashed">
		<div class="me-3">
			<span class="avatar avatar-md avatar-rounded p-2 bg-light">
				<img src="/public/assets/images/crypto-currencies/regular/Bitcoin.svg">
			</span>
		</div>
		<div class="d-flex flex-wrap justify-content-sm-evenly flex-fill">
			<div class="m-sm-0 m-2">
				<span>Symbol</span>
				<p class="fw-semibold mb-0">BTC</p>
			</div>
			<div class="m-sm-0 m-2">
				<span>Price Benchmark</span>
				<p class="fw-semibold mb-0">128.00%</p>
			</div>
			<div class="m-sm-0 m-2">
				<span>Price (USD)</span>
				<p class="text-success fe-semibold mb-0">$4,253.49</p>
			</div>
			<div class="m-sm-0 m-2">
				<span>Change (24H)</span>
				<p class="text-danger fw-semibold mb-0">-0.24%</p>
			</div>
			<div class="m-sm-0 m-2">
				<div class="check-toggle toggle toggle-success mb-3 on mb-3"> <span></span> </div>
			</div>
		</div>
	</div>
</template>



	<template id="signal_detalhes">
		<table class="table">
			<tbody>
				<tr><td style=" border-right: solid 1px #DDD;">AVATAR	</td><td><img src="[AVATAR]"></td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">ENTROU_EM	</td><td>[ENTROU_EM]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">SEGUINDO	</td><td>[SEGUINDO]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">BLOQUEADO	</td><td>[BLOQUEADO]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">SEGUINDO_COUNT	</td><td>[SEGUINDO_COUNT]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">SEGUIDORES	</td><td>[SEGUIDORES]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">NOME	</td><td>[NOME]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">EMAIL	</td><td>[EMAIL]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">CPF		</td><td>[CPF]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">RG		</td><td>[RG]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">LOGIN	</td><td>[LOGIN]</td> </tr>
				<tr><td style=" border-right: solid 1px #DDD;">CRIADO_EM	</td><td>[CRIADO_EM]</td> </tr>
			</tbody>
		</table>
	</template>

	<template id="sinal-steps">
		[#GRID]
			<div class="card mb-0">
				<div class="card-body">
					<div class="d-flex align-items-center mb-2">
						<div class="d-flex align-items-center">
							<div class="me-2">
								<span class="avatar avatar-md avatar-rounded bg-light p-2">
									<img src="/public/assets/images/crypto-currencies/regular/Bitcoin.svg" alt="">
								</span>
							</div>
							<div class="mb-0 fw-semibold">[SYMBOL]</div>
						</div>
						<div class="ms-auto"><div id="btc-chart"></div></div>
					</div>
					<div class="d-flex align-items-end">
						<div>
							<p class="mb-1">[SYMBOL] / USD</p>
							<p class="fs-20 mb-0 fw-semibold lh-1 text-black">$[ENTRY]</p>
						</div>
						<div class="ms-auto text-end">
							<p class="mb-0 text-success fw-bold">
								<svg style="width:18px;height:18px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M6 7 18 7V9L6 9 6 7ZM12 11 6 17H18L12 11Z"></path></svg>
								$[TP]
							</p>
							<p class="mb-0 text-danger">
								<svg style="width:18px;height:18px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M18 17 6 17 6 15 18 15 18 17ZM12 13 18 7H6L12 13Z"></path></svg>
								$[SL]
							</p>
							<p class="mb-0 text-danger fw-bold">
								<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-alt" viewBox="0 0 16 16"> <path d="M1 13.5a.5.5 0 0 0 .5.5h3.797a.5.5 0 0 0 .439-.26L11 3h3.5a.5.5 0 0 0 0-1h-3.797a.5.5 0 0 0-.439.26L5 13H1.5a.5.5 0 0 0-.5.5m10 0a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 0-1h-3a.5.5 0 0 0-.5.5"/>'' </svg>
								[TS]
							</p>
						</div>
					</div>
				</div>
			</div>
		[/GRID]
	</template>
	
	<script src="/public/assets/libs/apexcharts/apexcharts.min.js"></script>
	<link rel="stylesheet" href="/cdn/cdnjs.cloudflare.com/ajax/libs/select2/css/select2.css" />
	<link rel="stylesheet" href="/cdn/cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/select2-bootstrap.min.css" />
	{{-- <script src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js" ></script>
	<script src="https://s3.tradingview.com/external-embedding/embed-widget-symbol-info.js" ></script> --}}
	<script src="/cdn/cdnjs.cloudflare.com/ajax/libs/select2/js/select2.js" ></script>

	<script  type="text/javascript" src="/project/tradersignals/tradersignalsScript.js?v={{ $RAND }}"></script>








	<script type="text/javascript">
		@csrfToken('newSignal');
		window.modulo['{ajax-href}']	= tradersignalsScript('{ajax-href}',{});

			// https://api.binance.com/api/v3/exchangeInfo
			











	</script>







	{{-- 
		<script type="text/javascript">

			var formUpload = window.formUpload();
			var inputFile2 = formUpload.setInput('inputFile2');
			var inputFile = formUpload.setInput('inputFile');
				inputFile.multiple(true);		
				inputFile.accept('.jpg,.jpeg,.png,image/*');
				inputFile.on('change', function () {
					$(formUpload.form()).ajaxForm({
						url:"/api/upload.php",
						beforeSubmit: function() {
							console.log('zera progress')
						},
						uploadProgress: function(event, position, total, percentComplete) {
							console.log('Progresso:',percentComplete+"%");
						},
						success: function(response) {console.log(response);},
						error: function(error) {console.error('Erro:', error);}
					});
				});
				
				$(document).on('click','#teste-upload', function (e) { 
					e.preventDefault();
						inputFile.click();		
					return false;
				});
				$(document).on('click','#teste-upload2', function (e) { 
					e.preventDefault();
						inputFile2.click();		
					return false;
				});
		</script>
	--}}