module Enspirit
  module Website
    Assets = Sprockets::Environment.new
    Assets.append_path ROOT_FOLDER/'assets'
    Assets.css_compressor = :scss
    Assets.js_compressor = Uglifier.new(mangle: true)
  end # module Website
end # module Enspirit
