//----------------------------------------------------------
//	DEFININDO A CLASSE galeriasScript
//----------------------------------------------------------
var galeriasScript = function (url, params) {
	return {
		url: url,
		params: params,
		onInit: async function () {
			await this.onLoad();
			await this.initTable();
			console.log('INIT TABLE')
		},
		onLoad: async function () { this.reload() },
		onClose: async function () { },
		reload: async function () {

			$("#medidas-thumb").select2({
				tags: true,
				tokenSeparators: [',', ' '],
				createTag: function (params) {
					var regex = /^\d+x\d+(x\d+)?$/i;
					var isValid = regex.test(params.term.toLowerCase());
					return isValid ? { id: params.term.toLowerCase(), text: params.term.toLowerCase() } : null;
				}
			})


			$(document)
				.off('click', '.config-galeria-galerias')
				.on('click', '.config-galeria-galerias', function (e) {
					e.preventDefault();
					var ID = $(this).data('uidgaleria')
					console.log(ID)
					//window.location.pathname.split('/')[3]
					ajax({
						csrfKey: 'officeCRSF',
						url: '/api/galeria/galerias/detalhes/' + ID,
						method: 'POST',
						recaptcha: false,
						fila: true,
						beforeSend: function (xhr) { },
						success: async function (response, status, xhr) {
							$('#modal_galeria input[name="TITULO"]').val(response.response.TITULO)

							$('#modal_galeria .close-button').off('click').on('click', async function () { $('#modal_galeria').modal('hide'); })
							$('#modal_galeria .confirm-button').off('click').on('click', async function () {
								$('#modal_galeria').modal('hide');

								await ajax({
									csrfKey: 'officeCRSF',
									url: '/api/galeria/galerias/salvar/' + ID,
									method: 'POST',
									private: $('#form-detalhes-galeria').object(),
									recaptcha: true,
									fila: true,
									beforeSend: function (xhr) { },
									success: function (response, status, xhr) {
										params.startDT.ajax.reload();
										window.successAjax('Sucesso', 'Plugin salvo com sucesso');
										console.log(response)
									},
									error: function (errorMsg, xhr) { window.errorAjax('Ops, houve uma falha', 'Não sei dizer aonde foi'); console.error(errorMsg, xhr) },
									done: function (xhr) { }
								});
							})

							$('#modal_plugins').modal('show');
						},
						error: function (errorMsg, xhr) { window.errorAjax('Ops, houve uma falha', 'Não sei dizer aonde foi') },
						done: function (xhr) { },
					});
					$('#modal_galeria').modal('show');
					return false;
				});

			$(document).on('click', '.add-nova-galeria', function (e) {
				e.preventDefault();
				ajax({
					csrfKey: 'officeCRSF',
					url: '/api/galeria/galerias/novo/' + window.location.pathname.split('/')[3],
					method: 'POST',
					recaptcha: true,
					fila: true,
					beforeSend: function (xhr) { },
					success: function (response, status, xhr) {
						window.successAjax('Sucesso', 'Plugin adicionado com sucesso')
						params.startDT.ajax.reload();
					},
					error: function (errorMsg, xhr) { window.errorAjax('Ops, houve uma falha', 'Não sei dizer aonde foi') },
					done: function (xhr) { },
				})
				return false;
			});

			$(document).on('click', '.delete-galeria', function (e) {
				e.preventDefault();
				var ID = $(this).data('uidgaleria')

				window.confirm('Você quer excluir mesmo essa galeria?', 'Essa ação é irreversível e irá excluir todas as galerias e fotos contidas dentro dela.', function () {
					ajax({
						csrfKey: 'officeCRSF',
						url: '/api/galeria/galerias/excluir/' + ID,
						method: 'POST',
						recaptcha: true,
						uploadAsync: true,
						fila: true,
						beforeSend: function (xhr) { },
						success: function (response, status, xhr) {
							window.successAjax('Sucesso', 'Plugin excluido com sucesso')
							params.startDT.ajax.reload();
						},
						error: function (errorMsg, xhr) { window.errorAjax('Ops, houve uma falha', 'Não sei dizer aonde foi') },
						done: function (xhr) { },

					});

				}, function () {

				});





				return false;
			});


		},

		initTable: async function () {
			Mustache.tags = ["[", "]"];
			var timeout_search_input = null;
			const url = this.url;
			const prefix = this.params.prefixo;
			const ESTILO = 0;
			const ESTILO_LISTA = [
				{
					'template': '#' + prefix + '_lista_galerias',
					'container': '<ul class="' + prefix + '_vitrine list-unstyled crm-top-deals mb-0 card p-4 mb-5"></ul>',
				},
				{
					'template': '#' + prefix + '_lista_cards',
					'container': '<div class="' + prefix + '_vitrine row row-gutter-sm"></div>',
				},
				{
					'template': '#' + prefix + '_lista_plugin_galeria',
					'container': '<ul class="' + prefix + '_vitrine list-unstyled crm-top-deals mb-0 card p-4 mb-5"></ul>',
				},
				{
					'template': '#' + prefix + '_lista_plugin',
					'container': '<ul class="' + prefix + '_vitrine list-unstyled crm-top-deals mb-0 card p-4 mb-5"></ul>',
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
				{ data: 'ID', name: 'ID', sTitle: "ID", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
				{ data: 'UID', name: 'UID', sTitle: "UID", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
				{ data: 'TITULO', name: 'TITULO', sTitle: "TITULO", className: '', width: "auto", orderable: true, sType: "string", visible: true, fnCreatedCell: function (aData, nTd, sData, oData, iRow, iCol) { }, },
			];

			/*
			|------------------------------------------------------------------
			|	INSERE OS ITENS DA VITRINE 
			|-------------------------------------------------------------------
			*/

			function montaVitrine(row, data) {
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
				|	OWL CARROSSEL DAS COLUNAS NO TOPO
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
				clearTimeout(timeout_search_input);
				if (SEARCH != '') {
					timeout_search_input = setTimeout(function () {
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
						csrfKey: 'DATATABLE_MIDIA_PLUGINS',
						url: '/api/galeria/galerias/listar',
						method: 'POST',
						public: { 
							plugin: window.location.pathname.split('/')[3],
							oAjaxData: settings.oAjaxData },
						private: {},
						data: {},
						beforeSend: function (xhr) { },
						success: function (response, status, xhr) {

							if (response.status == 1) {
								drawCallback(response.response);
							} else {
								console.log(response.response);
							}
							$('#' + prefix + '_dt_container .dtbl-ctnr .dataTables_processing').hide()
						},
						error: function () { console.error(...arguments) },
						done: function () { console.error(...arguments) }
					});
				}
			});



		},


		startDetalhes: function () {

			$('.form-detalhes-user').off('submit').on('submit', function (e) {
				e.preventDefault();
				var UID = $(this).parents('.detalhes-usuario').data('uid');
				var $_FORM = $(this).object();
				if ($_FORM['TYPE'] == 'acesso') {
					ajax2FA({
						csrfKey: 'DATATABLE_MIDIA_PLUGINS',
						url: '/api/user/save-data/' + UID,
						method: 'POST',
						private: $_FORM,
						recaptcha: true,
						beforeSend: function (xhr) { },
						success: function (response, status, xhr) {
							console.log(response)
						},
						error: function (errorMsg, xhr) { },
						done: function (xhr) { },
					});

				} else {
					ajax({
						csrfKey: 'DATATABLE_MIDIA_PLUGINS',
						url: '/api/user/save-data/' + UID,
						method: 'POST',
						private: $_FORM,
						recaptcha: true,
						beforeSend: function (xhr) { },
						success: function (response, status, xhr) {
							console.log(response)
							window.alert('Sucesso', 'Usuario salvo com sucesso!', function () { }, function () { })

						},
						error: function (errorMsg, xhr) { },
						done: function (xhr) { },
					});
				}





				return false;
			});


			$('.abas_detalhes_user').off('click').on('click', function (e) {
				e.preventDefault();
				var myTab = $(this).attr('href');
				$(this).parents('.nav-tabs-detalhes-user').find('.nav-item');
				$('.detalhes-user-tabs .tab-pane').removeClass('active');
				$('.detalhes-user-tabs .tab-pane' + myTab).addClass('active');
				return false;
			})



		},
	}
}




