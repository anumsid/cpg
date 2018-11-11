require 'simplecov'
SimpleCov.start 'rails'

require "rails_helper"
require "authors_controller"

RSpec.describe AuthorsController do
  describe "authors_controller", :type => :controller do
    it "renders index" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
