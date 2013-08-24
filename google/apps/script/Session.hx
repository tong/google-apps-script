package google.apps.script;

@:native("Session")
extern class Session {
    static function getActiveUser() : User;
    static function getEffectiveUser() : User;
    static function getTimeZone() : String;
}
