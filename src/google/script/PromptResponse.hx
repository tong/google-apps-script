package google.script;

@:require(googlescript)
@:native("PromptResponse")
extern class PromptResponse {
	function getResponseText() : String;
	function getSelectedButton() : Button;
}
	