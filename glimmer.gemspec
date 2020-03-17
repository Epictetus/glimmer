# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: glimmer 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "glimmer".freeze
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["AndyMaleh".freeze]
  s.date = "2020-03-16"
  s.description = "JRuby Desktop UI DSL + Data-Binding library that enables easy and efficient authoring of user-interfaces using the robust platform-independent Eclipse SWT library".freeze
  s.email = "andy.am@gmail.com".freeze
  s.executables = ["glimmer".freeze, "girb".freeze]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = [
    "bin/girb",
    "bin/glimmer",
    "lib/glimmer.rb",
    "lib/glimmer/command_handler.rb",
    "lib/glimmer/command_handler_chain_factory.rb",
    "lib/glimmer/command_handler_chain_link.rb",
    "lib/glimmer/command_handlers.rb",
    "lib/glimmer/command_handlers/bind_command_handler.rb",
    "lib/glimmer/command_handlers/color_command_handler.rb",
    "lib/glimmer/command_handlers/combo_selection_data_binding_command_handler.rb",
    "lib/glimmer/command_handlers/data_binding_command_handler.rb",
    "lib/glimmer/command_handlers/display_command_handler.rb",
    "lib/glimmer/command_handlers/list_selection_data_binding_command_handler.rb",
    "lib/glimmer/command_handlers/models/g_color.rb",
    "lib/glimmer/command_handlers/models/g_display.rb",
    "lib/glimmer/command_handlers/models/g_font.rb",
    "lib/glimmer/command_handlers/models/g_runnable.rb",
    "lib/glimmer/command_handlers/models/g_shell.rb",
    "lib/glimmer/command_handlers/models/g_swt.rb",
    "lib/glimmer/command_handlers/models/g_tab_item_composite.rb",
    "lib/glimmer/command_handlers/models/g_widget.rb",
    "lib/glimmer/command_handlers/models/g_widget_listener.rb",
    "lib/glimmer/command_handlers/models/list_selection_binding.rb",
    "lib/glimmer/command_handlers/models/model_binding.rb",
    "lib/glimmer/command_handlers/models/observable.rb",
    "lib/glimmer/command_handlers/models/observable_array.rb",
    "lib/glimmer/command_handlers/models/observable_model.rb",
    "lib/glimmer/command_handlers/models/observer.rb",
    "lib/glimmer/command_handlers/models/table_items_binding.rb",
    "lib/glimmer/command_handlers/models/tree_items_binding.rb",
    "lib/glimmer/command_handlers/models/widget_binding.rb",
    "lib/glimmer/command_handlers/shell_command_handler.rb",
    "lib/glimmer/command_handlers/tab_item_command_handler.rb",
    "lib/glimmer/command_handlers/table_column_properties_data_binding_command_handler.rb",
    "lib/glimmer/command_handlers/table_items_data_binding_command_handler.rb",
    "lib/glimmer/command_handlers/tree_items_data_binding_command_handler.rb",
    "lib/glimmer/command_handlers/tree_properties_data_binding_command_handler.rb",
    "lib/glimmer/command_handlers/widget_command_handler.rb",
    "lib/glimmer/command_handlers/widget_listener_command_handler.rb",
    "lib/glimmer/command_handlers/widget_method_command_handler.rb",
    "lib/glimmer/parent.rb",
    "lib/glimmer/shine.rb",
    "lib/glimmer/swt_packages.rb",
    "lib/glimmer/xml_command_handlers.rb",
    "lib/glimmer/xml_command_handlers/html_command_handler.rb",
    "lib/glimmer/xml_command_handlers/models/depth_first_search_iterator.rb",
    "lib/glimmer/xml_command_handlers/models/name_space_visitor.rb",
    "lib/glimmer/xml_command_handlers/models/node.rb",
    "lib/glimmer/xml_command_handlers/models/node_visitor.rb",
    "lib/glimmer/xml_command_handlers/models/xml_visitor.rb",
    "lib/glimmer/xml_command_handlers/xml_command_handler.rb",
    "lib/glimmer/xml_command_handlers/xml_name_space_command_handler.rb",
    "lib/glimmer/xml_command_handlers/xml_tag_command_handler.rb",
    "lib/glimmer/xml_command_handlers/xml_text_command_handler.rb",
    "lib/glimmer_application.rb",
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
    s.add_dependency(%q<rspec-mocks>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 2.3.0"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 2.3.9"])
    s.add_dependency(%q<coveralls>.freeze, ["= 0.8.5"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.10.0"])
    s.add_dependency(%q<puts_debuggerer>.freeze, ["~> 0.8.1"])
  end
end

