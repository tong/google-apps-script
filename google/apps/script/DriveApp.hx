package google.apps.script;

@:native("FileIterator")
extern class FileIterator {
    function hasNext() : Bool;
    function next() : File;
}

@:native("FolderIterator")
extern class FolderIterator {
    function hasNext() : Bool;
    function next() : File;
}

@:fakeEnum(String)
@:native("Access")
enum Access {
    ANYONE;
    ANYONE_WITH_LINK;
    DOMAIN;
    DOMAIN_WITH_LINK;
    PRIVATE;
}

@:fakeEnum(String)
@:native("Permission")
enum Permission {
    VIEW;
    EDIT;
    COMMENT;
    OWNER;
    NONE;
}

@:native("Folder")
extern class Folder {
    var emailAddress : String;
    @:overload(function(user:User):Folder{})
    function addEditor( emailAddress : String ) : Folder;
    function addEditors( emailAddresses: Array<String> ) : Folder;
    function addFile( child : File ) : Folder;
    function addFolder( child : Folder ) : Folder;
    @:overload(function(user:User):Folder{})
    function addViewer( emailAddress : String ) : Folder;
    function addViewers( emailAddresses : Array<String> ) : Folder;
    @:overload(function(name:String,content:String,?mimeType:String):Folder{})
    function createFile( blob : Blob ) : File;
    function createFolder( name : String ) : File;
    function getAccess( email : String ) : Permission;
    function getDateCreated() : Date;
    function getDescription() : String;
    function getFiles() : FileIterator;
    function getFilesByName( name : String ) : FileIterator;
    function getFolders( name : String ) : FolderIterator;
    function getId() : String;
    function getLastUpdated() : Date;
    function getName() : String;
    function getParents() : FolderIterator;
    function getSharingAccess() : Access;
    function getSharingPermission() : Permission;
    function getSize() : Int;
    function getUrl() : String;
    function isShareableByEditors() : Bool;
    function isStarred() : Bool;
    function isTrashed() : Bool;
    @:overload(function(user:User):Folder{})
    function removeEditor( emailAddress : String ) : Folder;
    function removeFile( name : String ) : Folder;
    function removeFolder( name : String ) : Folder;
    @:overload(function(user:User):Folder{})
    function removeViewer( emailAddress : String ) : Folder;
    @:overload(function(user:User):Folder{})
    function revokePermissions( emailAddress : String ) : Folder;
    function searchFiles( params : String ) : FileIterator;
    function setDescription( description : String ) : Folder;
    function setName( name : String ) : Folder;
    @:overload(function(user:User):Folder{})
    function setOwner( emailAddress : String ) : Folder;
    function setShareableByEditors( shareable : Bool ) : Folder;
    function setSharing( accessType : Access, permissionType : Permission ) : Folder;
    function setStarred( starred : Bool ) : Folder;
    function setTrashed( setTrashed : Bool ) : Folder;
}

@:native("File")
extern class File {
    @:overload(function(user:User):File{})
    function addCommenter( emailAddress : String ) : File;
    function addCommenters( emailAddresses : Array<String> ) : File;
    @:overload(function(user:User):File{})
    function addEditor( emailAddress : String ) : File;
    function addEditors( emailAddresses : Array<String> ) : File;
    @:overload(function(user:User):File{})
    function addViewer( emailAddress : String ) : File;
    function addViewers( emailAddresses : Array<String> ) : File;
    @:overload(function(user:User):File{})
    function getAccess( email : String ) : Permission;
    function getAs( contentType : String ) : Blob;
    function getBlob() : Blob;
    function getDateCreated() : Date;
    function getDescription() : String;
    function getDownloadUrl() : String;
    function getId() : String;
    function getLastUpdated() : Date;
    function getMimeType() : String;
    function getName() : String;
    function getParents() : FolderIterator;
    function getSharingAccess() : Access;
    function getSharingPermission() : Permission;
    function getSize() : Int;
    function getThumbnail() : Blob;
    function getUrl() : String;
    function isShareableByEditors() : Bool;
    function isStarred() : Bool;
    function isTrashed() : Bool;
    @:overload(function(destination:Folder):File{})
    @:overload(function(name:String,?destination:Folder):File{})
    function makeCopy() : File;
    @:overload(function(user:User):File{})
    function removeCommenter( emailAddress : String ) : File;
    @:overload(function(user:User):File{})
    function removeEditor( emailAddress : String ) : File;
    @:overload(function(user:User):File{})
    function removeViewer( emailAddress : String ) : File;
    @:overload(function(user:User):File{})
    function revokePermissions( emailAddress : String ) : File;
    function setContent( content : String ) : File;
    function setDescription( description : String ) : File;
    function setName( name : String ) : File;
    @:overload(function(user:User):File{})
    function setOwner( emailAddress : String ) : File;
    function setShareableByEditors( shareable : Bool ) : File;
    function setSharing( accessType : Access, permissionType : Permission ) : Folder;
    function setStarred( starred : Bool ) : Folder;
    function setTrashed( setTrashed : Bool ) : Folder;
}

@:native("DriveApp")
extern class DriveApp {
    static var Access : Access;
    static var Permission : Permission;
    static function addFile( child : File ) : Folder;
    static function addFolder( child : Folder ) : Folder;
    @:overload(function(name:String,content:Blob,?mimeType:String):File{})
    static function createFile( blob : Blob ) : File;
    static function createFolder( name : String ) : Folder;
    static function getFileById( id : Int ) : File;
    static function getFiles() : FileIterator;
    static function getFilesByName( name : String ) : FileIterator;
    static function getFilesByType( mimeType : String ) : FileIterator;
    static function getFolderById( id : String ) : Folder;
    static function getFolders() : FolderIterator;
    static function getRootFolder() : Folder;
    static function getStorageLimit() : Int;
    static function getStorageUsed() : Int;
    static function getTrashedFiles() : FileIterator;
    static function getTrashedFolders() : FolderIterator;
    static function removeFile( child : File ) : Folder;
    static function removeFolder( child : File ) : Folder;
    static function searchFiles( params : String ) : FileIterator;
}
