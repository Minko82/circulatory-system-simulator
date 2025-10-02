# Makefile for raylib on macOS
# Usage:
#   make        # build
#   make run    # build + run
#   make clean  # remove binary

APP := app
SRC := main.cpp
CXX := c++
CXXFLAGS := -std=c++17
PKGCONFIG := $(shell pkg-config --cflags --libs raylib)

$(APP): $(SRC)
	$(CXX) $(SRC) $(CXXFLAGS) -o $(APP) $(PKGCONFIG)

run: $(APP)
	./$(APP)

clean:
	rm -f $(APP)
