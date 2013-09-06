
## hxgooglescript

PROJECT=googlescript

#run.n:
#	haxe -neko $@ -main google.apps.script.Tool

$(PROJECT).zip:
	zip -r $@ google/ haxelib.json extraParameters.hxml README
	#zip -r $@ $(shell git ls-files)

haxelib: $(PROJECT).zip

install:
	haxelib local $(PROJECT).zip

uninstall:
	haxelib remove $(PROJECT)

clean:
	rm -f $(PROJECT).zip

.PHONY: haxelib install uninstall clean
