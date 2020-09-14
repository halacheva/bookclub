# Bookclub

A simple Bookclub app for learning purposes

## Prerequesites

Before you start, make sure to have installed the required dependencies:

* Ruby version = 2.6.3
* PostgreSQL Server 12.3 up and running

## Setting up

* Clone the repo
```
git clone git@github.com:halacheva/bookclub.git
cd bookclub
```

* Setup the database and populate sample data

```
bundle exec rake db:setup
```

For new PostgreSQL installations role "root" could be missing and should be manually created:

```
sudo -u postgres createuser root
```

## Running the app
```
bundle exec rails s
```

## Running tests

```
bundle exec rspec
```

## Example login
```
Email: jane@example.com, Password: 1
Email: john@example.com, Password: 1
```

