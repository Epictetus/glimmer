require File.dirname(__FILE__) + "/../command_handler"
require File.dirname(__FILE__) + "/models/g_widget"
require File.dirname(__FILE__) + "/models/g_layout_data"

module Glimmer
  class LayoutDataCommandHandler
    include CommandHandler

    include_package 'org.eclipse.swt.widgets'
    include_package 'org.eclipse.swt.layout'

    def can_handle?(parent, command_symbol, *args, &block)
      parent.is_a?(GWidget) and
        command_symbol.to_s == 'layout_data'
    end

    def do_handle(parent, command_symbol, *args, &block)
      Glimmer.logger.debug "Layout Data args are: #{args.inspect}"
      GLayoutData.new(parent.widget, args)
    end
  end
end
