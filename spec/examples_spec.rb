require 'spec_helper'

def run_example(name)
  output = `ruby src/tcg/cli.rb prep && rspec tmp/#{name} && ruby src/tcg/cli.rb commit || ruby src/tcg/cli.rb generate`
  output
    .gsub(/[0-9]+\.[0-9]+ seconds/, '<n> seconds') 
end

describe 'e.g.' do
  examples = Dir.entries('examples').select{|dir| !dir.match(/^\./)}
  examples.each do |example|
    describe(example) do
      output = ''
      before :all do
        system('rm -rf tmp', exception: true)
        system('mkdir tmp', exception: true)
        system("cp -r examples/#{example} tmp/#{example}", exception: true)
        output = run_example example
      end

      it("produces the correct output") do
        verify do
          output
        end
      end

      it("changes files correctly") do
        verify do
          file_contents = `find tmp/#{example} -name "*.rb" | xargs tail -n +1`
          file_contents
            .gsub(/^==> tmp/, '==> examples')
        end
      end

      it "has passing tests when re-run"
    end
  end
end
