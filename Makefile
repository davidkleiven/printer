INSTALL_PATH="/usr/local/bin"

test:
	./print -file printerTest.txt

install:
	cp print ${INSTALL_PATH}
