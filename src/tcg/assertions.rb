require_relative 'core/storage'
require_relative 'core/hfsdkas'

module Tcg
  class Assertions
    def self.equal(expected_value, object, method, *args)
      actual = object.send(method, *args)
      unless(actual == expected_value)
        path, line = object.method(method).source_location
        Core::Storage.put Core::Hfsdkas.new path, line, 2
        raise Exception.new("Expected #{expected_value}, got #{actual}")
      end
    end
  end
end
