package google.apps.script;

@:require(google_apps_script)
@:native("Month")
@:enum abstract Month(String) from String to String {
    var JANUARY = "JANUARY";
    var FEBRUARY = "FEBRUARY";
    var MARCH = "MARCH";
    var APRIL = "APRIL";
    var MAY = "MAY";
    var JUNE = "JUNE";
    var JULY = "JULY";
    var AUGUST = "AUGUST";
    var SEPTEMBER = "SEPTEMBER";
    var OCTOBER = "OCTOBER";
    var NOVEMBER = "NOVEMBER";
    var DECEMBER = "DECEMBER";
}
