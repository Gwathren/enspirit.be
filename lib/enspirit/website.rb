require 'startback'
require 'startback/web/magic_assets'
require 'startback/web/auto_caching'
require 'talktome'

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

    TALKTOME = ::Talktome::Client::Local.new(ROOT_FOLDER/'talktome')

  end # module Website
end # module Enspirit
require 'enspirit/website/app'
require 'enspirit/website/magic_data'
