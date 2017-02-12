require('minitest/autorun')
require('minitest/rg')
require_relative('../list_array')
# require('pry')

class TestListArray < Minitest::Test

  def setup
    @object = { dummy: "a string"}
  end

  def test_create_list_array_is_empty_array
    assert_equal([], ListArray.new().contents )
  end

  def test_add_element_to_array
    list1 = ListArray.new
    list1.add_element_to_list(@object)
    assert_equal([ @object ], list1.contents )
  end

  def test_add_list_of_elements_to_array
    list1 = ListArray.new
    list1.add_list_to_list([@object, @object])
    assert_equal(2, list1.contents.count )
  end

  def test_can_empty_list_and_return_contents
    list1 = ListArray.new
    list1.add_list_to_list([@object, @object])
    extracted = list1.empty_list()
    assert_equal(0, list1.contents.count )
    assert_equal([@object, @object], extracted )
  end

  def test_can_find_element_in_list
    list1 = ListArray.new
    list1.add_list_to_list([@object, @object, "find_me", @object, @object])
    assert_equal(true, list1.contains?("find_me"))
  end
    

end