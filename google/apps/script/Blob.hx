package google.apps.script;

//TODO
typedef Byte = String;

@:native("Blob")
extern class Blob {
	static function copyBlob() : Blob;
	static function getAs( contentType : String ) : Blob;
	static function getBytes() : Array<Byte>;
	static function getContentType() : String;
	static function getDataAsString( ?charset : String ) : String;
	static function getName() : String;
	static function isGoogleType() : Bool;
	static function setBytes( data : Array<Byte> ) : Blob;
	static function setContentType( contentType : String ) : Blob;
	static function setContentTypeFromExtension() : Blob;
	static function setDataFromString( string : String, ?charset : String ) : Blob;
	static function setName( name : String ) : Blob;
}
