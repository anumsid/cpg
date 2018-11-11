require 'simplecov'
SimpleCov.start 'rails'

require "rails_helper"
require "books_controller"

RSpec.describe BooksController do
  describe "books_controller", :type => :controller do
    it "renders index" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
