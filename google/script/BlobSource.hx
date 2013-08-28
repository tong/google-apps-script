package google.script;

@:native("BlobSource")
interface BlobSource {
	function getAs( contentType : String ) : Blob;
	function getBlob() : Blob;
}
