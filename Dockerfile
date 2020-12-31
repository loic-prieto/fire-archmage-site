from ruby:3-alpine

run apk add build-base
run gem install bundler jekyll

workdir /blog

cmd /bin/sh
