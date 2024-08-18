//----------------------------------------------------------
//	DEFININDO A CLASSE edicaoScript
//----------------------------------------------------------
class edicaoScript {
	constructor(url, params) {
		this.url = url;
		this.params = params;
	}
	onInit() {
		console.log(`onInit: ${this.url}`, this.params);
	}
	onClose() {
		console.log(`onClose: ${this.url}`, this.params);
	}
	onLoad() {
		console.log(`onLoad: ${this.url}`, this.params);
	}
}


