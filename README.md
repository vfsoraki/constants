# Constants

A library to help you define constants easily.

# Usage

```elixir
defmodule Test do
  use Constants

  @name :aconst
  @value "a value"

  @name "anotherone"
  @value "another value"  
end

Test.aconst # => "a value"
Test.anotherone # => "another value"
```

## Installation

The package can be installed adding `constants` to your list of dependencies
in `mix.exs`:

```elixir
def deps do
  [{:constants, "~> 0.1.0"}]
end
```
