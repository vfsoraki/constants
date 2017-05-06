defmodule Constants do
  defmacro __using__(_opts) do
    quote do
      require Constants

      Module.register_attribute(__MODULE__, :name, accumulate: true)
      Module.register_attribute(__MODULE__, :value, accumulate: true)

      @before_compile Constants
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      [@name, @value] |> Enum.zip |> Enum.each(fn({name ,value}) ->
        Module.eval_quoted(__ENV__, quote do
          def unquote(name |> to_string |> String.to_atom)() do
            unquote(value)
          end
        end)
      end)
    end
  end
end
