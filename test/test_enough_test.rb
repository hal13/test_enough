require 'test_helper'

class TestEnoughTest < Minitest::Test
  def setup
    @main = TestEnough::TestEnough.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::TestEnough::VERSION
  end

  def test_it_does_something_useful
    assert_equal false, @main.enough_length?('aa'), 'aaa is false'
    assert_equal true, @main.enough_length?('aaa'), 'aaa is true'
    assert_equal true, @main.enough_length?('bbbb'), 'bbbb is true'
    assert_equal true, @main.enough_length?('abcde'), 'abcde is true'
    assert_equal true, @main.enough_length?('abcdef'), 'abcdef is true'
    assert_equal true, @main.enough_length?('aaaabbb'), 'aaaabbb is true'
    assert_equal true, @main.enough_length?('abcdefgh'), 'abcdefgh is true'
    assert_equal false, @main.enough_length?('abcdefghi'), 'abcdefghi is false'
  end
end
