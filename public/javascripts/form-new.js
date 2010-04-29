Formooee = window.Formooe || {}
Formooee.NewForm = function(){
	//private methods
	
	function makeFormBuilderDroppable(){
		$("#form-builder").droppable({
			drop: function(event, ui) {
				doHighlight(this);
				addToFormBuilder(ui.draggable);
				addBackToPallette(ui.draggable);
			}
		});
	}
	
	function doHighlight(target){
		$(target).effect('highlight',{},1000);
	}
	
	function addToFormBuilder(formElement){
		var element = clean(formElement);
		$(element).width($(formElement).width());
		$(element).appendTo('#form-builder');
	}
	
	function addBackToPallette(formElement){
		var clone = clean(formElement.clone());
		$('#pallette').append($(clone).draggable());
	}
	
	function makeFormElementsDraggable(){
		$(".draggable").draggable();
	}
	
	function clean(formElement){
		return $(formElement).removeAttr("style");		
	}
	
	return{
			//public methods
			initialize:function(){
				makeFormBuilderDroppable();
				makeFormElementsDraggable();
			},
			
			prettifyGenerator:function(){
				$('#generate').button();
			}		
		}
}();

//Document Ready
$(Formooee.NewForm.initialize);
$(Formooee.NewForm.prettifyGenerator);