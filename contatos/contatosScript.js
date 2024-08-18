//----------------------------------------------------------
//	DEFININDO A CLASSE contatosScript
//----------------------------------------------------------
if (typeof contatosScript != "function") {

	var	contatosScript = function (url, params) {
		return {
			url: url,
			params: params,
			reload: async function() {

				ajax({
					csrfKey: 'contatos',
					url: '/api/contatos/getData',
					method: 'POST',
					public: {FW_LANG:window.getLang},
					success: function (response, status, xhr) {
						$('#dados-template-contatos input[name="TOP_TITLE"]').val((response.response['TOP_TITLE']||''));
						$('#dados-template-contatos input[name="ADRESS_TEXT"]').val((response.response['ADRESS_TEXT']||''));
						$('#dados-template-contatos input[name="ADRESS_TITLE"]').val((response.response['ADRESS_TITLE']||''));
						$('#dados-template-contatos input[name="EMAILS_TEXT"]').val((response.response['EMAILS_TEXT']||''));
						$('#dados-template-contatos input[name="EMAILS_TITLE"]').val((response.response['EMAILS_TITLE']||''));
						$('#dados-template-contatos input[name="FW_LANG"]').val((response.response['FW_LANG']||''));
						$('#dados-template-contatos input[name="HORARIOS_TEXT"]').val((response.response['HORARIOS_TEXT']||''));
						$('#dados-template-contatos input[name="HORARIOS_TITLE"]').val((response.response['HORARIOS_TITLE']||''));
						$('#dados-template-contatos input[name="PLACEHOLDER_ASSUNTO"]').val((response.response['PLACEHOLDER_ASSUNTO']||''));
						$('#dados-template-contatos input[name="PLACEHOLDER_EMAIL"]').val((response.response['PLACEHOLDER_EMAIL']||''));
						$('#dados-template-contatos input[name="PLACEHOLDER_NOME"]').val((response.response['PLACEHOLDER_NOME']||''));
						$('#dados-template-contatos input[name="PLACEHOLDER_TELEFONE"]').val((response.response['PLACEHOLDER_TELEFONE']||''));
						$('#dados-template-contatos input[name="PLACEHOLDER_TEXTO"]').val((response.response['PLACEHOLDER_TEXTO']||''));
						$('#dados-template-contatos input[name="TEXTO_BOTAO"]').val((response.response['TEXTO_BOTAO']||''));
						$('#dados-template-contatos input[name="TITULO_FORM"]').val((response.response['TITULO_FORM']||''));


						window.successAjax('Sucesso','Requisição efetuada com sucesso')
					},
					error:function (errorMsg, xhr) {window.errorAjax('Ops, houve uma falha','Não sei dizer aonde foi')},
					done:function (xhr) {},
				});


				console.color('reload:' + params.modulo, '#CCCCCC40')
			},
			onInit: async function () {

					$(document) 
					.off('click','#salva-dados-contatos')
					.on('click','#salva-dados-contatos', function (e) { 
						e.preventDefault();
							
						
						var formData = $('#dados-template-contatos').object()
						formData['FW_LANG']=window.getLang;

						


						ajax({
							csrfKey: 'contatos',
							url: '/api/contatos/salvar',
							method: 'POST',
							public: formData,
							success: function (response, status, xhr) {window.successAjax('Sucesso','Requisição efetuada com sucesso')},
							error:function (errorMsg, xhr) {window.errorAjax('Ops, houve uma falha','Não sei dizer aonde foi')},
							done:function (xhr) {},
						});



						return false;
					});	



				this.onLoad();
			},
			onLoad: async function () {
				
				console.color('onLoad:' + params.modulo, '#CCCCCC40')
				this.reload()
			},
			onClose: async function () {
				console.color('onClose:' + params.modulo, '#CCCCCC40')
			},
		}
	}

} else {

	console.danger("A função contatosScript já existe")

}