defmodule Pokerwars.Hand do
  alias Pokerwars.Card

  def score(cards) do
    evaluate(cards)
  end

  defp evaluate(cards) do
    IO.puts hd(cards).rank
    case hd(cards).rank do
      10 -> :royal_flush
      _ -> :high_card
    end
  end
end
