# -*- encoding: utf-8 -*-
# stub: kitchen-sync 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-sync".freeze
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Noah Kantrowitz".freeze]
  s.date = "2018-02-13"
  s.description = "Improved file transfers for for test-kitchen".freeze
  s.email = ["noah@coderanger.net".freeze]
  s.homepage = "https://github.com/coderanger/kitchen-sync".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Improved file transfers for for test-kitchen".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<test-kitchen>.freeze, [">= 1.0.0"])
      s.add_runtime_dependency(%q<net-sftp>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<test-kitchen>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<net-sftp>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<test-kitchen>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<net-sftp>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
