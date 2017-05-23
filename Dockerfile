FROM ruby:2.1-onbuild
WORKDIR /app
ADD . /app
EXPOSE 4000
CMD ["jekyll", "serve"]
