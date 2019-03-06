require 'startback'
require 'startback/web/magic_assets'
require 'startback/web/auto_caching'

module Enspirit
  module Website

    PUBLIC_ASSETS_FOLDER = ROOT_FOLDER/'public'/'assets'

    ASSETS_CONFIG = {
      :folder => Enspirit::ROOT_FOLDER/"assets",
      :path => "/assets",
      :sprockets => {
        :css_compressor => :scss,
        :js_compressor => Uglifier.new(mangle: true)
      }
    }

  end # module Website
end # module Enspirit
require 'enspirit/website/app'
require 'enspirit/website/magic_data'
