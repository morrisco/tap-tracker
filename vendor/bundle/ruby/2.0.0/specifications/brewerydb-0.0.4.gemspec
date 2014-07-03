# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "brewerydb"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Mar"]
  s.date = "2011-03-21"
  s.description = "Free Beer data. You'll need an api key."
  s.email = ["chris@hopshunter.com"]
  s.homepage = "http://www.hopshunter.com"
  s.require_paths = ["lib"]
  s.rubyforge_project = "brewerydb"
  s.rubygems_version = "2.0.14"
  s.summary = "Simple Wrapper around the BreweryDB API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.7.3"])
      s.add_runtime_dependency(%q<hashie>, [">= 1.0.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0.7.3"])
      s.add_dependency(%q<hashie>, [">= 1.0.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.7.3"])
    s.add_dependency(%q<hashie>, [">= 1.0.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
