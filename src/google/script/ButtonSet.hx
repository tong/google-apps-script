package google.script;

@:require(googlescript)
@:fakeEnum(String)
@:native("ButtonSet")
enum ButtonSet {
	OK;
	OK_CANCEL;
	YES_NO;
	YES_NO_CANCEL;
}
