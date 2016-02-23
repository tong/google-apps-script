
import google.apps.script.Logger;
import google.apps.script.DriveApp;
import google.apps.script.HtmlService;

@:keep
@:native("app")
class App {

    static function uploadFiles( form, dir = 'uploads' ) {
        var file : File = null;
        try {
            var folders = DriveApp.getFoldersByName( dir );
            var folder = folders.hasNext() ? folders.next() : DriveApp.createFolder( dir );
            var blob = form.myFile;
            file = folder.createFile( blob );
            file.setDescription( "Uploaded by " + form.myName );
        } catch(e:Dynamic) {
            return e.toString();
        }
        return "File uploaded successfully " + file.getUrl();
    }

    static function doGet(e) {
        return HtmlService.createHtmlOutputFromFile( 'form.html' );
    }
}
