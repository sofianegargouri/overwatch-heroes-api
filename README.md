# Overwatch Heroes API

[![Build Status](https://travis-ci.org/sofianegargouri/overwatch-heroes-api.svg?branch=master)](https://travis-ci.org/sofianegargouri/overwatch-heroes-api) [![Heroku](https://heroku-badge.herokuapp.com/?app=overwatch-heroes-api)]

## Getting started

```
# Setup your env variables
$ cp .env.example .env        # Don't forget to update the .env according to your environment

# Install the dependencies
$ bundle install

# Start the database
$ docker-compose up           # Add '&' at the end if you want to run it in background
# Run the migrations
$ rails db:migrate
# Populate your database
$ rails db:seed
```
