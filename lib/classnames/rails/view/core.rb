module Classnames
  module Rails
    module View
      class Core
        def exec(*args)
          args
            .map {|arg| detect_elem arg }
            .reject {|value| value == '' }
            .join ' '
        end

        private

          def detect_elem(elem)
            return elem if elem.is_a?(String)
            unless elem.is_a?(Hash)
              raise Error, 'The arguments must be a String or Hash.'
            end

            elem
              .select {|_key, value| value }
              .map {|key, _value| key.to_s }
              .join ' '
          end
      end
    end
  end
end
