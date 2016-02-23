package google.apps.script;

@:require(google_apps_script)
@:native("BlobSource")
interface BlobSource {
	function getAs( contentType : String ) : Blob;
	function getBlob() : Blob;
}
