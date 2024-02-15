# the compiler: gcc for C program, define as g++ for C++
CC = g++
 
  # compiler flags:
  #  -g     - this flag adds debugging information to the executable file
  #  -Wall  - this flag is used to turn on most compiler warnings
CFLAGS  = -g -Wall
 
  # The build target 
TARGET = virtual-cricket-game.o game.o team.o player.o
 
a.out: virtual-cricket-game.o game.o team.o player.o
	$(CC) $(CFLAGS) $^ -o $@
 
*.o: *..cpp
	$(CC) $(CFLAGS) -o $@ $<
 
clean:
	*.o *.out
