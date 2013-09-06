package google.script;

@:fakeEnum(String)
@:native("Alignment")
enum Alignment {
	LEFT;
	CENTER;
	RIGHT;
}

@:native("CheckboxItem")
extern class CheckboxItem extends Item {
	function createChoice( value : String ) : Choice;
	function createResponse( responses : Array<String> ) : ItemResponse;
	override function duplicate() : CheckboxItem;
	function getChoices() : Array<Choice>;
	function hasOtherOption() : Bool;
	function isRequired() : Bool;
	function setChoiceValues( values : Array<String> ) : CheckboxItem;
	function setChoices( choices : Array<Choice> ) : CheckboxItem;
	function setRequired( enabled : Bool ) : CheckboxItem;
	function showOtherOption( enabled : Bool ) : CheckboxItem;
}

@:native("Choice")
extern class Choice {
	function getGotoPage() : PageBreakItem;
	function getPageNavigationType() : PageNavigationType ;
	function getValue() : String;
}

@:native("DateItem")
extern class DateItem extends Item {
	function createResponse( response : Date ) : ItemResponse;
	override function duplicate() : DateItem;
	function includesYear() : Bool;
	function isRequired() : Bool;
	function setIncludesYear( enableYear : Bool ) : DateItem;
	function setRequired( enabled : Bool ) : DateItem;
}

@:native("DateTimeItem")
extern class DateTimeItem extends Item {
	function createResponse( response : Date ) : ItemResponse;
	override function duplicate() : DateTimeItem;
	function includesYear() : Bool;
	function isRequired() : Bool;
	function setIncludesYear( enableYear : Bool ) : DateTimeItem;
	function setRequired( enabled : Bool ) : DateTimeItem;
}

@:fakeEnum(String)
@:native("DestinationType")
enum DestinationType {
	SPREADSHEET;
}

@:native("DurationItem")
extern class DurationItem extends Item {
	function createResponse( hours : Int, minutes : Int, seconds : Int ) : ItemResponse;
	override function duplicate() : DurationItem;
	function includesYear() : Bool;
	function isRequired() : Bool;
	function setRequired( enabled : Bool ) : DurationItem;
}

@:native("Form")
extern class Form {
	function addCheckboxItem() : CheckboxItem;
	function addDateItem() : DateItem;
	function addDateTimeItem() : DateTimeItem;
	function addDurationItem() : DurationItem;
	@:overload(function(user:User):Form{})
	function addEditor( emailAddress : String ) : Form;
	function addEditors( emailAddresses : Array<String> ) : Form;
	function addGridItem() : GridItem;
	function addImageItem() : ImageItem;
	function addListItem() : ListItem;
	function addMultipleChoiceItem() : MultipleChoiceItem;
	function addPageBreakItem() : PageBreakItem;
	function addParagraphTextItem() : ParagraphTextItem;
	function addScaleItem() : ScaleItem;
	function addSectionHeaderItem() : SectionHeaderItem;
	function addTextItem() : TextItem;
	function addTimeItem() : TimeItem;
	function canEditResponse() : Bool;
	function collectsEmail() : Bool;
	function createResponse() : FormResponse;
	function deleteAllResponses() : Form;
	@:overload(function(item:Item):Void{})
	function deleteItem( index : Int ) : Void;
	function getConfirmationMessage() : String;
	function getDescription() : String;
	function getDestinationId() : String;
	function getDestinationType() : DestinationType;
	function getEditUrl() : String;
	function getEditors() : Array<User>;
	function getId() : String;
	function getItemById( id : Int ) : Item;
	function getItems( itemType : ItemType ) : Array<Item>;
	function getPublishedUrl() : String;
	function getResponse( responseId : String ) : FormResponse;
	function getResponses( ?timestamp : Date ) : Array<FormResponse>;
	function getSummaryUrl() : String;
	function getTitle() : String;
	function hasRespondAgainLink() : Bool;
	function isAcceptingResponses() : Bool;
	function isPublishingSummary() : Bool;
	@:overload(function(item:Item,index:Int):Item{})
	function moveItem( from : Int, to : Int) : Item;
	function removeDestination() : Form;
	@:overload(function(user:User):Form{})
	function removeEditor( emailAddress : String ) : Form;
	function requiresLogin() : Bool;
	function setAcceptingResponses( enabled : Bool ) : Form;
	function setAllowResponseEdits( enabled : Bool ) : Form;
	function setCollectEmail( collect : Bool ) : Form;
	function setConfirmationMessage( message : String ) : Form;
	function setDescription( description : String ) : Form;
	function setDestination( type : DestinationType, id : String ) : Form;
	function setPublishingSummary( enabled : Bool ) : Form;
	function setRequireLogin( requireLogin : Bool ) : Form;
	function setShowLinkToRespondAgain( enabled : Bool ) : Form;
	function setTitle( title : String ) : Form;
}

@:native("FormApp")
extern class FormApp {
	static function create( title : String ) : Form;
	static function getActiveForm() : Form;
	static function getUi() : Ui;
	static function openById( id : String ) : Form;
	static function openByUrl( url : String ) : Form;
}

@:native("FormResponse")
extern class FormResponse {
	function getEditResponseUrl() : String;
	function getId() : String;
	function getItemResponses() : Array<ItemResponse>;
	function getRespondentEmail() : String;
	function getResponseForItem( item : Item ) : ItemResponse;
	function getTimestamp() : Date;
	function submit() : FormResponse;
	function toPrefilledUrl() : String;
	function withItemResponse( response : String ) : ItemResponse;
}

@:native("GridItem")
extern class GridItem extends Item {
	function createResponse( responses : Array<String> ) : ItemResponse;
	override function duplicate() : DateItem;
	function getColumns() : Array<String>;
	function getRows() : Array<String>;
	function isRequired() : Bool;
	function setColumns( columns : Array<String> ) : GridItem;
	function setRequired( enabled : Bool ) : GridItem;
	function setRows( rows : Array<String> ) : GridItem;
}

@:native("ImageItem")
extern class ImageItem extends Item {
	override function duplicate() : ImageItem;
	function getAlignment() : Alignment;
	function getImage() : Blob;
	function getWidth() : Int;
	function setAlignment( alignment : Alignment ) : ImageItem;
	function setImage( image : BlobSource ) : ImageItem;
	function setWidth( width : Int ) : ImageItem;
}

@:native("Item")
extern class Item {
	function asCheckboxItem() : CheckboxItem;
	function asDateItem() : DateItem;
	function asDateTimeItem() : DateTimeItem;
	function asDurationItem() : DurationItem;
	function asGridItem() : GridItem;
	function asImageItem() : ImageItem;
	function asListItem() : ListItem;
	function asMultipleChoiceItem() : MultipleChoiceItem;
	function asPageBreakItem() : PageBreakItem;
	function asParagraphTextItem() : ParagraphTextItem;
	function asScaleItem() : ScaleItem;
	function asSectionHeaderItem() : SectionHeaderItem;
	function asTextItem() : TextItem;
	function asTimeItem() : TimeItem;
	function duplicate() : Item;
	function getHelpText() : String;
	function getId() : Int;
	function getIndex() : Int;
	function getTitle() : String;
	function getType() : ItemType;
	function setHelpText( text : String ) : Item;
	function setTitle( title : String ) : Item;
}

@:native("ItemResponse")
extern class ItemResponse {
	function getItem() : Item;
	function getResponse() : Dynamic;
}

@:fakeEnum(String)
@:native("ItemType")
enum ItemType {
	CHECKBOX;
	DATE;
	DATETIME;
	DURATION;
	GRID;
	IMAGE;
	LIST;
	MULTIPLE_CHOICE;
	PAGE_BREAK;
	PARAGRAPH_TEXT;
	SCALE;
	SECTION_HEADER;
	TEXT;
	TIME;
}

@:native("ListItem")
extern class ListItem extends Item {
	@:overload(function(value:String,navigationType:PageNavigationType):Choice{})
	function createChoice( value : String, ?navigationItem : PageBreakItem ) : Choice;
	function createResponse( response : String ) : ItemResponse;
	override function duplicate() : ListItem;
	function getChoices() : Array<Choice>;
	function isRequired() : Bool;
	function setChoiceValues( values : Array<String> ) : ListItem;
	function setChoices( choices : Array<Choice> ) : ListItem;
	function setRequired( enabled : Bool ) : ListItem;
}

@:native("MultipleChoiceItem")
extern class MultipleChoiceItem extends Item {
	@:overload(function(value:String,navigationType:PageNavigationType):Choice{})
	function createChoice( value : String, ?navigationItem : PageBreakItem ) : Choice;
	function createResponse( response : String ) : ItemResponse;
	override function duplicate() : MultipleChoiceItem;
	function getChoices() : Array<Choice>;
	function hasOtherOption() : Bool;
	function isRequired() : Bool;
	function setChoiceValues( values : Array<String> ) : MultipleChoiceItem;
	function setChoices( choices : Array<Choice> ) : MultipleChoiceItem;
	function setRequired( enabled : Bool ) : MultipleChoiceItem;
	function showOtherOption( enabled : Bool ) : MultipleChoiceItem;
}

@:native("PageBreakItem")
extern class PageBreakItem extends Item {
	override function duplicate() : PageBreakItem;
	function getGoToPage() : PageBreakItem;
	function getPageNavigationType() : PageNavigationType;
	@:overload(function(navigationType:PageNavigationType):PageBreakItem{})
	function setGoToPage( goToPageItem : PageBreakItem ) : PageBreakItem;
}

@:fakeEnum(String)
@:native("PageNavigationType")
enum PageNavigationType {
	CONTINUE;
	GO_TO_PAGE;
	RESTART;
	SUBMIT;
}

@:native("ParagraphTextItem")
extern class ParagraphTextItem extends Item {
	function createResponse( response : String ) : ItemResponse;
	override function duplicate() : ListItem;
	function getChoices() : Array<Choice>;
	function isRequired() : Bool;
	function setChoiceValues( values : Array<String> ) : ParagraphTextItem;
	function setChoices( choices : Array<Choice> ) : ParagraphTextItem;
	function setRequired( enabled : Bool ) : ParagraphTextItem;
}

@:native("ScaleItem")
extern class ScaleItem extends Item {
	function createResponse( response : String ) : ItemResponse;
	override function duplicate() : ListItem;
	function getLeftLabel() : String;
	function getLowerBound() : Int;
	function getRightLabel() : String;
	function getUpperBound() : Int;
	function isRequired() : Bool;
	function setBounds( lower : Int, upper : Int ) : ScaleItem;
	function setLabels( lower : String, upper : String ) : ScaleItem;
	function setRequired( enabled : Bool ) : ScaleItem;
}

@:native("SectionHeaderItem")
extern class SectionHeaderItem extends Item {
	override function duplicate() : SectionHeaderItem;
}

@:native("TextItem")
extern class TextItem extends Item {
	function createResponse( response : String ) : ItemResponse;
	override function duplicate() : TextItem;
	function isRequired() : Bool;
	function setRequired( enabled : Bool ) : TextItem;
}

@:native("TimeItem")
extern class TimeItem extends Item {
	function createResponse( hour : Int, minute : Int ) : ItemResponse;
	override function duplicate() : TimeItem;
	function isRequired() : Bool;
	function setRequired( enabled : Bool ) : TimeItem;
}

@:remove class Forms {}
