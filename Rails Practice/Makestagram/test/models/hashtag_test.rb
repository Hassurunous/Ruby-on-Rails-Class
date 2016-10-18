require 'test_helper'

class HashtagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "can add hashtag" do
    hash = Hashtag.new(title: "#winning")
    @bob.hashtags << hashtag
    @bob.save

    assert_equal 1, hashtag.users.size
  end

end
