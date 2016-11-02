require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user can look up sent transactions" do
      alice = User.create(name: "Alice", email: "alice@example.com")
      bob = User.create(name: "Bob", email: "bob@example.com")

      transaction = Transaction.create(from_user_id: alice.id, to_user_id: bob.id)
      alice.reload

      assert_equal 1, alice.sent_transactions.size
      assert_equal 1, bob.received_transactions.size

  end

  test "user has received transaction" do

  end

end
