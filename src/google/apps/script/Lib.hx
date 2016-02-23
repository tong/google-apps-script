package google.apps.script;

#if macro
import haxe.macro.Context;
import haxe.macro.Compiler;
import sys.FileSystem;
import sys.io.File;
#end

@:keep
class Lib {

	#if macro

	static function build() {

		var path = Compiler.getOutput();

		Context.onAfterGenerate(function(){
			if( Context.definedValue( 'no_main' ) != '1' ) {
				if( !FileSystem.exists( path ) ) {
					Context.warning( 'Generated javscript file not found: '+path, Context.currentPos() );
					return;
				}
				var content = File.getContent( path );
				content = content.substr( 0, content.length-1 );
				var i = content.lastIndexOf('\n');
				var mod = content.substr( 0, i ) + '\nfunction main(){'+content.substr( i+1 )+'}\n';
				File.saveContent( path, mod );
			}
		});
	}

	#else

	static function __init__() {
		redirectTraces();
	}

	public static function trace( v : Dynamic, ?infos : haxe.PosInfos ) {
		google.apps.script.Logger.log( v );
	}

	public static function redirectTraces() {
		haxe.Log.trace = google.apps.script.Lib.trace;
	}

/*
	macro public static function createEntryPoint() {
		return { expr : EConst(CString("MyCircle")), pos : Context.currentPos() };
		//return Context.makeExpr( null, Context.currentPos() );
	}
*/

	#end
}
