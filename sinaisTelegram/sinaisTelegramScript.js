	//----------------------------------------------------------
	//	DEFININDO A CLASSE sinaisTelegramScript
	//----------------------------------------------------------


	var sinaisTelegramScript = function (url, params) {
		return {
			url: url,
			params: params,
			reload: async function () { 
				
				$('.bitcoin-price-graph').each(function(a){
					var spark4 = {
						chart: {
							type: 'line',
							height: 20,
							width: 120,
							sparkline: {enabled: true},
							dropShadow: {
								enabled: true,
								enabledOnSeries: undefined,
								top: 0,
								left: 0,
								blur: 3,
								color: '#000',
								opacity: 0.1
							}
						},
						stroke: {
							show: true,
							curve: 'smooth',
							lineCap: 'butt',
							colors: undefined,
							width: 1.5,
							dashArray: 0,
						},
						fill: {
							gradient: {
								enabled: false
							}
						},
						tooltip: {
							enabled: true, 
							name: "aaa",
							x: {formatter: function (val) {return (9 - (val-1)) + "º dia";}},
							y: {formatter: function (val) {return val + " entradas";}}
						},
						series: [{
							name: 'Profits',
							data: [30, 40, 35, 50, 49, 60, 70, 91, 125],
							color: '#52a93c' 
						}, {
							name: 'Loss',
							data: [20, 25, 30, 35, 40, 45, 50, 55, 60],
							color: '#c35a5a'
						}],
						yaxis: {
							min: 0,
							show: false
						},
						xaxis: {
							axisBorder: {
								show: false
							},
						},
						yaxis: {
							axisBorder: {
								show: false
							},
						},
						colors: ['#52a93c'],
					}
					$(this).html("");
					var sparka = new ApexCharts($(this)[0], spark4);
					sparka.render();
					
				})

				$('.check-toggle').off("click").on("click", function () {
					var input = $(this);
					let ajaxParams = {
						csrfKey: 'sinaisTelegramCRSF',
						url: '/api/subscribe-channel',
						method: 'POST',
						private: {"channel": $(input).data("code"),"assinatura": true,},
						success: function (response, status, xhr) { window.successAjax('Sucesso', 'Requisição efetuada com sucesso') },
						error: function (errorMsg, xhr) { window.errorAjax('Ops, houve uma falha', 'Não sei dizer aonde foi') },
						done: function (xhr) { },
					};

					if (!$(input).hasClass('on')){
						var channel = $(this).parents(".card-body").find(".titulo").text()
						var TITULO = "<div style=\"color:#000\">Termos de uso dos sinais</div>";
						let TERMOS = `Ao assinar <b style="font-weight: 800;">"${channel}"</b>, você estará de acordo com com os <a href="" class="fs-14 text-success">Termos de Uso da plataforma</a>.`;
						var CONTEUDO = "<div id=\"termos\" style=\"overflow:auto;font-size:13px;color:#505050;line - height: 25px;max-height: 350px;padding-right: 10px;text-align: center;padding-top: 10px;\">" + TERMOS + "</div>";
						confirm(TITULO, CONTEUDO, function () {
							$(input).toggleClass('on');
							ajaxParams.private.assinatura = true
							ajax(ajaxParams);
						}, function () {})
					}else{
						$(input).toggleClass('on');
						ajaxParams.private.assinatura = false
						ajax(ajaxParams);
					}
						




				});

			},
			onInit: async function () { 
				
				
					this.reload()
			
			
					$(document)
					.off('click','#salvar-template')
					.on('click','#salvar-template', function (e) { 
						e.preventDefault();
						var dados = $('#form-template').object();
							dados['FW_LANG'] = window.getLang;

							ajax({
								csrfKey: 'sinaisTelegramCRSF',
								url: '/api/sinaisTelegram-save-template',
								method: 'POST',
								private: dados,
								recaptcha: true,
								fila: false,
								beforeSend:function (xhr) {},
								success: function (response, status, xhr) {
									console.log(response)
								},
								error:function (errorMsg, xhr) {},
								done:function (xhr) {},
							});
							return false;
					});
			
			
			
			
			
			
			
			
			},











			onClose: async function () {},
			onLoad: async function () {},
		}
	}