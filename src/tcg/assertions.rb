module Tcg
  class Assertions
    def self.equal(expected_value, object, method, *args)
      actual = object.send(method, *args)
      unless(actual == expected_value)
        location = object.method(method).source_location
        File.write('.tcg', location.join(' '))
        raise Exception.new("Expected #{expected_value}, got #{actual}")
      end
    end
  end
end
