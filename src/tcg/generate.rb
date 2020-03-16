require_relative 'core/storage'

module Tcg
  class Generate
    def self.act
      path, line = Core::Storage.get
      puts "GENERATE #{path} on line #{line}"
    end
  end
end

Tcg::Generate.act
