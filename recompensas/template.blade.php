@section('LISTA')
	<template id="LISTA">
		<div>ELEMENTO DE TEMPLATE 1</div>
	</template>
@endsection

@section('FILTROS')
	<template id="{{$prefix}}_coluns-by-filter">
		<li>
			<a class="dropdown-item [active]" href="#" data-index="[index]" data-name="[name]">
				[sTitle]
			</a>
		</li>
	</template>
@endsection

@section('COLUNAS')
	<template id="{{$prefix}}_template_colunas">
		<div data-index="[index]" data-orderable="[orderable]" class="item flex-fill abinha asc" style="border-radius:0;"> 
			[sTitle]
			<svg class="setas_header"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" width="24" height="24" >
				<path d="M12 5L6 11H18Z" fill="#333" transform="translate(0, -4)" class="seta_asc"/>
				<path d="M12 19L18 13H6Z" fill="#333" transform="translate(0, 4)" class="seta_desc"/>
			</svg>
		</div>
	</template>
@endsection