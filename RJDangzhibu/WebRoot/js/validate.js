function validateTitle() {
	var temp = getById("title").value;
	if(validate(temp)) {
		getById("checkError").innerHTML = "<font color='red'>含有非法字符</font>";
		return false;
	}
	return true;
}
function validateStudentName() {
	var temp = getById("studentName").value;
	if(validate(temp)) {
		getById("checkError").innerHTML = "<font color='red'>含有非法字符</font>";
		return false;
	}
	return true;
}
function validateUsername() {
	var temp = getById("username").value;
	if(validate(temp)) {
		getById("checkError").innerHTML = "<font color='red'>含有非法字符</font>";
		return false;
	}
	return true;
}
function validateClassName() {
	var temp = getById("className").value;
	if(validate(temp)) {
		getById("checkError").innerHTML = "<font color='red'>含有非法字符</font>";
		return false;
	}
	return true;
}
function validateProName() {
	var temp = getById("proName").value;
	if(validate(temp)) {
		getById("checkError").innerHTML = "<font color='red'>含有非法字符</font>";
		return false;
	}
	return true;
}

function validate(obj) 
{ 
	var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）&mdash;—|{}【】‘；：”“'。，、？]");
	return pattern.test(obj); 
} 
function getById(name) {
	return document.getElementById(name);
}