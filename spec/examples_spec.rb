require 'spec_helper'

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
