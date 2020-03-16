require_relative 'core/storage'

module Tcg
  class Assertions
    def self.equal(expected_value, object, method, *args)
      actual = object.send(method, *args)
      unless(actual == expected_value)
        location = object.method(method).source_location
        Core::Storage.put location
        raise Exception.new("Expected #{expected_value}, got #{actual}")
      end
    end
  end
end
