function zbjj() {
	getById("zbjj").style.display = "block";
	getById("zzjg").style.display = "none";
	getById("zzfg").style.display = "none";
}
function zzjg() {
	getById("zbjj").style.display = "none";
	getById("zzjg").style.display = "block";
	getById("zzfg").style.display = "none";
}
function zzfg() {
	getById("zbjj").style.display = "none";
	getById("zzjg").style.display = "none";
	getById("zzfg").style.display = "block";
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