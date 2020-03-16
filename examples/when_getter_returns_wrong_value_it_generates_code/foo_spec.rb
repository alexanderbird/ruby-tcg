require_relative '../../src/tcg/assertions'
require_relative 'foo'

describe 'foo' do
  it 'has goodness' do
    foo = Foo.new
    Tcg::Assertions.equal(2, foo, :get_one)
  end
end
