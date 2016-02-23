package google.apps.script;

@:require(google_apps_script)
@:native("OAuthConfig")
extern class OAuthConfig {
	static function getAccessTokenUrl() : String;
	static function getAuthorizationUrl() : String;
	static function getMethod() : String;
	static function getParamLocation() : String;
	static function getRequestTokenUrl() : String;
	static function getServiceName() : String;
	static function setAccessTokenUrl( url : String ) : String;
	static function setAuthorizationUrl( url : String ) : String;
	static function setConsumerKey( consumerKey : String ) : String;
	static function setConsumerSecret( consumerSecret : String ) : String;
	static function setMethod( method : String ) : String;
	static function setParamLocation( location : String ) : String;
	static function setRequestTokenUrl( url : String ) : String;
}
