defmodule WordFudgerTest do
  use ExUnit.Case
  doctest WordFudger

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "it should not touch single word strings" do
    assert WordFudger.upcase("foo") == "foo"
  end

  test "it should upcase second word in two word string" do
    assert WordFudger.upcase("foo bar") == "foo BAR"
  end

  test "it should upcase every other word" do
    assert WordFudger.upcase("foo bar buzz qux") == "foo BAR buzz QUX"
  end

end
