$:.unshift File.expand_path('../lib', __FILE__)
require 'path'

def shell(*cmds)
  cmd = cmds.join("\n")
  puts cmd
  system cmd
end

def require_enspirit
  require 'enspirit'
  include Enspirit
end

task :require do
  require_enspirit
end

#
# Install all tasks found in tasks folder
#
# See .rake files there for complete documentation.
#
Dir["tasks/*.rake"].each do |taskfile|
  load taskfile
end

task :default => :test
