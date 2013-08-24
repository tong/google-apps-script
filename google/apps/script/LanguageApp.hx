package google.apps.script;

@:native("LanguageApp")
extern class LanguageApp {
	static function translate( text : String, sourceLanguage : String, targetLanguage : String ) : String;
}
