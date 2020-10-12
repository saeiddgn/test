#
#	salam in test marboot be avalin make file man hast
#	shad bashid
#	;-)
#
#
CC=gcc
FLAGS= -g\
       -std=c99\
       -Werror

CFLAGS=-std=c99

#cpu and architecture
CPU=cortex-m0plus
ARCH=thumb
SPECS=nosys.specs

#platform flags
PLATFORM_FLAGS:=-m$(ARCH)\
	-mcpu=$(CPU)\
	--specs=$(SPECS)

starter.o:starter.c
	gcc $(FLAGS) -c -o starter.o starter.c

starter.out:starter.o
	gcc starter.o -o starter.out

main.out:main.cpp
	g++ -Werror -o main.out main.cpp

%.c:%.o
	$(CC) -c $@ -o $< $(CFLAGS)

OBJS:=$(SRCS:.c=.o)

.PHONY:all
	all: main.out

main.out: $(OBJS)
	gcc $(CFLAGS) -o main.out $()

.PHONY:clean
	clean:
	rm main.map $(OBJS) main.out


