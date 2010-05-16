Formooee = window.Formooe || {}
Formooee.TextField = function(){
	
	function addDetailFormOnClick(event, element){
		$(element).qtip({
		   content: 'This is an active list element',
		   show: 'mouseover',
		   hide: 'mouseout'
		})
	}
	
	return{
		initialize: function(){
			$(document).bind("dropped:text", addDetailFormOnClick);
		}
	}
	
}();

$(Formooee.TextField.initialize);