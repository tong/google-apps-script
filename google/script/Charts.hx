package google.script;

//TODO

@:native("ChartOptions")
extern class ChartOptions {
	function get( option : String ) : Dynamic;
}

@:fakeEnum(String)
@:native("Position")
enum Position {
	TOP;
	RIGHT;
	BOTTOM;
	NONE;
}

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

@:native("TextStyle")
extern class TextStyle {
	function getColor() : String;
	function getFontName() : String;
	function getFontSize() : Float;
}

@:fakeEnum(String)
@:native("PointStyle")
enum PointStyle {
	NONE;
	TINY;
	MEDIUM;
	LARGE;
	HUGE;
}

@:fakeEnum(String)
@:native("CurveStyle")
enum CurveStyle {
	NORMAL;
	SMOOTH;
}

//TODO
typedef Charts = Dynamic;
typedef Chart = Dynamic;
