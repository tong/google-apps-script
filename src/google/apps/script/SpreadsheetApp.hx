package google.apps.script;
import google.apps.script.DriveApp.File;
import google.apps.script.Spreadsheet;
import google.apps.script.Ui;


@:native("BorderStyle")
@:enum abstract BorderStyle(String) from String to String {
   var DOTTED = "DOTTED";
   var DASHED = "DASHED";
   var SOLID = "SOLID";
}

@:native("DataValidationCriteria")
@:enum abstract DataValidationCriteria(String) from String to String {
    var DATE_AFTER = "DATE_AFTER";
	var DATE_BEFORE = "DATE_BEFORE";
	var DATE_BETWEEN = "DATE_BETWEEN";
	var DATE_EQUAL_TO = "DATE_EQUAL_TO";
	var DATE_IS_VALID_DATE = "DATE_IS_VALID_DATE";
	var DATE_NOT_BETWEEN = "DATE_NOT_BETWEEN";
	var DATE_ON_OR_AFTER = "DATE_ON_OR_AFTER";
	var DATE_ON_OR_BEFORE = "DATE_ON_OR_BEFORE";
	var NUMBER_BETWEEN = "NUMBER_BETWEEN";
	var NUMBER_EQUAL_TO = "NUMBER_EQUAL_TO";
	var NUMBER_GREATER_THAN = "NUMBER_GREATER_THAN";
	var NUMBER_GREATER_THAN_OR_EQUAL_TO = "NUMBER_GREATER_THAN_OR_EQUAL_TO";
	var NUMBER_LESS_THAN = "NUMBER_LESS_THAN";
	var NUMBER_LESS_THAN_OR_EQUAL_TO = "NUMBER_LESS_THAN_OR_EQUAL_TO";
	var NUMBER_NOT_BETWEEN = "NUMBER_NOT_BETWEEN";
	var NUMBER_NOT_EQUAL_TO = "NUMBER_NOT_EQUAL_TO";
	var TEXT_CONTAINS = "TEXT_CONTAINS";
	var TEXT_DOES_NOT_CONTAIN = "TEXT_DOES_NOT_CONTAIN";
	var TEXT_EQUAL_TO = "TEXT_EQUAL_TO";
	var TEXT_IS_VALID_EMAIL = "TEXT_IS_VALID_EMAIL";
	var TEXT_IS_VALID_URL = "TEXT_IS_VALID_URL";
	var VALUE_IN_LIST = "VALUE_IN_LIST";
	var VALUE_IN_RANGE = "VALUE_IN_RANGE";
	var CUSTOM_FORMULA = "CUSTOM_FORMULA";

}

@:native("ProtectionType")
@:enum abstract ProtectionType(String) from String to String {
   var RANGE = "RANGE";
   var SHEETR = "SHEET";
}



@:require(google_apps_script)
@:native("DataValidationBuilder")
extern class DataValidationBuilder {
	function build() : DataValidation;
	function copy() : DataValidationBuilder;
	function getAllowInvalid() : Bool;
	function getCriteriaType() : DataValidationCriteria;
	function getCriteriaValues() : Dynamic;
	function getHelpText() : String;
	function requireDate() : DataValidationBuilder;
	function requireDateAfter(date:Date) : DataValidationBuilder;
	function requireDateBefore(date:Date) : DataValidationBuilder;
	function requireDateBetween(start:Date, end:Date) : DataValidationBuilder;
	function requireDateEqualTo(date:Date) : DataValidationBuilder;
	function requireDateNotBetween(start:Date, end:Date) : DataValidationBuilder;
	function requireDateOnOrAfter(date:Date) : DataValidationBuilder;
	function requireDateOnOrBefore(date:Date) : DataValidationBuilder;
	function requireFormulaSatisfied(formula:String) : DataValidationBuilder;
	function requireNumberBetween(start:Float, end:Float) : DataValidationBuilder;
	function requireNumberEqualTo(number:Float) : DataValidationBuilder;
	function requireNumberGreaterThan(number:Float) : DataValidationBuilder;
	function requireNumberGreaterThanOrEqualTo(number:Float) : DataValidationBuilder;
	function requireNumberLessThan(number:Float) : DataValidationBuilder;
	function requireNumberLessThanOrEqualTo(number:Float) : DataValidationBuilder;
	function requireNumberNotBetween(start:Float, end:Float) : DataValidationBuilder;
	function requireNumberNotEqualTo(number:Float) : DataValidationBuilder;
	function requireTextContains(text:String) : DataValidationBuilder;
	function requireTextDoesNotContain(text:String) : DataValidationBuilder;
	function requireTextEqualTo(text:String) : DataValidationBuilder;
	function requireTextIsEmail() : DataValidationBuilder;
	function requireTextIsUrl() : DataValidationBuilder;
	@:overload(function(values:Array<String>, ?showDropdown:Bool = false) : DataValidationBuilder{})
	function requireValueInList(values:Array<String>) : DataValidationBuilder;
	@:overload(function(range:Range, ?showDropdown:Bool = false) : DataValidationBuilder{})
	function requireValueInRange(range:Range) : DataValidationBuilder;
	function setAllowInvalid(allowInvalidData:Bool) : DataValidationBuilder;
	function setHelpText(helpText:String) : DataValidationBuilder;
	function withCriteria(criteria:DataValidationCriteria, args:Array<Dynamic>) : DataValidationBuilder;
}

@:require(google_apps_script)
@:native("DataValidation")
extern class DataValidation {
	function copy():DataValidationBuilder;
	function getAllowInvalid():Bool;
	function getCriteriaType():DataValidationCriteria;
	function getCriteriaValues():Array<Dynamic>;
	function getHelpText():String;
}

@:require(google_apps_script)
@:native("SpreadsheetApp")
extern class SpreadsheetApp {
    static var BorderStyle : BorderStyle;
    static var DataValidationCriteria : DataValidationCriteria;
	static var ProtectionType : ProtectionType;
	@:overload(function( name:String, rows:Int, columns:Int):Spreadsheet{})
    static function create( name : String ) : Spreadsheet;
    static function flush() : Void;
    static function getActive() : Spreadsheet;
    static function getActiveRange() : Range;
    static function getActiveSheet() : Sheet;
    static function getActiveSpreadsheet() : Spreadsheet;
    static function getUi() : Ui;
    static function newDataValidation() : DataValidationBuilder;
    static function open(file:File) : Spreadsheet;
    static function openById(id:String) : Spreadsheet;
    static function setActiveRange(range:Range) : Range;
    static function setActiveSheet(sheet:Sheet) : Sheet;
    static function setActiveSpreadsheet(newActiveSpreadsheet:Spreadsheet) : Void;
}
