# Specify which docker tag is to be used
DOCKER_TAG := $(or ${DOCKER_TAG},${DOCKER_TAG},latest)

Dockerfile.built: Dockerfile $(shell find . -type f | grep -v "public\/assets\|\.git\|\.lock\|\.built|\.idea\|\.bundle\|\.built\|\.log\|\.push\|\.bash_history\|\.class\|target\|wp-content\|backups\|vendor/bundle\|node_modules\|mobile\/platform\|mobile\/www\|mobile\/src\/assets\/fonts")
	docker build -tenspirit/website . | tee Dockerfile.log
	touch Dockerfile.built

Dockerfile.pushed: Dockerfile.built
	@if [ -z "$(DOCKER_REGISTRY)" ]; then \
		echo "No private registry defined, ignoring. (set DOCKER_REGISTRY or place it in .env file)"; \
		return 1; \
	fi
	docker tag enspirit/website $(DOCKER_REGISTRY)/enspirit/website:$(DOCKER_TAG)
	docker push $(DOCKER_REGISTRY)/enspirit/website:$(DOCKER_TAG) | tee -a $1/Dockerfile.log
	touch $1/Dockerfile.pushed

image: Dockerfile.built

up: clean Dockerfile.built
	docker run -p8080:80 enspirit/website

clean:
	rm -rf public/assets/*

devel:
	bundle install
	bundle exec rackup

push: $1/Dockerfile.pushed
