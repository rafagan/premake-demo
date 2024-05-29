.PHONY: *

run: build-debug run-debug

build-debug:
	premake5 gmake2
	@cd ./build && make config=debug

build-release:
	premake5 gmake2
	@cd ./build && make config=release

run-debug:
	@./bin/debug/cmake_demo

run-release:
	@./bin/release/cmake_demo

install-boost:
	brew install boost
	@# sudo apt install libboost-all-dev