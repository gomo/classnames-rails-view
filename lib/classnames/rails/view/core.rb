# frozen_string_literal: true

module Classnames
  module Rails
    module View
      class Core
        def exec(*args)
          inject_values args
        end

        private

          def detect_elem(elem)
            if elem.is_a?(Hash)
              elem.inject '' do |out, (key, value)|
                value ? out << key.to_s << ' ' : out
              end.strip
            elsif elem.is_a?(Array)
              inject_values elem
            elsif elem == false
              ''
            else
              elem.to_s
            end
          end

          def inject_values(values)
            values.inject '' do |out, value|
              detected = detect_elem(value)
              detected == '' ? out : out << detect_elem(value) << ' '
            end.strip
          end
      end
    end
  end
end
