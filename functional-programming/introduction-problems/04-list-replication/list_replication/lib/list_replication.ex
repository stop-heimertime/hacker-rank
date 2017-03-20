defmodule ListReplication do
  @moduledoc """
  Documentation for ListReplication.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ListReplication.replicate(3, [1, 2, 3, 4])
      [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4]

  """
  def replicate(times, list) do
    cond do
      times == 0 -> []
      true -> List.duplicate(list, times) |> List.flatten |> Enum.sort
    end
  end
end

# to run:
# [head | tail] = STDIO.read |> Enum.map(&(String.to_integer &1))
# Solution.replicate(head, tail) |> Enum.each(&IO.puts &1)
