(function($)
{
	var save_input= function()
	{

		$("#my_input").keyup(
			function(){
				var data=$(this).val().toLowerCase().split(" ");
				var elements=$("tbody").find("tr");
				if(this.value==="")
				{
					elements.show();
				return;
				}
				else
				{
					elements.hide();
					elements.filter(function() {

						for (var d = 0; d < data.length; ++d) {
							$(this).find("td").text().toLowerCase();

							if ($(this).is(":contains('" + data[d] + "')")) {
								console.log($(this).find("td").text());
								return true;
							}
						}
						return false;
					}).show();

				}
				}
		);

	}


	var init=function()
	{
		save_input();
	}

	init();
}
	)(jQuery)
