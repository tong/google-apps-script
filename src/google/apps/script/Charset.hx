package google.apps.script;

@:require(google_apps_script)
@:native("Charset")
@:enum abstract Charset(String) from String to String {
	var US_ASCII = "US_ASCII";
	var UTF_8 = "UTF_8";
}
