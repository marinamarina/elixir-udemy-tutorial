defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do
    assert Cards.hello() == "hello there"
  end

  test "sum(1)" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 12
  end
end
