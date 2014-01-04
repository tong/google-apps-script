package google.script;

@:require(googlescript)
@:native("TextOutput")
extern class TextOutput {
	static function append( addedContent : String ) : TextOutput;
	static function downloadAsFile( filename : String ) : TextOutput;
	static function getContent() : String;
	static function getFileName() : String;
	static function getMimeType() : MimeType;
	static function setContent( content : String ) : TextOutput;
	static function setMimeType( mimeType : MimeType ) : TextOutput;
}
