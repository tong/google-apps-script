package google.apps.script;

@:require(google_apps_script)
@:native("Weekday")
@:enum abstract Weekday(String) from String to String {
	var SUNDAY = "SUNDAY";
	var MONDAY = "MONDAY";
	var TUESDAY = "TUESDAY";
	var WEDNESDAY = "WEDNESDAY";
	var THURSDAY = "THURSDAY";
	var FRIDAY = "FRIDAY";
	var SATURDAY = "SATURDAY";
}
