all: build

build:
	@docker build --tag=technomancer101/openfire .

release: build
	@docker build --tag=technomancer101/openfire:$(shell cat VERSION) .
