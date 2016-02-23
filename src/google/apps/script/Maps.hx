package google.apps.script;

@:require(google_apps_script)
@:native("Avoid")
@:enum abstract Avoid(String) from String to String {
	var TOLLS_APPS_SCRIPT = "TOLLS_APPS_SCRIPT";
	var HIGHWAYS = "HIGHWAYS";
}

@:require(google_apps_script)
@:native("Color")
@:enum abstract Color(String) from String to String {
	var BLACK = "BLACK";
	var BROWN = "BROWN";
	var GREEN = "GREEN";
	var PURPLE = "PURPLE";
	var YELLOW = "YELLOW";
	var BLUE = "BLUE";
	var GRAY = "GRAY";
	var ORANGE = "ORANGE";
	var RED = "RED";
	var WHITE = "WHITE";
}

@:require(google_apps_script)
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

@:require(google_apps_script)
@:native("DirectionFinderEnums")
extern class DirectionFinderEnums {
	var Avoid : Avoid;
	var Mode : Mode;
}

@:require(google_apps_script)
@:native("ElevationSampler")
extern class ElevationSampler {
	function sampleLocation( latitude : Float, longitude : Float ) : Dynamic;
	@:overload(function(points:Array<Float>):Dynamic{})
	function sampleLocations( encodedPolyline : String ) : Dynamic;
	@:overload(function(encodedPolyline:String,numSamples:Int):Dynamic{})
	function samplePath( points : Array<Float>, numSamples : Int ) : Dynamic;
}

@:require(google_apps_script)
@:native("Format")
@:enum abstract Format(String) from String to String {
	var PNG = "PNG";
	var PNG8 = "PNG8";
	var PNG32 = "PNG32";
	var GIF = "GIF";
	var JPG = "JPG";
	var JPG_BASELINE = "JPG_BASELINE";
}

@:require(google_apps_script)
@:native("Geocoder")
extern class Geocoder {
	function geocode( address : String ) : Dynamic;
	@:overload(function(swLatitude:Float,swLongitude:Float,neLatitude:Float,neLongitude:Float):Dynamic{})
	function reverseGeocode( address : String ) : Dynamic;
	function setBounds( swLatitude : Float,swLongitude : Float, neLatitude : Float, neLongitude : Float ) : Geocoder;
	function setLanguage( language : String ) : Geocoder;
	function setRegion( region : String ) : Geocoder;
}

@:require(google_apps_script)
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

@:require(google_apps_script)
@:native("MarkerSize")
@:enum abstract MarkerSize(String) from String to String {
	var TINY = "TINY";
	var MID = "MID";
	var SMALL = "SMALL";
}

@:require(google_apps_script)
@:native("Mode")
@:enum abstract Mode(String) from String to String {
	var DRIVING = "DRIVING";
	var WALKING = "WALKING";
	var BICYCLING = "BICYCLING";
}

@:require(google_apps_script)
@:native("StaticMap")
extern class StaticMap {
	function addAddress( address : String ) : StaticMap;

//TODO
function addMarker( latitude : Float, longitude : Float ) : StaticMap;

}
