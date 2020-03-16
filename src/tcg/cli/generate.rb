require_relative '../core/storage'

module Tcg
  module Cli
    class Generate
      def self.act
        path, line = Core::Storage.get
        file = File.readlines(path)
        file.insert(line, "    return 1\n")
        File.write(path, file.join(''))
      end
    end
  end
end

