<!-- CSS EXTERNO  -->
	<link rel="stylesheet/css" type="text/css" href="/project/office/officeStyle.min.css" />
	<style type="text/less"></style>
	<div class="row justify-content-center">
		<div class="col-sm-8 order-sm-1">
			<div class="card custom-card mt-4">		
				<div class="card-body">
					<form id="form-template">
						<div class="container">
							<div class="row">
								<button id="teste-upload">TESTE</button>
								<button id="teste-upload2">TESTE2</button>
								
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>

<script  type="text/javascript" src="/project/office/officeScript.js?v={{ $RAND }}"></script>

<script type="text/javascript">
	@csrfToken('testeUpload')
	@csrfToken('officeCRSF')
	window.modulo['{ajax-href}']	= officeScript('{ajax-href}',{});

	

	var formUpload = window.formUpload();
	var inputFile2 = formUpload.setInput('inputFile2');
	var inputFile = formUpload.setInput('inputFile');
		inputFile.multiple(true);		
		inputFile.accept('.jpg,.jpeg,.png,image/*');
		inputFile.on('change', function () {
			$(formUpload.form()).ajaxForm({
				url:"/api/upload.php",
				beforeSubmit: function() {
					console.log('zera progress')
				},
				uploadProgress: function(event, position, total, percentComplete) {
					console.log('Progresso:',percentComplete+"%");
				},
				success: function(response) {console.log(response);},
				error: function(error) {console.error('Erro:', error);}
			});
		});
		
		$(document).on('click','#teste-upload', function (e) { 
			e.preventDefault();
				inputFile.click();		
			return false;
		});
		$(document).on('click','#teste-upload2', function (e) { 
			e.preventDefault();
				inputFile2.click();		
			return false;
		});









</script>
