package google.script;

@:native("ContentService")
extern class ContentService {
	static function createTextOutput( ?content : String ) : TextOutput;
}
