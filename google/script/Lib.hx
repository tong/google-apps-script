package google.script;

#if macro
import sys.io.File;
import haxe.macro.Compiler;
#end

class Lib {

	#if macro

	static function build() {

		var file = Compiler.getOutput();
		var main : String = null;
		var args = Sys.args();
		for( i in 0...args.length ) {
			var arg = args[i];
			if( arg == '-main' ) {
				main = args[i+1];
				break;
			}
		}

		//if( file.endsWith( '.js' ) )

		//trace( file );
		//trace(main);
		//trace( File.getContent(file));

		//var f = File.append( file );
		//f.writeString( '\nfunction main(){ $main.main(); }' );
		//f.close();

		//Sys.println( 'Google-apps script created : $file' );
	}

	#end
	
}
