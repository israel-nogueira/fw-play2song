//----------------------------------------------------------
//	DEFININDO A CLASSE websiteScript
//----------------------------------------------------------


	var	websiteScript = function (url, params) {
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


	