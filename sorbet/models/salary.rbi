# typed: true

class Salary
  attr_reader :amount

  sig { params(value: Float).returns(NilClass) }
  def withdraw(value); end

  sig { params(value: Float).void }
  def deposit(value); end
end
