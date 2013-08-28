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
