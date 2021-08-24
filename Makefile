all: build

build:
	@docker build --tag=technomancer-101/openfire .

release: build
	@docker build --tag=technomancer-101/openfire:$(shell cat VERSION) .
