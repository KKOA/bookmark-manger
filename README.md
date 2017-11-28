# Bookmark manager

As part of Week 4 project I was tasked with constructed a web app that stores web bookmarks in a database based on series of [user stories](https://github.com/KKOA/bookmark-manger/blob/master/domain_model.md).

## Screenshot

![Bookmark Manger Homepage Screen shot](https://github.com/KKOA/bookmark-manger/blob/master/ScreenShot.png)


## Technologies Used
- Capybara
- Data Mapper
- Database Cleaner
- Postgres
- Rspec
- Ruby
- Shotgun
- Sinsatra

## Setup Application
Install postgres database on your machine. Once finished install the database create three database as shown below.
```
psql
CREATE DATABASE bookmark_manager_test;
CREATE DATABASE bookmark_manager_development;
CREATE DATABASE bookmark_manager_production;
\q
```
Afterwards either clone / download repository from <br>https://github.com/KKOA/bookmark-manger<br>
to your machine.


## Run Application
In terminal/command prompt type the following
```
cd bookmarker-manager
bundle exec shotgun config.ru
```
Open a browser and navigate to
```
http://localhost:9393/links
```
## Test Application
In the terminal/command prompt type the following
```
cd bookmarker-manger
bundle exec rspec
```
