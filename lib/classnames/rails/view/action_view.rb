module Classnames
  module Rails
    module View
      module Helper
        extend ActiveSupport::Concern

        included do
          include Classnames::Rails::View::Helper::LocalInstanceMethods
        end

        module LocalInstanceMethods
          classnames = Classnames::Rails::View::Core.new
          define_method ::Rails.application.config.classnames_rails_view.method_name do |*args|
            classnames.exec(*args)
          end
        end
      end
    end
  end
end

ActionView::Base.send :include, Classnames::Rails::View::Helper
