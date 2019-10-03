obj-m=pulsecounter.o
PWD=$(shell pwd)
KDIR=/usr/src/linux-headers-4.9.0-6-rpi2/

all: driver user

driver: pulsecounter.c pulsecounter.h
	make -C $(KDIR) ARCH=arm CROSS_COMPILE=${CCPREFIX} M=$(PWD) modules

user: userMain.c pulsecounter.h
	$(CCPREFIX)gcc -o $(PWD)/pulsecounter $(PWD)/userMain.c

clean:
	make -C $(KDIR) ARCH=arm CROSS_COMPILE=${CCPREFIX} M=$(PWD) clean


### 	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
