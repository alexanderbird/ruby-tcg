require 'yaml'

module Tcg
  module Core
    class Storage
      def self.put data
        File.write('.tcg', YAML.dump(data))
      end

      def self.get
        YAML.load(File.read('.tcg'))
      end

      def self.drop
        File.delete('.tcg')
      end
    end
  end
end
