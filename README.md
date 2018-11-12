# README

# Setup
Use Ruby Version 2.3.3p222

If you are not using this version, use `rvm` to switch to the correct version"
`rvm install ruby-X.X.X`
`rvm --default use ruby-X.X.X`
`Replace the "X" with the correct Ruby Version`

#Dependencies
Run `bundle install` to install all dependencies.

# Running
Simply run `rails s` to start the server and run it on http://localhost:3000/books
to view all books.

Clicking on a book's title will redirect you to that specific books' show page.
For example clicking on the first title in the book#index will redirect you to http://localhost:3000/books/1.

To create new books head to http://localhost:3000/books/new

# For JSON

Enter `?json=true` query string parameter to get any book route in JSON format.
