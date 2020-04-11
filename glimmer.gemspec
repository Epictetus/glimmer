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
  s.date = "2020-04-11"
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
    "lib/glimmer/data_binding/list_selection_binding.rb",
    "lib/glimmer/data_binding/model_binding.rb",
    "lib/glimmer/data_binding/observable.rb",
    "lib/glimmer/data_binding/observable_array.rb",
    "lib/glimmer/data_binding/observable_model.rb",
    "lib/glimmer/data_binding/observable_widget.rb",
    "lib/glimmer/data_binding/observer.rb",
    "lib/glimmer/data_binding/shine.rb",
    "lib/glimmer/data_binding/table_items_binding.rb",
    "lib/glimmer/data_binding/tree_items_binding.rb",
    "lib/glimmer/data_binding/widget_binding.rb",
    "lib/glimmer/dsl.rb",
    "lib/glimmer/dsl/async_exec_expression.rb",
    "lib/glimmer/dsl/bind_expression.rb",
    "lib/glimmer/dsl/color_expression.rb",
    "lib/glimmer/dsl/column_properties_expression.rb",
    "lib/glimmer/dsl/combo_selection_data_binding_expression.rb",
    "lib/glimmer/dsl/custom_widget_expression.rb",
    "lib/glimmer/dsl/data_binding_expression.rb",
    "lib/glimmer/dsl/display_expression.rb",
    "lib/glimmer/dsl/engine.rb",
    "lib/glimmer/dsl/exec_expression.rb",
    "lib/glimmer/dsl/expression.rb",
    "lib/glimmer/dsl/expression_handler.rb",
    "lib/glimmer/dsl/layout_data_expression.rb",
    "lib/glimmer/dsl/layout_expression.rb",
    "lib/glimmer/dsl/list_selection_data_binding_expression.rb",
    "lib/glimmer/dsl/observe_expression.rb",
    "lib/glimmer/dsl/parent_expression.rb",
    "lib/glimmer/dsl/property_expression.rb",
    "lib/glimmer/dsl/shell_expression.rb",
    "lib/glimmer/dsl/static_expression.rb",
    "lib/glimmer/dsl/swt_expression.rb",
    "lib/glimmer/dsl/sync_exec_expression.rb",
    "lib/glimmer/dsl/tab_item_expression.rb",
    "lib/glimmer/dsl/table_items_data_binding_expression.rb",
    "lib/glimmer/dsl/tree_items_data_binding_expression.rb",
    "lib/glimmer/dsl/tree_properties_expression.rb",
    "lib/glimmer/dsl/widget_expression.rb",
    "lib/glimmer/dsl/widget_listener_expression.rb",
    "lib/glimmer/error.rb",
    "lib/glimmer/invalid_keyword_error.rb",
    "lib/glimmer/launcher.rb",
    "lib/glimmer/swt/color_proxy.rb",
    "lib/glimmer/swt/display_proxy.rb",
    "lib/glimmer/swt/font_proxy.rb",
    "lib/glimmer/swt/layout_data_proxy.rb",
    "lib/glimmer/swt/layout_proxy.rb",
    "lib/glimmer/swt/packages.rb",
    "lib/glimmer/swt/shell_proxy.rb",
    "lib/glimmer/swt/swt_proxy.rb",
    "lib/glimmer/swt/tab_item_proxy.rb",
    "lib/glimmer/swt/widget_listener_proxy.rb",
    "lib/glimmer/swt/widget_proxy.rb",
    "lib/glimmer/ui/custom_shell.rb",
    "lib/glimmer/ui/custom_widget.rb",
    "lib/glimmer/ui/video.rb",
    "lib/glimmer/util/proc_tracker.rb",
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
      s.add_runtime_dependency(%q<nested_inherited_jruby_include_package>.freeze, ["= 0.3.0"])
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
      s.add_dependency(%q<nested_inherited_jruby_include_package>.freeze, ["= 0.3.0"])
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
    s.add_dependency(%q<nested_inherited_jruby_include_package>.freeze, ["= 0.3.0"])
    s.add_dependency(%q<rspec-mocks>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 2.3.0"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 2.3.9"])
    s.add_dependency(%q<coveralls>.freeze, ["= 0.8.5"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.10.0"])
    s.add_dependency(%q<puts_debuggerer>.freeze, ["~> 0.8.1"])
  end
end

