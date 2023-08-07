
var minLength = 6;


$(document).ready(function(){
	$('form').submit(function(event){
		var submit = true;

		aliasField = $("#alias").val();
		if(aliasField.match(/\d/) !== null){
					var aliasLength = aliasField.length;
    	    		if(aliasLength < minLength){
    				$('span').text('El alias debe tener '+minLength+' caractéres como mínimo y debe contener letras y números.');
    				submit = false;
    				}else{
    					if ($("#checkboxes input:checkbox:checked").length > 1) {
    							$('span').text('Voto realizado.');
							} else {
								$('span').text('Seleccione más de una opción');
								submit = false;
						}
					}
    	    	} else {
    	    		$('span').text('El alias debe tener '+minLength+' caractéres como mínimo y debe contener letras y números.');
    	    		submit = false;
    	    	}
    	if (submit === false){
    		event.preventDefault();
    	}
	});
}	);

document.getElementById('rut').addEventListener('input', function(evt) {
  let value = this.value.replace(/\./g, '').replace('-', '');
  
  if (value.match(/^(\d{2})(\d{3}){2}(\w{1})$/)) {
    value = value.replace(/^(\d{2})(\d{3})(\d{3})(\w{1})$/, '$1.$2.$3-$4');
  }
  else if (value.match(/^(\d)(\d{3}){2}(\w{0,1})$/)) {
    value = value.replace(/^(\d)(\d{3})(\d{3})(\w{0,1})$/, '$1.$2.$3-$4');
  }
  else if (value.match(/^(\d)(\d{3})(\d{0,2})$/)) {
    value = value.replace(/^(\d)(\d{3})(\d{0,2})$/, '$1.$2.$3');
  }
  else if (value.match(/^(\d)(\d{0,2})$/)) {
    value = value.replace(/^(\d)(\d{0,2})$/, '$1.$2');
  }
  this.value = value;
});

