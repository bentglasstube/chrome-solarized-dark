all: chrome-solarized-dark.zip

chrome-solarized-dark.zip: ext/manifest.json ext/images/*.png
	zip -r chrome-solarized-dark.zip ext

ext/manifest.json: manifest.pl
	perl manifest.pl > ext/manifest.json

clean:
	rm ext/manifest.json chrome-solarized-dark.zip
