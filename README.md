# matharden.github.io

For [matharden.github.io](http://matharden.github.io) blog, which is running a [Jekyll blog](https://jekyllrb.com/).

## Development

### Ruby instructions

```
bundle install
jekyll serve
```

### Docker instructions

Alternatively, you can run the app in Docker.

Uses Ruby image from https://hub.docker.com/_/ruby/.

Build server

```
docker build -t my-ruby-app
```

Run server

```
docker run -p 4000:4000 my-ruby-app
```

View at [http://localhost:4000](http://localhost:4000)

Update `Gemfile.lock` in Docker container.

```
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:2.1 bundle install
```
