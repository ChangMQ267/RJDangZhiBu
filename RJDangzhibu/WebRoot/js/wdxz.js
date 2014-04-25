function wdxz() {
	getById("wdxz").style.display = "block";
}

function changePictureOut(obj) {
	obj.width = "103";
	obj.height = "20";
}

function changePictureIn(obj) {
	obj.width = "140";
	obj.height = "29";
}

function getById(id) {
	return document.getElementById(id);
}