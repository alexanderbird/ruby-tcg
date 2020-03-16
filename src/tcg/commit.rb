module Tcg
  class Commit
    def self.act
      puts "COMMIT"
    end
  end
end

Tcg::Commit.act
