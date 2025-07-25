# Makefile for Windows using g++
CXX = g++
CXXFLAGS = -std=c++11 -Wall
TARGET = main.exe

all: $(TARGET)

$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) -o $(TARGET) main.cpp

clean:
	del /Q $(TARGET)
