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
      expect(last_response.body).to match(/homepage/)
    end

    Website::App::PAGE_NAMES.each do |name|
      it "serves page `#{name}`" do
        get "/#{name}"
        expect(last_response).to be_ok
        expect(last_response['Content-Type']).to match(/text\/html/)
        expect(last_response.body).to match(/#{name}/)
      end
    end

  end
end
