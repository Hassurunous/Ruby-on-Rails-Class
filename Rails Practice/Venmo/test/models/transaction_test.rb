require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "can reference sender and receiver" do
      alice = User.create(name: "Alice", email: "alice@example.com")
      bob = User.create(name: "Bob", email: "bob@example.com")

      transaction = Transaction.create(from_user_id: alice.id, to_user_id: bob.id)

      puts alice
      puts bob

      assert_equal alice, transaction.sender
      assert_equal bob, transaction.receiver
  end

end
