package google.script;

@:require(googlescript)
@:native("User")
extern class User {
    static function getEmail() : String;
}
