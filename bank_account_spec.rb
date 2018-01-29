require('minitest/rg')
require_relative('./bank_account')

class TestBankAccount < MiniTest::Test

  def test_account_name
    account = {
      holder_name: "John",
      amount: 500,
      type: "buisness"
    }
    assert_equal("John", get_account_name(account))

  end
