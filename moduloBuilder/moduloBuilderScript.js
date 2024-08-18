//----------------------------------------------------------
//	DEFININDO A CLASSE moduloBuilderScript
//----------------------------------------------------------
if (typeof moduloBuilderScript != "function") {

	var moduloBuilderScript = function (url, params) {
		return {
			url: url,
			params: params,
			reload: async function () {
				console.color('reload:' + params.modulo, '#CCCCCC40')
			},
			onInit: async function () {

				var $builder = $('.stage').uiLayouter({
					createItem: function ($controller, $el) {
						var $item = $($('#item-template').html());
						$item.find('.contents').html($el.html());
						return $item;
					}
				});

				// Add item to builder
				$('.preview').on('click', function () {
					$builder.createPreview($(this));
				});
				$('.items li button').on('click', function () {
					$builder.addItem($(this));
				});

				// Confirm and remove item from builder
				$builder.on('click', 'button[data-action="remove"]', function () {
					var $item = $builder.getItem($(this));
					console.log($item)
					if ($item.length) {
						if (confirm('Are you sure you want to remove this item?')) {
							$builder.removeItem($item);
						}

						return false;
					}
				});







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

	console.danger("A função moduloBuilderScript já existe")

}