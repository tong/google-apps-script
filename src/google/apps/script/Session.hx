package google.apps.script;

@:require(google_apps_script)
@:native("Session")
extern class Session {
    static function getActiveUser() : User;
    static function getEffectiveUser() : User;
    static function getTimeZone() : String;
}
