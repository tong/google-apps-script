package google.apps.script;

@:require(google_apps_script)
@:native("Menu")
extern class Menu {
    function addItem( caption : String, func : String ) : Menu;
    function addSeparator() : Menu;
    function addSubMenu( menu : Menu ) : Menu;
    function addToUi() : Void;
}
