module Enspirit
  module Website
    class App < Sinatra::Application

      class InvalidEmail < Startback::Errors::BadRequestError; end

      PAGE_NAMES = [
        :homepage,
        :logiciels,
        :mentors,
        :partenaires,
        :references,
        :vision,
        :services
      ]

      set :root, ROOT_FOLDER
      set :raise_errors, true
      set :show_exceptions, false
      set :views, ROOT_FOLDER/"views"

      use Startback::Web::AutoCaching, development?
      use Startback::Web::MagicAssets, ASSETS_CONFIG

      get "/" do
        serve(:homepage)
      end

      get %r{/([a-z]+)} do |page|
        not_found unless PAGE_NAMES.find{|pn| pn.to_s == page }
        serve(page.to_sym)
      end

      post '/contact' do
        begin
          body = request.body.read
          info = JSON.parse(body)
          raise InvalidEmail unless info['email'] && info['email'] =~ /^[^@]+@[^@]+$/
          user = {
            email: "info@enspirit.be"
          }
          data = {
            email: info['email'],
            message: info['message'] || ''
          }
          TALKTOME.talktome("contact", user, data, [:email]){|m|
            m.from = "noreply@enspirit.be"
          }
          [ 200, { "Content-Type" => "text/plain"}, ["Ok"] ]
        rescue JSON::ParserError, InvalidEmail => ex
          [ 400, { "Content-Type" => "text/plain"}, ["Invalid email address"] ]
        end
      end

    public

      attr_reader :page_name

      def page_data
        @page_data ||= MagicData.load(ROOT_FOLDER/"data"/"#{page_name}.yml")
      end

      def active_css_class(page)
        %Q{class="#{page_name.to_s != page.to_s ? 'in' : ''}active"}
      end

    private

      def serve(page)
        @page_name = page.to_s
        etag Digest::MD5.hexdigest(tpldata.merge({
          page: page
        }).to_json), :weak
        erb page, :locals => tpldata, :layout => :"layouts/html"
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
