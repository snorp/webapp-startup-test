
all: webapp-startup-test.apk

SOURCES = index.html manifest.webapp

webapp-startup-test.apk: $(SOURCES)
	rm -rf dist
	mkdir dist
	cp -a $(SOURCES) dist
	node_modules/.bin/mozilla-apk-cli dist webapp-startup-test.apk

clean:
	rm -rf dist
	rm -f webapp-startup-test.apk
