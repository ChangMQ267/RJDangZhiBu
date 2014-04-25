function checkUsername(obj) {
	if(isNull(obj)) {
		getById("usernameError").innerHTML = "<font color='red'>用户名不能为空</font>";
	} else {
		getById("usernameError").innerHTML = "";
	}
}
function checkPassword(obj) {
	if(isNull(obj)) {
		getById("passwordError").innerHTML = "<font color='red'>密码不能为空</font>";
	} else {
		getById("passwordError").innerHTML = "";
	}
}
function checkPassword2(obj) {
	if(isNull(obj)) {
		getById("password2Error").innerHTML = "<font color='red'>确认密码不能为空</font>";
	} else {
		getById("password2Error").innerHTML = "";
	}
}

function check() {
	var temp = getById("username").value;
	var temp1 = getById("password").value;
	var temp2 = getById("password2").value;
	var flag = true;
	if(isNull(temp)) {
		getById("usernameError").innerHTML = "<font color='red'>用户名不能为空</font>";
		flag = false;
	}
	if(isNull(temp1)) {
		getById("passwordError").innerHTML = "<font color='red'>密码不能为空</font>";
		flag = false;
	}
	if(isNull(temp2)) {
		getById("password2Error").innerHTML = "<font color='red'>确认密码不能为空</font>";
		flag = false;
	}
	if(temp1 != temp2) {
		getById("submitError").innerHTML = "<font color='red'>两次输入的密码不一致</font>"
		flag = false;
	}
	return flag;
}
function checkModify() {
	var temp = getById("username").value;
	var temp1 = getById("password").value;
	var flag = true;
	if(isNull(temp)) {
		getById("usernameError").innerHTML = "<font color='red'>用户名不能为空</font>";
		flag = false;
	}
	if(isNull(temp1)) {
		getById("passwordError").innerHTML = "<font color='red'>密码不能为空</font>";
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