package google.apps.script;

@:require(google_apps_script)
@:native("HorizontalAlignment")
@:enum abstract HorizontalAlignment(String) from String to String {
	var LEFT = "LEFT";
	var RIGHT = "RIGHT";
	var CENTER = "CENTER";
	var DEFAULT = "DEFAULT";
	var JUSTIFY = "JUSTIFY";
	var LOCALE_START = "LOCALE_START";
	var LOCALE_END = "LOCALE_END";
}

@:require(google_apps_script)
@:native("VerticalAlignment")
@:enum abstract VerticalAlignment(String) from String to String {
	var TOP = "TOP";
	var MIDDLE = "MIDDLE";
	var BOTTOM = "BOTTOM";
}

@:require(google_apps_script)
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

@:require(google_apps_script)
@:native("Ui")
extern class Ui {
	var Button : Button;
	var ButtonSet : ButtonSet;
	@:overload(function(title:String,prompt:String,buttons:ButtonSet):Button{})
	@:overload(function(prompt:String,buttons:ButtonSet):Button{})
	function alert( prompt : String ) : Button;
	function createMenu( caption : String ) : Menu;
	@:overload(function(title:String,prompt:String,buttons:ButtonSet):PromptResponse{})
	@:overload(function(prompt:String,buttons:ButtonSet):PromptResponse{})
	function prompt( prompt : String ) : PromptResponse;
	function showDialog( userInterface : Dynamic ) : Ui;
	function showSidebar( userInterface : Dynamic ) : Ui;
}
