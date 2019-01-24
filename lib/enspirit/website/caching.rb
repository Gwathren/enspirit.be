module Enspirit
  module Website
    class Caching

      def initialize(app, development)
        @app = app
        @development = development
      end

      def development?
        !!@development
      end

      def call(env)
        status, headers, body = @app.call(env)
        [status, patch_response_headers(headers), body]
      end

    protected

      DEVELOPMENT = {
        "Cache-Control" => "public, must-revalidate, max-age=1, s-max-age=1"
      }

      PRODUCTION = {
        "Cache-Control" => "public, must-revalidate, max-age=120, s-max-age=120"
      }

      def patch_response_headers(hs)
        hs.merge(development? ? DEVELOPMENT : PRODUCTION)
      end

    end # class Caching
  end # module Website
end # module Enspirit
