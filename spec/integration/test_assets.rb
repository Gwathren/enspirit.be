require 'spec_helper'

module Enspirit
  describe "the assets pipeline" do
    include Rack::Test::Methods

    def app
      Enspirit::Website::App
    end

    it "serves the vendor css" do
      get "/assets/vendor.css"
      expect(last_response).to be_ok
    end

    it "serves the vendor js" do
      get "/assets/vendor.js"
      expect(last_response).to be_ok
    end

    it "serves the app css" do
      get "/assets/app.css"
      expect(last_response).to be_ok
    end

    it "serves the app js" do
      get "/assets/app.js"
      expect(last_response).to be_ok
    end

  end
end
