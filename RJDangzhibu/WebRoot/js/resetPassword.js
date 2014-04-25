function checkPwd(obj) {
	if(isNull(obj)) {
		getById("passwordError").innerHTML = "<font color='red'>密码不能为空</font>";
	} else {
		getById("passwordError").innerHTML = "";
	}
}

function checkPassWord(obj) {
	if(isNull(obj)) {
		getById("password2Error").innerHTML = "<font color='red'>确认密码不能为空</font>";
	} else {
		getById("password2Error").innerHTML = "";
	}
}


function check() {
	var temp = getById("password").value;
	var str = getById("password2").value;
	var flag = true;
	if(isNull(temp)) {
		getById("passwordError").innerHTML = "<font color='red'>密码不能为空</font>";
		getById("password").value="";
		flag = false;
	}
	if(isNull(str)) {
		getById("password2Error").innerHTML = "<font color='red'>确认密码不能为空</font>";
		flag = false;
	} 
	if(temp != str) {
		getById("checkError").innerHTML = "<font color='red'>两次密码不一致</font>";
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