require 'yaml'
require_relative 'hfsdkas'

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
        File.delete('.tcg') if File.exists?('.tcg')
      end
    end
  end
end
