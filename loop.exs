# using recursion as a loop
defmodule My.Loop do
    def multiply(param) do
        multiply(param, 1)
    end

    # defines the end of the loop as the 11th
    defp multiply(_, 11), do: nil

    defp multiply(f1, f2) do
        IO.puts("#{f1} by #{f2} is #{f1 * f2}")
        multiply(f1, f2 + 1)
    end
end