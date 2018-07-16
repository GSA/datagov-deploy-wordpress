# -*- encoding: utf-8 -*-
# stub: kitchen-vagrant 1.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-vagrant".freeze
  s.version = "1.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Fletcher Nichol".freeze]
  s.date = "2018-04-24"
  s.description = "Kitchen::Driver::Vagrant - A Vagrant Driver for Test Kitchen.".freeze
  s.email = ["fnichol@nichol.ca".freeze]
  s.homepage = "https://github.com/test-kitchen/kitchen-vagrant/".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Kitchen::Driver::Vagrant - A Vagrant Driver for Test Kitchen.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<test-kitchen>.freeze, ["~> 1.4"])
      s.add_development_dependency(%q<countloc>.freeze, ["~> 0.4"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<github_changelog_generator>.freeze, ["= 1.11.3"])
      s.add_development_dependency(%q<chefstyle>.freeze, [">= 0"])
    else
      s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.4"])
      s.add_dependency(%q<countloc>.freeze, ["~> 0.4"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.9"])
      s.add_dependency(%q<github_changelog_generator>.freeze, ["= 1.11.3"])
      s.add_dependency(%q<chefstyle>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.4"])
    s.add_dependency(%q<countloc>.freeze, ["~> 0.4"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.9"])
    s.add_dependency(%q<github_changelog_generator>.freeze, ["= 1.11.3"])
    s.add_dependency(%q<chefstyle>.freeze, [">= 0"])
  end
end
