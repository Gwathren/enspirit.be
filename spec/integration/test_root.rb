require 'spec_helper'

module Enspirit
  describe "the assets pipeline" do
    include Rack::Test::Methods

    def app
      Enspirit::Website::App
    end

    it "serves the main index" do
      get "/"
      expect(last_response).to be_ok
      expect(last_response['Content-Type']).to match(/text\/html/)
      expect(last_response.body).to match(/development/)
    end

  end
end
