# [Scout App](https://travel-scout.herokuapp.com/)
Most individuals have limited vacation time and resources, this app will help them narrow down their vacation options to those that will give them a better return on their investment. Scout is a full stack application that uses a current cost index to help a user compare locations and find their next vacation destination. The current cost index is calculated based on the cost of meals and a roundtrip flight to the destination. Prices are adjusted as the currency exchange rate changes, thanks to information provided by the Open Exchange API. The information is further adjusted using the user's expressed interest in visiting the location, based on a rating scale of 1-5. Flight price data is scraped using a python program that can be found in my [Python-Scraper](https://github.com/ddanskin/python-scraper) repo. Currently the flight price values are manually updated in the database using the results from the python scraper.

![scout_preview](https://user-images.githubusercontent.com/6474602/41102977-11aa64dc-6a36-11e8-8a29-6c210c0ec8a5.png)

# To Use
Log in with email: mary@email.com password: test123

# Built with
* Rails 5
* PostgreSQL
* Devise
* Bootstrap
* bootstrap_form gem
* Open Exchange API

# License
MIT &copy; ddanskin
