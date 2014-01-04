
## hxgooglescript

PROJECT=googlescript

$(PROJECT).zip: src/google/script/*.hx
	zip -r $@ example src/ haxelib.json extraParameters.hxml README

haxelib: $(PROJECT).zip

install: haxelib
	haxelib local $(PROJECT).zip

uninstall:
	haxelib remove $(PROJECT)

clean:
	rm -f example/*.gs
	rm -f $(PROJECT).zip

.PHONY: haxelib install uninstall clean
