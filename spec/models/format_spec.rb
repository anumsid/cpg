require 'simplecov'
SimpleCov.start 'rails'

require "rails_helper"
require "format"

describe "Author" do
  default_params = { :name=>"Hardcover" }

  it "has title called Hello World" do
    format = Format.new(default_params)
    format.name.should == "Hardcover"
  end
end
