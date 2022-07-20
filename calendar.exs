# showing different ways to switch/case
defmodule My.Calendar do
    def weekday(wd) do
        case wd do
            :Monday -> "Mon"
            :Tuesday -> "Tue"
            :Wednesday -> "Wed"
            _ -> nil
        end
    end

    def weekday2(wd) do
        cond do
            wd == :Monday -> "Mon"
            true -> nil    
        end
    end

    def weekday3(:Monday), do: "Mon"
    def weekday3(:Tuesday), do: "Tue"
    def weekday3(:Wednesday), do: "Wed"
end