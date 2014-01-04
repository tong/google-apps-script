package google.script;

@:require(googlescript)
@:native("CacheService")
extern class CacheService {
	static function getPrivateCache() : Cache;
	static function getPublicCache() : Cache;
}
