package google.script;

import google.script.Forms;

@:require(googlescript)
@:native("SpreadsheetTriggerBuilder")
extern class SpreadsheetTriggerBuilder {
    function create() : Trigger;
    function onChange() : SpreadsheetTriggerBuilder;
    function onEdit() : SpreadsheetTriggerBuilder;
    function onFormSubmit() : SpreadsheetTriggerBuilder;
    function onOpen() : SpreadsheetTriggerBuilder;
}

@:require(googlescript)
@:native("FormTriggerBuilder")
extern class FormTriggerBuilder {
    function create() : Trigger;
    function onFormSubmit() : FormTriggerBuilder;
    function onOpen() : FormTriggerBuilder;
}

@:require(googlescript)
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

@:require(googlescript)
@:native("TriggerBuilder")
extern class TriggerBuilder {
    @:overload(function(key:String):FormTriggerBuilder{})
    static function forForm( form : Form ) : FormTriggerBuilder;
    @:overload(function(key:String):FormTriggerBuilder{})
    static function forSpreadsheet( sheet : Spreadsheet ) : SpreadsheetTriggerBuilder;
    static function timeBased() : ClockTriggerBuilder;
}

@:require(googlescript)
@:fakeEnum(String)
@:native("TriggerSource")
enum TriggerSource {
    SPREADSHEETS;
	CLOCK;
	FORMS;
}

@:require(googlescript)
@:fakeEnum(String)
@:native("Restriction")
enum Restriction {
    MYSELF;
	DOMAIN;
	ALL;
}

@:require(googlescript)
@:native("Service")
extern class Service {
    function disable() : Void;
    function enable( restriction : Restriction ) : Void;
    function getUrl() : String;
    function isEnabled() : Bool;
}

@:require(googlescript)
@:native("Trigger")
extern class Trigger {
    function getEventType() : EventType;
    function getHandlerFunction() : String;
    function getTriggerSourceId() : String;
    function getUniqueId() : String;
}

@:require(googlescript)
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
