require_relative '../../src/tcg/assertions'

class Foo
  def get_one
    1
  end
end
describe 'foo' do
  it 'has goodness' do
    foo = Foo.new
    Tcg::Assertions.equal(2, foo, :get_one)
  end
end
