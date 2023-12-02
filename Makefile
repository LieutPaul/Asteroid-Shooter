CXX = g++

CXXFLAGS = -Iinclude
# LDFLAGS = -Llib -Wl,-rpath ./lib
LDLIBS = -lsfml-system -lsfml-window -lsfml-graphics -lsfml-audio -lsfml-network -lm -w

SRCS = main.cpp Entity.cpp Animation.cpp Asteroid.cpp Bullet.cpp Player.cpp

TARGET = main

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^ $(LDLIBS)

test:
	g++ -std=c++11 -pthread *.cpp googletest/build/lib/libgtest.a -o test_executable -L /mnt/c/Users/HP/Desktop/SE/Demo/SFML-2.6.0/lib -lsfml-graphics -lsfml-window -lsfml-system -w

# Clean
clean:
	rm -f $(TARGET)

.PHONY: all clean