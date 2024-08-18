
<div class="row justify-content-center">
	<div class="col-sm-8 order-sm-1">
		<div class="card custom-card mt-4">		
			<div class="card-body">
				<form id="form-template">
					<div class="container">
						<div class="row">
							<div class="card-header d-flex mb-4">
								<h2 class="card-title flex-fill">DADOS ESTATICOS DE CONFIGURAÇÃO</h2>
								<div id="salvar-template" class="btn btn-success flex-fill"> Salvar </div>
							</div>
						</div>


						<div class="row template-content-footer">
							<table class="table align-middle ">
								<thead>
									<tr>
										<th scope="col">Campo</th>
										<th scope="col">Label</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>WHATSAPP:</td>
										<td><input class="form-control" name="WHATSAPP" value=""/></td>
									</tr>
									<tr>
										<td>FONE:</td>
										<td><input class="form-control" name="FONE" value=""/></td>
									</tr>
									<tr>
										<td>LINKEDIN:</td>
										<td><input class="form-control" name="LINKEDIN" value=""/></td>
									</tr>
									<tr>
										<td>EMAIL:</td>
										<td><input class="form-control" name="EMAIL" value=""/></td>
									</tr>
									<tr>
										<td>EMAIL FORMULARIO:</td>
										<td><input class="form-control" name="EMAIL_FORM" value=""/></td>
									</tr>
								</tbody>
							</table>
						</div>			
					</div>
				</form>
			</div>
		</div>
	</div>

</div>


<script  typ="text/javascript" src="/project/configs/configsScript.js?v={{CACHE}}"></script>
<script type="text/javascript">
	@csrfToken('configs')
	var params						= {
		modulo:'configs'
	};
	window.modulo['{ajax-href}']	= configsScript('{ajax-href}',params);
</script>
