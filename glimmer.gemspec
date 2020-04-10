# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: glimmer 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "glimmer".freeze
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["AndyMaleh".freeze]
  s.date = "2020-04-10"
  s.description = "JRuby Desktop UI DSL + Data-Binding cross-platform library that enables productive and efficient authoring of desktop user-interfaces using the robust platform-native Eclipse SWT library".freeze
  s.email = "andy.am@gmail.com".freeze
  s.executables = ["glimmer".freeze, "girb".freeze]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = [
    "bin/girb",
    "bin/girb_runner.rb",
    "bin/glimmer",
    "lib/glimmer.rb",
    "lib/glimmer/launcher.rb",
    "vendor/swt/linux/swt.jar",
    "vendor/swt/mac/swt.jar",
    "vendor/swt/windows/swt.jar"
  ]
  s.homepage = "http://github.com/AndyObtiva/glimmer".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Desktop application development library".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<facets>.freeze, ["= 3.1.0"])
      s.add_runtime_dependency(%q<os>.freeze, ["= 1.0.0"])
      s.add_runtime_dependency(%q<super_module>.freeze, ["= 1.4.0"])
      s.add_runtime_dependency(%q<nested_inherited_jruby_include_package>.freeze, ["= 0.2.0"])
      s.add_development_dependency(%q<rspec-mocks>.freeze, ["~> 3.5.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 2.3.0"])
      s.add_development_dependency(%q<jeweler>.freeze, ["~> 2.3.9"])
      s.add_development_dependency(%q<coveralls>.freeze, ["= 0.8.5"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.10.0"])
      s.add_development_dependency(%q<puts_debuggerer>.freeze, ["~> 0.8.1"])
    else
      s.add_dependency(%q<facets>.freeze, ["= 3.1.0"])
      s.add_dependency(%q<os>.freeze, ["= 1.0.0"])
      s.add_dependency(%q<super_module>.freeze, ["= 1.4.0"])
      s.add_dependency(%q<nested_inherited_jruby_include_package>.freeze, ["= 0.2.0"])
      s.add_dependency(%q<rspec-mocks>.freeze, ["~> 3.5.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 2.3.0"])
      s.add_dependency(%q<jeweler>.freeze, ["~> 2.3.9"])
      s.add_dependency(%q<coveralls>.freeze, ["= 0.8.5"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.10.0"])
      s.add_dependency(%q<puts_debuggerer>.freeze, ["~> 0.8.1"])
    end
  else
    s.add_dependency(%q<facets>.freeze, ["= 3.1.0"])
    s.add_dependency(%q<os>.freeze, ["= 1.0.0"])
    s.add_dependency(%q<super_module>.freeze, ["= 1.4.0"])
    s.add_dependency(%q<nested_inherited_jruby_include_package>.freeze, ["= 0.2.0"])
    s.add_dependency(%q<rspec-mocks>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 2.3.0"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 2.3.9"])
    s.add_dependency(%q<coveralls>.freeze, ["= 0.8.5"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.10.0"])
    s.add_dependency(%q<puts_debuggerer>.freeze, ["~> 0.8.1"])
  end
end

