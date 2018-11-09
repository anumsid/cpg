require 'simplecov'
SimpleCov.start 'rails'

require "rails_helper"
require "author"

describe "Author" do
  default_params = { :first_name=>"Anum", :last_name=>"Siddiqui" }

  it "has title called Hello World" do
    author = Author.new(default_params)
    author.full_name.should == "Anum Siddiqui"
  end
end
