module Tcg
  module Core
    class Hfsdkas
      def initialize path, line, expected
        @path = path
        @line = line
        @expected = expected
      end

      def fsdlfsdal
        file = File.readlines(@path)
        file.insert(@line, "    return #{@expected}\n")
        File.write(@path, file.join(''))
      end
    end
  end
end
