<link rel="stylesheet/css" type="text/css" href="/project/moduloBuilder/moduloBuilderStyle.min.css" />
{{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"> --}}
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/thelevicole/ui-layouter@1.0.0-alpha/dist/ui-layouter.css">
<style type="text/less">
	// LESS aqui
</style>

<style type="text/css">
	#app {
		display: flex;
		flex-direction: row;
	}

	.items {
		width: 200px;
		align-self: flex-start;
		overflow-y: auto;
		max-height: 100vh;
	}

	.stage {
		flex-grow: 1;
		padding: 0 15px;
		margin: 5px 0;
		margin-left: 15px;
	}

	/* Dotted handle */
	.my-custom-draggable .handle {
		display: inline-block;
		width: 20px;
		height: 30px;
		overflow: hidden;
		
		font-size: 1rem;
		line-height: 6px;
		letter-spacing: 2px;
		vertical-align: middle;
		color: #cccccc;
		font-weight: bold;
		text-align: center;

		cursor: move;
		margin-top: -0.25rem;
	}

	.my-custom-draggable .handle:after {
		content: '.. .. .. ..';
	}

</style>


<div class="container-fluid">
	<div class="row justify-content-center mt-4">
		<div class="col-12">
			<div class="card custom-card">
				<div class="card-body">
					<div class="team-header">
						<div id="app">
							<button type="button" class="btn btn-outline-secondary btn-block shadow-sm preview">Preview</button>

							<ul class="items list-unstyled">
								<li class="m-3">
									<button type="button" class="btn btn-outline-secondary btn-block shadow-sm">Item 1</button>
								</li>
								<li class="m-3">
									<button type="button" class="btn btn-outline-secondary btn-block shadow-sm">Item 2</button>
								</li>
								<li class="m-3">
									<button type="button" class="btn btn-outline-secondary btn-block shadow-sm">Item 3</button>
								</li>
								<li class="m-3">
									<button type="button" class="btn btn-outline-secondary btn-block shadow-sm">Item 4</button>
								</li>
								<li class="m-3">
									<button type="button" class="btn btn-outline-secondary btn-block shadow-sm">Item 5</button>
								</li>
							</ul>
							
							<div class="stage"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<template id="item-template">
	<div class="my-custom-draggable shadow-sm">
		<div class="card-body p-2 row align-items-center no-gutters">
			<div class="col-auto">
				<div class="handle" draggable="true" title="Click and drag"></div>
			</div>
			<div class="col">
				<div class="contents px-2"></div>
			</div>
			<div class="col-auto ml-auto">
				<button type="button" class="btn btn-outline-danger btn-sm" data-action="remove">&times;</button>
			</div>
		</div>
	</div>
</template>
<script  typ="text/javascript" src="/project/moduloBuilder/moduloBuilderScript.js?v={{CACHE}}"></script>
<script src="/project/moduloBuilder/ui-layouter.jquery.js?v={{CACHE}}" type="text/javascript"></script>

<script type="text/javascript">
	@csrfToken('moduloBuilder')
	var params						= {
		modulo:'moduloBuilder'
	};
	window.modulo['{ajax-href}']	= moduloBuilderScript('{ajax-href}',params);
</script>
