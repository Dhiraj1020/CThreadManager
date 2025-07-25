# Makefile for Windows using g++
CXX = g++
CXXFLAGS = -std=c++11 -Wall
TARGET = main.exe

all: $(TARGET)

$(TARGET): ThreadManager.cpp
	$(CXX) $(CXXFLAGS) -o $(TARGET) ThreadManager.cpp

clean:
	del /Q $(TARGET)
