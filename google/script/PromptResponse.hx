package google.script;

@:native("PromptResponse")
extern class PromptResponse {
	function getResponseText() : String;
	function getSelectedButton() : Button;
}
	