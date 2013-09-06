package google.script;

@:fakeEnum(String)
@:native("HorizontalAlignment")
enum HorizontalAlignment {
	LEFT;
	RIGHT;
	CENTER;
	DEFAULT;
	JUSTIFY;
	LOCALE_START;
	LOCALE_END;
}

@:fakeEnum(String)
@:native("VerticalAlignment")
enum VerticalAlignment {
	TOP;
	MIDDLE;
	BOTTOM;
}

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