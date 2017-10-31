module Classnames
  module Rails
    module View
      class Core
        def exec(*args)
          args.map {|arg| detect_elem arg }.join ' '
        end

        private

          def detect_elem(elem)
            elem
          end
      end
    end
  end
end
