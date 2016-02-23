package google.apps.script;

@:require(google_apps_script)
@:native("ScriptProperties")
extern class ScriptProperties {
	static function deleteAllProperties() : ScriptProperties;
	static function deleteProperty( key : String ) : ScriptProperties;
	static function getKeys() : Array<String>;
	static function getProperties() : Dynamic;
	static function getProperty( key : String ) : String;
	static function setProperties( properties : Dynamic, ?deleteAllOthers : Bool ) : ScriptProperties;
	static function setProperty( key : String, value : String ) : ScriptProperties;
}
