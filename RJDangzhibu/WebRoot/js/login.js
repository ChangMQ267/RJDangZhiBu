function checkUserName(obj) {
	if(isNull(obj)) {
		getById("usernameError").innerHTML = "<font color='red'>请输入正确的用户名</font>";
		getById("form").username.value="";
		//getById("form").username.focus();
	} else {
		getById("usernameError").innerHTML = "";
		//form1.password.focus();
	}
}

function checkPassWord(obj) {
	if(isNull(obj)) {
		getById("passwordError").innerHTML = "<font color='red'>请输入正确的密码</font>";
		//getById("form").password.focus();
	} else {
		getById("passwordError").innerHTML = "";
		//form.password2.focus();
	}
}


function check() {
	var temp = getById("form").username.value;
	var str = getById("form").password.value;
	var flag = true;
	if(isNull(temp)) {
		getById("usernameError").innerHTML = "<font color='red'>请输入正确的用户名</font>";
		getById("form").username.value="";
		//getById("form").username.focus();
		flag = false;
	}
	if(isNull(str)) {
		getById("passwordError").innerHTML = "<font color='red'>请输入正确的密码</font>";
		//getById("form").password.focus();
		flag = false;
	}
	return flag;
}

function getFocus() {
	getById("form").username.focus();
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