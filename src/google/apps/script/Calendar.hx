package google.apps.script;

@:native("Visibility")
@:enum abstract Visibility(String) from String to String {
    var CONFIDENTIAL = "CONFIDENTIAL";
    var DEFAULT = "DEFAULT";
    var PRIVATE = "PRIVATE";
    var PUBLIC = "PUBLIC";
}

@:require(google_apps_script)
@:native("CalendarEventSeries")
extern class CalendarEventSeries {
    static function addEmailReminder( minutesBefore : Int ) : CalendarEventSeries;
    static function addGuest( email : String ) : CalendarEventSeries;
    static function addPopupReminder( minutesBefore : Int) : CalendarEventSeries;
    static function addSmsReminder( minutesBefore : Int) : CalendarEventSeries;
    static function anyoneCanAddSelf() : Bool;
    static function deleteEventSeries() : Void;
    static function deleteTag( key : String ) : Void;
    static function getAllTagKeys() : Array<String>;
    static function getCreators() : Array<String>;
    static function getDateCreated() : Date;
    static function getDescription() : String;
    static function getEmailReminders() : Array<Int>;
    static function getGuestByEmail( email : String ) : Array<EventGuest>;
    static function getGuestList( ?includeOwner : Bool ) : Array<EventGuest>;
    static function getId() : String;
    static function getLastUpdated() : Date;
    static function getLocation() : String;
    static function getMyStatus() : GuestStatus;
    static function getOriginalCalendarId() : String;
    static function getPopupReminders() : Array<Int>;
    static function getSmsReminders() : Array<Int>;
    static function getTag( key : String )	 : String;
    static function getTitle()	 : String;
    static function getVisibility()	 : Visibility;
    static function guestsCanInviteOthers() : Bool;
    static function guestsCanModify() : Bool;
    static function guestsCanSeeGuests() : Bool;
    static function isOwnedByMe() : Bool;
    static function removeAllReminders() : CalendarEventSeries;
    static function removeGuest( email : String ) : CalendarEventSeries;
    static function resetRemindersToDefault() : CalendarEventSeries;
    static function setAnyoneCanAddSelf( anyoneCanAddSelf : Bool ) : CalendarEventSeries;
    static function setDescription( description : String ) : CalendarEventSeries;
    static function setGuestsCanInviteOthers( guestsCanInviteOthers : Bool ) : CalendarEventSeries;
    static function setGuestsCanModify( guestsCanModify : Bool ) : CalendarEventSeries;
    static function setGuestsCanSeeGuests( guestsCanSeeGuests : Bool ) : CalendarEventSeries;
    static function setLocation( location : String ) : CalendarEventSeries;
    static function setMyStatus( status : GuestStatus ) : CalendarEventSeries;
    static function setRecurrence( recurrence : EventRecurrence, startTime : Date, endTime : Date ) : CalendarEventSeries;
    static function setTag( key : String, value : String ) : CalendarEventSeries;
    static function setTitle( title : String ) : CalendarEventSeries;
    static function setVisibility( visibility : Visibility ) : CalendarEventSeries;
}

@:require(google_apps_script)
@:native("CalendarEvent")
extern class CalendarEvent {
    static function addEmailReminder( minutesBefore : Int ) : CalendarEvent;
    static function addGuest( email : String ) : CalendarEvent;
    static function addPopupReminder( minutesBefore : Int ) : CalendarEvent;
    static function addSmsReminder( minutesBefore : Int ) : CalendarEvent;
    static function anyoneCanAddSelf() : Bool;
    static function deleteEvent() : Void;
    static function deleteTag( key : String ) : CalendarEvent;
    static function getAllDayEndDate() : Date;
    static function getAllDayStartDate() : Date;
    static function getAllTagKeys() : Array<String>;
    static function getCreators() : Array<String>;
    static function getDateCreated() : Date;
    static function getDescription() : String;
    static function getEmailReminders() : Array<Int>;
    static function getEndTime() : Date;
    static function getEventSeries() : CalendarEventSeries;
    static function getGuestByEmail( email : String ) : EventGuest;
    static function getGuestList( ?includeOwner : Bool ) : Array<EventGuest>;
    static function getId() : String;
    static function getLastUpdated() : Date;
    static function getLocation() : String;
    static function getMyStatus() : GuestStatus;
    static function getOriginalCalendarId() : String;
    static function getPopupReminders() : Array<Int>;
    static function getSmsReminders() : Array<Int>;
    static function getStartTime() : Date;
    static function getTag( key : String ) : String;
    static function getTitle() : String;
    static function getVisibility() : Visibility;
    static function guestsCanInviteOthers() : Bool;
    static function guestsCanModify() : Bool;
    static function guestsCanSeeGuests() : Bool;
    static function isAllDayEvent() : Bool;
    static function isOwnedByMe() : Bool;
    static function isRecurringEvent() : Bool;
    static function removeAllReminders() : CalendarEvent;
    static function removeGuest( email : String ) : CalendarEvent;
    static function resetRemindersToDefault() : CalendarEvent;
    static function setAllDayDate( date : Date ) : CalendarEvent;
    static function setAnyoneCanAddSelf( anyoneCanAddSelf : Bool ) : CalendarEvent;
    static function setDescription( description : String ) : CalendarEvent;
    static function setGuestsCanInviteOthers( guestsCanInviteOthers : Bool ) : CalendarEvent;
    static function setGuestsCanModify( guestsCanModify : Bool ) : CalendarEvent;
    static function setGuestsCanSeeGuests( guestsCanSeeGuests : Bool ) : CalendarEvent;
    static function setLocation( location : String ) : CalendarEvent;
    static function setMyStatus( status : GuestStatus ) : CalendarEvent;
    static function setTag( key : String, value : String ) : CalendarEvent;
    static function setTime( startTime : Date, endTime : Date ) : CalendarEvent;
    static function setTitle( title : String ) : CalendarEvent;
    static function setVisibility( visibility : Visibility ) : CalendarEvent;
}

@:require(google_apps_script)
@:native("EventRecurrence")
typedef EventRecurrence = Dynamic;
/*TODO
@:native("EventRecurrence")
extern class EventRecurrence {
    //TODO
    addDailyExclusion()    RecurrenceRule	Adds a rule that excludes occurrences on a daily basis.
    addDailyRule()	RecurrenceRule	Adds a rule that causes the event to recur on a daily basis.
    addDate(date)	EventRecurrence	Adds a rule that causes the event to recur on a specific date.
    addDateExclusion(date)	EventRecurrence	Adds a rule that excludes an occurrence for a specific date.
    addMonthlyExclusion()	RecurrenceRule	Adds a rule that excludes occurrences on a monthly basis.
    addMonthlyRule()	RecurrenceRule	Adds a rule that causes the event to recur on a monthly basis.
    addWeeklyExclusion()	RecurrenceRule	Adds a rule that excludes occurrences on a weekly basis.
    addWeeklyRule()	RecurrenceRule	Adds a rule that causes the event to recur on a weekly basis.
    addYearlyExclusion()	RecurrenceRule	Adds a rule that excludes occurrences on a yearly basis.
    addYearlyRule()	RecurrenceRule	Adds a rule that causes the event to recur on a yearly basis.
    setTimeZone(timeZone)
}
*/

@:require(google_apps_script)
@:native("GuestStatus")
@:enum abstract GuestStatus(String) from String to String {
    var INVITED = "INVITED";
    var MAYBE = "MAYBE";
    var NO = "NO";
    var OWNER = "OWNER";
    var YES = "YES";
}

@:require(google_apps_script)
@:native("EventGuest")
extern class EventGuest {
    function getAdditionalGuests() : Int;
    function getEmail() : String;
    function getGuestStatus() : GuestStatus;
    function getName() : String;
}

@:require(google_apps_script)
@:native("Calendar")
extern class Calendar {
    @:overload(function(title:String,startDate:Date,recurrence:EventRecurrence,?options:Dynamic):CalendarEvent{})
    static function createAllDayEvent( title : String, date : Date, ?options : Dynamic ) : CalendarEvent;
    static function createEvent( title : String, startTime : Date, endTime : Date, ?options : Dynamic ) : CalendarEvent;
    static function createEventFromDescription( description : String ) : CalendarEvent;
    static function createEventSeries( title : String, startTime : Date, endTime : Date, recurrence : EventRecurrence, ?options : Dynamic ) : CalendarEventSeries;
    static function deleteCalendar() : Void;
    static function getColor() : String;
    static function getDescription() : String;
    static function getEventSeriesById( iCalId : String ) : CalendarEventSeries;
    static function getEvents( startTime : Date, endTime : Date , ?options : Dynamic ) : Array<CalendarEvent>;
    static function getEventsForDay( date : Date, ?options : Dynamic ) : Array<CalendarEvent>;
    static function getId() : String;
    static function getName() : String;
    static function getTimeZone() : String;
    static function isHidden() : Bool;
    static function isMyPrimaryCalendar() : Bool;
    static function isOwnedByMe() : Bool;
    static function isSelected() : Bool;
    static function setColor( color : String ) : Calendar;
    static function setDescription( description : String ) : Calendar;
    static function setHidden( hidden : Bool ) : Calendar;
    static function setName( name : String ) : Calendar;
    static function setSelected( selected : Bool ) : Calendar;
    static function setTimeZone( timeZone : String ) : Calendar;
}
