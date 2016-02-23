package google.apps.script;

@:require(google_apps_script)
@:native("LanguageApp")
extern class LanguageApp {
	static function translate( text : String, sourceLanguage : String, targetLanguage : String ) : String;
}
