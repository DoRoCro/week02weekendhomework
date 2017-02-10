require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')

class TestBar < Minitest::Test

  def test_bar_has_name
    bar1name = "Rik's Bar"
    bar1 = Bar.new(bar1name)
    assert_equal(bar1name, bar1.name)
  end

end
