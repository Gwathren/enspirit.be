# -*- encoding: utf-8 -*-
# stub: finitio 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "finitio".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bernard Lambeau".freeze]
  s.date = "2019-02-28"
  s.description = "Implements the Finitio information language in Ruby.".freeze
  s.email = ["blambeau@gmail.com".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "CHANGELOG.md".freeze, "LICENCE.md".freeze]
  s.files = ["CHANGELOG.md".freeze, "LICENCE.md".freeze, "README.md".freeze]
  s.homepage = "https://github.com/blambeau/finitio".freeze
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "Finitio - in Ruby".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<citrus>.freeze, ["< 4.0", ">= 2.4"])
    else
      s.add_dependency(%q<citrus>.freeze, ["< 4.0", ">= 2.4"])
    end
  else
    s.add_dependency(%q<citrus>.freeze, ["< 4.0", ">= 2.4"])
  end
end
