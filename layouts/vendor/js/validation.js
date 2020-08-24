var data ='';
const is_num = /^\d+$/.test(data);
var is_space = data.replace(/^\s+/, '').replace(/\s+$/, '');
function validate_name() {
	var x = document.forms["Name"]["frm_name"].value;
	if (x == "") {
		alert("Name must have great than 5 symbols and less than 128!");
		return false;
	}
	if(x==is_num){
		alert("Name must contain just letters!");
		return false;
	}
	if(x==is_space){
		alert("Name cannot be empty!");
		return false;
	}
}