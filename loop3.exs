defmodule My.Loop do
    def calculate(multiplier) do
       multiply(multiplier, 1, []) 
    end

    defp multiply(_p1, 11, values) do
        values
    end

    # calls itself in the last line to use tail recursion optimization
    # send result list forwards to increment with the new values
    # it uses just one call instead of many by replacing the calls with their result
    # not a silver bullet but it helps when accumulating values like this example
    defp multiply(p1, p2, values) do
        multiply(p1, p2 + 1, [p1 * p2] ++ values)
    end
end