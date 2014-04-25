function checkUsername(obj) {
	if(isNull(obj)) {
		alert("用户名不能为空！");
	}
}

function checkPassword(obj) {
	if(isNull(obj)) {
		alert("密码不能为空！");
	}
}

function checkLogin() {
	var temp = getById("form").username.value;
	var str = getById("form").password.value;
	var error = "";
	if(isNull(temp)) {
		error += "用户名不能为空!\n";
	}
	if(isNull(str)) {
		error += "密码不能为空!\n";
	}
	if(error != "" && error != null){
		alert(error);
	} else {
		getById("form").submit();
	}
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
