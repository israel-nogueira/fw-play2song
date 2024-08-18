	//----------------------------------------------------------
	//	DEFININDO A CLASSE homeScript
	//----------------------------------------------------------


	var homeScript = function (url, params) {
		return {
			url: url,
			params: params,
			reload: async function () { 
				
				ajax({
					csrfKey: 'homeCRSF',
					url: '/api/home-get-template',
					method: 'POST',
					public: { LANG: window.getLang },
					recaptcha: false,
					success: function (response) {

						$('.template-content-footer input[name="OUTRAS_SOLUCOES"]')		.val((response.response['OUTRAS_SOLUCOES']||''));
						$('.template-content-footer input[name="OUTRAS_SOLUCOES_TXT"]')	.val((response.response['OUTRAS_SOLUCOES_TXT']||''));
						$('.template-content-footer input[name="ANOS_EXP_NUM"]')		.val((response.response['ANOS_EXP_NUM']||''));
						$('.template-content-footer input[name="ANOS_EXP_TXT"]')		.val((response.response['ANOS_EXP_TXT']||''));
						$('.template-content-footer input[name="ANOS_EXP_DESC"]')		.val((response.response['ANOS_EXP_DESC']||''));
													
					},
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
								csrfKey: 'homeCRSF',
								url: '/api/home-save-template',
								method: 'POST',
								private: dados,
								recaptcha: false,
								uploadAsync: false,
								fila: false,
								beforeSend:function (xhr) {},
								success: function (response, status, xhr) {
									console.log('=========>',response.status)
									if(response.status==1){
										window.successAjax('SUCESSO!','Salvo com sucesso!');
									}else{
										window.errorAjax('ERROR!','Entre em contato com o webmaster');
									}

								},
								error:function (errorMsg, xhr) {},
								done:function (xhr) {},
							});
							return false;
					});
			
			
			
			
			
			
			
			
			},

			initTable: async function () {
				Mustache.tags = ["[", "]"];
				var timeout_search_input = null;
				const url = this.params.url;
				const prefix = this.params.prefixo;
				const ESTILO = 3;
				const ESTILO_LISTA = [
					{
						'template': '#' + prefix + '_lista_cards',
						'container': '<div class="' + prefix + '_vitrine row row-gutter-sm"></div>',
					},
					{
						'template': '#' + prefix + '_lista_table',
						'container': '<ul class="' + prefix + '_vitrine list-unstyled crm-top-deals mb-0 card p-4 mb-5"></ul>',
					},
					{
						'template': '#' + prefix + '_lista_carrinho',
						'container': '<div class="card mb-5"><div class="table-responsive"><table class="' + prefix + '_vitrine table table-bordered text-nowrap"></table></div></div>',
					},
					{
						'template': '#' + prefix + '_lista_profiles',
						'container': '<div class="' + prefix + '_vitrine row row-gutter-sm"></div>',
					},
					{
						'template': '#' + prefix + '_lista_vitrine',
						'container': '<div class="' + prefix + '_vitrine row row-gutter-sm"></div>',
					},
					{
						'template': '#' + prefix + '_lista_timeline',
						'container': '<ul class="' + prefix + '_vitrine timeline list-unstyled"></ul>',
					},
				];
				/*
				|------------------------------------------------------------------
				|	DEFINE AS TAGS DO MUSTACHE
				|-------------------------------------------------------------------
				*/
				const colunas = [
					{ data: 'UID', name: 'UID', sTitle: "UID", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'EMAIL', name: 'EMAIL', sTitle: "EMAIL", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'NOME', name: 'NOME', sTitle: "NOME", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'EMAIL', name: 'EMAIL', sTitle: "EMAIL", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'CPF', name: 'CPF', sTitle: "CPF.", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'RG', name: 'RG', sTitle: "RG.", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'LOGIN', name: 'LOGIN', sTitle: "LOGIN", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, }
				];
				/*
				|------------------------------------------------------------------
				|	INSERE OS ITENS DA VITRINE 
				|-------------------------------------------------------------------
				*/

				function montaVitrine(row, data) {

					// data.avatar		= data.NOME.trim().split(' ')
					// fullName		= data.NOME.trim().split(' ').map(word => word[0].toUpperCase()).join('');
					// data.AVATAR		= data.AVATAR+fullName
					data.AVATAR = 'https://loremflickr.com/g/200/200/face?random=' + Math.random()
					data.HEADER = 'https://picsum.photos/seed/' + Math.random() + '/557/100'

					if (data.BLOQUEADO >= 1) {
						data.BLOQUEADO = { 'ICON': 'bi bi-person-plus', 'STRING': 'desbloquear', 'ICON_CLASS': '' };
					} else {
						data.BLOQUEADO = { 'ICON': 'bi bi-person-fill-slash', 'STRING': 'bloquear', 'ICON_CLASS': 'd-none' };
					}

					if (data.SEGUINDO >= 1) {
						data.SEGUINDO = { 'ICON': 'bi bi-person-fill-dash', 'STRING': 'Deixar de seguir', 'ICON_CLASS': 'active' };
					} else {
						data.SEGUINDO = { 'ICON': 'bi bi-person-fill-add', 'STRING': 'Seguir', 'ICON_CLASS': '' };
					}

					$('#' + prefix + '_dt_container .' + prefix + '_vitrine').prepend(
						Mustache.render($(ESTILO_LISTA[ESTILO]['template']).html(), data)
					);
				}
				/*
				|------------------------------------------------------------------
				|	INSERE O HEADER DAS COLUNAS 
				|-------------------------------------------------------------------
				*/
				function showColunas(aoColumns) {

					/*------------------------------------------------------------------*/

					$('#' + prefix + '_colunas-table').html('');
					$('#' + prefix + '_filtro-colum').html('')
					var filtro = Mustache.render($('#' + prefix + '_coluns-by-filter').html(), { index: 'all', active: 'active', sTitle: "Todas colunas" });
					$('#' + prefix + '_filtro-colum').append(filtro);
					$('#' + prefix + '_filtro-colum').append('<li><hr class="dropdown-divider"></li>');
					aoColumns.forEach(function (coluna, index) {
						if (coluna.visible) {
							coluna.index = index
							var html = Mustache.render($('#' + prefix + '_template_colunas').html(), coluna)
							$('#' + prefix + '_colunas-table').append(html)

							coluna.sTitle = 'por ' + coluna.sTitle
							var filtro = Mustache.render($('#' + prefix + '_coluns-by-filter').html(), coluna)
							$('#' + prefix + '_filtro-colum').append(filtro)

						}
					})
					/*
					|------------------------------------------------------------------
					|	OWL CARROSSEL HEADER
					|-------------------------------------------------------------------
					*/
					var owlConf = {
						touchDrag: true,
						mouseDrag: true,
						loop: true,
						mergeFit: true,
						nav: false,
						rewind: false,
						margin: -1,
						stagePadding: 5,
						responsiveClass: true,
						responsive: {
							0: { items: 1 },
							425: { items: 2 },
							768: { items: 5 },
							1000: { items: aoColumns.length, loop: false, drag: false }
						},
						onResized: function (event) { },
						onInitialized: function (event) { }
					};
					let owl = $('#' + prefix + '_colunas-table').owlCarousel(owlConf)
				}

				/*
				|------------------------------------------------------------------
				|	ORGDENAÇÃO DOS REGISTROS
				|-------------------------------------------------------------------
				*/
				$(document).on('click', '.abinha[data-orderable="true"]', function (e) {
					e.preventDefault();
					var index = $(this).data('index');
					if ($(this).hasClass('asc')) {
						$(this).removeClass('asc')
						$(this).addClass('desc')
						startDT.order([index, 'asc']).draw();

					} else {
						$(this).removeClass('desc')
						$(this).addClass('asc')
						startDT.order([index, 'desc']).draw();

					}
					return false;
				});


				/*
				|------------------------------------------------------------------
				|	PESQUISA POR UMA COLUNA ESPECIFICA
				|-------------------------------------------------------------------
				*/

				$(document).on('click', '#filtro-colum .dropdown-item', function (e) {
					e.preventDefault();
					$('#' + prefix + '_filtro-colum .dropdown-item').removeClass('active')
					$(this).addClass('active');
					pesquisa();
					return false;
				});
				/*
				|------------------------------------------------------------------
				|	FUNCTION DA PESQUISA
				|-------------------------------------------------------------------
				*/
				function pesquisa() {
					var COLUNA = $('#' + prefix + '_search_input').attr('search-column') + ':name';
					var SEARCH = $('#' + prefix + '_search_input').val();
					var index = $('#' + prefix + '_filtro-colum .dropdown-item.active').data('index');
					clearTimeout(timeout_search_input);
					if (SEARCH != '') {
						timeout_search_input = setTimeout(function () {
							startDT.search('')
							colunas.forEach(function (coluna, index) { startDT.column(index).search(''); })
							if (index != 'all') {
								startDT.column(index).search(SEARCH).draw();
							} else {
								startDT.search(SEARCH).draw();
							}
						}, 500)
					} else {
						if (startDT.search() != '') {
							startDT.search('')
							startDT.draw();
						}
					}
				}
				$('#' + prefix + '_search_input').off('keyup').on('keyup', function () { pesquisa() });
				/*
				|------------------------------------------------------------------
				|	INICIA O PLUGIN
				|-------------------------------------------------------------------
				*/
				var idDT = '#' + prefix + '_dt_container #' + prefix + '_datatable';


				const response = await fetch('/system/public/cdn/cdnjs.cloudflare.com/ajax/libs/datatables/1.10.20/js/Portuguese-Brasil.json');
				if (!response.ok) { console.danger('Erro ao buscar arquivo de tradução do datatable') }
				const languageData = await response.json();

				var startDT = $(idDT).DataTable({
					"scrollX": false, "processing": true, "serverSide": true, "paging": true,
					'autofill': true, "info": true, 'order': [[0, 'asc']], "pagingType": "numbers",
					'select': true, 'responsive': true, 'buttons': true, dom: 'l<"toolbar">frtip',
					// "language":{ "url": '/system/public/cdn/cdnjs.cloudflare.com/ajax/libs/datatables/1.10.20/js/Portuguese-Brasil.json'},
					"language": languageData,
					'columns': colunas,

					rowCallback: function (row, data) {
						montaVitrine(row, data)
					},

					preDrawCallback: function (settings) {
						$('#' + prefix + '_dt_container .' + prefix + '_vitrine').remove();
						$('#' + prefix + '_dt_container').prepend(ESTILO_LISTA[ESTILO]['container']);
					},

					drawCallback: function (settings) {
						$('#' + prefix + '_preload_root').hide();
						$('#' + prefix + '_datatable_wrapper').show();
					},
					initComplete: function (a, b) {
						$(idDT).hide();
						$(idDT + "_filter").hide();
						$(idDT + "_length").hide();
						$(idDT + "_wrapper").find('.dataTables_scrollHead').hide();
						showColunas(colunas);
					},
					"ajax": function (request, drawCallback, settings) {
						window.draw++;
						$('#' + prefix + '_preload_root').show();
						$('#' + prefix + '_datatable_wrapper').hide();
						ajax({
							csrfKey: 'DATATABLE_USERS',
							url: '/api/user/lista',
							method: 'POST',
							public: { oAjaxData: settings.oAjaxData },
							private: {},
							data: {},
							beforeSend: function (xhr) { },
							success: function (response, status, xhr) {

								if (response.status == 1) {
									drawCallback(response.response);
								} else {
									alert(response.response);
								}
								$('#' + prefix + '_dt_container .dtbl-ctnr .dataTables_processing').hide()
							},
							error: function () { console.error(...arguments) },
							done: function () { console.error(...arguments) }
						});
					}
				});



			},	









			onClose: async function () {},
			onLoad: async function () {},
		}
	}