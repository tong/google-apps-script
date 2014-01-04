package google.script;

@:require(googlescript)
@:native("LanguageApp")
extern class LanguageApp {
	static function translate( text : String, sourceLanguage : String, targetLanguage : String ) : String;
}
