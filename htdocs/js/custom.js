$(document).ready(function () {
	console.log("We are connected!");

	settings();
	wrapContent();

	function settings() {
		if ($(".long-button").length > 0) {
			$(".long-button").click(function () {
				console.log("Value: " + $(this).value);
				returned($(this).value);
				$(this).parent().parent().toggle("explode");
			});
		}
	}

	function wrapContent() {
		if ($(".content .message").length > 0) {
			$(".content .message").wrap("<div class='module-wrapper block'><div class='module'></div></div>");
		}
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