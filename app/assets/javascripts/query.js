// Used in drawings list to make columns of equal height
$( document ).ready(function() {
	var heights = $(".dlist").map(function() {
		return $(this).height();
	}).get(),
	minHeight = Math.min.apply(null, heights);
	$(".dlist").height(minHeight);
});
