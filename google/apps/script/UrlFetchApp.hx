package google.apps.script;

@:native("HTTPResponse")
extern class HTTPResponse {
	function getAllHeaders() : Dynamic;
	function getAs( contentType : String ) : Blob;
	function getBlob() : Blob;
	function getContent() : Array<Byte>;
	function getContentText() : String;
	function getHeaders() : Dynamic;
	function getResponseCode() : Int;
}

@:native("UrlFetchApp")
extern class UrlFetchApp {
	static function addOAuthService( serviceName : String ) : OAuthConfig;
	static function removeOAuthService( serviceName : String ) : Void;
	static function fetch( url : String, ?params : Dynamic ) : HTTPResponse;
	static function getRequest( url : String, ?params : Dynamic ) : Dynamic;
}
