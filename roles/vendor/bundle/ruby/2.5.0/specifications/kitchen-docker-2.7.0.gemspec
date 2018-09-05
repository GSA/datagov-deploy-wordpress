# -*- encoding: utf-8 -*-
# stub: kitchen-docker 2.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-docker".freeze
  s.version = "2.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sean Porter".freeze]
  s.date = "2018-07-12"
  s.description = "A Docker Driver for Test Kitchen".freeze
  s.email = ["portertech@gmail.com".freeze]
  s.homepage = "https://github.com/portertech/kitchen-docker".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "A Docker Driver for Test Kitchen".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<test-kitchen>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<cane>.freeze, [">= 0"])
      s.add_development_dependency(%q<tailor>.freeze, [">= 0"])
      s.add_development_dependency(%q<countloc>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<fuubar>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<codecov>.freeze, [">= 0.0.2", "~> 0.0"])
      s.add_development_dependency(%q<kitchen-inspec>.freeze, ["~> 0.14"])
    else
      s.add_dependency(%q<test-kitchen>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<cane>.freeze, [">= 0"])
      s.add_dependency(%q<tailor>.freeze, [">= 0"])
      s.add_dependency(%q<countloc>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_dependency(%q<fuubar>.freeze, ["~> 2.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.9"])
      s.add_dependency(%q<codecov>.freeze, [">= 0.0.2", "~> 0.0"])
      s.add_dependency(%q<kitchen-inspec>.freeze, ["~> 0.14"])
    end
  else
    s.add_dependency(%q<test-kitchen>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<cane>.freeze, [">= 0"])
    s.add_dependency(%q<tailor>.freeze, [">= 0"])
    s.add_dependency(%q<countloc>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
    s.add_dependency(%q<fuubar>.freeze, ["~> 2.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.9"])
    s.add_dependency(%q<codecov>.freeze, [">= 0.0.2", "~> 0.0"])
    s.add_dependency(%q<kitchen-inspec>.freeze, ["~> 0.14"])
  end
end
