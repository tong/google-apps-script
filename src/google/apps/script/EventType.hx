package google.apps.script;

@:require(google_apps_script)
@:native("EventType")
@:enum abstract EventType(String) from String to String {
    var CLOCK = "CLOCK";
	var ON_OPEN = "ON_OPEN";
	var ON_EDIT = "ON_EDIT";
	var ON_FORM_SUBMIT = "ON_FORM_SUBMIT";
}
