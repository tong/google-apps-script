package google.apps.script;

@:fakeEnum(String)
@:native("SandboxMode")
enum SandboxMode {
    EMULATED;
    NATIVE;
}

@:native("HtmlTemplate")
extern class HtmlTemplate {
    function evaluate() : HtmlOutput;
    function getCode() : String;
    function getCodeWithComments() : String;
    function getRawContent() : String;
}

@:native("HtmlOutput")
extern class HtmlOutput {
    function append( addedContent : String ) : HtmlOutput;
    function appendUntrusted( addedContent : String ) : HtmlOutput;
    function asTemplate() : HtmlTemplate;
    function clear() : HtmlOutput;
    function getAs( contentType : String ) : Blob;
    function getBlob() : Blob;
    function getContent() : String;
    function getHeight() : Int;
    function getTitle() : String;
    function getWidth() : Int;
    function setContent( content : String ) : String;
    function setHeight( height : Int ) : HtmlOutput;
    function setSandboxMode( mode : SandboxMode ) : HtmlOutput;
    function setTitle( title : String ) : HtmlOutput;
    function setWidth( width : Int ) : HtmlOutput;
}

@:native("HtmlService")
extern class HtmlService {
    @:overload(function(blob:BlobSource):HtmlOutput{})
    @:overload(function(html:String):HtmlOutput{})
    static function createHtmlOutput() : HtmlOutput;
    static function createHtmlOutputFromFile( html : String ) : HtmlOutput;
    @:overload(function(html:String):HtmlTemplate{})
    static function createTemplate( blob : BlobSource ) : HtmlTemplate;
    static function createTemplateFromFile( filename : String ) : HtmlTemplate;
}
