deps = logo.png logo48.png logo96.png logo128.png \
	LICENSE README.md \
	lists/* manifest.json index.html index.js \
	node_modules/big.js/big.min.js \
	node_modules/bootstrap/dist/css/bootstrap.min.css \
	node_modules/bootstrap/dist/css/bootstrap.min.css.map \
	node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.eot \
	node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.svg \
	node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.ttf \
	node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.woff \
	node_modules/bootstrap/dist/fonts/glyphicons-halflings-regular.woff2 \
	node_modules/bootstrap/dist/js/bootstrap.min.js \
	node_modules/bootstrap-validator/dist/validator.min.js \
	node_modules/jquery/dist/jquery.min.js \
	node_modules/clipboard/dist/clipboard.min.js

zip : $(deps)
	zip diceware-passphrase-generator $(deps)

clean:
	rm diceware-passphrase-generator.zip
	rm checksums.sha1

update:$(deps)
	zip diceware-passphrase-generator -u $(deps)

checksum:$(deps)
	sha1sum $(deps) > checksums.sha1
	./sri-gen.rb
