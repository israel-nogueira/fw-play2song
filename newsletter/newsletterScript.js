//----------------------------------------------------------
//	DEFININDO A CLASSE newsletterScript
//----------------------------------------------------------
if (typeof newsletterScript != "function") {

	var	newsletterScript = function (url, params) {
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
		}
	}

} else {

	console.danger("A função newsletterScript já existe")

}