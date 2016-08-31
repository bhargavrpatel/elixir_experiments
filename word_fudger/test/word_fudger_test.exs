defmodule WordFudgerTest do
  use ExUnit.Case
  doctest WordFudger

  #Upcase method tests
  test "it should not touch single word strings" do
    assert WordFudger.upcase("foo") == "foo"
  end

  test "it should upcase second word in two word string" do
    assert WordFudger.upcase("foo bar") == "foo BAR"
  end

  test "it should upcase every other word" do
    assert WordFudger.upcase("foo bar buzz qux") == "foo BAR buzz QUX"
  end

  #Unvowel method tests
  test "it should not unvowel single word strings" do
    assert WordFudger.unvowel("foo") == "foo"
  end

  test "it should unvowel second word in two word string" do
    assert WordFudger.unvowel("foo bar") == "foo br"
  end

  test "it should unvowel every other word" do
    assert WordFudger.unvowel("foo bar buzz qux") == "foo br buzz qx"
  end

end
