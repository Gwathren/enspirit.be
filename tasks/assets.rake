namespace :assets do

  task :require do
    $:.unshift File.expand_path('../../lib', __FILE__)
    require 'enspirit'
    require 'securerandom'
    include Enspirit
  end

  task :prepare => :require do
    $version = SecureRandom.urlsafe_base64
    FileUtils.mkdir_p PUBLIC_ASSETS_FOLDER
    (PUBLIC_ASSETS_FOLDER/"VERSION").write($version)
  end

  desc 'compile assets'
  task :compile => [:clean, :prepare, :compile_js, :compile_css]

  desc 'compile javascript assets'
  task :compile_js => :prepare do
    Website::Assets['vendor.js'].write_to(PUBLIC_ASSETS_FOLDER/"vendor-#{$version}.min.js")
    Website::Assets['app.js'].write_to(PUBLIC_ASSETS_FOLDER/"app-#{$version}.min.js")
    puts "successfully compiled js assets"
  end

  desc 'compile css assets'
  task :compile_css => :prepare do
    Website::Assets['vendor.css'].write_to(PUBLIC_ASSETS_FOLDER/"vendor-#{$version}.min.css")
    Website::Assets['app.css'].write_to(PUBLIC_ASSETS_FOLDER/"app-#{$version}.min.css")
    puts "successfully compiled css assets"
  end

  desc 'Cleans generated assets'
  task :clean => :require do
    FileUtils.rm_rf PUBLIC_ASSETS_FOLDER
  end

end
