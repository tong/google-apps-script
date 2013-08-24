package google.apps.script;

@:native("Utilities")
extern class Utilities {
	static function base64Decode( encoded : String, ?charset : Charset ) : Array<Byte>;
	@:overload(function(data:Array<Byte>):String{})
	static function base64Encode( data : String, ?charset : Charset ) : String;
	static function computeDigest( algorithm : DigestAlgorithm, value : String, ?charset : Charset ) : Array<Byte>;
	static function computeHmacSha256Signature( value : String, key : String, ?charset : Charset ) : Array<Byte>;
	static function computeHmacSignature( value : String, key : String, ?charset : Charset) : Array<Byte>;
	static function formatDate( date : Date, timeZone : String, format : String ) : String;
	static function formatString( template : String, args : Dynamic ) : String;
	static function jsonParse( jsonString : String ) : Dynamic;
	static function jsonStringify( obj :Dynamic ) : String;
	@:overload(function(data:Array<Byte>,?contentType:String,?name:String):String{})
	static function newBlob( data : String, ?contentType : String, ?name : String ) : Blob;
	static function parseCsv( csv : String, ?delimiter : Char ) : Array<Array<String>>;
	static function sleep( milliseconds : Int ) : Void;
	static function unzip( blob : BlobSource ) : Array<Blob>;
	static function zip( blobs : Array<BlobSource>, ?name : String ) : Blob;
}
