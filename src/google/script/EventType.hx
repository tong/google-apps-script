package google.script;

@:require(googlescript)
@:fakeEnum(String)
@:native("EventType")
enum EventType {
    CLOCK;
	ON_OPEN;
	ON_EDIT;
	ON_FORM_SUBMIT;
}
