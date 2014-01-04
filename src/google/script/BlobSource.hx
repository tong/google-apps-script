package google.script;

@:require(googlescript)
@:native("BlobSource")
interface BlobSource {
	function getAs( contentType : String ) : Blob;
	function getBlob() : Blob;
}
