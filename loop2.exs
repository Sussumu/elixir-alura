defmodule My.Loop do
    def calculate(multiplier) do
       multiply(multiplier, 1) 
    end

    defp multiply(_p1, 11) do
        []
    end

    # not an example of tail recursion since the last operation is the list appending, not a call on itself
    # body recursion can cause problems on large stacks
    defp multiply(p1, p2) do
        [p1 * p2] ++ multiply(p1, p2 + 1)
    end
end