class Transaction
  attr_accessor :points
  attr_accessor :redeemed
  def initialize(purchase_qty)
    @purchase_qty = purchase_qty
    @points = purchase_qty
    @redeemed = false
  end
end
