require('minitest/autorun')
require('minitest/rg')
require_relative('../list_array')

class TestListArray < Minitest::Test

  def test_create_list_array_is_empty_array
    assert_equal([], ListArray.new().contents )
  end

end