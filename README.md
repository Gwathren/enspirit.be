# enspirit.be - Enspirit's Web site

This repository contains the source code of Enspirit's web site.

## Getting started

Developer with a recent ruby installation should simply clone the repository
thenn run the following make command:

```
make devel
```

The website in development mode can be found on http://127.0.0.1:9292/

## Structure

```
/assets/      # javascript and sass style files, automatically compiled
/config/      # nginx configuration
/lib/         # ruby implementation
/public/      # static assets (images, logos, favicons, etc.)
/spec/        # unit & integration tests
/tasks/       # rake tasks
/views/       # html templates in .erb
```
