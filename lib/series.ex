defmodule Series do

  @doc """
    returns the sum of following series upto nth term(parameter)
    Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
  """

  def sum(n) do
    n == 0 && "0.00" || (for i <- 0..n-1, do: 1/(3*i+1)) |> Enum.sum |> :erlang.float_to_binary(decimals: 2)
  end
end
 
