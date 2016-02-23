package google.apps.script;

@:require(google_apps_script)
@:native("FileType")
@:enum abstract FileType(String) from String to String {
	var ALL = "ALL";
	var ALL_DOCS = "ALL_DOCS";
	var DRAWINGS = "DRAWINGS";
	var DOCUMENTS = "DOCUMENTS";
	var SPREADSHEETS = "SPREADSHEETS";
	var FOLDERS = "FOLDERS";
	var RECENTLY_PICKED = "RECENTLY_PICKED";
	var PRESENTATIONS = "PRESENTATIONS";
	var FORMS = "FORMS";
	var PHOTOS = "PHOTOS";
	var PHOTO_ALBUMS = "PHOTO_ALBUMS";
	var PDFS = "PDFS";
}
