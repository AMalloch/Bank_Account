
# def get_account_name(account)
#   return account[:holder_name]
# end

class BankAccount
  attr_accessor :type, :amount, :holder_name
  # this links with the @ you make, for example def @type links with
  # :type
# @holder_name @amount and @type are properties

  def initialize(input_holder_name, input_amount, input_type)
    @holder_name = input_holder_name
    @amount = input_amount
    @type = input_type
  end

  def direct_debit()
    #if the argument is blank it will run the process through
    @amount -= 50 if @type == "personal"
    @amount -= 100 if @type == "buisness"
  end

  def deposit(amount)
    self.amount += amount
  end


end
