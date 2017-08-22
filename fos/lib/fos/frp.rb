require 'fos/member'
require 'pry'

class Frp
  def initialize
    puts 'initialize Frp'
    @members = {}
  end

  def enroll(email, account_id)
    # check against the secret key using secrets
    if validate_account(account_id)
      # sanity check this
      member = Member.new(email)
      ap member
      @members[email] = member
      member
    else
      puts 'That key is not legit'
    end
  end

  def record(email, account_id, purchase_amt)
    # check against the secret key using secrets
    if validate_account(account_id)
      member = get_member_by_email(email)
      member.points += purchase_amt.to_i
    else
      puts 'That key is not legit. Now I quit.'
    end
  end

  def grant(member)
    ap member
  end

  def redeem(member, points)
    current_member = get_member_by_email(member.email)
    current_member.redeem(points)
  end

  def validate_account(account_id)
    # This has got to be coming from something more like
    # a secrets file.
    true if account_id == 'aabacd'
  end

  def get_member_by_email(email)
    @members[email] if @members.key?(email)
  end

  def balance(member)
    member.balance
  end
end
