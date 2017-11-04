# README
This README is for the backend portion of the AnkiSound application.  This backend provides API endpoints of users and phrases so that the frontend portion (https://github.com/bretfunk/anki_sound_frontend) can access the data.  This data is public but is protected with the Knock authentication gem.  A token verifying that a user is in the database is required in order to access the endpoints.

* Endpoints:

Public:
Generic welcome message with avaiable API endpoints
/

Protected:

Shows the current user's information (id, email, password_digest)
/api/user

Shows the current user's phrases (phrase, language)
/api/phrases


* Ruby version
2.4.1

* Database creation
rake db:setup {rake db:create, rake db:migrate, rake db:seed}

* How to run the test suite
The test suite is written in Rspec and covers model tests.  Because this backend is protected with authorization from the frontend program, it is impossible to test the public endpoints directly.
The test suite is written using factory_bot_rails and shoulda-matchers.

* Services (job queues, cache servers, search engines, etc.)
There are no services in this application. This application is API only.

* Deployment instructions
To deploy this application:
Clone down the repo using the command below in your terminal:
- git clone https://github.com/bretfunk/anki_sound_backend

Change directory into the anki_sound_backend directory
- cd anki_sound_backend

Create the database, run the migrations, and run the seed file:
- rake db:setup

Start up your server:
- rails s

Keep in mind that the front end app is built to work with the heroku app so you will need to change your front end application to access your localhost or wherever you deploy your application.

* Accessiblity
This application was built with accessiblity in mind.  For more details, see the accessiblity portion of the frontend readme here:https://github.com/bretfunk/anki_sound_frontend/blob/master/README.md

<!--* ...-->
