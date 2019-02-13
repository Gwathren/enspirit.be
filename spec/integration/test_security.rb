require 'spec_helper'

module Enspirit
  describe "the assets pipeline" do
    include Rack::Test::Methods

    def app
      Enspirit::Website::App
    end

    it "respond 404 on an unknown page" do
      get "/nosuchone"
      expect(last_response.status).to eql(404)
    end

  end
end
