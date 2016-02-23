package google.apps.script;

@:require(google_apps_script)
@:native("DigestAlgorithm")
@:enum abstract DigestAlgorithm(String) from String to String {
	var MD2 = "MD2";
	var MD5 = "MD5";
	var SHA_1 = "SHA_1";
	var SHA_256 = "SHA_256";
	var SHA_384 = "SHA_384";
	var SHA_512 = "SHA_512";
}
