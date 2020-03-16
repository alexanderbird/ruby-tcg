require_relative '../core/storage'

module Tcg
  module Cli
    class Generate
      def self.act
        path, line = Core::Storage.get
        puts "GENERATE #{path} on line #{line}"
      end
    end
  end
end

