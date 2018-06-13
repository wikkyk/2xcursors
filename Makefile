.POSIX:

OUT=/usr/share/fonts/misc

cursor.pcf.gz: cursor.bdf
	bdftopcf -t $< | gzip > $@

install: cursor.pcf.gz
	cp $< $(OUT)/$<
	mkfontdir $(OUT)
