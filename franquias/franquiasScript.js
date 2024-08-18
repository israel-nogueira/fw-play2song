//----------------------------------------------------------
//	DEFININDO A CLASSE franquiasScript
//----------------------------------------------------------
if (typeof franquiasScript != "function") {

	var	franquiasScript = function (url, params) {
		return {
			url: url,
			params: params,
			reload: async function() {
				console.color('reload:' + params.modulo, '#CCCCCC40')
			},
			onInit: async function () {
				console.color('Scripts de instalação do módulo', '#CCCCCC40')
				this.onLoad();
			},

			onLoad: async function () {
				
				console.color('onLoad:' + params.modulo, '#CCCCCC40')
				this.reload()
			},

			onClose: async function () {
				console.color('onClose:' + params.modulo, '#CCCCCC40')
			},

			initTable: async function () {
				const elemento = $("#LISTA_BLOG");
				const ajaxURL = '/api/blog/listar';
				const colunas = [
					{ data: 'UID', name: 'UID', sTitle: "UID", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'EMAIL', name: 'EMAIL', sTitle: "EMAIL", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'NOME', name: 'NOME', sTitle: "NOME", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'EMAIL', name: 'EMAIL', sTitle: "EMAIL", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'CPF', name: 'CPF', sTitle: "CPF.", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'RG', name: 'RG', sTitle: "RG.", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
					{ data: 'LOGIN', name: 'LOGIN', sTitle: "LOGIN", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, }
				];

				// colunas[0].fnCreatedCell(aData, nTd, sData, oData, iRow, iCol) { }

				/*
				|------------------------------------------------------------------
				|	INSERE OS ITENS DA VITRINE 
				|-------------------------------------------------------------------
				*/
				Mustache.tags = ["[", "]"];
				var timeout_search = null;
				const url = this.params.url;
				const prefix = this.params.prefixo;

				function montaVitrine(row, data) {
					data.AVATAR = 'https://loremflickr.com/g/200/200/face?random=' + Math.random()
					data.HEADER = 'https://picsum.photos/seed/' + Math.random() + '/557/100'
					$('#' + prefix + '_dt_container .' + prefix + '_vitrine').prepend(
						Mustache.render(elemento.html(), data)
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
					|	OWL CARROSSEL DAS COLUNAS DO <THEAD>
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
				|	ORGDENAÇÃO DOS ITENS
				|-------------------------------------------------------------------
				*/
				$(document).on('click', '.abinha[data-orderable="true"]', function (e) {
					e.preventDefault();
					var index = $(this).data('index');
					if ($(this).hasClass('asc')) {
						$(this).removeClass('asc')
						$(this).addClass('desc')
						params.startDT.order([index, 'asc']).draw();

					} else {
						$(this).removeClass('desc')
						$(this).addClass('asc')
						params.startDT.order([index, 'desc']).draw();

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
					clearTimeout(timeout_search);
					if (SEARCH != '') {
						timeout_search = setTimeout(function () {
							params.startDT.search('')
							colunas.forEach(function (coluna, index) { params.startDT.column(index).search(''); })
							if (index != 'all') {
								params.startDT.column(index).search(SEARCH).draw();
							} else {
								params.startDT.search(SEARCH).draw();
							}
						}, 500)
					} else {
						if (params.startDT.search() != '') {
							params.startDT.search('')
							params.startDT.draw();
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

				params.startDT = $(idDT).DataTable({
					"scrollX": false, "processing": true, "serverSide": true, "paging": true,
					'autofill': true, "info": true, 'order': [[0, 'asc']], "pagingType": "numbers",
					'select': true, 'responsive': true, 'buttons': true, dom: 'l<"toolbar">frtip',
					"language": languageData,
					'columns': colunas,

					rowCallback: function (row, data) {
						montaVitrine(row, data)
					},

					preDrawCallback: function (settings) {
						$('#' + prefix + '_dt_container .' + prefix + '_vitrine').remove();
						// AQUI INSERE O CONTAINER DO TEMPLATE
						// $('#'+prefix+'_dt_container').prepend('...');
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
							csrfKey: 'blog',
							url: ajaxURL,
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
		}
	}

} else {

	console.danger("A função franquiasScript já existe")

}