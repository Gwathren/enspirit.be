require 'path'
require 'sinatra'
require 'sprockets'
require "sass"
require 'uglifier'
require 'digest'
module Enspirit

  # Root folder of the project structure
  ROOT_FOLDER = Path.backfind('.[Gemfile]') or raise("Missing Gemfile")

  # Public folder
  PUBLIC_FOLDER = ROOT_FOLDER/'public'

  # Public assets folder
  PUBLIC_ASSETS_FOLDER = PUBLIC_FOLDER/'assets'

end # module Enspirit
require 'enspirit/website'
