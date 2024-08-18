//----------------------------------------------------------
//	DEFININDO A CLASSE clientesScript
//----------------------------------------------------------
if (typeof clientesScript != "function") {

	var	clientesScript = function (url, params) {
		return {
			url: url,
			params: params,
			reload: async function() {},
			onInit: async function () {


			},
			onClose: async function () {},
			onLoad: async function () { this.reload()},
		}
	}

} else {

	console.danger("A função clientesScript já existe")

}