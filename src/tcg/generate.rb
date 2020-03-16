module Tcg
  class Generate
    def self.act
      path, line = File.read('.tcg').split(' ')
      puts "GENERATE #{path} on line #{line}"
    end
  end
end

Tcg::Generate.act
