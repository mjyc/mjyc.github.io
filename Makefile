default: install

all: install build

h help:
	@grep '^[a-z]' Makefile

install:
	bundle config set --local path vendor/bundle
	bundle install

upgrade:
	bundle update

s serve:
	bundle exec jekyll serve --trace --livereload

build:
	JEKYLL_ENV=production bundle exec jekyll build --trace

deploy:
	rsync -Wav --human-readable --progress _site/ docs

clean:
	rm -rf vendor/bundle
