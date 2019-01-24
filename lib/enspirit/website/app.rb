module Enspirit
  module Website
    class App < Sinatra::Application

      set :root, ROOT_FOLDER
      set :raise_errors, true
      set :show_exceptions, false
      set :views, ROOT_FOLDER/"views"

      use Caching, development?

      get "/assets/*" do
        env["PATH_INFO"].sub!("/assets", "")
        Assets.call(env)
      end

      get "/" do
        etag Digest::MD5.hexdigest(tpldata.to_json), :weak
        erb :index, :locals => tpldata, :layout => :html
      end

    private

      def tpldata
        {
          "assetsSuffix" => settings.production? ? "-#{version}.min" : "",
          "environment"  => settings.environment
        }
      end

      def version
        @version ||= (PUBLIC_ASSETS_FOLDER/"VERSION").read.strip
      end

    end # class Website
  end # module Website
end # module Enspirit
