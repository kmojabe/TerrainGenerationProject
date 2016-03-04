##
## Makefile 
##


## Define compiler

CC	= g++

## Define flags

CFLAGS	= -Wall -Wshadow -Werror -g -std=gnu++0x#-std=c++11

## Build rule to build executable, by default, Main is build since it 
## is the label of the first rule

Main: Main.o bmp.o First_Person.o Isometric_Render.o World_Map.o EasyBMP.o EasyBMPsample.o 
	$(CC) $(CFLAGS) Main.cpp bmp.cpp First_Person.cpp Isometric_Render.cpp World_Map.cpp EasyBMP.o EasyBMPsample.o -o Main
## rule to clean up object files and executable so that you can rebuild

##clean:	
##	rm -f Main.o bmp.o First_Person.o Isometric_Render.o World_Map.o Main

## rule to compile .cpp to .o

%.o:	%.cpp
	$(CC) $(CFLAGS) -c $<
