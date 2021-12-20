# frozen_string_literal: true

module Classnames
  module Rails
    module View
      class Railtie < ::Rails::Railtie
        config.classnames_rails_view = ActiveSupport::OrderedOptions.new
        config.classnames_rails_view.method_name = :class_names

        config.after_initialize do |_app|
          require 'classnames/rails/view/action_view'
        end
      end
    end
  end
end
