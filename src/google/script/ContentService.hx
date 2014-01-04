package google.script;

@:require(googlescript)
@:native("ContentService")
extern class ContentService {
	static function createTextOutput( ?content : String ) : TextOutput;
}
