

# README

The app is built in rails `5.2.2` and angular 2+.

System Dependencies:

* Ruby version `2.5.1`

* Database creation
	- Copy database.example.yml to your database.yml file
	- `rake db:create`
	- `rake db:migrate`

* Database initialization
	- `rake db:seed` to load the db with test data.

* Running tests
	- bundle exec rspec

* Services (job queues, cache servers, search engines, etc.)
	- whenever gem used 
	- run `crontab -r`
	- run `whenever --update-crontab --set environment='development'` to start the cron job in development environment

* Running rails app
	- `rails s`

* Running front end app
	- cd `frontend-app/client`
	- run `npm install` 
	- `ng serve`
	- open the browser and write `http://localhost:4200`
