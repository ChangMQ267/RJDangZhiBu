function checkUsername(obj) {
	if(isNull(obj)) {
		alert("�û�������Ϊ�գ�");
	}
}

function checkPassword(obj) {
	if(isNull(obj)) {
		alert("���벻��Ϊ�գ�");
	}
}

function checkLogin() {
	var temp = getById("form").username.value;
	var str = getById("form").password.value;
	var error = "";
	if(isNull(temp)) {
		error += "�û�������Ϊ��!\n";
	}
	if(isNull(str)) {
		error += "���벻��Ϊ��!\n";
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
