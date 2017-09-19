defmodule SeriesTest do
  use ExUnit.Case
  doctest Series

  test "greets the world" do
    assert Series.hello() == "hello there"
  end

  test "sum of series" do
    assert Series.sum(0) == "0.00"
    assert Series.sum(1) == "1.00"
    assert Series.sum(3) == "1.39"
    assert Series.sum(2) == "1.25"
    assert Series.sum(4) == "1.49"
    assert Series.sum(5) == "1.57"
  end

end
