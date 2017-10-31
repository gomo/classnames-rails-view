module Classnames
  module Rails
    module View
      class Core
        def exec(*args)
          args.inject '' do |out, arg|
            detected = detect_elem arg
            arg == '' ? out : out << detected << ' '
          end.strip
        end

        private

          def detect_elem(elem)
            return elem if elem.is_a?(String)
            unless elem.is_a?(Hash)
              raise Error, 'The arguments must be a String or Hash.'
            end

            elem.inject '' do |out, (key, value)|
              value ? out << key.to_s << ' ' : out
            end.strip
          end
      end
    end
  end
end
