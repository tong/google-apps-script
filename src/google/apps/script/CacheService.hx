package google.apps.script;

@:require(google_apps_script)
@:native("CacheService")
extern class CacheService {
	static function getPrivateCache() : Cache;
	static function getPublicCache() : Cache;
}
