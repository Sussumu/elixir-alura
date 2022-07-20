# showing how we can use pattern matching to secure that first(list) will always have a filled list
defmodule My.Enum do
    def first([]), do: nil
    def first(list), do: hd(list)
end