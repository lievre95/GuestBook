var data ='';
const is_num = /^\d+$/.test(data);
var is_space = data.replace(/^\s+/, '').replace(/\s+$/, '');

// function idata(clickedElem){
// 	var parent = $(clickedElem).closest(".xx");
// 	var name =   parent.find('["Name"]["frm_name"]').val();
// 	var email = parent.find('["frm_email"]["frm_email"]').val();
// 	var text = parent.find('["frm_text"]["frm_text"]').val();
// }

function validate_name() {
	var x = document.forms["Name"]["frm_name"];
	x.value = x.value.
	replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
	replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space
	replace(/\n +/, "\n"); // Removes spaces after newlines

	if (x.trim() === "") {
		alert("Name must have great than 5 symbols and less than 128!");
		return false;
	}
	else if(x.trim()===is_num){
		alert("Name must contain just letters!");
		return false;
	}
	else if(x.trim()===is_space){
		alert("Name cannot be empty!");
		return false;
	}
	else if(data.trim().length<4){
		alert("Name must have great than 5 symbols and less than 128!");
		return false;
	}

};
