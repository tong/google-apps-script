package google.apps.script;

@:require(google_apps_script)
@:native("ButtonSet")
@:enum abstract ButtonSet(String) from String to String {
	var OK = "OK";
	var OK_CANCEL = "OK_CANCEL";
	var YES_NO = "YES_NO";
	var YES_NO_CANCEL = "YES_NO_CANCEL";
}
