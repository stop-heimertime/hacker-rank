defmodule Solution do
#Enter your code here. Read input from STDIN. Print output to STDOUT
    {a, _} = IO.read(:line) |> Integer.parse
    {b, _} = IO.read(:line) |> Integer.parse
    IO.write(a + b)
end
