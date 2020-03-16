require 'spec_helper'

def run_example(name)
  output = `rspec examples/#{name} && ruby src/tcg/cli.rb commit || ruby src/tcg/cli.rb generate`
  output
    .gsub(/[0-9]+\.[0-9]+ seconds/, '<n> seconds') 
end

examples = Dir.entries('examples').select{|dir| !dir.match(/^\./)}
examples.each do |example|
  describe(example) do
    output = ''
    before :all do
      output = run_example example
    end

    it("produces the correct output") do
      verify output
    end

    it("changes files correctly") do
      verify do
        run_example example
      end
    end
  end
end
