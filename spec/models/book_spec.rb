require 'simplecov'
SimpleCov.start 'rails'

require "rails_helper"
require "book"

describe "Book" do
  default_params = { :title=>"Hello World" }

  it "has title called Hello World" do
    book = Book.new(default_params)
    book.title.should == "Hello World"
  end
end
