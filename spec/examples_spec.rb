require 'spec_helper'

def run_example(name)
  output = `rspec examples/#{name} && ruby src/tcg/cli.rb commit || ruby src/tcg/cli.rb generate`
  output
    .gsub(/[0-9]+\.[0-9]+ seconds/, '<n> seconds') 
end

describe 'examples:' do
  examples = Dir.entries('examples')
    .select{|dir| !dir.match(/^\./)}
  examples.each do |example|
    it(example.gsub(/_/, ' ')) do
      verify do
        run_example example
      end
    end
  end
end
