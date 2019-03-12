# -*- encoding: utf-8 -*-
# stub: rack-robustness 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-robustness".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bernard Lambeau".freeze]
  s.date = "2013-04-17"
  s.description = "Rack::Robustness provides you with an easy way to handle errors in your stack, for making web applications more robust.".freeze
  s.email = ["blambeau@gmail.com".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "CHANGELOG.md".freeze, "LICENCE.md".freeze]
  s.files = ["CHANGELOG.md".freeze, "LICENCE.md".freeze, "README.md".freeze]
  s.homepage = "https://github.com/blambeau/rack-robustness".freeze
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "Rack::Robustness, the rescue clause of your Rack stack.".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.12"])
      s.add_development_dependency(%q<rack>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rack-test>.freeze, ["~> 0.6"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.12"])
      s.add_dependency(%q<rack>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rack-test>.freeze, ["~> 0.6"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.12"])
    s.add_dependency(%q<rack>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 0.6"])
  end
end
