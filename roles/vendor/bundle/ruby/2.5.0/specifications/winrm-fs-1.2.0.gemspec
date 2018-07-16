# -*- encoding: utf-8 -*-
# stub: winrm-fs 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "winrm-fs".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Shawn Neal".freeze, "Matt Wrock".freeze]
  s.date = "2018-01-12"
  s.description = "    Ruby library for file system operations via Windows Remote Management\n".freeze
  s.email = ["sneal@sneal.net".freeze, "matt@mattwrock.com".freeze]
  s.executables = ["rwinrmcp".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze, "bin/rwinrmcp".freeze]
  s.homepage = "http://github.com/WinRb/winrm-fs".freeze
  s.rdoc_options = ["-x".freeze, "test/".freeze, "-x".freeze, "examples/".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "WinRM File System".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<erubis>.freeze, ["~> 2.7"])
      s.add_runtime_dependency(%q<logging>.freeze, ["< 3.0", ">= 1.6.1"])
      s.add_runtime_dependency(%q<rubyzip>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<winrm>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.3"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.51"])
    else
      s.add_dependency(%q<erubis>.freeze, ["~> 2.7"])
      s.add_dependency(%q<logging>.freeze, ["< 3.0", ">= 1.6.1"])
      s.add_dependency(%q<rubyzip>.freeze, ["~> 1.1"])
      s.add_dependency(%q<winrm>.freeze, ["~> 2.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.3"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.51"])
    end
  else
    s.add_dependency(%q<erubis>.freeze, ["~> 2.7"])
    s.add_dependency(%q<logging>.freeze, ["< 3.0", ">= 1.6.1"])
    s.add_dependency(%q<rubyzip>.freeze, ["~> 1.1"])
    s.add_dependency(%q<winrm>.freeze, ["~> 2.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.51"])
  end
end
