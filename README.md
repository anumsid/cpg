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

Enter `accept: application/json` in the request headers to get any book route in JSON format.

# Variations from Requirements
In the requirements, a JSON book POST request should contain ID. It is not best practice to assign an ID from the client, but rather, server generates ID and sends it back in the response. Format_id is accepted instead, as format_id was missing from the requirements.

Also in book POST request, in JSON format, author_id is singular. Throughout the rest of the requirements, a book can contain more than one author. For JSON POST requests, author_id is authors_ids, and must be an array of ID strings.
