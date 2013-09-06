package google.script;

@:fakeEnum(String)
@:native("Avoid")
enum Avoid {
	TOLLS_APPS_SCRIPT;
	HIGHWAYS;
}

@:fakeEnum(String)
@:native("Color")
enum Color {
	BLACK;
	BROWN;
	GREEN;
	PURPLE;
	YELLOW;
	BLUE;
	GRAY;
	ORANGE;
	RED;
	WHITE;
}

@:native("DirectionFinder")
extern class DirectionFinder {
	@:overload(function(address:String):DirectionFinder{})
	function addWaypoint( latitude : Float, longitude : Float ) : DirectionFinder;
	function clearWaypoints() : DirectionFinder;
	function getDirections() : Dynamic;
	function setAlternatives( useAlternatives : Bool ) : DirectionFinder;
	function setArrive( time : Date ) : DirectionFinder;
	function setAvoid( avoid : String ) : DirectionFinder;
	function setDepart( time : Date ) : DirectionFinder;
	@:overload(function(address:String):DirectionFinder{})
	function setDestination( latitude : Float, longitude : Float ) : DirectionFinder;
	function setLanguage( language : String ) : DirectionFinder;
	function setMode( mode : String ) : DirectionFinder;
	function setOptimizeWaypoints( optimizeOrder : Bool ) : DirectionFinder;
	function setOrigin( latitude : Float, longitude : Float ) : DirectionFinder;
	function setRegion( region : String ) : DirectionFinder;
}

@:native("DirectionFinderEnums")
extern class DirectionFinderEnums {
	var Avoid : Avoid;
	var Mode : Mode;
}

@:native("ElevationSampler")
extern class ElevationSampler {
	function sampleLocation( latitude : Float, longitude : Float ) : Dynamic;
	@:overload(function(points:Array<Float>):Dynamic{})
	function sampleLocations( encodedPolyline : String ) : Dynamic;
	@:overload(function(encodedPolyline:String,numSamples:Int):Dynamic{})
	function samplePath( points : Array<Float>, numSamples : Int ) : Dynamic;
}

@:fakeEnum(String)
@:native("Format")
enum Format {
	PNG;
	PNG8;
	PNG32;
	GIF;
	JPG;
	JPG_BASELINE;
}

@:native("Geocoder")
extern class Geocoder {
	function geocode( address : String ) : Dynamic;
	@:overload(function(swLatitude:Float,swLongitude:Float,neLatitude:Float,neLongitude:Float):Dynamic{})
	function reverseGeocode( address : String ) : Dynamic;
	function setBounds( swLatitude : Float,swLongitude : Float, neLatitude : Float, neLongitude : Float ) : Geocoder;
	function setLanguage( language : String ) : Geocoder;
	function setRegion( region : String ) : Geocoder;
}

@:native("Maps")
extern class Maps {
	static function decodePolyline( polyline : String ) : Void;
	static function encodePolyline( points : Array<Float> ) : Void;
	static function newDirectionFinder() : DirectionFinder;
	static function newElevationSampler() : ElevationSampler;
	static function newGeocoder() : Geocoder;
	static function newStaticMap() : StaticMap;
	static function setAuthentication( clientId : String, signingKey : String ) : Void;
}

@:fakeEnum(String)
@:native("MarkerSize")
enum MarkerSize {
	TINY;
	MID;
	SMALL;
}

@:fakeEnum(String)
@:native("Mode")
enum Mode {
	DRIVING;
	WALKING;
	BICYCLING;
}

@:native("StaticMap")
extern class StaticMap {
	function addAddress( address : String ) : StaticMap;
	
//TODO
function addMarker( latitude : Float, longitude : Float ) : StaticMap;
	
}

