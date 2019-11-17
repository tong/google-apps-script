package google.apps.script;

@:require(google_apps_script)
@:native("GmailAttachment")
extern class GmailAttachment {
    function copyBlob() : Blob;
    function getAs( contentType : String ) : Blob;
    function getBytes() : Array<Byte>;
    function getContentType() : String;
    function getDataAsString( ?charset : String ) : String;
    function getName() : String;
    function getSize() : Int;
    function isGoogleType() : Bool;
    function setBytes( data : Array<Byte> ) : Blob;
    function setContentType( contentType : String ) : Blob;
    function setContentTypefromExtension() : Blob;
    function setDataFromstring( string : String, ?charset : String ) : Blob;
    function setName( name : String ) : Blob;
}

@:require(google_apps_script)
typedef GmailReplyOptions = {
    ?cc : String,
    ?bcc : String,
    ?subject : String,
    ?htmlBody : String,
    ?name : String,
    ?from : String,
    ?replyTo : String,
    ?noReply : Bool,
    ?attachments : Array<BlobSource>,
    ?inlineImages : Dynamic
}

@:require(google_apps_script)
typedef GmailForwardOptions = Dynamic; //TODO

@:require(google_apps_script)
@:native("GmailMessage")
extern class GmailMessage {
    function forward( recipient : String, ?options : GmailForwardOptions ) : GmailMessage;
    function getAttachments() : Array<GmailAttachment>;
    function getBcc() : String;
    function getBody() : String;
    function getCc() : String;
    function getDate() : Date;
    function getFrom() : String;
    function getId() : String;
    function getPlainBody() : String;
    function getRawContent() : String;
    function getReplyTo() : String;
    function getSubject() : String;
    function getThread() : GmailThread;
    function getTo() : String;
    function isDraft() : Bool;
    function isInChats() : Bool;
    function isInInbox() : Bool;
    function isInTrash() : Bool;
    function isStarred() : Bool;
    function isUnread() : Bool;
    function markRead() : GmailMessage;
    function markUnread() : GmailMessage;
    function moveToTrash() : GmailMessage;
    function refresh() : GmailMessage;
    function reply( body : String, ?options : GmailReplyOptions ) : GmailMessage;
    function replyAll( body : String, ?options : GmailReplyOptions ) : GmailMessage;
    function star() : GmailMessage;
    function unstar() : GmailMessage;
}

@:require(google_apps_script)
@:native("GmailThread")
extern class GmailThread {
   function addLabel( label : GmailLabel ) : GmailThread;
   function getFirstMessageSubject( label : GmailLabel ) : String;
   function getId() : String;
   function getLabels() : Array<GmailLabel>;
   function getLastMessageDate() : Date;
   function getMessageCount() : Int;
   function getMessages() : Array<GmailMessage>;
   function getPermalink() : String;
   function hasStarredMessages() : Bool;
   function isImportant() : Bool;
   function isInChats() : Bool;
   function isInInbox() : Bool;
   function isInSpam() : Bool;
   function isInTrash() : Bool;
   function isUnread() : Bool;
   function markImportant() : GmailThread;
   function markRead() : GmailThread;
   function markUnimportant() : GmailThread;
   function markUnread() : GmailThread;
   function moveToArchive() : GmailThread;
   function moveToInbox() : GmailThread;
   function moveToSpam() : GmailThread;
   function moveToTrash() : GmailThread;
   function refresh() : GmailThread;
   function removeLabel( label : GmailLabel ) : GmailThread;
   function reply( body : String, ?options : GmailReplyOptions ) : GmailThread;
   function replyAll( body : String, ?options : GmailReplyOptions ) : GmailThread;
}

@:require(google_apps_script)
@:native("GmailLabel")
extern class GmailLabel {
    function addToThread( thread : GmailThread ) : GmailLabel;
    function addToThreads( threads : Array<GmailThread> ) : GmailLabel;
    function deleteLabel() : Void;
    function getName() : String;
    @:overload(function(start:Int,max:Int):Array<GmailThread>{})
    function getThreads() : Array<GmailThread>;
    function getUnreadCount() : Int;
    function removeFromThread( thread : GmailThread ) : GmailLabel;
    function removeFromThreads( threads : Array<GmailThread> ) : GmailLabel;
}

@:require(google_apps_script)
@:native("GmailApp")
extern class GmailApp {
    static function createLabel( name : String ) : GmailLabel;
    static function deleteLabel( label : GmailLabel ) : GmailApp;
    static function getAliases() : Array<String>;
    @:overload(function(start:Int,max:Int):Array<GmailThread>{})
    static function getChatThreads() : Array<GmailThread>;
    static function getDraftMessages() : Array<GmailMessage>;
    @:overload(function(start:Int,max:Int):Array<GmailThread>{})
    static function getInboxThreads() : Array<GmailThread>;
    static function getInboxUnreadCount() : Int;
    static function getMessageById( id : String ) : GmailMessage;
    static function getMessagesForThread( thread : GmailThread ) : Array<GmailMessage>;
    @:overload(function(start:Int,max:Int):Array<GmailThread>{})
    static function getPriorityInboxThreads() : Array<GmailThread>;
    static function getPriorityInboxUnreadCount() : Int;
    static function getSpamThreads() : Array<GmailThread>;
    static function getSpamUnreadCount() : Int;
    @:overload(function(start:Int,max:Int):Array<GmailThread>{})
    static function getStarredThreads() : Array<GmailThread>;
    static function getStarredUnreadCount() : Int;
    static function getThreadById( id : String ) : GmailThread;
    @:overload(function(start:Int,max:Int):Array<GmailThread>{})
    static function getTrashThreads() : Array<GmailThread>;
    static function getUserLabelByName( name : String ) : GmailLabel;
    static function getUserLabels() : Array<GmailLabel>;
    static function markMessageRead( message : GmailMessage ) : GmailApp;
    static function markMessageUnread( message : GmailMessage ) : GmailApp;
    static function markMessagesRead( messages : Array<GmailMessage> ) : GmailApp;
    static function markMessagesUnread( messages : Array<GmailMessage> ) : GmailApp;
    static function markThreadImportant( thread : GmailThread ) : GmailApp;
    static function markThreadUnimportant( thread : GmailThread ) : GmailApp;
    static function markThreadRead( thread : GmailThread ) : GmailApp;
    static function markThreadUnread( thread : GmailThread ) : GmailApp;
    static function markThreadsImportant( threads : Array<GmailThread> ) : GmailApp;
    static function markThreadsRead( threads : Array<GmailThread> ) : GmailApp;
    static function markThreadsUnimportant( threads : Array<GmailThread> ) : GmailApp;
    static function markThreadsUnread( threads : Array<GmailThread> ) : GmailApp;
    static function moveMessageToTrash( message : GmailMessage ) : GmailApp;
    static function moveThreadToArchive( thread : GmailThread ) : GmailApp;
    static function moveThreadToInbox( thread : GmailThread ) : GmailApp;
    static function moveThreadToSpam( thread : GmailThread ) : GmailApp;
    static function moveThreadToTrash( thread : GmailThread ) : GmailApp;
    static function moveThreadsToArchive( threads : Array<GmailThread> ) : GmailApp;
    static function moveThreadsToInbox( threads : Array<GmailThread> ) : GmailApp;
    static function moveThreadsToSpam( threads : Array<GmailThread> ) : GmailApp;
    static function moveThreadsToTrash( threads : Array<GmailThread> ) : GmailApp;
    static function refreshMessage( message : GmailMessage ) : GmailApp;
    static function refreshMessages( messages : Array<GmailMessage> ) : GmailApp;
    static function refreshThreads( thread : Array<GmailThread> ) : GmailApp;
    @:overload(function(query:String,start:Int,max:Int):Array<GmailThread>{})
    static function search( query:String ) : Array<GmailThread>;
    static function sendEmail( recipient : String, subject : String, body : String, ?options : Dynamic ) : GmailApp;
    static function starMessage( message : GmailMessage ) : GmailApp;
    static function starMessages( messages : Array<GmailMessage> ) : GmailApp;
    static function unstarMessage( message : GmailMessage ) : GmailApp;
    static function unstarMessages( messages : Array<GmailMessage> ) : GmailApp;
}
