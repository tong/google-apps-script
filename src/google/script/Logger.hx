package google.script;

@:require(googlescript)
@:native("Logger")
extern class Logger {
    static function clear() : Void;
    static function getLog() : String;
    @:overload(function(format:String,value:Dynamic):Void{})
    static function log( data : Dynamic ) : Void;
}
