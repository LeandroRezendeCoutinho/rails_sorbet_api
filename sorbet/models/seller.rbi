# typed: true

class Seller < Person
  sig { returns(Salary) }
  attr_accessor :salary
end
