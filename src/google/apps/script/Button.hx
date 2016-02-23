package google.apps.script;

@:require(google_apps_script)
@:native("Button")
@:enum abstract Button(String) from String to String {
	var CLOSE = "CLOSE";
	var OK = "OK";
	var CANCEL = "CANCEL";
	var YES = "YES";
	var NO = "NO";
}
