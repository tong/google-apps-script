package google.apps.script;

@:native("UrlFetchApp")
extern class UrlFetchApp {
	static function addOAuthService( serviceName : String ) : OAuthConfig;
	static function removeOAuthService( serviceName : String ) : Void;
    static function fetch( url : String, ?params : Dynamic ) : HTTPResponse;
	static function getRequest( url : String, ?params : Dynamic ) : Dynamic;
}
