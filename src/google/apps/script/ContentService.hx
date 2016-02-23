package google.apps.script;

@:require(google_apps_script)
@:native("ContentService.MimeType")
private extern enum MimeType {
	ATOM;
	CSV;
	ICAL;
	JAVASCRIPT;
	JSON;
	RSS;
	TEXT;
	VCARD;
	XML;
}


@:require(google_apps_script)
@:native("TextOutput")
extern class TextOutput {
	function append( addedContent : String ) : TextOutput;
	function downloadAsFile( filename : String ) : TextOutput;
	function getContent() : String;
	function getFileName() : String;
	function getMimeType() : MimeType;
	function setContent( content : String ) : TextOutput;
	function setMimeType( mimeType : MimeType ) : TextOutput;
}

@:require(google_apps_script)
@:native("ContentService")
extern class ContentService {
	static function createTextOutput( ?content : String ) : TextOutput;
}
