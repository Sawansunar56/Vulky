run:
	./build/main.exe

build:
	cmake -G "Unix Makefiles" -B build

b:
	cmake --build build
