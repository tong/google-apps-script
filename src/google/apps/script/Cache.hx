package google.apps.script;

@:require(google_apps_script)
@:native("Cache")
extern class Cache {
	function get( key : String ) : String;
	function getAll( keys : Array<String> ) : Dynamic;
	function put( key : String, value : String, ?expirationInSeconds : Int ) : Void;
	function putAll( values : Dynamic, ?expirationInSeconds : Int ) : Void;
	function remove( key : String ) : Void;
	function removeAll( keys : Array<String> ) : Void;
}
