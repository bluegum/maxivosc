CONFIG_MODULE_FORCE_UNLOAD=y

# debug build:
# "CFLAGS was changed ... Fix it to use EXTRA_CFLAGS."
EXTRA_CFLAGS=-g -O0

obj-m += snd-minivosc.o

snd-minivosc-objs  := minivosc.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
