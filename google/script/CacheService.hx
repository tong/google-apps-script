package google.script;

@:native("CacheService")
extern class CacheService {
	static function getPrivateCache() : Cache;
	static function getPublicCache() : Cache;
}
