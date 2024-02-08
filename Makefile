
PREFIX=/usr/local

all: here there

here: here.sh
	cat here.sh > $@
	echo 'exit 0' >> $@
	echo '#EOF' >> $@
	chmod +x $@

there: there.sh
	cat there.sh > $@
	echo 'exit 0' >> $@
	echo '#EOF' >> $@
	chmod +x $@

clean:
	rm -f here
	rm -f there

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f here ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/here
	cp -f there ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/there

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/here
	rm -f ${DESTDIR}${PREFIX}/bin/there
