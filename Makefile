SITE_DIR=$(PWD)/root

build-site:
	docker run -ti --rm -v ${SITE_DIR}:/srv/jekyll jekyll/jekyll:latest jekyll build

serve-site:
	docker run -ti --rm -v ${SITE_DIR}:/srv/jekyll -p 4000:4000 --name archmage-blog jekyll/jekyll:latest jekyll serve --watch --drafts
