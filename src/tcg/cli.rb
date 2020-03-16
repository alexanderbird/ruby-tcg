require_relative 'cli/commit'
require_relative 'cli/generate'
module Tcg
  module Cli
    def self.run command
      case command.to_sym
      when :commit
        Tcg::Cli::Commit.act
      when :generate
        Tcg::Cli::Generate.act
      else
        puts "Don't know how to #{command}"
      end
    end
  end
end

Tcg::Cli.run *ARGV
