$(document).ready(function () {
	console.log("We are connected!");
	if ($(".long-button").length > 0) {
		$(".long-button").click(function () {
			console.log("Value: " + $(this).value);
			returned($(this).value);
			$(this).parent().parent().toggle("explode");
		});
	}

	function returned(destination) {
		var xmlhttp = new XMLHttpRequest();

		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				console.log(xmlhttp.responseText);
			}
		}

		xmlhttp.open("GET", destination, true);
		xmlhttp.send();
	}
});