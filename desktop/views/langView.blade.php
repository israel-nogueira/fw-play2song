
	<div class="col-12">
		<div class="card custom-card m-0">
			<div class="card-body p-2">
				<div class="container">
					<div class="row">
						<div id="idioma-select-buttons" class="btn-lang btn-group btn-group-lg my-1" role="group" aria-label="Large button group">
							<button type="button" data-lang="pt" class="btn btn-outline-success active">PT</button>
							<button type="button" data-lang="en" class="btn btn-outline-success">EN</button>
							<button type="button" data-lang="es" class="btn btn-outline-success">ES</button>
						</div>							
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		
		
		$(document).off('click', '#idioma-select-buttons button')
		.on('click','#idioma-select-buttons button', function (e) { 
			e.preventDefault();
				$('#idioma-select-buttons button').removeClass('active');
				$(this).addClass('active');
				window.getLang = $(this).data('lang');
				window.current.reload(); 
			return false;
		});
		window.getLang = $('#idioma-select-buttons button.active').data('lang');

	</script>
