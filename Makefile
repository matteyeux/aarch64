CC = gcc
AS = as
prefix = aarch64-linux-gnu-
TARGETS = 	first \
			arg_num \
			add_sub \
			mul_div

OBJECTS = 	first.o \
			arg_num.o \
			add_sub.o \
			mul_div.o
		
all : ${TARGETS}
	
${TARGETS}: $(OBJECTS)
	$(prefix)$(CC) -static -o $@ $@.o


%.o : %.s
	$(prefix)$(AS) -c $< -o $@

hello_aarch64 : hello_aarch64.c
	aarch64-linux-gnu-gcc $< -static -o $@

clean : 
	rm -rf *.o ${TARGETS} hello_aarch64
