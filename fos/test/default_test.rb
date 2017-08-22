require 'test_helper'
#
# As a FOS customer, I would like to enroll in the Frontier
# Rewards (FR) program so that I can begin earning rewards
# for my actions.
#
# As FOS, I would like to grant 1 point per dollar spent to
# customers enrolled in the FR program.
#
# As FOS, I would like FR members to be able to redeem their
# points for a reward once they reach 100 points.
#
# As a FR member, I would like to choose when to redeem
# my points for a reward.
#
# As a FR member, I would like to know my balance after
# each transaction.
#
# As a FR member, I would like to redeem the transactions in
# first -in / first -out order.

class DefaultTest < Test::Unit::TestCase

  def setup
  end

  def teardown
  end

  def test_the_truth
    assert true
  end

  def user_can_be_enrolled
    assert true
  end

  def user_collects_points_for_purchase
    assert true
  end

  def user_can_redeem_points
    assert true
  end
end
