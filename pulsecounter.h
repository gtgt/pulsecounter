
// wiringPi pin numbers are like Arduino....
#define	kGREENled	17		// gpio 17
#define	kREDled		27		// gpio 27
#define	kSwitch1	4		// gpio 4

// size of my buffer in 16 bit words
#define	kIRQbuffSize	1024

#ifndef VM_RESERVED
# define VM_RESERVED (VM_DONTEXPAND | VM_DONTDUMP)
#endif

typedef struct irq_user_info {
	unsigned short buffer[kIRQbuffSize]; /* the data */
	int irqCounter;
} irq_user_info;

