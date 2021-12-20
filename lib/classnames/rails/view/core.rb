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
              elem.filter {|_k, v| v }.map {|k, _v| k }.join(' ')
            elsif elem.is_a?(Array)
              inject_values elem
            elsif elem == false
              ''
            else
              elem.to_s
            end
          end

          def inject_values(values)
            values.map {|value| detect_elem(value) }.reject(&:empty?).join(' ')
          end
      end
    end
  end
end
