function checkClassName(obj) {
	if(isNull(obj)) {
		getById("inClassError").innerHTML = "<font color='red'>班级名字不能为空</font>";
	} else {
		getById("inClassError").innerHTML = "";
	}
}

function check() {
	var temp = getById("className").value;
	if(isNull(temp)) {
		getById("inClassError").innerHTML = "<font color='red'>班级名字不能为空</font>";
		return false;
	}
	return true;
}

function getFocus() {
	getById("className").focus();
}
function isNull(str){ 
	if (str == "") return true; 
	var regu = "^[ ]+$"; 
	var re = new RegExp(regu); 
	return re.test(str); 
} 

function getById(name) {
	return document.getElementById(name);
}