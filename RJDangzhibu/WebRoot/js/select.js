function selectAll(e,name) { 
	var a = document.getElementsByName(name);
	for (var i=0; i<a.length; i++)  {
		a[i].checked = e.checked;
	}
} 

function getAllValues() {
	var a = document.getElementsByName("id");
	var values = "";
	for(var i=0;i<a.length;i++) {
		if(a[i].checked == true) {
			values = values + a[i].value;
		}
	}
	return values;
}

function checkIsNull() {
	if(getAllValues() == "") {
		document.getElementById("error").innerHTML = "<font color='red'>Î´Ñ¡ÖÐ</font>";
		return false;
	}
	return true;
}