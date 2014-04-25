function checkProName(obj) {
	if(isNull(obj)) {
		getById("professionalError").innerHTML = "<font color='red'>专业名字不能为空</font>";
	} else {
		getById("professionalError").innerHTML = "";
	}
}

function checkPro() {
	var temp = getById("proName").value;
	if(isNull(temp)) {
		getById("professionalError").innerHTML = "<font color='red'>专业名字不能为空</font>";
		return false;
	}
	return true;
}

function getFocus() {
	getById("proName").focus();
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