defmodule Solution do
  @greeting "Hello World"

  def greet(times) do
    IO.puts @greeting
    cond do
      times == 1 -> nil
      true -> greet(times - 1)
    end
  end
end

{input, _} = IO.read(:line) |> Integer.parse
Solution.greet(input)
