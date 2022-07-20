defmodule MyModule.Math do
    def soma p1, p2 do
        p1 + p2
    end

    # we can use guard clauses but only with functions that starts with is_
    # means that this functions returns a boolean
    def zero?(0), do: true
    def zero?(x) when is_integer(x), do: false
end