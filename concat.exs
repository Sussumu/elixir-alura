defmodule My.Concat do
    # defines a function header for when we need default values for more than one definition
    def join(a, b \\ nil, separator \\ " ")

    def join(a, b, _separator) when is_nil(b) do
        a
    end

    # shows how to setup a default value
    def join(a, b, separator) do
        a <> separator <> b
    end
end