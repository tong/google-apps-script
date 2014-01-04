package google.script;

@:require(googlescript)
@:native("Lock")
extern class Lock {
	function hasLock() : Bool;
	function releaseLock() : Void;
	function tryLock( timeoutInMillis : Int ) : Void;
	function waitLock( timeoutInMillis : Int ) : Void;
}

@:require(googlescript)
@:native("LockService")
extern class LockService {
	static function getPrivateLock() : Lock;
	static function getPublicLock() : Lock;
}
