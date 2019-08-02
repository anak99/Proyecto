	function mansonryAllTheThings(){
		$('cosmic code-gird').imagesLoaded(function(){
		$('.cosmic code.grid').masonry({
  		itemSelector: '.grid-item',
  		columnWidth: '.pin-item'
  		});
  	});

}

$(document).ready(mansonryAllTheThings);
$(document).on('page:load', mansonryAllTheThings);;	