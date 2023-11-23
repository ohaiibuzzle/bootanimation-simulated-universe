ZIP=zip
CP=cp

all: clean bootanimzip magiskzip

bootanimzip:
	$(MAKE) -C bootanimation

magiskzip: bootanimzip
	cp bootanimation/bootanimation.zip magisk/system/product/media/bootanimation.zip
	$(MAKE) -C magisk
	mv magisk/magisk.zip bootanimation-module.zip

clean:
	rm -f bootanimation/bootanimation.zip magisk/system/product/media/bootanimation.zip bootanimation-module.zip

.PHONY: bootanimzip magiskzip clean all