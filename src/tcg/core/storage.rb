module Tcg
  module Core
    class Storage
      def self.put data
        File.write('.tcg', data.join(' '))
      end

      def self.get
        File.read('.tcg')
      end
    end
  end
end
