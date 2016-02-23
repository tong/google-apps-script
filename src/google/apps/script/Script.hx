package google.apps.script;

import google.apps.script.Forms;

@:require(google_apps_script)
@:native("SpreadsheetTriggerBuilder")
extern class SpreadsheetTriggerBuilder {
    function create() : Trigger;
    function onChange() : SpreadsheetTriggerBuilder;
    function onEdit() : SpreadsheetTriggerBuilder;
    function onFormSubmit() : SpreadsheetTriggerBuilder;
    function onOpen() : SpreadsheetTriggerBuilder;
}

@:require(google_apps_script)
@:native("FormTriggerBuilder")
extern class FormTriggerBuilder {
    function create() : Trigger;
    function onFormSubmit() : FormTriggerBuilder;
    function onOpen() : FormTriggerBuilder;
}

@:require(google_apps_script)
@:native("ClockTriggerBuilder")
extern class ClockTriggerBuilder {
    function after( durationMilliseconds : Int ) : ClockTriggerBuilder;
    function at( date : Date ) : ClockTriggerBuilder;
    function atHour( hour : Int ) : ClockTriggerBuilder;
    function create() : Trigger;
    function everyDays( n : Int ) : ClockTriggerBuilder;
    function everyHours( n : Int ) : ClockTriggerBuilder;
    function everyMinutes( n : Int ) : ClockTriggerBuilder;
    function everyWeeks( n : Int ) : ClockTriggerBuilder;
    function inTimezone( timezone : String ) : ClockTriggerBuilder;
    function nearMinute( minute : Int ) : ClockTriggerBuilder;
    function onMonthDay( day : Int ) : ClockTriggerBuilder;
    function onWeekDay( day : Weekday ) : ClockTriggerBuilder;
}

@:require(google_apps_script)
@:native("TriggerBuilder")
extern class TriggerBuilder {
    @:overload(function(key:String):FormTriggerBuilder{})
    static function forForm( form : Form ) : FormTriggerBuilder;
    @:overload(function(key:String):FormTriggerBuilder{})
    static function forSpreadsheet( sheet : Spreadsheet ) : SpreadsheetTriggerBuilder;
    static function timeBased() : ClockTriggerBuilder;
}

@:require(google_apps_script)
@:native("TriggerSource")
@:enum abstract TriggerSource(String) from String to String {
    var SPREADSHEETS = "SPREADSHEETS";
	var CLOCK = "CLOCK";
	var FORMS = "FORMS";
}

@:require(google_apps_script)
@:native("Restriction")
@:enum abstract Restriction(String) from String to String {
    var MYSELF = "MYSELF";
	var DOMAIN = "DOMAIN";
	var ALL = "ALL";
}

@:require(google_apps_script)
@:native("Service")
extern class Service {
    function disable() : Void;
    function enable( restriction : Restriction ) : Void;
    function getUrl() : String;
    function isEnabled() : Bool;
}

@:require(google_apps_script)
@:native("Trigger")
extern class Trigger {
    function getEventType() : EventType;
    function getHandlerFunction() : String;
    function getTriggerSourceId() : String;
    function getUniqueId() : String;
}

@:require(google_apps_script)
@:native("ScriptApp")
extern class ScriptApp {
    var EventType : EventType;
    var TriggerSource : TriggerSource;
    var WeekDay : Weekday;
    function deleteTrigger( trigger : Trigger ) : Void;
    function getProjectTriggers() : Array<Trigger>;
    function getService() : Service;
    function invalidateAuth() : Void;
    function newTrigger( functionName : String ) : Void;
}
