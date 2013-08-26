package google.apps.script;

@:native("UiApp")
extern class UiApp {
	var DateTimeFormat : DateTimeFormat;
	var FileType : FileType;
	var HorizontalAlignment : HorizontalAlignment;
	var VerticalAlignment : VerticalAlignment;
	function createApplication() : UiInstance;
	function getActiveApplication() : UiInstance;
	function getUserAgent() : String;
}
