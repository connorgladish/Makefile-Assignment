# File: Makefile
# Author: CJ Gladish
# Purpose: For compiling the project
# Date: 9/20/24

# Variables for compilation
CC = g++
CFLAGS = -g -Wall -Wextra
# Compiles with all errors and warnings
TARGET = MakeToolkit

default: TARGET

TARGET: main.o Employee.o Officer.o Supervisor.o
		$(CC) $(CFLAGS) -o $(TARGET) main.o Employee.o Officer.o Supervisor.o

main.o:
		$(CC) $(CFLAGS) -c main.cpp

Employee.o:
		$(CC) $(CFLAGS) -c Employee.cpp

Officer.o:
		$(CC) $(CFLAGS) -c Officer.cpp

Supervisor.o:
		$(CC) $(CFLAGS) -c Supervisor.cpp

clean:
		$(RM) *.o *~ $(TARGET)