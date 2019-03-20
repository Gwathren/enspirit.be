require 'spec_helper'

module Enspirit
  describe "the request access service" do
    include Rack::Test::Methods

    def app
      Enspirit::Website::App
    end

    it "works" do
      post "/contact", {
        email: 'hello@visitor.com'
      }.to_json, { "CONTENT_TYPE" => "application/json" }
      expect(last_response).to be_ok
    end

    it "detects invalid emails" do
      post "/contact", {
        email: 'bernard'
      }.to_json, { "CONTENT_TYPE" => "application/json" }
      expect(last_response.status).to eql(400)
    end

    it "detects invalid bodies" do
      post "/contact", body: "foobar"
      expect(last_response.status).to eql(400)
    end

  end
end
