Dockerfile.built: Dockerfile $(shell find . -type f | grep -v "public\/assets\|\.git\|\.lock\|\.built|\.idea\|\.bundle\|\.built\|\.log\|\.push\|\.bash_history\|\.class\|target\|wp-content\|backups\|vendor/bundle\|node_modules\|mobile\/platform\|mobile\/www\|mobile\/src\/assets\/fonts")
	docker build -tenspirit/website . | tee Dockerfile.log
	touch Dockerfile.built

image: Dockerfile.built

up: clean Dockerfile.built
	docker run -p8080:80 enspirit/website

clean:
	rm -rf public/assets/*

devel:
	bundle install
	bundle exec rackup
