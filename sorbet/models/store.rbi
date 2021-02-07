# typed: true

class Store
  sig { params(seller: Person).void }
  def initialize(seller)
    @seller = seller
  end
end
