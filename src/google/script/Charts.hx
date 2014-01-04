package google.script;

//TODO

@:require(googlescript)
@:native("ChartOptions")
extern class ChartOptions {
	function get( option : String ) : Dynamic;
}

@:require(googlescript)
@:fakeEnum(String)
@:native("Position")
enum Position {
	TOP;
	RIGHT;
	BOTTOM;
	NONE;
}

@:require(googlescript)
@:fakeEnum(String)
@:native("ChartType")
enum ChartType {
	AREA;
	BAR;
	COLUMN;
	LINE;
	PIE;
	SCATTER;
	TABLE;
}

@:require(googlescript)
@:native("TextStyle")
extern class TextStyle {
	function getColor() : String;
	function getFontName() : String;
	function getFontSize() : Float;
}

@:require(googlescript)
@:fakeEnum(String)
@:native("PointStyle")
enum PointStyle {
	NONE;
	TINY;
	MEDIUM;
	LARGE;
	HUGE;
}

@:require(googlescript)
@:fakeEnum(String)
@:native("CurveStyle")
enum CurveStyle {
	NORMAL;
	SMOOTH;
}

//TODO
@:require(googlescript)
typedef Charts = Dynamic;

@:require(googlescript)
typedef Chart = Dynamic;
