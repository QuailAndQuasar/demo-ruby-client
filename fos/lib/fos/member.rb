require 'transaction'
class Member
  def initialize(email)
    @points = 0
    @email = email
    @transactions = []
    @total = 0
  end

  def record_transaction(purchase_qty)
    transaction = Transaction.new(purchase_qty)
    @points += purchase_qty
    @transactions << transaction
  end

  def add_points(points)
    @points += points
  end

  def balance
    @points
  end

  # I'm assuming redemptin is done in 100 point blocks.
  # It's not a very good assumption, but tick-tock.
  def redeem(_points)
    if eligible_for_reward?
      subtract_transaction_points(remaining_points)
      @points = recalculate_points
    else
      puts 'You are not eligible for redemption...fie.'
    end
  end

  # I'm gonna stick with recursion on this one.
  # We can caheck the available total points but when we need to remove them
  # by arbitrary transaction values, we have to know when to stop or
  # if one is 99 and the next is 25.
  # in that case, we have to minus 1 from that transaction's points.
  def subtract_transaction_points(remaining_points)
    return if remaining_points.zero?
    transaction = @transactions[0]
    if remaining_points >= transaction.points
      # actually augment the @transactions array
      redeemed_transaction = @transactions.shift
      @points -= redeemed_transaction.points
      remaining_points -= redeemed_transaction.points
      subtract_transaction_points(remaining_points)
    else
      return
    end
  end

  def recalculate_points
    points = 0
    @transactions.each do |t|
      points += t.points
    end
  end

  def eligible_for_reward?
    true if @points >= 100
  end
end
