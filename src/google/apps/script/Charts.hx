package google.apps.script;

@:require(google_apps_script)
@:native("ChartOptions")
extern class ChartOptions {
	function get( option : String ) : Dynamic;
}

@:native("Position")
@:enum abstract Position(String) from String to String {
	var TOP = "TOP";
	var RIGHT = "RIGHT";
	var BOTTOM = "BOTTOM";
	var NONE = "NONE";
}

@:native("ChartType")
@:enum abstract ChartType(String) from String to String {
	var AREA = "AREA";
	var BAR = "BAR";
	var COLUMN = "COLUMN";
	var LINE = "LINE";
	var PIE = "PIE";
	var SCATTER = "SCATTER";
	var TABLE = "TABLE";
}

@:require(google_apps_script)
@:native("TextStyle")
extern class TextStyle {
	function getColor() : String;
	function getFontName() : String;
	function getFontSize() : Float;
}

@:native("PointStyle")
@:enum abstract PointStyle(String) from String to String {
	var NONE = "NONE";
	var TINY = "TINY";
	var MEDIUM = "MEDIUM";
	var LARGE = "LARGE";
	var HUGE = "HUGE";
}

@:native("CurveStyle")
@:enum abstract CurveStyle(String) from String to String {
	var NORMAL = "NORMAL";
	var SMOOTH = "SMOOTH";
}

//TODO
@:require(google_apps_script)
typedef Charts = Dynamic;

@:require(google_apps_script)
typedef Chart = Dynamic;
