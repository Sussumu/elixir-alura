defmodule MyModule do
    # showing how to import specific packages
    # note that we always need to say the arity
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    # macros are imported using require
    require Integer

    # if we don't specify the alias it takes the last name automatically
    alias MyModule.Math, as: MyMath

    # we can pass parameters with or without ()
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