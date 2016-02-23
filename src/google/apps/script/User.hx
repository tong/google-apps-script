package google.apps.script;

@:require(google_apps_script)
@:native("User")
extern class User {
    static function getEmail() : String;
}
