require 'simplecov'
SimpleCov.start 'rails'

require "rails_helper"
require "formats_controller"

RSpec.describe FormatsController do
  describe "formats_controller", :type => :controller do
    it "renders index" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
