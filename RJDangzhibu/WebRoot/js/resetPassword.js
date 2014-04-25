function checkPwd(obj) {
	if(isNull(obj)) {
		getById("passwordError").innerHTML = "<font color='red'>���벻��Ϊ��</font>";
	} else {
		getById("passwordError").innerHTML = "";
	}
}

function checkPassWord(obj) {
	if(isNull(obj)) {
		getById("password2Error").innerHTML = "<font color='red'>ȷ�����벻��Ϊ��</font>";
	} else {
		getById("password2Error").innerHTML = "";
	}
}


function check() {
	var temp = getById("password").value;
	var str = getById("password2").value;
	var flag = true;
	if(isNull(temp)) {
		getById("passwordError").innerHTML = "<font color='red'>���벻��Ϊ��</font>";
		getById("password").value="";
		flag = false;
	}
	if(isNull(str)) {
		getById("password2Error").innerHTML = "<font color='red'>ȷ�����벻��Ϊ��</font>";
		flag = false;
	} 
	if(temp != str) {
		getById("checkError").innerHTML = "<font color='red'>�������벻һ��</font>";
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