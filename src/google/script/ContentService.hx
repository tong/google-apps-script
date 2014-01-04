package google.script;

@:require(googlescript)
@:native("ContentService.MimeType")
extern enum MimeType {
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

@:require(googlescript)
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

@:require(googlescript)
@:native("ContentService")
extern class ContentService {
	static function createTextOutput( ?content : String ) : TextOutput;
}
