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
        serve(:dashboard)
      end

      get %r{/([a-z]+)} do |page|
        serve(page.to_sym)
      end

    public

      attr_reader :page_name

      def active_css_class(page)
        %Q{class="#{page_name.to_s != page.to_s ? 'in' : ''}active"}
      end

    private

      def serve(page)
        @page_name = page.to_s
        etag Digest::MD5.hexdigest(tpldata.merge({
          page: page
        }).to_json), :weak
        erb page, :locals => tpldata
      end

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
