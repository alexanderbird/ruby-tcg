require_relative 'cli/commit'
require_relative 'cli/generate'
require_relative 'cli/prep'

module Tcg
  module Cli
    def self.run command
      command_class_name = 'Tcg::Cli::' + command.to_s.capitalize
      begin
        command_class = Kernel.const_get(command_class_name)
      rescue NameError => e
        puts "Don't know how to #{command}, #{e}"
      else
        command_class.act
      end
    end
  end
end

Tcg::Cli.run *ARGV
