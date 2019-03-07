
PROJECT_NAME ?= BitBar
PROJECT = $(shell find . -name 'BitBar.xcodeproj')

all: build

clean:
	rm -r ./**/build

build:
	git submodule init && git submodule update
	xcodebuild -project $(PROJECT)

