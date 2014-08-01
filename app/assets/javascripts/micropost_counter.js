
//140 is the maximum number of characters

function updateCountdown() {

var maxnum = 140;
var typed = $('#micropost_content').val().length;

var remaining = maxnum - typed;
$('.countdown').text("You have "+  remaining + " characters left");
}

$(document).ready(function() {

	updateCountdown();
	$('#micropost_content').change(updateCountdown);
	$('#micropost_content').keyup(updateCountdown);

});



