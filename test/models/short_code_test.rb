require "test_helper"

class ShortCodeTest < ActiveSupport::TestCase
  test "encode 0" do
    assert_equal "0", ShortCode.encode(0)
  end

  test "encode 1" do
    assert_equal "1", ShortCode.encode(1)
  end

  test "encode 10" do
    assert_equal "a", ShortCode.encode(10)
  end

  test "encode 62" do
    assert_equal "10", ShortCode.encode(62)
  end

  test "encode 1024" do
    assert_equal "gw", ShortCode.encode(1024)
  end

  test "encode 999_999" do
    assert_equal "4c91", ShortCode.encode(999_999)
  end

  test "decode '0'" do
    assert_equal 0, ShortCode.decode("0")
  end

  test "decode '1'" do
    assert_equal 1, ShortCode.decode("1")
  end

  test "decode 'a'" do
    assert_equal 10, ShortCode.decode("a")
  end

  test "decode '10'" do
    assert_equal 62, ShortCode.decode("10")
  end

  test "decode 'gw'" do
    assert_equal 1024, ShortCode.decode("gw")
  end

  test "decode '4c91'" do
    assert_equal 999_999, ShortCode.decode("4c91")
  end
end
