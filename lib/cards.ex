defmodule Cards do
  @moduledoc """
    Provides methods for handling deck of cards
  """
  def hello do
    "hello there"
  end

  @doc """
    creates a deck of cards
  """
  def create_deck do
    values = ["ace", "two", "three"]
    suits = ["Spades", "Clubs", "Hearts", "Diamond"]
    
    for suit <- suits, value <- values do
      "#{suit} of #{value}"
    end
  end

  # pass list of strings (deck), returns list of strings
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Divides a deck into a hand and the rest of the deck
    The `hand_size` indicates how many cards should be in the 
    hand
      
  """

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save_deck(deck, filename) do
    # save on the file system
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, reason} -> reason
    end
  end

  @doc """
    The `hand_size` indicates how many cards will be dealt from the deck
  """
  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end
