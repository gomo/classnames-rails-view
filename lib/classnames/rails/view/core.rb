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
            if elem.is_a?(Hash)
              elem.inject '' do |out, (key, value)|
                value ? out << key.to_s << ' ' : out
              end.strip
            else
              elem.to_s
            end
          end
      end
    end
  end
end
