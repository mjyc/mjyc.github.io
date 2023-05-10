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
	bundle exec jekyll serve --livereload

build:
	JEKYLL_ENV=production bundle exec jekyll build
	rm _site/Makefile

deploy:
	git checkout master
	rsync -Wav --human-readable --progress _site/ .
	rm -rf _site
	git add .
	git commit -m "Publish"
	git push
	git checkout src

clean:
	rm -rf vendor/bundle _site
