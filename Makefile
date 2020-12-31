build-environment:
	docker build -t archmage-blog:dev .

run-environment:
	docker run -ti --rm -v $(PWD):/blog -p 4000:4000 --name archmage-blog archmage-blog:dev

build-site:
	cd root && bundle exec jekyll build

serve-site:
	cd root && bundle exec jekyll serve
