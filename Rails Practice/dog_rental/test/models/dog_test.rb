require 'test_helper'

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
      @dog = Dog.new(name: "G", breed: "Doge", fav_park: "House", rate: "0.0")
  end

  # test "should be valid" do
  #     assert @dog.valid?
  # end

  test "name should be at least a min length" do
      @dog.name = "A"
      assert_not @dog.valid?
  end

  test "name should not be too long" do
      @dog.name = "This is an insanely long dog name."
      assert_not @dog.valid?
  end

end
