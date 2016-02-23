package google.apps.script;

@:require(google_apps_script)
@:native("Url")
extern class Url {
	function getAnalytics() : AnalyticsSummary;
	function getCreated() : String;
	function getId() : String;
	function getKind() : String;
	function getLongUrl() : String;
	function getStatus() : String;
	function setAnalytics( analytics : AnalyticsSummary ) : Url;
	function setCreated( created : String ) : Url;
	function setId( id : String ) : Url;
	function setKind( kind : String ) : Url;
	function setLongUrl( longUrl : String ) : Url;
	function setStatus( status : String ) : Url;
}

@:require(google_apps_script)
@:native("StringCount")
extern class StringCount {
	function getCount() : String;
	function getId() : String;
	function setCount( count : String ) : StringCount;
	function setId( id : String ) : StringCount;
}

@:require(google_apps_script)
@:native("AnalyticsSnapshot")
extern class AnalyticsSnapshot {
	function getBrowsers() : Array<StringCount>;
	function getCountries() : Array<StringCount>;
	function getLongUrlClicks() : String;
	function getPlatforms( id : String ) : Array<StringCount>;
	function getReferrers() : Array<StringCount>;
	function getShortUrlClicks() : String;
	function setBrowsers( browsers : Array<StringCount> ) : AnalyticsSnapshot;
	function setCountries( countries : Array<StringCount> ) : AnalyticsSnapshot;
	function setLongUrlClicks( longUrlClicks : String ) : AnalyticsSnapshot;
	function setPlatforms( platforms : Array<StringCount> ) : AnalyticsSnapshot;
	function setReferrers( referrers : Array<StringCount> ) : AnalyticsSnapshot;
	function setShortUrlClicks( shortUrlClicks : StringCount ) : AnalyticsSnapshot;
}

@:require(google_apps_script)
@:native("AnalyticsSummary")
extern class AnalyticsSummary {
	function getAllTime() : AnalyticsSnapshot;
	function getDay() : AnalyticsSnapshot;
	function getMonth() : AnalyticsSnapshot;
	function getTwoHours() : AnalyticsSnapshot;
	function getWeek() : AnalyticsSnapshot;
	function setAllTime( allTime : AnalyticsSnapshot ) : AnalyticsSummary;
	function setDay( day : AnalyticsSnapshot ) : AnalyticsSummary;
	function setMonth( month : AnalyticsSnapshot ) : AnalyticsSummary;
	function setTwoHours( twoHours : AnalyticsSnapshot ) : AnalyticsSummary;
	function setWeek( week : AnalyticsSnapshot ) : AnalyticsSummary;
}

@:require(google_apps_script)
@:native("UrlShortener")
extern class UrlShortener {
	static function newAnalyticsSnapshot() : AnalyticsSnapshot;
	static function newAnalyticsSummary() : AnalyticsSummary;
	static function newStringCount() : StringCount;
	static function newUrl() : Url;
}

