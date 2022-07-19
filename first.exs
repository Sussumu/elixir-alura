defmodule MyModule do
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    require Integer

    alias MyModule.Math, as: MyMath

    def hello_world do
        inspect MyMath.soma 2, 2
    end

    def even(param) do 
        Integer.is_even param 
    end

    def inspect(param) do
        puts param
    end
end