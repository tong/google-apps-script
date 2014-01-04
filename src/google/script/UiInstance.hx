package google.script;

@:require(googlescript)
typedef UiInstance = Dynamic;
/*
@:native("UiInstance")
extern class UiInstance implements Dynamic {
	
	function add( child : Widget ) : UiInstance;
	function close() : UiInstance;
	function createAbsolutePanel() : AbsolutePanel;
	
	@:overload(function(text:User,href:String):AbsolutePanel{})
	function createAnchor( text : String, asHtml : Bool, href : String ) : AbsolutePanel;
	
	@:overload(function(html:String):Button{})
	@:overload(function(html:String,clickHandler:Handler):Button{})
	function createButton() : Button;

	@:overload(function(caption:String):CaptionPanel{})
	@:overload(function(caption:String,asHtml:Bool):CaptionPanel{})
	function createCaptionPanel() : CaptionPanel;

	@:overload(function(label:String):CheckBox{})
	@:overload(function(label:String,asHtml:Bool):CheckBox{})
	function createCheckBox() : CheckBox;

	function createClientHandler() : ClientHandler;
	function createDateBox() : DateBox;
	function createDatePicker() : DatePicker;
	function createDecoratedStackPanel() : DecoratedStackPanel;

	function createDecoratedTabBar() : DecoratedTabBar;
	function createDecoratedTabPanel() : DecoratedTabPanel;
	function createDecoratorPanel() : DecoratorPanel;

	@:overload(function(autoHide:Bool,modal:Bool):DialogBox{})
	function createDialogBox( ?autoHide : Bool ) : DialogBox;
	
	function createDocsListDialog() : DocsListDialog;
	function createFileUpload() : FileUpload;
	function createFlexTable() : FlexTable;
	function createFlowPanel() : FlowPanel;

	function createFocusPanel() : FocusPanel;
	function createFocusPanel( child : Widget ) : FocusPanel;
	function createFormPanel() : FormPanel;

	@:overload(function(rows:Int,columns:Int):Grid{})
	function createGrid() : Grid;

	@:overload(function(html:String,?wordWrap:Bool):HTML{})
	function createHTML() : HTML;

	@:overload(function(name:String,?value:String):Hidden{})
	function createHidden() : Hidden;

	function createHorizontalPanel() : HorizontalPanel;
	
	@:overload(function(url:String,left:Int,top:Int,width:Int,height:Int):Hidden{})
	function createImage( ?url : String ) : Image;
	
	function createInlineLabel( ?text : String ) : InlineLabel;

	@:overload(function(text:String,wordWrap:Bool):Label{})
	function createLabel( ?text : String ) : InlineLabel;

	//TODO.....

}
*/
