	//----------------------------------------------------------
	//	DEFININDO A CLASSE tradersignalsScript
	//----------------------------------------------------------


	var tradersignalsScript = function (url, params) {
		let root;
		return {
			url: url,
			params: params, 
			gridLine: [
				// {
				// 	x: data[0][0],
				// 	y: data[data.length - 1][1]
				// }, {
				// 	x: data[data.length - 1][0],
				// 	y: data[data.length - 1][1]
				// }
			],
			onInit: async function () {
				Mustache.tags = ["[", "]"];
				root = this;
				let timeoutOWL = 0;
				let objetoGrid = {};
				root.reload()
			},
			updateCandle: async function () { 

			},
			reload: async function () { 
				root = this;
				$('#INPUT_ENTRY,#INPUT_SL,#INPUT_TP').mask("#,##0.00", { reverse: true });
				$('#INPUT_TS').mask("#,##0.00", { reverse: true });

				$('.sell-crypto, .buy-crypto').click(function () {
					$('#INPUT_GRID').trigger('input');
					root.verifyTypeOP();
				})

				$("#SYMBOL").on("change", function () {
					$('#INPUT_GRID').trigger('input');
					root.verifyTypeOP();
				});

				$("#INPUT_ENTRY,#INPUT_SL,#INPUT_TP,#INPUT_TS").on("keyup", function () {
					$('#INPUT_GRID').trigger('input');
					root.verifyTypeOP();
				});

				root.carregaListaMoedasSelect2();
				// root.SymbolInfoWidget();
				// root.carregarWidgetTradingView();

				$(document).off('input', '#INPUT_GRID').on('input', '#INPUT_GRID', function (e) {
					root.verifyTypeOP()
					var INPUT_GRID	=	$(this).val()
					var INPUT_ENTRY =	parseFloat($("#INPUT_ENTRY").val().replace(/,/g, ''));
					var INPUT_SL	=	parseFloat($("#INPUT_SL").val().replace(/,/g, ''));
					var INPUT_TP	=	parseFloat($("#INPUT_TP").val().replace(/,/g, ''));
					var buysell		=	(!$('.sell-crypto').hasClass("active") && $('.buy-crypto').hasClass("active"));
						objetoGrid	=	root.generateBuyGrid(((buysell) ? "BUY" : "SELL"), INPUT_ENTRY, INPUT_TP, INPUT_SL, INPUT_GRID);
					var html		=	$('#sinal-steps').html();
					var template	=	Mustache.render(html, objetoGrid);
					
					$($(this).data('espelho')).html($(this).val())

					// root.carregarWidgetAdvancedView();

					// var obj		= root.params.chartCandles;
					// if (obj && obj.opts && obj.data){
					// 	root.gridLine = [];
					// 	root.gridLine.push([
					// 		{
					// 			x: obj.data.twoDSeriesX[0][0],
					// 			y: obj.data.twoDSeriesX[obj.data.twoDSeriesX.length - 100][1]
					// 		}, {
					// 			x: obj.data.twoDSeriesX[obj.data.twoDSeriesX.length - 100][0],
					// 			y: obj.data.twoDSeriesX[obj.data.twoDSeriesX.length - 100][1]
					// 		}]);
					//  }

					// console.log(root.params.chartCandles.opts.series)
					// var novasSeries = [{
					// 	name: 'nova linha 1',
					// 	type: 'line',
					// 	data: [
					// 		// Dados da nova linha 1
					// 	]
					// }, {
					// 	name: 'nova linha 2',
					// 	type: 'line',
					// 	data: [
					// 		// Dados da nova linha 2
					// 	]
					// }];

					// chartCandles.updateSeries(novasSeries);







					console.log(objetoGrid)
					if (root.timeoutOWL) { clearTimeout(root.timeoutOWL); }
					root.timeoutOWL = setTimeout(function () { root.refreshCarrosel(template) }, 500)
				});


				$('#INPUT_GRID').trigger('input');

				$(document).on("click",'.check-toggle', function () {
					$(this).toggleClass('on');
				});

				$(document)
				.off('click', '#create-signal')
				.on('click', '#create-signal', function (e) {
					e.preventDefault();
					var formData = $("#set-new-signal-form").object();
					console.log(objetoGrid)
					console.log(formData)



					// ajax2FA({
					ajax({
						csrfKey: 'newSignal',
						url: '/api/tradersignals/newtradersignal',
						method: 'POST',
						private: {
							"formData": formData,
							"objetoGrid": objetoGrid['GRID']
						},
						public: {},
						data: {},
						recaptcha: true,
						uploadAsync: true,
						fila: true,
						beforeSend: function (xhr) { },
						success: function (response, status, xhr) {
							console.log(response)
							
							window.successAjax('Sucesso', 'Requisição efetuada com sucesso') },
						error: function (errorMsg, xhr) { window.errorAjax('Ops, houve uma falha', 'Não sei dizer aonde foi') },
						done: function (xhr) { },
					});
					return false;
				});














				var datatable = await datatableInit({
					"template": true,																				// true:TEMPLATE |   false:TABELA NORMAL
					"expand": true, 																		// CALLBACK AO VER DETALHES
					"responsive": true, 																		// CALLBACK AO VER DETALHES
					"csrfKey": 'newSignal',															// CHAVE CSRF		(string)
					"url": '/api/user/lista',															// ROTA DA API		(string)
					"element": $("#data-table-sinais-em-aberto"),									// TABELA			<table/>
					"templateDetalhes": $('#signal_detalhes'),									// TEMPLATE DOS DETALHES 
					"templateItem": $("#template_sinal"),							// TEMPLATE DOS ITENS <template/> 
					"searchInput": $('#' + root.params.prefixo + '_search_input'),								// INPUT DA PESQUISA <input>
					"templateColunas": $("#template_colunas"),							// TEMPLATE DA COLUNA <template/> 
					"containerColunas": $("#colunas-table"),								// ALVO DAS COLUNAS <div/> 
					"containerItem": '<div class="' + root.params.prefixo + '_vitrine row row-gutter-sm"></div>', // ALVO DOS ITENS 	(string) 
					"columns": [
						{ data: 'UID', name: 'UID', sTitle: "UID", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'EMAIL', name: 'EMAIL', sTitle: "EMAIL", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'NOME', name: 'NOME', sTitle: "NOME", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'CPF', name: 'CPF', sTitle: "CPF.", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'RG', name: 'RG', sTitle: "RG.", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'LOGIN', name: 'LOGIN', sTitle: "LOGIN", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'AVATAR', name: 'AVATAR', sTitle: "AVATAR", className: '', width: "auto", orderable: true, sType: "string", visible: false, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'ENTROU_EM', name: 'ENTROU_EM', sTitle: "ENTROU_EM", className: '', width: "auto", orderable: true, sType: "string", visible: false, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'SEGUINDO', name: 'SEGUINDO', sTitle: "SEGUINDO", className: '', width: "auto", orderable: true, sType: "string", visible: false, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'BLOQUEADO', name: 'BLOQUEADO', sTitle: "BLOQUEADO", className: '', width: "auto", orderable: true, sType: "string", visible: false, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'SEGUINDO_COUNT', name: 'SEGUINDO_COUNT', sTitle: "SEGUINDO_COUNT", className: '', width: "auto", orderable: true, sType: "string", visible: false, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{ data: 'SEGUIDORES', name: 'SEGUIDORES', sTitle: "SEGUIDORES", className: '', width: "auto", orderable: true, sType: "string", visible: false, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
						{
							data: null, name: '', sTitle: "", width: "auto", orderable: false, sType: "string", visible: false,
							responsivePriority: 1,
							className: 'text-center',
							defaultContent: `<div class="btn btn-block btn-success">Detalhes</div>`,
							fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) {
								$(aData).find('.btn-success').click(function () {
									window.location = "/office/usuario/detalhes/" + sData['UID'];
								})
							},
						}
					],
				});
				












			},

			onClose: async function () {root = this;},
			onLoad: async function () {root = this;},
			carregaListaMoedasSelect2: async function () {
				root = this;
				return  fetch('https://api.binance.com/api/v3/exchangeInfo')
				.then(response => {
					if (!response.ok) {throw new Error('Erro ao carregar os dados.');}
					return response.json();
				}).then(data => {
					const symbols = data.symbols.map(symbol => ({id: symbol.symbol,text: `${symbol.symbol} (${symbol.baseAsset}/${symbol.quoteAsset})`}));
					const select = document.getElementById('SYMBOL');
					symbols.forEach(symbol => {
						const option = new Option(symbol.text, symbol.id);
						select.add(option);
					});
					$('#SYMBOL').select2();
					$('#SYMBOL').on('change', function () {
						// Aqui você pode adicionar qualquer ação que deseja executar quando a seleção muda
						console.log('Seleção alterada:', $(this).val());
						// root.SymbolInfoWidget($(this).val());
						root.gaugeTradeViewer($(this).val());
						root.miniGraphTradeViewer($(this).val());
						root.carregarWidgetAdvancedView($(this).val());
					});


				})
				.catch(error => console.error('Erro:', error));



			},

			SymbolInfoWidget: function (newSymbol="BTCUSDT") {
				root = this;
				const script	= document.createElement("script");
				script.type		= "text/javascript";
				script.src		= "https://s3.tradingview.com/external-embedding/embed-widget-symbol-info.js";
				script.async	= true;
				script.text		= JSON.stringify({
									"symbol": "BINANCE:" + newSymbol,
									"width": '100%',
									"locale": "br",
									"colorTheme": "light",
									"isTransparent": false
								});
				const container = document.getElementById('tradingview-widget-symbol-container');
				container.innerHTML = '<div id="tradingview-widget-container__widget"></div>';
				container.appendChild(script);
			},

			carregarWidgetTradingView: function () {
				root = this;
				const symbols = [
									{ proName: "BINANCE:SPXUSD", title: "S&P 500 Index" },
									{ proName: "BINANCE:NSXUSD", title: "US 100 Cash CFD" },
									{ proName: "BINANCE:EURUSD", title: "EUR to USD" },
									{ proName: "BINANCE:BTCUSD", title: "Bitcoin" },
									{ proName: "BINANCE:ETHUSD", title: "Ethereum" }
								];
				const	script = document.createElement("script");
						script.type = "text/javascript";
						script.src = "https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js";
						script.async = true;
						script.text = JSON.stringify({
							symbols: symbols,
							showSymbolLogo: false,
							isTransparent: false,
							displayMode: 'compact',
							colorTheme: 'light',
							locale: 'br'
						});

				const container = document.getElementById('tradingview-widget-container');
				container.innerHTML		='<div id="tradingview-widget-container__widget"></div>';
				container.appendChild(script);
			},

			carregarWidgetAdvancedView: async function (coin ='BTCUSDT') {
				root = this;
				// https://api.binance.com/api/v3/historicalTrades?symbol=BTCUSDT
				// fetch('https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=1d')
				// Data de início e fim (em milissegundos)
				// root = { params: {} }


				var startTime	= new Date('2022-04-17 08:00:00').getTime();
				var endTime		= new Date('2022-04-17 09:30:00').getTime();
				var ateQuando	= new Date('2022-04-17 11:30:00').getTime();
				var interval	= '1m';

				function newLine(data, startOffsetMinutes, endOffsetMinutes) {
					// Obtém o timestamp atual
					const timestampAtual = new Date().getTime();

					// Calcula o timestamp de início e fim com base nos deslocamentos fornecidos
					const startTime2 = timestampAtual + ((startOffsetMinutes * 60) * 1000);
					const endTime2 = startTime2 + ((endOffsetMinutes * 60) * 1000);

					// Retorna os pontos de início e fim da linha
					return [
						{
							x: startTime2,
							y: data[0][1] // Aqui você pode ajustar o valor 'y' conforme necessário
						},
						{
							x: endTime2,
							y: data[data.length - 1][1] // Aqui você pode ajustar o valor 'y' conforme necessário
						}
					];
				}




				var coin		= 'BTCUSDT'
				var url			= `https://api.binance.com/api/v3/klines?symbol=${coin}&interval=${interval}&startTime=${startTime}&endTime=${endTime}`;
				if (root.params.chartCandles) {root.params.chartCandles.destroy();}

				fetch(url)
				.then(response => {if (!response.ok) {throw new Error('Erro ao obter os negócios históricos');}return response.json();})
				.then(async data => {
			


											
					var options = {
						series: [
							{
								name: 'candle',
								type: 'candlestick',
								data: []
							},
							{
								name: 'GRID1',
								type: 'line',
								lineWidth: 2 ,
								color: "#00F",
								data: [
									{ x: new Date(parseFloat(data[data.length-2][0])),		y: parseFloat(data[0][1])},
									{ x: new Date(ateQuando),								y: (parseFloat(data[0][1])+20)}
								]
							},
							{
								name: 'GRID2',
								type: 'line',
								lineWidth: 2 ,
								color: "#000",
								data: [
									{ x: new Date(parseFloat(data[data.length-2][0])),		y: parseFloat(data[0][1])},
									{ x: new Date(ateQuando),								y: (parseFloat(data[0][1])+50)}
								]
							},
							// {
							// 	name: 'GRID3',
							// 	type: 'line',
							// 	lineWidth: 4 ,
							// 	color: "#ff8b00",
							// 	data: newLine(data,0,2)
							// },

							// {
							// 	name: 'GRID2',type: 'line',
							// 	data: [
							// 		{ x: new Date(data[0][0]),					y: (parseFloat(data[0][1])	-15)},
							// 		{ x: new Date(data[data.length - 5][0]),	y: (parseFloat(data[0][1])	-15)}
							// 	]
							// },

							// {
							// 	name: 'GRID3',type: 'line',
							// 	data: [
							// 		{ x: new Date(data[0][0]),					y: (parseFloat(data[0][1])	+15)},
							// 		{ x: new Date(data[data.length - 5][0]),	y: (parseFloat(data[0][1])	+15)}
							// 	]
							// }

						],




						 chart: {
							height: 350,
							type: 'line',
						},
						grid: {
							borderColor: '#f2f5f7',
						},
						title: {
							text: 'CandleStick Chart',
							align: 'left',
							style: {
								fontSize: '13px',
								fontWeight: 'bold',
								color: '#8c9097'
							},
						},
						stroke: {
							width: 3
						},

						// tooltip: {
							// shared: true,
							// custom: [function ({ seriesIndex, dataPointIndex, w }) {
							// 	return w.globals.series[seriesIndex][dataPointIndex]
							// }, function ({ seriesIndex, dataPointIndex, w }) {
							// 	var o = w.globals.seriesCandleO[seriesIndex][dataPointIndex]
							// 	var h = w.globals.seriesCandleH[seriesIndex][dataPointIndex]
							// 	var l = w.globals.seriesCandleL[seriesIndex][dataPointIndex]
							// 	var c = w.globals.seriesCandleC[seriesIndex][dataPointIndex]
							// 	return (
							// 		''
							// 	)
							// }]
						// },
						plotOptions: {
							candlestick: {
								colors: {
									upward: '#5ead2d',
									downward: '#cc3810'
								}
							}
						},
						xaxis: {
							// type: 'datetime',
							type: 'time',
							labels: {
								show: true,
								style: {
									colors: "#8c9097",
									fontSize: '11px',
									fontWeight: 600,
									cssClass: 'apexcharts-xaxis-label',
								},
							}
						},
						yaxis: {
							labels: {
								show: true,
								style: {
									colors: "#8c9097",
									fontSize: '11px',
									fontWeight: 600,
									cssClass: 'apexcharts-yaxis-label',
								},
							}
						}
					};


					var promises = data.map(function (a) {
						return new Promise(function (resolve) {
							options.series[0].data.push({
								x: new Date(a[0]),
								y: [a[1], a[2], a[3], a[4]]
							});
							resolve();
						});
					});

					Promise.all(promises).then(function () {
						root.params.chartCandles = new ApexCharts($("#candlestick-line")[0], options);
						root.params.chartCandles.render();
					}); 	/* */
				}).catch(error => {
					console.error('Erro:', error);
				});




				



			},

			gaugeTradeViewer: function (newSymbol) {
				root = this;
				const	script = document.createElement("script");
						script.type = "text/javascript";
						script.src = "https://s3.tradingview.com/external-embedding/embed-widget-technical-analysis.js";
						script.async = true;
						script.text = JSON.stringify({
							"interval": "15m",
							"width": '100%',
							"isTransparent": false,
							"height": 300,
							"symbol": "BINANCE:" + newSymbol,
							"showIntervalTabs": true,
							"displayMode": "single",
							"locale": "en",
							"colorTheme": "light"
						});

				const container = document.getElementById('tradingview-gauge-container');
					container.innerHTML		='<div id="tradingview-widget-container__widget"></div>';
					container.appendChild(script);
			},
			miniGraphTradeViewer: function (newSymbol) {
				root = this;
				const	script = document.createElement("script");
						script.type = "text/javascript";
						script.src = "https://s3.tradingview.com/external-embedding/embed-widget-mini-symbol-overview.js";
						script.async = true;
						
						script.text = JSON.stringify({
							"symbol": "BINANCE:" + newSymbol,
							"width": "100%",
							"height": "100%",
							"locale": "en",
							"dateRange": "1D",
							"colorTheme": "light",
							"trendLineColor": "rgba(152, 0, 255, 1)",
							"underLineColor": "rgba(152, 0, 255, 1)",
							"underLineBottomColor": "rgba(0, 255, 255, 0)",
							"isTransparent": false,
							"autosize": true,
							"largeChartUrl": "",
							"chartOnly": false,
							"noTimeScale": false
						});

				const container = document.getElementById('tradingview-miniGraph-container');
					container.innerHTML		='<div id="tradingview-widget-container__widget"></div>';
					container.appendChild(script);
			},

			verifyTypeOP:  function () {
				root = this;
				var isBuy = (!$('.sell-crypto').hasClass("active") && $('.buy-crypto').hasClass("active"));
				var INPUT_ENTRY = parseFloat($("#INPUT_ENTRY").val().replace(/,/g, ''));
				var INPUT_SL = parseFloat($("#INPUT_SL").val().replace(/,/g, ''));
				var INPUT_TP = parseFloat($("#INPUT_TP").val().replace(/,/g, ''));
				if (
					(isBuy && (INPUT_ENTRY >= INPUT_TP || INPUT_ENTRY <= INPUT_SL)) ||
					(!isBuy && (INPUT_ENTRY <= INPUT_TP || INPUT_ENTRY >= INPUT_SL))
				) {
					// console.danger("operação invalida")
					$(".alert-sinal-inconsistente").show();
				} else {
					$(".alert-sinal-inconsistente").hide();
					// console.success("tudo ok!")
				}
				$("#TYPE_OP").val(isBuy);

					

			},

			refreshCarrosel:  function (template) {
				root = this;
				let owl = $('.carousel-new-signal');
				owl.owlCarousel('destroy');
				owl.html(template);
				var startItem = $('.carousel-new-signal .owl-item').length - 1;
				owl.owlCarousel({
					center: false,
					loop: false,
					margin: 10,
					nav: false,
					startPosition: startItem,
					callbacks: true,
					dots: true,
					dotsClass: 'owl-dots dots-new-signal',
					responsive: {
						0: { items: 1 },
						768: { items: 2 },
						1024: { items: 2 },
						1440: { items: 4 }
					}
				});


			},

			generateBuyGrid:  function (type = "BUY", entry, TP, SL, steps, SPG = 1) {
				root = this;
				const grid = [];
				var SYMBOL = $('#SYMBOL').val();
				if (type == "BUY") {
					const stepSize = (TP - entry) / steps;
					grid.push({
						"TYPE": type,
						"SYMBOL": SYMBOL,
						"ENTRY": entry.toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"TP": (entry + stepSize).toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"SL": SL.toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"PROFIT": (stepSize).toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"LOSS": ((entry - SL)).toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"TS": $('#INPUT_TS').val(),
					});
					for (let i = 1; i < steps; i++) {
						var newEntry = entry + ((stepSize * i));
						var newTP = parseFloat(newEntry + stepSize);
						var entryObj = parseFloat(newEntry + SPG);
						var newSL = parseFloat(newEntry);
						var PROFIT = parseFloat(stepSize);
						entryObj = entryObj.toLocaleString('en-US', { maximumFractionDigits: 2 });
						newTP = newTP.toLocaleString('en-US', { maximumFractionDigits: 2 });
						newSL = newSL.toLocaleString('en-US', { maximumFractionDigits: 2 });
						PROFIT = PROFIT.toLocaleString('en-US', { maximumFractionDigits: 2 });
						var LOSS = (SPG).toLocaleString('en-US', { maximumFractionDigits: 2 });

						newGrid = { "TYPE": type, "SYMBOL": SYMBOL, "ENTRY": entryObj, "TP": newTP, "SL": newSL, "PROFIT": PROFIT, "LOSS": LOSS, "TS": $('#INPUT_TS').val() };
						grid.push(newGrid);
					}
				} else if (type == "SELL") {
					const stepSize = ((TP - entry) / steps) * -1;
					grid.push({
						"TYPE": type,
						"SYMBOL": SYMBOL,
						"ENTRY": entry.toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"TP": (entry - stepSize).toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"SL": SL.toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"PROFIT": (stepSize).toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"LOSS": ((SL - entry)).toLocaleString('en-US', { maximumFractionDigits: 2 }),
						"TS": $('#INPUT_TS').val()
					});
					var oldtp = (entry - stepSize);
					for (let i = 1; i < steps; i++) {
						var newEntry = entry - (stepSize * i);
						var newTP = parseFloat((newEntry - stepSize));
						var entryObj = parseFloat((newEntry - SPG));
						var newSL = parseFloat(newEntry);
						var PROFIT = stepSize;

						let numero1SemVirgula = parseFloat(newEntry);
						let numero2SemVirgula = parseFloat((newEntry - SPG));

						oldtp = newTP;
						entryObj = entryObj.toLocaleString('en-US', { maximumFractionDigits: 2 });
						newTP = newTP.toLocaleString('en-US', { maximumFractionDigits: 2 });
						newSL = newSL.toLocaleString('en-US', { maximumFractionDigits: 2 });
						PROFIT = PROFIT.toLocaleString('en-US', { maximumFractionDigits: 2 });
						var LOSS = (numero1SemVirgula - numero2SemVirgula).toLocaleString('en-US', { maximumFractionDigits: 2 });


						newGrid = { "TYPE": type, "SYMBOL": SYMBOL, "ENTRY": entryObj, "TP": newTP, "SL": newSL, "PROFIT": PROFIT, "LOSS": LOSS, "TS": $('#INPUT_TS').val() };

						grid.push(newGrid);
					}
				}
				return { "GRID": grid };
			},











		}
	}