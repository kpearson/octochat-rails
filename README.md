# Octochat

[Trey Tomlinson](https://github.com/treyx)<br>
[Jeff Gu](https://github.com/jgu2160)<br>
[Kit Pearson](https://github.com/kpearson)


[![Code Climate](https://codeclimate.com/github/kpearson/octochat-rails/badges/gpa.svg)](https://codeclimate.com/github/kpearson/octochat-rails)
[![Codeship Status for kpearson/octochat-rails](https://codeship.com/projects/062604a0-f857-0132-30bb-36c425669d79/status?branch=master)](https://codeship.com/projects/86584)


This app is a part of our microservice architecture. You need the other app which is located [here](http://github.com/kpearson/octochat)

### Local Dev Installation
* Download and run `npm install nodemon`
* With your favorit environmental variable management tool add the url to the var `SOCKET_URL`
* Ensure your redis server is running locally
* Run your rails server on any open port besides 3000 `rails s -p 8000`
