module Downr

  # Lets us tie up a Rails view helper
  class Railtie < ::Rails::Railtie
    initializer "downr.configure_view_controller" do |app|
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, Helpers
      end
    end
  end
end
