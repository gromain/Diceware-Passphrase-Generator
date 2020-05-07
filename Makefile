deps = logo.png logo48.png logo96.png logo128.png \
	lists/* manifest.json index.html index.js \
	node_modules/big.js/big.min.js \
	node_modules/bootstrap/dist/css/bootstrap.css \
	node_modules/bootstrap/dist/fonts/* \
	node_modules/bootstrap/dist/js/bootstrap.min.js \
	node_modules/bootstrap-validator/dist/validator.min.js \
	node_modules/jquery/dist/jquery.min.js \
	node_modules/clipboard/dist/clipboard.min.js

zip : $(deps)
	zip diceware $(deps)

clean:
	rm diceware.zip

update:$(deps)
	zip diceware -u $(deps)

