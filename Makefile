
##
## google apps script
##

run.n:
	haxe -neko $@ -main google.apps.script.Tool

google-apps-script.zip:
	zip -r $@ $(shell git ls-files)

haxelib: google-apps-script.zip

install:
	haxelib local google-apps-script.zip

uninstall:
	haxelib remove google-apps-script

clean:
	rm -f google-apps-script.zip

.PHONY: haxelib install uninstall clean
