package google.apps.script;

@:require(google_apps_script)
@:native("Mail")
extern class Mail {
	function getRemainingDailyQuota() : Int;
	@:overload(function(to:String,replyTo:String,subject:String,body:String):Void{})
	@:overload(function(recipient:String,subject:String,body:String,?options:Dynamic):Void{})
	function sendEmail( message : String ) : Void;
}
