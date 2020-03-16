require_relative '../core/storage'

module Tcg
  module Cli
    class Prep
      def self.act
        Core::Storage.drop
      end
    end
  end
end
