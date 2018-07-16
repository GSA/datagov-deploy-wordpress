# -*- encoding: utf-8 -*-
# stub: kitchen-ansible 0.48.6 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-ansible".freeze
  s.version = "0.48.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Neill Turner".freeze]
  s.date = "2018-06-23"
  s.description = "== DESCRIPTION:\n\nAnsible Provisioner for Test Kitchen\n\n== FEATURES:\n\nSupports running ansible-playbook\n\n".freeze
  s.email = ["neillwturner@gmail.com".freeze]
  s.homepage = "https://github.com/neillturner/kitchen-ansible".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubyforge_project = "[none]".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "ansible provisioner for test-kitchen".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<test-kitchen>.freeze, ["~> 1.4"])
      s.add_runtime_dependency(%q<net-ssh>.freeze, [">= 3"])
    else
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.4"])
      s.add_dependency(%q<net-ssh>.freeze, [">= 3"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.4"])
    s.add_dependency(%q<net-ssh>.freeze, [">= 3"])
  end
end
