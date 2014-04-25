function checkTitle(obj) {
	if(isNull(obj)) {
		getById("titleError").innerHTML = "<font color='red'>���ű��ⲻ��Ϊ��</font>";
	} else {
		getById("titleError").innerHTML = "";
	}
}
function checkContent(obj) {
	if(isNull(obj)) {
		getById("contentError").innerHTML = "<font color='red'>��ȷ������󣬵��������</font>";
	} else {
		getById("contentError").innerHTML = "";
	}
}
function check() {
	var temp = getById("title").value;
	var temp1 = getById("editor1").value;
	var flag = true;
	if(isNull(temp)) {
		getById("titleError").innerHTML = "<font color='red'>���ű��ⲻ��Ϊ��</font>";
		flag = false;
	}
	if(isNull(temp1)) {
		getById("contentError").innerHTML = "<font color='red'>��ȷ������󣬵��������</font>";
		flag = false;
	}
	return flag;
}
function checkModify() {
	var temp = getById("title").value;
	var temp1 = getById("editor1").value;
	var flag = true;
	if(isNull(temp)) {
		getById("titleError").innerHTML = "<font color='red'>���ű��ⲻ��Ϊ��</font>";
		flag = false;
	}
	if(isNull(temp1)) {
		getById("contentError").innerHTML = "<font color='red'>��ȷ������󣬵�����£�</font>";
		flag = false;
	}
	return flag;
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