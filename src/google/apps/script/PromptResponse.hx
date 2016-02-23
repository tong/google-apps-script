package google.apps.script;

@:require(google_apps_script)
@:native("PromptResponse")
extern class PromptResponse {
	function getResponseText() : String;
	function getSelectedButton() : Button;
}
