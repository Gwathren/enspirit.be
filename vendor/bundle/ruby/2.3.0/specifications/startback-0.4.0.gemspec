# -*- encoding: utf-8 -*-
# stub: startback 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "startback".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bernard Lambeau".freeze]
  s.date = "2019-03-06"
  s.description = "Yet another ruby backend framework, I'm afraid".freeze
  s.email = "blambeau@gmail.com".freeze
  s.homepage = "http://www.enspirit.be".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "Got Your Ruby Back".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rack-test>.freeze, [">= 0"])
      s.add_development_dependency(%q<sprockets>.freeze, ["~> 4.0.0.beta8"])
      s.add_development_dependency(%q<babel-transpiler>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rack-robustness>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<finitio>.freeze, [">= 0.6"])
      s.add_runtime_dependency(%q<path>.freeze, [">= 1.3"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rack-test>.freeze, [">= 0"])
      s.add_dependency(%q<sprockets>.freeze, ["~> 4.0.0.beta8"])
      s.add_dependency(%q<babel-transpiler>.freeze, [">= 0"])
      s.add_dependency(%q<sinatra>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rack-robustness>.freeze, ["~> 1.1"])
      s.add_dependency(%q<finitio>.freeze, [">= 0.6"])
      s.add_dependency(%q<path>.freeze, [">= 1.3"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_dependency(%q<sprockets>.freeze, ["~> 4.0.0.beta8"])
    s.add_dependency(%q<babel-transpiler>.freeze, [">= 0"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rack-robustness>.freeze, ["~> 1.1"])
    s.add_dependency(%q<finitio>.freeze, [">= 0.6"])
    s.add_dependency(%q<path>.freeze, [">= 1.3"])
  end
end
