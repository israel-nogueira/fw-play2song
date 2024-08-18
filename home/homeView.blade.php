<!-- CSS EXTERNO  -->
	<link rel="stylesheet/css" type="text/css" href="/project/home/homeStyle.min.css" />
	<style type="text/less"></style>
	
	{!!system\lib\system::langView()!!}

	<div class="row justify-content-center">
		<div class="col-sm-8 order-sm-1">
			<div class="card custom-card mt-4">		
				<div class="card-body">
					<form id="form-template">
						<div class="container">
							<div class="row">
								<div class="card-header d-flex mb-4">
									<h2 class="card-title flex-fill">HOME</h2>
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
											<td>TITULO PRINCIPAL:</td>
											<td><input class="form-control" name="OUTRAS_SOLUCOES" value=""/></td>
										</tr>
										<tr>
											<td>CONTEUDO DE TEXTO:</td>
											<td><input class="form-control" name="OUTRAS_SOLUCOES_TXT" value=""/></td>
										</tr>
										<tr>
											<td>ANOS DE EXPERIÊNCIA: (apenas numeros)</td>
											<td><input type="number" class="form-control" name="ANOS_EXP_NUM" value=""/></td>
										</tr>
										<tr>
											<td>ANOS DE EXPERIÊNCIA (complemento de texto):</td>
											<td><input class="form-control" name="ANOS_EXP_TXT" value=""/></td>
										</tr>
										<tr>
											<td>ANOS DE EXPERIÊNCIA CONTEUDO:</td>
											<td><input class="form-control" name="ANOS_EXP_DESC" value=""/></td>
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

<script  type="text/javascript" src="/project/home/homeScript.js?v=2"></script>

<script type="text/javascript">

	@csrfToken('testeUpload')
	@csrfToken('homeCRSF')
	window.modulo['{ajax-href}']	= homeScript('{ajax-href}',{});
</script>
