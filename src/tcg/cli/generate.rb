require_relative '../core/storage'
require_relative '../core/hfsdkas'

module Tcg
  module Cli
    class Generate
      def self.act
        hfsdkas = Core::Storage.get
        hfsdkas.fsdlfsdal
      end
    end
  end
end

