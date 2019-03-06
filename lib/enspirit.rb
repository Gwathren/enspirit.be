require 'path'
require 'sinatra'
require 'sprockets'
require "sass"
require 'uglifier'
require 'digest'
require 'yaml'
require 'ostruct'
module Enspirit

  # Root folder of the project structure
  ROOT_FOLDER = Path.backfind('.[Gemfile]') or raise("Missing Gemfile")

end # module Enspirit
require 'enspirit/website'
