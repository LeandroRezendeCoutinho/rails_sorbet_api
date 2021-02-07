# typed: true

class Person
  sig { returns(String) }
  attr_accessor :name

  sig { returns(Integer) }
  attr_accessor :age

  sig { params(name: String, age: Integer).void }
  def initialize(name, age); end
end
