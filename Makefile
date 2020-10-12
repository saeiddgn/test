# make file for bitwise code encryption
#source byte:
# x7x6x5x4x3x2x1x0
# x7x6x5x0x1x2x3x5
# destination byte after encryption
#
CC=gcc
FLAGS=-Werror
bitencrypt.out:bitencrypt.cpp
	$(CC) $(FLAGS) bitencrypt.cpp -o bitencrypt.out
